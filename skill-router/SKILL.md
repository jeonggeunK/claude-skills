---
name: skill-router
description: >
  Proactively routes the user's request to the best-matching installed skill — WITHOUT being asked
  "which skill". Consider this at the START of essentially every real task the user gives, before
  doing the work: this library has 130+ skills (documents, marketing, SEO, ads/social, design,
  research, writing, dev/automation), so for any substantive request (make / write / analyze /
  design / plan / optimize / research / summarize / convert / edit / audit / debug …) first identify
  the best-fitting skill(s) and use them. Also triggers when the user explicitly asks which skill to
  use. Do NOT trigger for greetings, small talk, or meta questions about the tooling itself.
---

# Skill Router (proactive)

사용자가 "어떤 스킬 써?"라고 **묻지 않아도**, 실제 작업 요청이 들어오면 시작 시점에
**알아서 가장 맞는 스킬을 판단해 제안·사용**하는 것이 이 스킬의 역할입니다.

## 매 작업마다 (빠르게)

1. **맞는 전문 스킬이 있는지 판단한다.**
   - 확신이 서면 카탈로그를 다시 안 봐도 된다(속도 우선).
   - 애매하면 그때만 Read로 전체 카탈로그를 확인한다:
     Windows `C:\Users\user\.claude\skills\CATALOG.md` / 그 외 `~/.claude/skills/CATALOG.md`.

2. **분기 처리:**
   - **딱 맞는 스킬 1개** → `→ \`<스킬>\` 사용` 한 줄만 알리고 **바로 그 스킬로 작업**한다. 되묻지 않는다.
   - **후보가 2~3개로 갈리고 결과가 꽤 달라질 때** → 한 줄씩 이유를 붙여 제시하고
     어느 것으로 할지 한 번 확인한다. (파이프라인이면 순서대로 제안: 예 리서치→초안→교정)
   - **딱 맞는 전문 스킬이 없으면** → 라우터 얘기는 꺼내지 말고 그냥 평소대로 처리한다.
     (억지로 안 맞는 스킬을 붙이거나, "맞는 게 없네요"를 매번 떠들지 않는다.)

3. **되돌리기 어렵거나 외부로 나가는 작업**(발송·게시·삭제·결제 등)은 스킬 실행 전 확인한다.

## 원칙 (안 시끄럽게)

- 제안은 **한 줄**로. 스킬 설명을 길게 복붙하지 않는다.
- 인사·잡담·도구 자체에 대한 질문에는 발동하지 않는다.
- 스킬은 원래 자동 발동도 하므로, 이 라우터는 그 판단을 **먼저·명시적으로** 해서
  놓치거나 엉뚱한 걸 고르는 걸 줄이는 용도다. 매 응답을 느리게 만들지 않는다.
- 반복 작업인데 맞는 스킬이 없으면 `skill-creator`로 새로 만들 것을 (가끔) 제안한다.
