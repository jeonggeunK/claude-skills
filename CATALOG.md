# 스킬 카탈로그 (Skill Catalog)

이 저장소(`~/.claude/skills`)에 설치된 전역 스킬 **133개**를 출처별로 정리했습니다. **한국어 요약**과 함께, 각 스킬의 `SKILL.md`에서 그대로 뽑은 **영어 원문 설명**을 병기했습니다.

## 스킬은 어떻게 쓰나요?

- **자동 발동이 기본입니다.** 스킬을 따로 부르지 않아도, 작업을 요청하면 클로드가 관련 스킬을 알아서 켭니다. 예: "이 데이터 엑셀로 만들어줘" → `xlsx` 스킬 자동 사용.
- **직접 지정도 됩니다.** "OO 스킬 써서 ~해줘"처럼 스킬 이름(아래 각 항목의 굵은 이름)을 말하면 그 스킬을 씁니다.
- **슬래시 명령이 있는 스킬**은 채팅창에 `/스킬이름` 으로도 부를 수 있습니다(스킬에 따라 다름).
- 50개를 다 외울 필요 없습니다. 필요한 작업을 자연어로 요청하면 됩니다.

## 목차

- [Anthropic 공식 — anthropics/skills (11)](#anthropic-공식-anthropics-skills)
- [Caveman(토큰 절약) — juliusbrussee/caveman (7)](#caveman-토큰-절약-juliusbrussee-caveman)
- [Marketing — coreyhaines31/marketingskills (45)](#marketing-coreyhaines31-marketingskills)
- [OpenClaudia 마케팅·SEO — OpenClaudia/openclaudia-skills (20)](#openclaudia-마케팅-seo-openclaudia-openclaudia-skills)
- [Superpowers(개발 워크플로우) — obra/superpowers (14)](#superpowers-개발-워크플로우-obra-superpowers)
- [Context Engineering — muratcankoylan/Agent-Skills-for-Context-Engineering (15)](#context-engineering-muratcankoylan-agent-skills-for-context-engineering)
- [UI/UX Pro Max — nextlevelbuilder/ui-ux-pro-max-skill (7)](#ui-ux-pro-max-nextlevelbuilder-ui-ux-pro-max-skill)
- [Tapestry(리서치·정리) — michalparkola/tapestry-skills (5)](#tapestry-리서치-정리-michalparkola-tapestry-skills)
- [Composio — ComposioHQ/awesome-claude-skills (1)](#composio-composiohq-awesome-claude-skills)
- [Stop Slop — hardikpandya/stop-slop (1)](#stop-slop-hardikpandya-stop-slop)
- [Obsidian Second Brain — eugeniughelbur/obsidian-second-brain (1)](#obsidian-second-brain-eugeniughelbur-obsidian-second-brain)
- [Claude Council — hex/claude-council (4)](#claude-council-hex-claude-council)
- [기타 / 직접 추가 (2)](#기타-직접-추가)

## Anthropic 공식 — anthropics/skills

| 스킬 | 한국어 설명 | Description (원문) |
|------|-------------|--------------------|
| **algorithmic-art** | p5.js 기반 제너러티브/알고리즘 아트 제작. | Creating algorithmic art using p5.js with seeded randomness and interactive parameter exploration. Use this when users request creating art using code, generative art, algorithmic art, flow fields, or particle systems. Create original algorithmic art rather t… |
| **brand-guidelines** | Anthropic 공식 브랜드 색·타이포를 산출물에 적용. | Applies Anthropic's official brand colors and typography to any sort of artifact that may benefit from having Anthropic's look-and-feel. Use it when brand colors or style guidelines, visual formatting, or company design standards apply. |
| **canvas-design** | 포스터·아트 등 고퀄 비주얼을 PNG/PDF로 제작. | Create beautiful visual art in .png and .pdf documents using design philosophy. You should use this skill when the user asks to create a poster, piece of art, design, or other static piece. Create original visual designs, never copying existing artists' work… |
| **doc-coauthoring** | 문서·제안서 등 구조화된 공동작성 워크플로. | Guide users through a structured workflow for co-authoring documentation. Use when user wants to write documentation, proposals, technical specs, decision docs, or similar structured content. This workflow helps users efficiently transfer context, refine cont… |
| **frontend-design** | 템플릿 티 안 나는 개성 있는 UI 디자인 방향. | Guidance for distinctive, intentional visual design when building new UI or reshaping an existing one. Helps with aesthetic direction, typography, and making choices that don't read as templated defaults. |
| **internal-comms** | 사내 커뮤니케이션(상태보고·리더십 업데이트 등) 작성. | A set of resources to help me write all kinds of internal communications, using the formats that my company likes to use. Claude should use this skill whenever asked to write some sort of internal communications (status reports, leadership updates, 3P updates… |
| **mcp-builder** | 외부 서비스 연동 MCP 서버 제작 가이드. | Guide for creating high-quality MCP (Model Context Protocol) servers that enable LLMs to interact with external services through well-designed tools. Use when building MCP servers to integrate external APIs or services, whether in Python (FastMCP) or Node/Typ… |
| **slack-gif-creator** | 슬랙 규격 애니메이션 GIF 제작. | Knowledge and utilities for creating animated GIFs optimized for Slack. Provides constraints, validation tools, and animation concepts. Use when users request animated GIFs for Slack like "make me a GIF of X doing Y for Slack. |
| **theme-factory** | 색·폰트 맞춘 테마 10종을 산출물에 적용. | Toolkit for styling artifacts with a theme. These artifacts can be slides, docs, reportings, HTML landing pages, etc. There are 10 pre-set themes with colors/fonts that you can apply to any artifact that has been creating, or can generate a new theme on-the-f… |
| **web-artifacts-builder** | React·Tailwind·shadcn 기반 인터랙티브 웹 아티팩트. | Suite of tools for creating elaborate, multi-component claude.ai HTML artifacts using modern frontend web technologies (React, Tailwind CSS, shadcn/ui). Use for complex artifacts requiring state management, routing, or shadcn/ui components - not for simple si… |
| **webapp-testing** | Playwright로 로컬 웹앱 자동 테스트. (개발자용) | Toolkit for interacting with and testing local web applications using Playwright. Supports verifying frontend functionality, debugging UI behavior, capturing browser screenshots, and viewing browser logs. |

## Caveman(토큰 절약) — juliusbrussee/caveman

| 스킬 | 한국어 설명 | Description (원문) |
|------|-------------|--------------------|
| **cavecrew** | caveman식 서브에이전트 위임 판단(조사/편집/리뷰). | Decision guide for delegating to caveman-style subagents. Tells the main thread WHEN to spawn `cavecrew-investigator` (locate code), `cavecrew-builder` (1-2 file edit), or `cavecrew-reviewer` (diff review) instead of doing the work inline or using vanilla `Ex… |
| **caveman** | 초압축 응답 모드. 정확도 유지하며 토큰 ~75% 절감. | Ultra-compressed communication mode. Cuts token usage ~75% by speaking like caveman while keeping full technical accuracy. Supports intensity levels: lite, full (default), ultra, wenyan-lite, wenyan-full, wenyan-ultra. Use when user says "caveman mode", "talk… |
| **caveman-commit** | 초압축 커밋 메시지 생성(Conventional Commits). | Ultra-compressed commit message generator. Cuts noise from commit messages while preserving intent and reasoning. Conventional Commits format. Subject ≤50 chars, body only when "why" isn't obvious. Use when user says "write a commit", "commit message", "gener… |
| **caveman-compress** | 메모리 파일(CLAUDE.md 등)을 압축해 입력 토큰 절약. | Compress natural language memory files (CLAUDE.md, todos, preferences) into caveman format to save input tokens. Preserves all technical substance, code, URLs, and structure. Compressed version overwrites the original file. Human-readable backup saved as FILE… |
| **caveman-help** | caveman 모드·명령 빠른 참조 카드. | Quick-reference card for all caveman modes, skills, and commands. One-shot display, not a persistent mode. Trigger: /caveman-help, "caveman help", "what caveman commands", "how do I use caveman". |
| **caveman-review** | 초압축 코드리뷰 코멘트(위치·문제·수정 한 줄). | Ultra-compressed code review comments. Cuts noise from PR feedback while preserving the actionable signal. Each comment is one line: location, problem, fix. Use when user says "review this PR", "code review", "review the diff", "/review", or invokes /caveman-… |
| **caveman-stats** | 현재 세션 실제 토큰 사용량·절감량 표시. | Show real token usage and estimated savings for the current session. Reads directly from the Claude Code session log — no AI estimation. Triggers on /caveman-stats. Output is injected by the mode-tracker hook; the model itself does not compute the numbers. |

## Marketing — coreyhaines31/marketingskills

| 스킬 | 한국어 설명 | Description (원문) |
|------|-------------|--------------------|
| **ab-testing** | A/B 테스트·실험 설계 및 그로스 실험 프로그램 구축. | When the user wants to plan, design, or implement an A/B test or experiment, or build a growth experimentation program. Also use when the user mentions "A/B test," "split test," "experiment," "test this change," "variant copy," "multivariate test," "hypothesi… |
| **ad-creative** | 유료 광고 소재(헤드라인·설명·문구·변형) 생성·확장. | When the user wants to generate, iterate, or scale ad creative — headlines, descriptions, primary text, or full ad variations — for any paid advertising platform. Also use when the user mentions 'ad copy variations,' 'ad creative,' 'generate headlines,' 'RSA… |
| **ads** | 구글·메타·링크드인 등 유료 광고 캠페인 전반 지원(PPC). | When the user wants help with paid advertising campaigns on Google Ads, Meta (Facebook/Instagram), LinkedIn, Twitter/X, or other ad platforms. Also use when the user mentions 'PPC,' 'paid media,' 'ROAS,' 'CPA,' 'ad campaign,' 'retargeting,' 'audience targetin… |
| **ai-seo** | AI 검색엔진 최적화(AEO/GEO), LLM 인용·AI 답변 노출. | When the user wants to optimize content for AI search engines, get cited by LLMs, or appear in AI-generated answers. Also use when the user mentions 'AI SEO,' 'AEO,' 'GEO,' 'LLMO,' 'answer engine optimization,' 'generative engine optimization,' 'LLM optimizat… |
| **analytics** | 애널리틱스 트래킹·측정 설정·점검(GA4, 전환추적 등). | When the user wants to set up, improve, or audit analytics tracking and measurement. Also use when the user mentions "set up tracking," "GA4," "Google Analytics," "conversion tracking," "event tracking," "UTM parameters," "tag manager," "GTM," "analytics impl… |
| **aso** | 앱스토어/구글플레이 리스팅 최적화(ASO) 점검. | When the user wants to audit or optimize an App Store or Google Play listing. Also use when the user mentions 'ASO audit,' 'app store optimization,' 'optimize my app listing,' 'improve app visibility,' 'app store ranking,' 'audit my listing,' 'why aren't peop… |
| **churn-prevention** | 이탈 방지·해지 플로우·구제 오퍼·결제 실패 복구. | When the user wants to reduce churn, build cancellation flows, set up save offers, recover failed payments, or implement retention strategies. Also use when the user mentions 'churn,' 'cancel flow,' 'offboarding,' 'save offer,' 'dunning,' 'failed payment reco… |
| **co-marketing** | 공동 마케팅 파트너 발굴·제휴 캠페인 기획. | When the user wants to find co-marketing partners, plan joint campaigns, or brainstorm partnership opportunities. Use when the user says 'co-marketing,' 'partner marketing,' 'joint campaign,' 'who should we partner with,' 'integration marketing,' 'cross-promo… |
| **cold-email** | 답장 오는 B2B 콜드메일·후속 시퀀스 작성. | Write B2B cold emails and follow-up sequences that get replies. Use when the user wants to write cold outreach emails, prospecting emails, cold email campaigns, sales development emails, or SDR emails. Also use when the user mentions "cold outreach," "prospec… |
| **community-marketing** | 디스코드·슬랙 등 커뮤니티로 성장·충성도 구축. | Build and leverage online communities to drive product growth and brand loyalty. Use when the user wants to create a community strategy, grow a Discord or Slack community, manage a forum or subreddit, build brand advocates, increase word-of-mouth, drive commu… |
| **competitor-profiling** | 경쟁사 URL로 프로파일·리서치·분석. | When the user wants to research, profile, or analyze competitors from their URLs. Also use when the user mentions 'competitor profile,' 'competitor research,' 'competitor analysis,' 'profile this competitor,' 'analyze competitor,' 'competitive intelligence,'… |
| **competitors** | SEO·세일즈용 경쟁사 비교/대안 페이지 제작. | When the user wants to create competitor comparison or alternative pages for SEO and sales enablement. Also use when the user mentions 'alternative page,' 'vs page,' 'competitor comparison,' 'comparison page,' '[Product] vs [Product],' '[Product] alternative,… |
| **content-strategy** | 콘텐츠 전략(주제·방향) 수립. | When the user wants to plan a content strategy, decide what content to create, or figure out what topics to cover. Also use when the user mentions "content strategy," "what should I write about," "content ideas," "blog strategy," "topic clusters," "content pl… |
| **copy-editing** | 기존 마케팅 카피 편집·교정·리프레시. | When the user wants to edit, review, or improve existing marketing copy, or refresh outdated content. Also use when the user mentions 'edit this copy,' 'review my copy,' 'copy feedback,' 'proofread,' 'polish this,' 'make this better,' 'copy sweep,' 'tighten t… |
| **copywriting** | 홈·랜딩·가격 등 마케팅 카피 작성·개선. | When the user wants to write, rewrite, or improve marketing copy for any page — including homepage, landing pages, pricing pages, feature pages, about pages, or product pages. Also use when the user says "write copy for," "improve this copy," "rewrite this pa… |
| **cro** | 페이지·폼 전환율 최적화. | When the user wants to optimize, improve, or increase conversions on any marketing page or form — including homepage, landing pages, pricing pages, feature pages, lead capture forms, or contact forms. Also use when the user says 'CRO,' 'conversion rate optimi… |
| **customer-research** | 고객 리서치·ICP·인터뷰 분석·종합. | When the user wants to conduct, analyze, or synthesize customer research. Use when the user mentions "customer research," "ICP research," "talk to customers," "analyze transcripts," "customer interviews," "survey analysis," "support ticket analysis," "voice o… |
| **directory-submissions** | 스타트업/SaaS/AI 디렉터리 등록(백링크·발견성). | When the user wants to submit their product to startup, SaaS, AI, agent, MCP, no-code, or review directories for backlinks, domain rating, and discovery. Also use when the user mentions "directory submissions," "submit to directories," "backlinks from directo… |
| **emails** | 이메일 시퀀스·드립·라이프사이클 프로그램. | When the user wants to create or optimize an email sequence, drip campaign, automated email flow, or lifecycle email program. Also use when the user mentions "email sequence," "drip campaign," "nurture sequence," "onboarding emails," "welcome sequence," "re-e… |
| **free-tools** | 마케팅용 무료 툴 기획·평가·제작. | When the user wants to plan, evaluate, or build a free tool for marketing purposes — lead generation, SEO value, or brand awareness. Also use when the user mentions "engineering as marketing," "free tool," "marketing tool," "calculator," "generator," "interac… |
| **image** | 블로그 히어로·소셜·목업 등 마케팅 이미지 생성·편집. | When the user wants to create, generate, edit, or optimize images for marketing — blog heroes, social graphics, product mockups, profile banners, listing visuals, or brand assets. Also use when the user mentions 'AI image generation,' 'generate an image,' 'cr… |
| **launch** | 제품 출시·기능 발표·릴리스 전략(Product Hunt 등). | When the user wants to plan a product launch, feature announcement, or release strategy. Also use when the user mentions 'launch,' 'Product Hunt,' 'feature release,' 'announcement,' 'go-to-market,' 'beta launch,' 'early access,' 'waitlist,' 'product update,'… |
| **lead-magnets** | 리드 매그넷 기획·최적화(게이티드 콘텐츠). | When the user wants to create, plan, or optimize a lead magnet for email capture or lead generation. Also use when the user mentions "lead magnet," "gated content," "content upgrade," "downloadable," "ebook," "cheat sheet," "checklist," "template download," "… |
| **marketing-ideas** | SaaS·소프트웨어 마케팅 아이디어·전략. | When the user needs marketing ideas, inspiration, or strategies for their SaaS or software product. Also use when the user asks for 'marketing ideas,' 'growth ideas,' 'how to market,' 'marketing strategies,' 'marketing tactics,' 'ways to promote,' 'ideas to g… |
| **marketing-plan** | 종합 마케팅 플랜(GTM 포함). | When the user needs a comprehensive marketing plan for a client, a company they advise, or their own product. Also use when the user mentions "marketing plan," "growth plan," "GTM plan," "go-to-market plan," "AARRR plan," "90-day marketing plan," "12-month ma… |
| **marketing-psychology** | 심리·행동과학을 마케팅에 적용. | When the user wants to apply psychological principles, mental models, or behavioral science to marketing. Also use when the user mentions 'psychology,' 'mental models,' 'cognitive bias,' 'persuasion,' 'behavioral science,' 'why people buy,' 'decision-making,'… |
| **offers** | 실제 파는 오퍼 설계(가치·보너스·보증·희소성). | When the user wants to design, construct, or improve an offer — the thing they actually sell — including value framing, bonus stacking, guarantee design, scarcity/urgency, naming, and payment structure. Also use when the user mentions 'offer,' 'offer design,'… |
| **onboarding** | 가입 후 온보딩·활성화·첫경험·가치실현 최적화. | When the user wants to optimize post-signup onboarding, user activation, first-run experience, or time-to-value. Also use when the user mentions "onboarding flow," "activation rate," "user activation," "first-run experience," "empty states," "onboarding check… |
| **paywalls** | 인앱 페이월·업그레이드 화면·업셀 최적화. | When the user wants to create or optimize in-app paywalls, upgrade screens, upsell modals, or feature gates. Also use when the user mentions "paywall," "upgrade screen," "upgrade modal," "upsell," "feature gate," "convert free to paid," "freemium conversion,"… |
| **popups** | 팝업·모달·오버레이·배너(전환용) 제작·최적화. | When the user wants to create or optimize popups, modals, overlays, slide-ins, or banners for conversion purposes. Also use when the user mentions "exit intent," "popup conversions," "modal optimization," "lead capture popup," "email popup," "announcement ban… |
| **pricing** | 가격·패키징·수익화 전략. | When the user wants help with pricing decisions, packaging, or monetization strategy. Also use when the user mentions 'pricing,' 'pricing tiers,' 'freemium,' 'free trial,' 'packaging,' 'price increase,' 'value metric,' 'Van Westendorp,' 'willingness to pay,'… |
| **product-marketing** | 제품 마케팅 컨텍스트 문서(포지셔닝 등) 작성. | When the user wants to create or update their product marketing context document. Also use when the user mentions 'product context,' 'marketing context,' 'set up context,' 'positioning,' 'who is my target audience,' 'describe my product,' 'ICP,' 'ideal custom… |
| **programmatic-seo** | 템플릿·데이터로 대량 SEO 페이지 생성. | When the user wants to create SEO-driven pages at scale using templates and data. Also use when the user mentions "programmatic SEO," "template pages," "pages at scale," "directory pages," "location pages," "[keyword] + [city] pages," "comparison pages," "int… |
| **prospecting** | 잠재고객 발굴·자격검증·리스트 구축. | When the user wants to find, qualify, and build a list of prospects to reach out to — across B2B SaaS, general B2B, or local small businesses. Also use when the user mentions "prospecting," "build a prospect list," "find prospects," "find leads," "lead gen li… |
| **public-relations** | PR·언드미디어·기자 아웃리치·미디어 전략. | When the user wants help with public relations, earned media, press coverage, journalist outreach, or media strategy (not pull requests). Also use when the user mentions 'PR,' 'public relations,' 'press,' 'press release,' 'press coverage,' 'media outreach,' '… |
| **referrals** | 추천·제휴·앰배서더 프로그램 기획·최적화. | When the user wants to create, optimize, or analyze a referral program, affiliate program, or word-of-mouth strategy. Also use when the user mentions 'referral,' 'affiliate,' 'ambassador,' 'word of mouth,' 'viral loop,' 'refer a friend,' 'partner program,' 'r… |
| **revops** | 레비뉴 오퍼레이션·리드 라이프사이클·핸드오프. | When the user wants help with revenue operations, lead lifecycle management, or marketing-to-sales handoff processes. Also use when the user mentions 'RevOps,' 'revenue operations,' 'lead scoring,' 'lead routing,' 'MQL,' 'SQL,' 'pipeline stages,' 'deal desk,'… |
| **sales-enablement** | 세일즈 자료(피치덱·원페이저·반론대응·데모). | When the user wants to create sales collateral, pitch decks, one-pagers, objection handling docs, or demo scripts. Also use when the user mentions 'sales deck,' 'pitch deck,' 'one-pager,' 'leave-behind,' 'objection handling,' 'deal-specific ROI analysis,' 'de… |
| **schema** | 스키마 마크업·구조화 데이터(JSON-LD, 리치 스니펫). | When the user wants to add, fix, or optimize schema markup and structured data on their site. Also use when the user mentions "schema markup," "structured data," "JSON-LD," "rich snippets," "schema.org," "FAQ schema," "product schema," "review schema," "bread… |
| **seo-audit** | 사이트 SEO 감사·진단(테크니컬·온페이지). | When the user wants to audit, review, or diagnose SEO issues on their site. Also use when the user mentions "SEO audit," "technical SEO," "why am I not ranking," "SEO issues," "on-page SEO," "meta tags review," "SEO health check," "my traffic dropped," "lost… |
| **signup** | 가입·등록·계정생성·체험활성화 플로 최적화. | When the user wants to optimize signup, registration, account creation, or trial activation flows. Also use when the user mentions "signup conversions," "registration friction," "signup form optimization," "free trial signup," "reduce signup dropoff," "accoun… |
| **site-architecture** | 사이트 페이지 계층·내비·URL·내부링크 설계. | When the user wants to plan, map, or restructure their website's page hierarchy, navigation, URL structure, or internal linking. Also use when the user mentions "sitemap," "site map," "visual sitemap," "site structure," "page hierarchy," "information architec… |
| **sms** | SMS/MMS 마케팅(웰컴·장바구니·윈백·프로모) 기획. | When the user wants to plan, build, or optimize SMS or MMS marketing — including welcome flows, abandoned cart texts, post-purchase, win-back, promotional sends, or transactional/auth SMS. Also use when the user mentions "SMS marketing," "text message campaig… |
| **social** | SNS 콘텐츠 제작·스케줄·최적화·소셜 리스닝. | When the user wants help creating, scheduling, or optimizing social media content for LinkedIn, Twitter/X, Instagram, TikTok, Facebook, or other platforms, or wants to do social listening and engagement triage. Also use when the user mentions 'LinkedIn post,'… |
| **video** | AI/프로그래매틱으로 영상 콘텐츠 제작(Remotion 등). | When the user wants to create, generate, or produce video content using AI tools or programmatic frameworks. Also use when the user mentions 'video production,' 'AI video,' 'Remotion,' 'Hyperframes,' 'HeyGen,' 'Synthesia,' 'Veo,' 'Sora,' 'Runway,' 'Kling,' 'S… |

## OpenClaudia 마케팅·SEO — OpenClaudia/openclaudia-skills

| 스킬 | 한국어 설명 | Description (원문) |
|------|-------------|--------------------|
| **brand-monitor** | Brand.dev API로 브랜드 언급·평판·PR 기회 모니터링. | Brand monitoring and mention tracking via the Brand.dev API. Use when asked to monitor brand mentions, track sentiment, find PR opportunities, detect logo usage, or analyze brand presence online. Trigger phrases: "brand monitoring", "mention tracking", "brand… |
| **competitor-analysis** | SEO·광고·소셜·가격·포지셔닝 전반 경쟁사 분석. | Conduct full competitor strategy breakdowns across SEO, ads, social, email, pricing, and positioning. Use when the user asks to analyze competitors, benchmark against rivals, understand competitive landscape, find competitor weaknesses, or build a competitive… |
| **content-calendar** | SNS·콘텐츠 발행 캘린더(월간·주간, 유형·시점) 기획. | Plan and schedule social media and content marketing calendars. Monthly and weekly planning, content mix ratios, theme days, platform-specific timing, and batch creation workflows. Trigger phrases: "content calendar", "posting schedule", "social media calenda… |
| **content-gap-analysis** | 경쟁사 대비 부족한 콘텐츠·키워드 갭 발굴. | Identify content gaps between your site and competitors. Use when the user says "content gaps", "what am I missing", "competitor content", "content opportunities", "topics I should cover", "content gap analysis", or asks about finding topics and keywords thei… |
| **content-repurposing** | 콘텐츠 1개를 여러 플랫폼·형식으로 재가공. | Repurpose and atomize content across platforms and formats. Use when the user says "repurpose this", "turn this into", "convert blog to", "make a thread from", "content atomization", "repurpose content", "turn this article into social posts", or asks about ad… |
| **email-sequence** | 웰컴·장바구니·재참여 등 이메일 드립 시퀀스. | Create email drip campaigns, nurture sequences, and automated email flows. Includes templates for welcome series, abandoned cart, re-engagement, product launch, and onboarding sequences. Trigger phrases: "email sequence", "drip campaign", "nurture sequence",… |
| **email-subject-lines** | 오픈율 높이는 이메일 제목 생성·A/B. | Generate, evaluate, and A/B test email subject lines for maximum open rates. Includes formulas for curiosity, urgency, personalization, and more. Trigger phrases: "email subject line", "subject line ideas", "email subject", "write subject lines", "A/B test su… |
| **facebook-ads** | 페북/메타 광고 캠페인·카피·타겟·예산. | Create Facebook and Meta ad campaigns, write ad copy, define audiences, and plan budgets. Use when the user asks about Facebook Ads, Instagram Ads, Meta Ads, social media advertising, carousel ads, retargeting campaigns, lookalike audiences, or ad creative fo… |
| **google-ads** | 구글 검색/디스플레이 광고 카피·캠페인 구조. | Write Google Ads copy and build campaign structures. Use when the user asks to create Google Ads, write ad copy for search or display, set up PPC campaigns, optimize Quality Score, choose bidding strategies, or generate responsive search ads. Trigger phrases… |
| **google-ads-report** | 구글 광고 성과 데이터·리포트(ROAS·비용 등). | Pull Google Ads performance data and generate reports. Use when asked about ad campaign performance, keyword costs, quality scores, ROAS, conversion tracking, or ad spend analysis. Trigger phrases: "google ads", "adwords", "campaign performance", "ad spend",… |
| **google-analytics** | GA4 트래픽·행동·전환 리포트·인사이트. | Pull GA4 reports, traffic data, and insights from the Google Analytics Data API. Use when asked about website traffic, user behavior, acquisition channels, conversions, or audience segments. Trigger phrases: "google analytics", "GA4", "traffic report", "analy… |
| **growth-strategy** | 프레임워크·지표·실험 기반 그로스 전략. | Build a growth strategy with frameworks, metrics, and experimentation. Use when the user says "growth strategy", "growth plan", "AARRR", "growth loops", "North Star Metric", "growth model", "activation rate", "retention strategy", "churn reduction", "growth e… |
| **keyword-research** | SemRush API로 키워드 조사(검색량·난이도). | Perform keyword research using the SemRush API. Use when the user says "find keywords", "keyword research", "what should I rank for", "keyword ideas", "search volume", "keyword difficulty", "topic clusters", "content gaps", or asks about SEO keywords for a to… |
| **launch-strategy** | 주차별 타임라인·채널별 플레이북으로 출시 실행. | Plan and execute product launches with week-by-week timelines and channel-specific playbooks. Use when the user asks about launching a product, Product Hunt launch, go-to-market strategy, launch plan, beta program, pre-launch marketing, launch day execution,… |
| **lead-magnet** | 이메일 수집용 리드 매그넷(체크리스트·템플릿) 제작. | Create lead magnets and gated content to capture email subscribers and leads. Use when asked to design checklists, templates, calculators, mini-courses, whitepapers, or other downloadable content offers. Trigger phrases: "lead magnet", "gated content", "email… |
| **linkedin-content** | 링크드인 고성과 포스트·전략. | Create high-performing LinkedIn posts and content strategy. Use when the user says "LinkedIn post", "write for LinkedIn", "LinkedIn content", "LinkedIn strategy", "LinkedIn hook", "professional post", "thought leadership post", or asks about creating content… |
| **newsletter** | 이메일 뉴스레터 기획·구독자 성장. | Plan and grow an email newsletter. Use when the user says "newsletter strategy", "grow my newsletter", "newsletter content", "email newsletter", "subscriber growth", "newsletter monetization", "Substack strategy", "Beehiiv", or asks about building, growing, o… |
| **page-cro** | 랜딩페이지 전환율 감사·최적화. | Audit and optimize landing pages for conversion rate. Use when the user asks about conversion rate optimization, CRO, landing page audits, improving sign-ups or sales, reducing bounce rate, A/B test ideas for pages, form optimization, or CTA optimization. Tri… |
| **seo-content-brief** | 검색 상위 노리는 SEO 글의 개요(브리프). | Create an SEO content brief for writers. Use when the user says "content brief", "SEO brief", "writing brief", "brief for", "writer brief", "outline for SEO", or asks about creating a structured brief to hand to a writer for producing search-optimized content. |
| **social-content** | 레딧·트위터·링크드인 등 SNS 포스트 제작·발행. | Create and publish social media posts for Reddit, Twitter/X, LinkedIn, Instagram, Facebook, and TikTok. Platform-specific formats, character limits, hashtag strategies, hooks, and content repurposing. Can post directly to Reddit and other platforms via API. T… |

## Superpowers(개발 워크플로우) — obra/superpowers

| 스킬 | 한국어 설명 | Description (원문) |
|------|-------------|--------------------|
| **brainstorming** | 러프한 아이디어를 질문으로 다듬어 설계로. 기획에 유용. | You MUST use this before any creative work - creating features, building components, adding functionality, or modifying behavior. Explores user intent, requirements and design before implementation. |
| **dispatching-parallel-agents** | 독립 작업 2개+ 병렬 에이전트 분배. | Use when facing 2+ independent tasks that can be worked on without shared state or sequential dependencies |
| **executing-plans** | 작성된 구현 계획을 리뷰 체크포인트와 함께 실행. | Use when you have a written implementation plan to execute in a separate session with review checkpoints |
| **finishing-a-development-branch** | 개발 완료 후 병합·PR 등 마무리 옵션 안내. | Use when implementation is complete, all tests pass, and you need to decide how to integrate the work - guides completion of development work by presenting structured options for merge, PR, or cleanup |
| **receiving-code-review** | 코드리뷰 피드백 수용·검증. (개발자용) | Use when receiving code review feedback, before implementing suggestions, especially if feedback seems unclear or technically questionable - requires technical rigor and verification, not performative agreement or blind implementation |
| **requesting-code-review** | 작업 완료/병합 전 코드리뷰 요청. (개발자용) | Use when completing tasks, implementing major features, or before merging to verify work meets requirements |
| **subagent-driven-development** | 현재 세션에서 독립 작업을 서브에이전트로 실행. | Use when executing implementation plans with independent tasks in the current session |
| **systematic-debugging** | 버그·실패를 체계적으로 추적해 수정. (개발자용) | Use when encountering any bug, test failure, or unexpected behavior, before proposing fixes |
| **test-driven-development** | 테스트 먼저 짜는 TDD. (개발자용) | Use when implementing any feature or bugfix, before writing implementation code |
| **using-git-worktrees** | 격리 작업공간(git worktree) 설정. (개발자용) | Use when starting feature work that needs isolation from current workspace or before executing implementation plans - ensures an isolated workspace exists via native tools or git worktree fallback |
| **using-superpowers** | 대화 시작 시 스킬 사용 규칙 확립(superpowers 로더). | Use when starting any conversation - establishes how to find and use skills, requiring skill invocation before ANY response including clarifying questions |
| **verification-before-completion** | 완료 주장 전 검증 명령 실행·확인. (개발자용) | Use when about to claim work is complete, fixed, or passing, before committing or creating PRs - requires running verification commands and confirming output before making any success claims; evidence before assertions always |
| **writing-plans** | 멀티스텝 작업 스펙을 코드 전에 계획서로. | Use when you have a spec or requirements for a multi-step task, before touching code |
| **writing-skills** | 새 스킬 작성·편집·검증. (스킬 제작) | Use when creating new skills, editing existing skills, or verifying skills work before deployment |

## Context Engineering — muratcankoylan/Agent-Skills-for-Context-Engineering

| 스킬 | 한국어 설명 | Description (원문) |
|------|-------------|--------------------|
| **advanced-evaluation** | 고급 LLM 평가(LLM-as-judge, 점수화, 페어와이즈, 루브릭 보정). | This skill should be used for advanced LLM evaluation: LLM-as-judge systems, direct scoring, pairwise comparison, rubric calibration, evaluator bias mitigation, confidence scoring, and automated quality assessment. |
| **bdi-mental-states** | BDI(신념·욕구·의도)로 에이전트 정신상태 모델링. (연구용) | This skill should be used when modeling agent mental states with BDI concepts: beliefs, desires, intentions, RDF-to-belief transformations, rational agency traces, cognitive agents, BDI ontologies, and neuro-symbolic AI integration. |
| **context-compression** | 긴 세션의 컨텍스트 압축·요약·핸드오프. | This skill should be used when long-running agent sessions need context compression, structured summarization, compaction, token-per-task optimization, or durable handoff summaries that preserve decisions, files, risks, and next actions. |
| **context-degradation** | 컨텍스트 저하(중간 유실·오염·혼선) 진단·완화. | This skill should be used for diagnosing and mitigating context degradation: lost-in-middle failures, context poisoning, context clash, context confusion, attention-pattern issues, and agent performance degradation caused by accumulated or conflicting context. |
| **context-fundamentals** | 컨텍스트 엔지니어링 기초 개념 설명. | This skill should be used to explain or reason about the foundational concepts of context engineering: what context is, the anatomy of a context window, how attention mechanics work, the U-shaped attention curve, why context quality matters more than quantity… |
| **context-optimization** | 컨텍스트 효율화(예산·캐시·토큰비용 절감). | This skill should be used for improving context efficiency: context budgeting, observation masking, prefix or KV-cache strategy, partitioning, token-cost reduction, retrieval scoping, and extending effective context capacity without lowering answer quality. |
| **evaluation** | 에이전트 평가 시스템(결정적 검증·회귀·품질 게이트). | This skill should be used when building agent evaluation systems: deterministic checks, regression suites, multi-dimensional rubrics, quality gates, production monitoring, baseline comparison, and outcome measurement for agent pipelines. |
| **filesystem-context** | 파일 기반 컨텍스트(스크래치패드·핸드오프·파일 메모리). | This skill should be used when agent work needs file-backed context: durable scratchpads, tool-output offloading, just-in-time discovery, cross-agent handoff files, filesystem memory, or cleanup policies for context stored outside the prompt. |
| **harness-engineering** | 자율 에이전트 하네스 설계(리서치 루프·평가·로그). | This skill should be used when designing autonomous agent harnesses: research loops, evaluation scaffolds, locked and editable surfaces, durable logs, novelty gates, pruning, rollback, PR preparation, and human approval boundaries. |
| **hosted-agents** | 호스팅/백그라운드 에이전트 인프라 설계. | This skill should be used when designing hosted or background agent infrastructure: sandboxed execution, remote coding environments, warm pools, session persistence, multiplayer collaboration, self-spawning agents, or Modal-style sandboxes. |
| **latent-briefing** | 에이전트 간 메모리 공유·KV 캐시 컴팩션. | This skill should be used when the user asks to \"share memory between agents\", \"KV cache compaction for multi-agent\", \"orchestrator worker context\", \"latent briefing\", \"reduce worker tokens\", \"cross-agent memory without summarization\", or discusse… |
| **memory-systems** | 에이전트 영속 시맨틱 메모리(세션 간 지식 유지). | This skill should be used for persistent semantic memory in agent systems: cross-session knowledge retention, entity tracking, temporal validity, graph or vector retrieval, memory consolidation, and memory benchmark selection. Route file-backed scratchpads to… |
| **multi-agent-patterns** | 멀티에이전트 설계(격리·감독/스웜·핸드오프). | This skill should be used when designing multi-agent systems that need context isolation, supervisor or swarm coordination, explicit handoffs, parallel execution, or a decision on whether multiple agents are justified. |
| **project-development** | LLM 시스템 프로젝트 의사결정(적합성·파이프라인). | This skill should be used for project-level decisions about LLM-powered systems: whether an LLM is the right primitive for the task at hand, the shape of a multi-stage batch or agent pipeline, token and cost estimation, choosing between single-agent and multi… |
| **tool-design** | 에이전트 툴 인터페이스 설계(설명·스키마·응답형식). | This skill should be used for the tool-interface layer of an agent system specifically: writing tool descriptions agents can route on, designing tool schemas and response formats, naming conventions, actionable error recovery messages, MCP server design, tool… |

## UI/UX Pro Max — nextlevelbuilder/ui-ux-pro-max-skill

| 스킬 | 한국어 설명 | Description (원문) |
|------|-------------|--------------------|
| **banner-design** | SNS·광고·웹 히어로·인쇄용 배너 디자인(AI 비주얼). | Design banners for social media, ads, website heroes, creative assets, and print. Multiple art direction options with AI-generated visuals. Actions: design, create, generate banner. Platforms: Facebook, Twitter/X, LinkedIn, YouTube, Instagram, Google Display,… |
| **brand** | 브랜드 보이스·비주얼 아이덴티티·메시징·자산 일관성. | Brand voice, visual identity, messaging frameworks, asset management, brand consistency. Activate for branded content, tone of voice, marketing assets, brand compliance, style guides. |
| **design** | 종합 디자인(브랜드·토큰·UI·로고·CI·HTML 발표자료). | Comprehensive design skill: brand identity, design tokens, UI styling, logo generation (55 styles, Gemini AI), corporate identity program (50 deliverables, CIP mockups), HTML presentations (Chart.js), banner design (22 styles, social/ads/web/print), icon desi… |
| **design-system** | 디자인 토큰 아키텍처·컴포넌트 스펙·슬라이드 생성. | Token architecture, component specifications, and slide generation. Three-layer tokens (primitive→semantic→component), CSS variables, spacing/typography scales, component specs, strategic slide creation. Use for design tokens, systematic design, brand-complia… |
| **slides** | Chart.js·디자인토큰 기반 전략적 HTML 발표자료. | Create strategic HTML presentations with Chart.js, design tokens, responsive layouts, copywriting formulas, and contextual slide strategies. |
| **ui-styling** | shadcn/ui·Tailwind 기반 접근성 좋은 UI 제작. | Create beautiful, accessible user interfaces with shadcn/ui components (built on Radix UI + Tailwind), Tailwind CSS utility-first styling, and canvas-based visual designs. Use when building user interfaces, implementing design systems, creating responsive lay… |
| **ui-ux-pro-max** | 50+스타일·팔레트·폰트 내장 UI/UX 디자인 인텔리전스. | UI/UX design intelligence for web and mobile. Includes 50+ styles, 161 color palettes, 57 font pairings, 161 product types, 99 UX guidelines, and 25 chart types across 10 stacks (React, Next.js, Vue, Svelte, SwiftUI, React Native, Flutter, Tailwind, shadcn/ui… |

## Tapestry(리서치·정리) — michalparkola/tapestry-skills

| 스킬 | 한국어 설명 | Description (원문) |
|------|-------------|--------------------|
| **article-extractor** | URL에서 아티클 본문만 깔끔히 추출해 텍스트로 저장. | Extract clean article content from URLs (blog posts, articles, tutorials) and save as readable text. Use when user wants to download, extract, or save an article/blog post from a URL without ads, navigation, or clutter. |
| **learn-this** | URL 콘텐츠 추출 + 실행계획 정리(통합). | Unified content extraction and action planning. Use when user says "learn-this <URL>", "learn this <URL>", "weave <URL>", "help me plan <URL>", "extract and plan <URL>", "make this actionable <URL>", or similar phrases indicating they want to extract content… |
| **session-log** | 현재 세션 요약을 주간 로그에 기록. | Summarize the current conversation session and append results to the weekly agent-log. Use when user says "log this", "session log", "summarize this session", or asks to write results to the agent-log. |
| **ship-learn-next** | 학습 콘텐츠를 실행계획으로 전환. | Transform learning content (like YouTube transcripts, articles, tutorials) into actionable implementation plans using the Ship-Learn-Next framework. Use when user wants to turn advice, lessons, or educational content into concrete action steps, reps, or a lea… |
| **youtube-transcript** | 유튜브 자막 다운로드·추출. | Download YouTube video transcripts when user provides a YouTube URL or asks to download/get/fetch a transcript from YouTube. Also use when user wants to transcribe or get captions/subtitles from a YouTube video. |

## Composio — ComposioHQ/awesome-claude-skills

| 스킬 | 한국어 설명 | Description (원문) |
|------|-------------|--------------------|
| **content-research-writer** | 리서치·인용·훅·개요 피드백을 붙인 고품질 초안. | Assists in writing high-quality content by conducting research, adding citations, improving hooks, iterating on outlines, and providing real-time feedback on each section. Transforms your writing process from solo effort to collaborative partnership. |

## Stop Slop — hardikpandya/stop-slop

| 스킬 | 한국어 설명 | Description (원문) |
|------|-------------|--------------------|
| **stop-slop** | 글에서 AI 티 나는 패턴 제거. | Remove AI writing patterns from prose. Use when drafting, editing, or reviewing text to eliminate predictable AI tells. |

## Obsidian Second Brain — eugeniughelbur/obsidian-second-brain

| 스킬 | 한국어 설명 | Description (원문) |
|------|-------------|--------------------|
| **obsidian-second-brain** | Obsidian vault를 자가정리 제2의 뇌로 운영. | Operate any Obsidian vault as a living, self-rewriting second brain (an evolution of Karpathy's LLM Wiki pattern: sources rewrite existing pages, contradictions reconcile automatically, scheduled agents maintain the vault while you sleep). Use this skill when… |

## Claude Council — hex/claude-council

| 스킬 | 한국어 설명 | Description (원문) |
|------|-------------|--------------------|
| **council-execution** | 여러 AI 프로바이더로 council 질의 실행·종합. | Executes council queries by running the query pipeline across selected AI providers (Gemini, OpenAI, Grok, Perplexity), displaying formatted responses verbatim, and generating a synthesis of consensus, divergence, and recommendations. Invoked by the ask comma… |
| **deep-execution** | 서브에이전트로 심화 council 질의. | Executes agent-enhanced council queries by spawning parallel Claude subagents that each query a provider, evaluate response quality, ask follow-up questions, and return structured insights with confidence ratings and blind spot analysis. Invoked when the --ag… |
| **local-council-execution** | 외부 프로바이더 없을 때 로컬 Claude council. | Runs a local council when no external AI providers are configured. Spawns N independent Claude subagents (one per role, blind to each other) that each answer the question from a single assigned lens, then synthesizes their perspectives. Invoked by the ask com… |
| **provider-integration** | claude-council에 AI 프로바이더 추가·설정·문제해결. | Adds new AI providers to claude-council, configures provider API settings, troubleshoots provider connections, and documents the provider script interface. Covers creating provider shell scripts, setting API keys, and validating connectivity. Triggers on "add… |

## 기타 / 직접 추가

| 스킬 | 한국어 설명 | Description (원문) |
|------|-------------|--------------------|
| **agent-council** | 여러 AI 에이전트 의견을 모아 종합. "council 소환" 시. | Collect and synthesize opinions from multiple AI agents. Use when users say "summon the council", "ask other AIs", or want multiple AI perspectives on a question. |
| **skill-router** | 묻지 않아도, 작업을 주면 알아서 가장 맞는 스킬을 판단해 제안·실행(선제적 라우팅). | Proactively routes the user's request to the best-matching installed skill — WITHOUT being asked "which skill". Consider this at the START of essentially every real task the user gives, before doing the work: this library has 130+ skills (documents, marketing… |
