# sync-plugins.ps1 — plugins.txt 목록의 공식 플러그인을 이 PC에 (없는 것만) 설치
# SessionStart 훅에서 비동기로 실행됨. 여러 번 실행해도 안전(멱등).
# 목록 수정은 plugins.txt 에서 — 이 저장소가 git pull 되면 모든 PC에 반영됩니다.

$ErrorActionPreference = 'SilentlyContinue'

$marketplace = 'claude-plugins-official'
$marketplaceSource = 'anthropics/claude-plugins-official'
$listFile = Join-Path $PSScriptRoot 'plugins.txt'
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
