# Claude Skills Library

내 Claude Code 전역 스킬 모음입니다. 새 PC에서도 그대로 쓰려고 git으로 관리합니다.

## 새 PC에 설치하는 법

```bash
# 새 PC에서 (git 설치돼 있어야 함)
git clone <이 저장소 URL> "$HOME/.claude/skills"
```

Windows PowerShell:

```powershell
git clone <이 저장소 URL> "$env:USERPROFILE\.claude\skills"
```

클론 후 Claude Code(또는 VS Code 창)를 새로고침/재시작하면 스킬이 인식됩니다.

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
