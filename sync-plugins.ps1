# sync-plugins.ps1 — plugins.txt 목록의 공식 플러그인을 이 PC에 (없는 것만) 설치
# SessionStart 훅에서 비동기로 실행됨. 여러 번 실행해도 안전(멱등).
# 목록 수정은 plugins.txt 에서 — 이 저장소가 git pull 되면 모든 PC에 반영됩니다.

$ErrorActionPreference = 'SilentlyContinue'

$marketplace = 'claude-plugins-official'
$marketplaceSource = 'anthropics/claude-plugins-official'
$listFile = Join-Path $PSScriptRoot 'plugins.txt'

# 0) 외부 플러그인(external-plugins.txt)을 settings.json에 선언 — claude CLI 없어도 동작, Claude Code가 다음 시작 때 내려받음
$extFile = Join-Path $PSScriptRoot 'external-plugins.txt'
$settingsPath = Join-Path $env:USERPROFILE '.claude\settings.json'
if ((Test-Path $extFile) -and (Test-Path $settingsPath)) {
    $settings = [System.IO.File]::ReadAllText($settingsPath, [System.Text.Encoding]::UTF8) | ConvertFrom-Json
    if ($settings) {
        foreach ($p in 'extraKnownMarketplaces', 'enabledPlugins') {
            if (-not $settings.PSObject.Properties[$p]) { Add-Member -InputObject $settings -NotePropertyName $p -NotePropertyValue ([PSCustomObject]@{}) }
        }
        $added = @()
        foreach ($line in (Get-Content $extFile -Encoding UTF8)) {
            $parts = $line.Trim() -split '\s+'
            if ($parts.Count -ne 2 -or $parts[0].StartsWith('#') -or $parts[0] -notmatch '^[^@]+@[^@]+$') { continue }
            $mp = $parts[0].Split('@')[1]
            if (-not $settings.extraKnownMarketplaces.PSObject.Properties[$mp]) {
                Add-Member -InputObject $settings.extraKnownMarketplaces -NotePropertyName $mp -NotePropertyValue ([PSCustomObject]@{ source = [PSCustomObject]@{ source = 'github'; repo = $parts[1] } })
                $added += $mp
            }
            # 이미 있는 항목은 true/false 그대로 둠(그 PC에서 끈 것 존중)
            if (-not $settings.enabledPlugins.PSObject.Properties[$parts[0]]) {
                Add-Member -InputObject $settings.enabledPlugins -NotePropertyName $parts[0] -NotePropertyValue $true
                $added += $parts[0]
            }
        }
        if ($added.Count -gt 0) {
            [System.IO.File]::WriteAllText($settingsPath, ($settings | ConvertTo-Json -Depth 20), (New-Object System.Text.UTF8Encoding($false)))
            Write-Host ("[sync-plugins] 외부 플러그인 등록: {0}" -f ($added -join ', '))
        }
    }
}

if (-not (Test-Path $listFile)) { exit 0 }
if (-not (Get-Command claude -ErrorAction SilentlyContinue)) { exit 0 }

# 1) 마켓플레이스 없으면 등록
$mpList = (claude plugin marketplace list 2>$null) -join "`n"
if ($mpList -notmatch [regex]::Escape($marketplace)) {
    claude plugin marketplace add $marketplaceSource 2>$null | Out-Null
}

# 2) 설치 목록과 비교해 없는 것만 설치
$installedRaw = (claude plugin list 2>$null) -join "`n"
$wanted = Get-Content $listFile | ForEach-Object { $_.Trim() } |
    Where-Object { $_ -and -not $_.StartsWith('#') }

$missing = @($wanted | Where-Object { $installedRaw -notmatch ("(?m)" + [regex]::Escape("$_@$marketplace")) })
if ($missing.Count -eq 0) { exit 0 }

foreach ($name in $missing) {
    claude plugin install "$name@$marketplace" --scope user 2>$null | Out-Null
}
Write-Host ("[sync-plugins] 새로 설치: {0}개 ({1})" -f $missing.Count, ($missing -join ', '))
