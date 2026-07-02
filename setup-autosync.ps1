# setup-autosync.ps1
# ~/.claude/settings.json 에 세 가지 훅을 (멱등하게) 추가합니다:
#   1) SessionStart    → 세션 시작마다 이 스킬 저장소를 git pull (여러 PC 자동 동기화)
#   2) SessionStart    → plugins.txt 목록의 공식 플러그인을 없는 것만 자동 설치 (sync-plugins.ps1)
#   3) UserPromptSubmit → 매 프롬프트마다 "이 요청에 맞는 스킬을 먼저 판단·제안하라" 리마인더 주입
# 여러 번 실행해도 안전합니다(중복 추가하지 않음).

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

# 3) UserPromptSubmit: 매 프롬프트 스킬 라우팅 리마인더
$upsCmd = @'
echo '{"hookSpecificOutput":{"hookEventName":"UserPromptSubmit","additionalContext":"이 요청에 맞는 설치된 전역 스킬이 있으면, 작업 전에 먼저 어떤 스킬을 쓸지 판단해 제안·사용하라. 여러 개가 겹치거나 애매하면 skill-router 스킬로 고르라. 인사·잡담·도구 자체 질문에는 불필요."}}'
'@
$upsCmd = $upsCmd.Trim()
if (Test-Marker 'UserPromptSubmit' 'skill-router') {
    Write-Host "[UserPromptSubmit] 이미 설정됨 - 변경 없음."
} else {
    Add-EventHook 'UserPromptSubmit' ([PSCustomObject]@{
        hooks = @([PSCustomObject]@{
            type    = 'command'
            command = $upsCmd
            timeout = 5
        })
    })
    $changed = $true
    Write-Host "[UserPromptSubmit] 스킬 라우팅 리마인더 훅 추가."
}

if ($changed) {
    $json = $settings | ConvertTo-Json -Depth 20
    $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText($settingsPath, $json, $utf8NoBom)
    Write-Host "settings.json 갱신 완료: $settingsPath"
    Write-Host "다음에 Claude Code를 켜면 [자동 동기화 + 매 프롬프트 스킬 판단]이 적용됩니다."
} else {
    Write-Host "변경 사항 없음 - 두 훅 모두 이미 설정돼 있습니다."
}
