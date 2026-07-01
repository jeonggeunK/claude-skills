---
name: skill-router
description: >
  Picks the best-matching skill(s) from the user's installed skill library for a given task,
  and then uses them. Trigger when the user explicitly asks which skill to use ("어떤 스킬 써야
  해?", "무슨 스킬 쓰면 돼?", "이 작업에 맞는 스킬 골라줘", "스킬 추천해줘", "which skill
  should I use", "find the right skill", "help me pick a skill"), OR when a request could plausibly
  match several installed skills and choosing the right one up front would help. Do NOT trigger for
  a normal task request that already clearly maps to one obvious skill — in that case just use that
  skill directly.
---

# Skill Router

이 라이브러리에는 스킬이 100개 넘게 설치돼 있습니다. 사용자가 무엇을 하고 싶은지 듣고,
**가장 잘 맞는 스킬을 골라 실제로 실행**하는 것이 이 스킬의 역할입니다.

## 절차

1. **전체 카탈로그를 확인한다 (중요).**
   세션에 로드된 스킬 목록은 설명이 잘렸을 수 있으므로, 판단 전에 전체 카탈로그를 읽는다.
   Read 도구로 다음 파일을 연다:
   - Windows: `C:\Users\user\.claude\skills\CATALOG.md`
   - 그 외: `~/.claude/skills/CATALOG.md`
   파일이 없으면(경로가 다르면) `CATALOG.md`를 스킬 디렉터리에서 Glob으로 찾는다:
   `**/.claude/skills/CATALOG.md`. 그래도 없으면 현재 로드된 스킬 목록만으로 판단한다.

2. **후보를 1~3개 고른다.**
   사용자 작업과 각 스킬의 설명을 대조해 가장 잘 맞는 스킬을 최대 3개 선정한다.
   각각 **한 줄 이유**를 붙인다. (예: "page-cro — 랜딩페이지 전환율 진단·개선에 딱 맞음")

3. **추천 → 실행.**
   - 최적 후보가 **명확하면**: "→ `<스킬>` (으)로 진행합니다" 라고 짧게 알린 뒤 그 스킬을
     바로 호출해 작업을 수행한다. (되묻지 않는다)
   - 후보가 **비슷하게 갈리면**: 2~3개를 이유와 함께 제시하고 어느 것으로 할지 사용자에게
     한 번 확인한다.
   - **되돌리기 어려운/외부로 나가는 작업**(발송·게시·삭제 등)이 포함되면 실행 전 확인한다.

4. **딱 맞는 게 없으면** 솔직히 말한다. 그리고 `skill-creator`로 사용자의 반복 작업에 맞는
   스킬을 새로 만들 수 있음을 제안한다. 억지로 안 맞는 스킬을 쓰지 않는다.

## 원칙

- 스킬은 원래 프롬프트에 따라 **자동으로도 발동**한다. 이 라우터는 (a) 사용자가 명시적으로
  "뭐 써야 해?"라고 묻거나, (b) 여러 스킬이 겹쳐 헷갈릴 때 **의도적으로 고르기 위한** 것이다.
- 한 작업에 여러 스킬이 파이프라인으로 이어지면(예: 리서치 → 초안 → 교정) 순서대로 제안한다.
- 고른 이유는 짧고 구체적으로. 스킬 설명을 그대로 길게 복붙하지 않는다.
