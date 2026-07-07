# Claude Skills Library

내 Claude Code 전역 스킬 모음입니다. 새 PC에서도 그대로 쓰려고 git으로 관리합니다.

> 📖 **설치된 스킬이 각각 뭔지 / 어떻게 쓰는지**는 [CATALOG.md](CATALOG.md)에 출처별로 정리돼 있습니다.

## 새 PC에 설치하는 법

**한 줄 설치 (권장)** — PowerShell에서 (public이라 로그인 불필요):

```powershell
irm https://raw.githubusercontent.com/jeonggeunK/claude-skills/main/install.ps1 | iex
```

`install.ps1`이 상황을 알아서 판별합니다:
- `~/.claude/skills`가 **없거나 비어 있으면** → 전체 clone (git 관리 → 자동 동기화 O)
- **이미 이 저장소면** → `git pull`로 최신화
- **다른 스킬이 이미 있으면** → **없는 스킬만 추가(병합)**, 기존 것은 안 건드림
- 어느 경우든 마지막에 훅(자동 pull + 매 프롬프트 스킬 판단)을 켭니다.

**또는 Claude Code에게 시키기** — 채팅창에 붙여넣기:

```
내 Claude 스킬 라이브러리를 이 PC에 설치해줘.
https://github.com/jeonggeunK/claude-skills 의 install.ps1 을 받아 실행해줘.
(폴더가 이미 있고 다른 스킬이 있으면, 덮어쓰지 말고 '없는 것만' 추가해줘.)
끝나면 VS Code 창(또는 Claude Code)을 새로고침하라고 알려줘.
```

설치 후 Claude Code(또는 VS Code 창)를 새로고침하면 스킬이 인식됩니다. 창을 새로고침하면
`skill-router` + UserPromptSubmit 훅이 켜져, **어떤 스킬 쓸지 묻지 않아도 알아서 판단·제안**합니다.

> 참고: 병합(없는 것만 추가) 방식으로 넣은 스킬은 복사본이라 자동 `pull` 대상이 아닙니다.
> 전부 자동 동기화까지 원하면, 기존 폴더를 백업 후 비우고 다시 실행해 **전체 clone**을 받으세요.

## 자동 업데이트 (여러 PC 동기화)

`setup-autosync.ps1`을 한 번 실행하면 `~/.claude/settings.json`에 **훅 3개**가 추가되고,
**전역 CLAUDE.md**가 동기화됩니다:

1. **SessionStart 훅 (스킬 pull)** — Claude Code를 켤 때마다 이 저장소를 백그라운드에서 `git pull` 해
   최신 스킬로 맞춰줍니다. (비차단·async, 인증 프롬프트가 뜨면 조용히 넘어감)
2. **SessionStart 훅 (플러그인)** — `plugins.txt` 목록의 공식 플러그인을 없는 것만 설치합니다.
3. **UserPromptSubmit 훅** — 프롬프트를 넣을 때마다 **스킬 우선 절차**(①맞는 스킬 판단 →
   ②애매하면 `skill-router`의 라우팅 표로 결정 → ③"→ 스킬명 사용" 알리고 그 지시대로 진행)를
   번호 절차로 주입합니다. Haiku/Sonnet 같은 작은 모델에서도 같은 라우팅이 나오도록
   판단 재량을 줄인 문구입니다. 인사·잡담엔 끼어들지 않습니다.
   - 끄고 싶으면 `~/.claude/settings.json`의 `hooks.UserPromptSubmit` 항목을 지우면 됩니다.
4. **전역 CLAUDE.md 동기화** — 저장소의 `CLAUDE.global.md`(추측 금지·완료 전 검증 등
   모델 공통 품질 규칙)를 `~/.claude/CLAUDE.md`의 managed block으로 복사/갱신합니다.
   기존 CLAUDE.md가 있으면 블록만 추가·교체하고 나머지는 건드리지 않습니다.
   규칙을 고치려면 저장소의 `CLAUDE.global.md`를 고치고 push → 다른 PC에서
   `install.ps1`(또는 `setup-autosync.ps1`)을 다시 실행하면 반영됩니다.

- 스크립트는 **멱등**입니다 — 여러 번 실행해도 훅이 중복 추가되지 않습니다.
- 한 PC에서 스킬을 추가/수정하면 `git add -A && git commit -m "..." && git push` 하고,
  다른 PC에서는 다음 세션 시작 때 자동으로 당겨옵니다.
- 이 저장소는 **public**이라, 어느 PC에서든 GitHub 로그인 없이 clone·pull 됩니다.
  (`push`는 여전히 소유자 GitHub 인증이 필요합니다.)

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
