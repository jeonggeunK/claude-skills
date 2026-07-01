# Claude Skills Library

내 Claude Code 전역 스킬 모음입니다. 새 PC에서도 그대로 쓰려고 git으로 관리합니다.

> 📖 **설치된 스킬이 각각 뭔지 / 어떻게 쓰는지**는 [CATALOG.md](CATALOG.md)에 출처별로 정리돼 있습니다.

## 새 PC에 설치하는 법

Windows PowerShell:

```powershell
# 1) 스킬 저장소를 전역 위치로 클론
git clone https://github.com/jeonggeunK/claude-skills.git "$env:USERPROFILE\.claude\skills"

# 2) 자동동기화 켜기 (아래 "자동 업데이트" 참고) — 한 번만
& "$env:USERPROFILE\.claude\skills\setup-autosync.ps1"
```

클론 후 Claude Code(또는 VS Code 창)를 새로고침/재시작하면 스킬이 인식됩니다.

### 방법 2 · Claude Code에게 세팅 프롬프트로 시키기

새 PC/계정의 Claude Code 채팅창에 아래를 그대로 붙여넣으면 됩니다:

```
내 Claude 스킬 라이브러리를 이 PC에 설치해줘.
https://github.com/jeonggeunK/claude-skills 를 ~/.claude/skills 에 git clone 하고
(그 폴더가 이미 있고 비어있지 않으면 clone 대신 알려줘),
그 안의 setup-autosync.ps1 을 실행해서 세션 시작 때마다 자동으로 최신 스킬을 pull 하도록 켜줘.
끝나면 VS Code 창(또는 Claude Code)을 새로고침하라고 알려줘.
```

또는 PowerShell에서 직접 (기존 폴더가 있어도 안전하게 처리):

```powershell
$skills = "$env:USERPROFILE\.claude\skills"
if (Test-Path "$skills\.git") {
    git -C $skills pull --ff-only            # 이미 클론돼 있으면 최신화만
} elseif ((Test-Path $skills) -and (Get-ChildItem $skills -Force)) {
    Write-Host "이미 $skills 에 파일이 있습니다. 백업 후 다시 시도하세요."
} else {
    git clone https://github.com/jeonggeunK/claude-skills.git $skills
    & "$skills\setup-autosync.ps1"
}
```

- **public 저장소면** 위 명령이 GitHub 로그인 없이 바로 됩니다.
- **private 저장소면** 그 PC에서 최초 1회 GitHub 인증이 필요합니다 (Git Credential Manager 로그인 또는 `gh auth login`).
- 설치 후 창을 새로고침하면 `skill-router`가 켜져, **어떤 스킬 쓸지 묻지 않아도 알아서 판단·제안**합니다.

## 자동 업데이트 (여러 PC 동기화)

`setup-autosync.ps1`을 한 번 실행하면 `~/.claude/settings.json`에 **SessionStart 훅**이
추가됩니다. 이후 Claude Code를 켤 때마다 이 저장소를 백그라운드에서 `git pull` 해서
최신 스킬로 맞춰줍니다. (비차단·async, 인증 프롬프트가 뜨면 조용히 넘어감)

- 스크립트는 **멱등**입니다 — 여러 번 실행해도 훅이 중복 추가되지 않습니다.
- 한 PC에서 스킬을 추가/수정하면 `git add -A && git commit -m "..." && git push` 하고,
  다른 PC에서는 다음 세션 시작 때 자동으로 당겨옵니다.
- private 저장소라 각 PC에서 최초 1회 GitHub 인증(자격증명 저장)이 필요합니다.

## 출처

이 스킬들은 아래 공개 저장소에서 가져와 각 스킬 폴더 단위로 복사한 것입니다.

| 묶음 | 원본 저장소 |
|------|-------------|
| Caveman (토큰 절약) | github.com/juliusbrussee/caveman |
| Anthropic 공식 스킬 | github.com/anthropics/skills |
| Marketing Skills | github.com/coreyhaines31/marketingskills |
| Obsidian Second Brain | github.com/eugeniughelbur/obsidian-second-brain |
| Superpowers | github.com/obra/superpowers |
| Stop Slop | github.com/hardikpandya/stop-slop |
| UI UX Pro Max | github.com/nextlevelbuilder/ui-ux-pro-max-skill |
| Context Engineering | github.com/muratcankoylan/Agent-Skills-for-Context-Engineering |
| claude-council | github.com/hex/claude-council |

각 저장소의 라이선스는 해당 스킬 폴더 내 파일을 참고하세요.

## 참고

- 일부 스킬(`obsidian-second-brain`)은 Obsidian 앱 + vault 경로가 있어야 실제 동작합니다.
- `claude-council`은 백엔드 스크립트가 `~/.claude/claude-council/`에 별도로 있고, API 키가 있어야 외부 프로바이더 자문이 됩니다.
