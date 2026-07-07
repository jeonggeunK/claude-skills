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
가장 맞는 스킬을 골라 사용하는 것이 이 스킬의 역할입니다.

## 절차 — 매 작업마다 이 순서를 그대로 따를 것 (감으로 건너뛰지 말 것)

1. **아래 [라우팅 표]에서 요청 유형을 찾는다.**
2. **후보가 1개로 정해지면** → `→ \`스킬명\` 사용` 한 줄만 알리고 **바로 그 스킬로 작업**한다. 되묻지 않는다.
3. **표에 없거나 확신이 없으면** → Read로 전체 카탈로그를 확인한다:
   Windows `C:\Users\user\.claude\skills\CATALOG.md` / 그 외 `~/.claude/skills/CATALOG.md`.
4. **후보가 2~3개로 갈리고 결과가 꽤 달라질 때만** → 한 줄씩 이유를 붙여 제시하고
   어느 것으로 할지 한 번 확인한다.
5. **딱 맞는 스킬이 없으면** → 라우터 얘기는 꺼내지 말고 그냥 평소대로 처리한다.
   (억지로 안 맞는 스킬을 붙이거나 "맞는 게 없네요"를 떠들지 않는다.)
6. **되돌리기 어렵거나 외부로 나가는 작업**(발송·게시·삭제·결제)은 스킬 실행 전 확인한다.

여러 단계가 필요한 작업이면 **파이프라인**으로 순서를 제안한다. 예:
- 블로그 글: `keyword-research` → `seo-content-brief` → `content-research-writer` → `copy-editing` → `stop-slop`
- 랜딩페이지: `copywriting` → `cro` → (디자인까지면) `frontend-design`
- 신제품 출시: `product-marketing` → `launch-strategy` → `social-content` / `emails`

## 라우팅 표 (1차 판단용 — 여기 없으면 CATALOG.md 확인)

### 개발·코드
| 요청 | 스킬 |
|---|---|
| 버그·오류 원인 찾기, "왜 안 되지" | `systematic-debugging` |
| 테스트 먼저 쓰는 개발 | `test-driven-development` |
| 작업 계획서 작성 / 계획대로 실행 | `writing-plans` / `executing-plans` |
| 코드리뷰 요청 / 리뷰 반영 | `requesting-code-review` / `receiving-code-review` |
| 서브에이전트에 병렬로 나눠 작업 | `dispatching-parallel-agents`, `subagent-driven-development` |
| git worktree / 개발 브랜치 마무리(머지·정리) | `using-git-worktrees` / `finishing-a-development-branch` |
| "다 됐어?" 완료 선언 전 검증 | `verification-before-completion` |
| 아이디어 발산·브레인스토밍 | `brainstorming` |
| 웹앱 자동 테스트(Playwright) | `webapp-testing` |
| MCP 서버 만들기 | `mcp-builder` |

### 문서·글쓰기
| 요청 | 스킬 |
|---|---|
| 문서·제안서·기술스펙 공동작성 | `doc-coauthoring` |
| 사내 공지·상태보고·리더십 업데이트 | `internal-comms` |
| AI 티 나는 문장(슬롭) 제거·문체 개선 | `stop-slop` |
| 마케팅 카피 새로 쓰기(홈·랜딩·가격 페이지) | `copywriting` |
| 기존 카피 수정·교정 | `copy-editing` |
| .docx/.pptx/.xlsx/.pdf 파일 산출물 | 이 라이브러리가 아니라 **공식 플러그인 스킬**(docx/pptx/xlsx/pdf) 사용 |

### SEO·콘텐츠
| 요청 | 스킬 |
|---|---|
| SEO 진단·감사, "왜 순위가 안 올라" | `seo-audit` |
| 키워드 조사 | `keyword-research` |
| 콘텐츠 브리프 | `seo-content-brief` |
| AI 검색(LLM 인용) 최적화 | `ai-seo` |
| 스키마 마크업(JSON-LD) | `schema` |
| 템플릿 대량 SEO 페이지 | `programmatic-seo` |
| 사이트 구조 | `site-architecture` |
| 콘텐츠 전략 / 캘린더 / 갭분석 / 재활용 | `content-strategy` / `content-calendar` / `content-gap-analysis` / `content-repurposing` |
| 리서치 기반 장문 글 작성 | `content-research-writer` |

### 광고·소셜·이메일
| 요청 | 스킬 |
|---|---|
| 유료 광고 전반(PPC·ROAS) | `ads` |
| 구글 광고 / 성과 리포트 | `google-ads` / `google-ads-report` |
| 페이스북·메타 광고 | `facebook-ads` |
| 광고 소재·헤드라인 변형 | `ad-creative` |
| 배너 디자인 | `banner-design` |
| 앱스토어 리스팅(ASO) | `aso` |
| 콜드메일 | `cold-email` |
| 이메일 시퀀스·드립 | `emails`, `email-sequence` |
| 이메일 제목 / 뉴스레터 / SMS | `email-subject-lines` / `newsletter` / `sms` |
| 소셜 전반 / 소셜 콘텐츠 / 링크드인 | `social` / `social-content` / `linkedin-content` |
| 커뮤니티(디스코드·슬랙) 성장 | `community-marketing` |
| 영상 마케팅 | `video` |

