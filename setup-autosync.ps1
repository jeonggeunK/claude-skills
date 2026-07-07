# setup-autosync.ps1
# ~/.claude/settings.json 에 세 가지 훅을 (멱등하게) 추가하고, 전역 CLAUDE.md 를 동기화합니다:
#   1) SessionStart    → 세션 시작마다 이 스킬 저장소를 git pull (여러 PC 자동 동기화)
#   2) SessionStart    → plugins.txt 목록의 공식 플러그인을 없는 것만 자동 설치 (sync-plugins.ps1)
#   3) UserPromptSubmit → 매 프롬프트마다 스킬 우선 절차(판단→skill-router→사용) 리마인더 주입
#   4) CLAUDE.global.md → ~/.claude/CLAUDE.md 의 managed block 으로 동기화 (전역 공통 지침)
# 여러 번 실행해도 안전합니다(중복 추가하지 않음). 구버전 훅 문구는 새 문구로 교체합니다.

$ErrorActionPreference = 'Stop'

$settingsPath = Join-Path $env:USERPROFILE '.claude\settings.json'
$dir = Split-Path $settingsPath
if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Force -Path $dir | Out-Null }

if (Test-Path $settingsPath) {
    # BOM 없는 UTF-8 파일을 PS5.1 기본 인코딩(ANSI)으로 읽으면 한글이 깨지므로 UTF-8 명시
    $settings = [System.IO.File]::ReadAllText($settingsPath, [System.Text.Encoding]::UTF8) | ConvertFrom-Json
} else {
    $settings = [PSCustomObject]@{}
}
if (-not $settings.PSObject.Properties['hooks']) {
    Add-Member -InputObject $settings -NotePropertyName hooks -NotePropertyValue ([PSCustomObject]@{})
}

function Get-EventHooks($ev) {
    if ($settings.hooks.PSObject.Properties[$ev]) { return @($settings.hooks.$ev) }
    return @()
}
function Test-Marker($ev, $marker) {
    foreach ($entry in (Get-EventHooks $ev)) {
        foreach ($h in @($entry.hooks)) {
            if ($h.command -and ($h.command -match [regex]::Escape($marker))) { return $true }
        }
    }
    return $false
}
function Add-EventHook($ev, $hookObj) {
    $new = @(Get-EventHooks $ev) + @($hookObj)
    if (-not $settings.hooks.PSObject.Properties[$ev]) {
        Add-Member -InputObject $settings.hooks -NotePropertyName $ev -NotePropertyValue @()
    }
    $settings.hooks.$ev = $new
}

$changed = $false

# 1) SessionStart: 저장소 자동 pull
if (Test-Marker 'SessionStart' 'claude/skills') {
    Write-Host "[SessionStart] 이미 설정됨 - 변경 없음."
} else {
    Add-EventHook 'SessionStart' ([PSCustomObject]@{
        hooks = @([PSCustomObject]@{
            type          = 'command'
            command       = 'GIT_TERMINAL_PROMPT=0 git -C "$HOME/.claude/skills" pull --ff-only -q 2>/dev/null || true'
            async         = $true
            timeout       = 30
            statusMessage = 'Syncing skills from git...'
        })
    })
    $changed = $true
    Write-Host "[SessionStart] 자동동기화 훅 추가."
}

# 2) SessionStart: 플러그인 자동 설치 (plugins.txt 기반)
if (Test-Marker 'SessionStart' 'sync-plugins') {
    Write-Host "[SessionStart] 플러그인 동기화 이미 설정됨 - 변경 없음."
} else {
    Add-EventHook 'SessionStart' ([PSCustomObject]@{
        hooks = @([PSCustomObject]@{
            type          = 'command'
            command       = 'powershell.exe -NoProfile -ExecutionPolicy Bypass -File "$HOME/.claude/skills/sync-plugins.ps1" 2>/dev/null || true'
            async         = $true
            timeout       = 600
            statusMessage = 'Syncing plugins...'
        })
    })
    $changed = $true
    Write-Host "[SessionStart] 플러그인 자동설치 훅 추가."
}

