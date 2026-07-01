# install.ps1 — Claude 스킬 라이브러리 설치/병합 (모든 상황 안전 처리)
#
# 세 가지 상황을 알아서 판별합니다:
#   A) ~/.claude/skills 없음/빈 폴더        → 전체 git clone (자동 동기화 O)
#   B) 이미 이 저장소가 클론돼 있음          → git pull (최신화)
#   C) 기존 스킬 폴더가 있음(이 저장소 아님) → 없는 스킬만 추가(병합), 기존 것은 안 건드림
# 어느 경우든 마지막에 setup-autosync.ps1을 돌려 훅(자동 pull + 매 프롬프트 스킬 판단)을 켭니다.

$ErrorActionPreference = 'Stop'

$repo = if ($env:CLAUDE_SKILLS_REPO) { $env:CLAUDE_SKILLS_REPO } else { 'https://github.com/jeonggeunK/claude-skills.git' }
$skills = Join-Path $env:USERPROFILE '.claude\skills'

function Enable-Hooks {
    $sp = Join-Path $skills 'setup-autosync.ps1'
    if (Test-Path $sp) { & $sp }
}

$exists   = Test-Path $skills
$isRepo   = $exists -and (Test-Path (Join-Path $skills '.git'))
$nonEmpty = $exists -and ((Get-ChildItem $skills -Force -ErrorAction SilentlyContinue | Measure-Object).Count -gt 0)

if ((-not $exists) -or (-not $nonEmpty)) {
    # --- A) 없음/빈 폴더 → 전체 clone ---
    $parent = Split-Path $skills
    if (-not (Test-Path $parent)) { New-Item -ItemType Directory -Force -Path $parent | Out-Null }
    if ($exists) { Remove-Item $skills -Force -ErrorAction SilentlyContinue }  # 빈 폴더 제거 후 clone
    git clone -q $repo $skills
    if ($LASTEXITCODE -ne 0) { throw "git clone 실패 (네트워크/URL 확인)" }
    Enable-Hooks
    Write-Host "`n[완료] 전체 설치(clone). 자동 동기화 + 매 프롬프트 스킬 판단 켜짐."
}
elseif ($isRepo) {
    # --- B) 이미 이 저장소 → pull ---
    git -C $skills pull --ff-only -q
    Enable-Hooks
    Write-Host "`n[완료] 이미 설치돼 있어 최신화(pull)만 했습니다."
}
else {
    # --- C) 기존 스킬 폴더(이 저장소 아님) → 없는 스킬만 추가 ---
    $tmp = Join-Path $env:TEMP ("claude-skills-" + [guid]::NewGuid().ToString('N').Substring(0,8))
    git clone -q --depth 1 $repo $tmp
    if ($LASTEXITCODE -ne 0) { throw "git clone 실패 (네트워크/URL 확인)" }
    try {
        $added = New-Object System.Collections.Generic.List[string]
        $skipped = 0
        Get-ChildItem (Join-Path $tmp '*') -Directory | Where-Object { $_.Name -ne '.git' } | ForEach-Object {
            $dest = Join-Path $skills $_.Name
            if (Test-Path $dest) { $skipped++ }
            else { Copy-Item $_.FullName $dest -Recurse; [void]$added.Add($_.Name) }
        }
        foreach ($f in @('setup-autosync.ps1','CATALOG.md','README.md','install.ps1')) {
            $src = Join-Path $tmp $f; $dst = Join-Path $skills $f
            if ((Test-Path $src) -and (-not (Test-Path $dst))) { Copy-Item $src $dst }
        }
    } finally {
        Remove-Item $tmp -Recurse -Force -ErrorAction SilentlyContinue
    }
    Enable-Hooks
    Write-Host "`n[완료] 기존 폴더에 '없는 스킬만' 추가했습니다."
    Write-Host ("  - 추가한 스킬 : {0}개" -f $added.Count)
    Write-Host ("  - 건너뜀(이미 있음): {0}개" -f $skipped)
    if ($added.Count -gt 0) { Write-Host ("    추가: " + ($added -join ', ')) }
    Write-Host "  주의: 이 방식(복사 병합)으로 넣은 스킬은 git 관리가 아니라 '자동 pull'로 갱신되지 않습니다."
    Write-Host "        전부 자동 동기화까지 원하면, 이 폴더를 백업 후 비우고 다시 실행해 '전체 clone'을 받으세요."
}

Write-Host "`n다 끝났습니다. VS Code 창(또는 Claude Code)을 새로고침하면 스킬이 인식됩니다."