### 전환·수익화
| 요청 | 스킬 |
|---|---|
| 전환율 최적화(페이지·폼) | `cro`, `page-cro` |
| 팝업·모달 / 페이월·업그레이드 화면 | `popups` / `paywalls` |
| 가격·패키징 / 오퍼 설계 | `pricing` / `offers` |
| 가입 플로우 / 온보딩·활성화 | `signup` / `onboarding` |
| 이탈 방지·해지 플로우 | `churn-prevention` |
| A/B 테스트 설계 | `ab-testing` |
| 추천·제휴 프로그램 | `referrals` |
| 리드 매그넷 | `lead-magnets`, `lead-magnet` |
| 무료 툴 마케팅 | `free-tools` |
| 트래킹·GA4 설정 | `analytics`, `google-analytics` |

### 전략·고객·경쟁
| 요청 | 스킬 |
|---|---|
| 종합 마케팅 플랜·GTM | `marketing-plan`, `growth-strategy` |
| 제품 출시 계획 | `launch`, `launch-strategy` |
| 마케팅 아이디어 / 심리 적용 | `marketing-ideas` / `marketing-psychology` |
| 포지셔닝·제품 컨텍스트 문서 | `product-marketing` |
| 고객 리서치·ICP·인터뷰 분석 | `customer-research` |
| 잠재고객 리스트 구축 | `prospecting` |
| 경쟁사 분석·프로파일링 | `competitor-profiling`, `competitor-analysis` |
| 경쟁사 비교(vs) 페이지 | `competitors` |
| 브랜드 언급 모니터링 / PR·보도 | `brand-monitor` / `public-relations` |
| 공동 마케팅 파트너 | `co-marketing` |
| 세일즈 자료(피치덱·원페이저) | `sales-enablement` |
| 리드 라이프사이클·RevOps | `revops` |
| 디렉터리 등록(백링크) | `directory-submissions` |

### 디자인·비주얼
| 요청 | 스킬 |
|---|---|
| UI/UX 전반·고급 | `ui-ux-pro-max`, `ui-styling`, `design`, `design-system` |
| 개성 있는 프론트엔드 디자인 방향 | `frontend-design` |
| 포스터·아트(PNG/PDF) | `canvas-design` |
| 테마·색·폰트 적용 | `theme-factory` |
| 마케팅 이미지 생성 | `image` |
| 브랜드 가이드 | `brand` (자사) / `brand-guidelines` (Anthropic 공식) |
| 제너러티브 아트(p5.js) | `algorithmic-art` |
| 슬랙 GIF | `slack-gif-creator` |
| 복잡한 인터랙티브 웹 아티팩트 | `web-artifacts-builder` |
| 발표 슬라이드 구성 | `slides` |

### 에이전트·컨텍스트 엔지니어링
| 요청 | 스킬 |
|---|---|
| 에이전트 팀·오케스트레이션 구축("업무 자동화 시스템") | `agent-team-builder` |
| 멀티에이전트 패턴 / 툴 설계 / 메모리 설계 | `multi-agent-patterns` / `tool-design` / `memory-systems` |
| 컨텍스트 기초·최적화·압축·열화 | `context-fundamentals`, `context-optimization`, `context-compression`, `context-degradation` |
| 에이전트 평가 | `evaluation`, `advanced-evaluation` |
| 하네스·호스팅·프로바이더 연동 | `harness-engineering`, `hosted-agents`, `provider-integration` |
| 파일시스템 컨텍스트 / BDI / 잠재 브리핑 | `filesystem-context` / `bdi-mental-states` / `latent-briefing` |

### 다중 AI 의견·위원회
| 요청 | 스킬 |
|---|---|
| "council 소환", 여러 AI 의견 종합 | `agent-council` |
| 위원회 실행(외부/로컬/심층) | `council-execution` / `local-council-execution` / `deep-execution` |

### 학습·정리·리서치
| 요청 | 스킬 |
|---|---|
| 주제 학습 정리 | `learn-this` |
| 웹 아티클 추출 / 유튜브 자막 | `article-extractor` / `youtube-transcript` |
| 세션 기록 / 배운 것 정리 | `session-log` / `ship-learn-next` |
| Obsidian 노트 관리 | `obsidian-second-brain` |

### 토큰 절약 (Caveman)
| 요청 | 스킬 |
|---|---|
| "caveman 모드" 초압축 대화 | `caveman` |
| 압축 커밋 메시지 / 압축 코드리뷰 | `caveman-commit` / `caveman-review` |
| CLAUDE.md 등 메모리 파일 압축 | `caveman-compress` |
| 토큰 사용량 확인 / 도움말 | `caveman-stats` / `caveman-help` |
| caveman식 서브에이전트 위임 | `cavecrew` |

### CAD (Autodesk Inventor)
| 요청 | 스킬 |
|---|---|
| Inventor 3D 부품 모델링(플랜지·샤프트·구멍·필렛·모따기) | `inventor-modeling` |
| DIN/ISO 표준부품(너트·볼트·와셔·플랜지 규격 지정) | `inventor-din-parts` |

## 원칙 (안 시끄럽게)

- 제안은 **한 줄**로. 스킬 설명을 길게 복붙하지 않는다.
- 인사·잡담·도구 자체에 대한 질문에는 발동하지 않는다.
- 스킬은 원래 자동 발동도 하므로, 이 라우터는 그 판단을 **먼저·명시적으로** 해서
  놓치거나 엉뚱한 걸 고르는 걸 줄이는 용도다. 매 응답을 느리게 만들지 않는다.
- 반복 작업인데 맞는 스킬이 없으면 `skill-creator`로 새로 만들 것을 (가끔) 제안한다.
