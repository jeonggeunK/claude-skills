# setup-autosync.ps1
# ~/.claude/settings.json 에 SessionStart 훅을 추가해, Claude Code를 켤 때마다
# 이 스킬 저장소를 자동으로 git pull 하게 만듭니다. 여러 번 실행해도 안전(멱등).

$ErrorActionPreference = 'Stop'

$settingsPath = Join-Path $env:USERPROFILE '.claude\settings.json'
$dir = Split-Path $settingsPath
if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Force -Path $dir | Out-Null }

if (Test-Path $settingsPath) {
    $settings = (Get-Content -Raw -Path $settingsPath) | ConvertFrom-Json
} else {
    $settings = [PSCustomObject]@{}
}

# --- 기존 SessionStart 훅 수집 + 멱등 판별 ---
$sessionStart = @()
if ($settings.PSObject.Properties['hooks']) {
    if ($settings.hooks.PSObject.Properties['SessionStart']) {
        $sessionStart = @($settings.hooks.SessionStart)
    }
}
$already = $false
foreach ($entry in $sessionStart) {
    foreach ($h in @($entry.hooks)) {
        if ($h.command -and ($h.command -match 'claude/skills')) { $already = $true }
    }
}

if ($already) {
    Write-Host "이미 자동동기화 훅이 설정돼 있습니다. 변경 없음."
} else {
    $hookEntry = [PSCustomObject]@{
        hooks = @(
            [PSCustomObject]@{
                type          = 'command'
                command       = 'GIT_TERMINAL_PROMPT=0 git -C "$HOME/.claude/skills" pull --ff-only -q 2>/dev/null || true'
                async         = $true
                timeout       = 30
                statusMessage = 'Syncing skills from git...'
            }
        )
    }
    $sessionStart = $sessionStart + $hookEntry

    # hooks / SessionStart 프로퍼티 보장
    if (-not $settings.PSObject.Properties['hooks']) {
        Add-Member -InputObject $settings -NotePropertyName hooks -NotePropertyValue ([PSCustomObject]@{})
    }
    if (-not $settings.hooks.PSObject.Properties['SessionStart']) {
        Add-Member -InputObject $settings.hooks -NotePropertyName SessionStart -NotePropertyValue @()
    }
    $settings.hooks.SessionStart = $sessionStart

    $json = $settings | ConvertTo-Json -Depth 20
    $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText($settingsPath, $json, $utf8NoBom)

    Write-Host "자동동기화 훅을 추가했습니다: $settingsPath"
    Write-Host "다음에 Claude Code를 켜면 스킬 저장소를 자동으로 pull 합니다."
}