# 3) UserPromptSubmit: 매 프롬프트 스킬 라우팅 리마인더 (v2 — 번호 절차형, 작은 모델에서도 동일 동작)
$upsCmd = @'
echo '{"hookSpecificOutput":{"hookEventName":"UserPromptSubmit","additionalContext":"실제 작업 요청이면 시작 전에 스킬 우선 절차를 따르라: (1) 설치된 전역 스킬 중 맞는 것이 있는지 판단한다. (2) 애매하거나 후보가 여럿이면 감으로 정하지 말고 skill-router 스킬을 열어 그 안의 라우팅 표로 결정한다. (3) 정해지면 → 스킬명 사용 형식으로 한 줄 알리고 그 스킬의 지시를 생략 없이 따른다. (4) 맞는 스킬이 없으면 평소대로 진행한다. 인사·잡담·도구 자체 질문에는 이 절차 생략."}}'
'@
$upsCmd = $upsCmd.Trim()
if (Test-Marker 'UserPromptSubmit' '스킬 우선 절차') {
    Write-Host "[UserPromptSubmit] 이미 최신(v2) - 변경 없음."
} else {
    if (Test-Marker 'UserPromptSubmit' 'skill-router') {
        # 구버전(v1) 문구 훅 제거 후 v2로 교체
        $kept = @()
        foreach ($entry in (Get-EventHooks 'UserPromptSubmit')) {
            $isOld = $false
            foreach ($h in @($entry.hooks)) {
                if ($h.command -and ($h.command -match 'skill-router')) { $isOld = $true }
            }
            if (-not $isOld) { $kept += $entry }
        }
        $settings.hooks.UserPromptSubmit = $kept
        Write-Host "[UserPromptSubmit] 구버전 리마인더 제거."
    }
    Add-EventHook 'UserPromptSubmit' ([PSCustomObject]@{
        hooks = @([PSCustomObject]@{
            type    = 'command'
            command = $upsCmd
            timeout = 5
        })
    })
    $changed = $true
    Write-Host "[UserPromptSubmit] 스킬 라우팅 리마인더 훅(v2) 추가."
}

# 4) 전역 CLAUDE.md 동기화 — CLAUDE.global.md 의 managed block 을 ~/.claude/CLAUDE.md 에 반영
$srcMd = Join-Path $PSScriptRoot 'CLAUDE.global.md'
$dstMd = Join-Path $dir 'CLAUDE.md'
if (Test-Path $srcMd) {
    $utf8NoBomMd = New-Object System.Text.UTF8Encoding($false)
    $block = [System.IO.File]::ReadAllText($srcMd, [System.Text.Encoding]::UTF8).Trim()
    $begin = '<!-- CLAUDE-SKILLS:GLOBAL:BEGIN'
    $end   = '<!-- CLAUDE-SKILLS:GLOBAL:END -->'
    if (Test-Path $dstMd) {
        $cur = [System.IO.File]::ReadAllText($dstMd, [System.Text.Encoding]::UTF8)
        $bi = $cur.IndexOf($begin); $ei = $cur.IndexOf($end)
        if ($bi -ge 0 -and $ei -gt $bi) {
            $newText = $cur.Substring(0, $bi) + $block + $cur.Substring($ei + $end.Length)
            if ($newText -ne $cur) {
                [System.IO.File]::WriteAllText($dstMd, $newText, $utf8NoBomMd)
                Write-Host "[CLAUDE.md] managed block 갱신."
            } else {
                Write-Host "[CLAUDE.md] 이미 최신 - 변경 없음."
            }
        } else {
            [System.IO.File]::WriteAllText($dstMd, ($cur.TrimEnd() + "`n`n" + $block + "`n"), $utf8NoBomMd)
            Write-Host "[CLAUDE.md] 기존 파일 끝에 managed block 추가."
        }
    } else {
        [System.IO.File]::WriteAllText($dstMd, ($block + "`n"), $utf8NoBomMd)
        Write-Host "[CLAUDE.md] 새로 생성."
    }
}

if ($changed) {
    $json = $settings | ConvertTo-Json -Depth 20
    $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText($settingsPath, $json, $utf8NoBom)
    Write-Host "settings.json 갱신 완료: $settingsPath"
    Write-Host "다음에 Claude Code를 켜면 [자동 동기화 + 매 프롬프트 스킬 판단]이 적용됩니다."
} else {
    Write-Host "변경 사항 없음 - 훅이 모두 이미 설정돼 있습니다."
}
