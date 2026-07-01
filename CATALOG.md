# 스킬 카탈로그 (Skill Catalog)

이 저장소(`~/.claude/skills`)에 설치된 전역 스킬 **132개**를 출처별로 정리했습니다. 각 항목의 설명은 해당 스킬의 `SKILL.md`에서 그대로 추출한 것입니다.

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
- [기타 / 직접 추가 (1)](#기타-직접-추가)

## Anthropic 공식 — anthropics/skills

| 스킬 | 무엇인지 / 언제 쓰나 |
|------|----------------------|
| **algorithmic-art** | Creating algorithmic art using p5.js with seeded randomness and interactive parameter exploration. Use this when users request creating art using code, generative art, algorithmic art, flow fields, or particle systems. Create original algorithmic art rather than copying existing artists' work to… |
| **brand-guidelines** | Applies Anthropic's official brand colors and typography to any sort of artifact that may benefit from having Anthropic's look-and-feel. Use it when brand colors or style guidelines, visual formatting, or company design standards apply. |
| **canvas-design** | Create beautiful visual art in .png and .pdf documents using design philosophy. You should use this skill when the user asks to create a poster, piece of art, design, or other static piece. Create original visual designs, never copying existing artists' work to avoid copyright violations. |
| **doc-coauthoring** | Guide users through a structured workflow for co-authoring documentation. Use when user wants to write documentation, proposals, technical specs, decision docs, or similar structured content. This workflow helps users efficiently transfer context, refine content through iteration, and verify the… |
| **frontend-design** | Guidance for distinctive, intentional visual design when building new UI or reshaping an existing one. Helps with aesthetic direction, typography, and making choices that don't read as templated defaults. |
| **internal-comms** | A set of resources to help me write all kinds of internal communications, using the formats that my company likes to use. Claude should use this skill whenever asked to write some sort of internal communications (status reports, leadership updates, 3P updates, company newsletters, FAQs, incident… |
| **mcp-builder** | Guide for creating high-quality MCP (Model Context Protocol) servers that enable LLMs to interact with external services through well-designed tools. Use when building MCP servers to integrate external APIs or services, whether in Python (FastMCP) or Node/TypeScript (MCP SDK). |
| **slack-gif-creator** | Knowledge and utilities for creating animated GIFs optimized for Slack. Provides constraints, validation tools, and animation concepts. Use when users request animated GIFs for Slack like "make me a GIF of X doing Y for Slack. |
| **theme-factory** | Toolkit for styling artifacts with a theme. These artifacts can be slides, docs, reportings, HTML landing pages, etc. There are 10 pre-set themes with colors/fonts that you can apply to any artifact that has been creating, or can generate a new theme on-the-fly. |
| **web-artifacts-builder** | Suite of tools for creating elaborate, multi-component claude.ai HTML artifacts using modern frontend web technologies (React, Tailwind CSS, shadcn/ui). Use for complex artifacts requiring state management, routing, or shadcn/ui components - not for simple single-file HTML/JSX artifacts. |
| **webapp-testing** | Toolkit for interacting with and testing local web applications using Playwright. Supports verifying frontend functionality, debugging UI behavior, capturing browser screenshots, and viewing browser logs. |

## Caveman(토큰 절약) — juliusbrussee/caveman

| 스킬 | 무엇인지 / 언제 쓰나 |
|------|----------------------|
| **cavecrew** | Decision guide for delegating to caveman-style subagents. Tells the main thread WHEN to spawn `cavecrew-investigator` (locate code), `cavecrew-builder` (1-2 file edit), or `cavecrew-reviewer` (diff review) instead of doing the work inline or using vanilla `Explore`. Subagent output is caveman-com… |
| **caveman** | Ultra-compressed communication mode. Cuts token usage ~75% by speaking like caveman while keeping full technical accuracy. Supports intensity levels: lite, full (default), ultra, wenyan-lite, wenyan-full, wenyan-ultra. Use when user says "caveman mode", "talk like caveman", "use caveman", "less t… |
| **caveman-commit** | Ultra-compressed commit message generator. Cuts noise from commit messages while preserving intent and reasoning. Conventional Commits format. Subject ≤50 chars, body only when "why" isn't obvious. Use when user says "write a commit", "commit message", "generate commit", "/commit", or invokes /ca… |
| **caveman-compress** | Compress natural language memory files (CLAUDE.md, todos, preferences) into caveman format to save input tokens. Preserves all technical substance, code, URLs, and structure. Compressed version overwrites the original file. Human-readable backup saved as FILE.original.md. Trigger: /caveman-compre… |
| **caveman-help** | Quick-reference card for all caveman modes, skills, and commands. One-shot display, not a persistent mode. Trigger: /caveman-help, "caveman help", "what caveman commands", "how do I use caveman". |
| **caveman-review** | Ultra-compressed code review comments. Cuts noise from PR feedback while preserving the actionable signal. Each comment is one line: location, problem, fix. Use when user says "review this PR", "code review", "review the diff", "/review", or invokes /caveman-review. Auto-triggers when reviewing p… |
| **caveman-stats** | Show real token usage and estimated savings for the current session. Reads directly from the Claude Code session log — no AI estimation. Triggers on /caveman-stats. Output is injected by the mode-tracker hook; the model itself does not compute the numbers. |

## Marketing — coreyhaines31/marketingskills

| 스킬 | 무엇인지 / 언제 쓰나 |
|------|----------------------|
| **ab-testing** | When the user wants to plan, design, or implement an A/B test or experiment, or build a growth experimentation program. Also use when the user mentions "A/B test," "split test," "experiment," "test this change," "variant copy," "multivariate test," "hypothesis," "should I test this," "which versi… |
| **ad-creative** | When the user wants to generate, iterate, or scale ad creative — headlines, descriptions, primary text, or full ad variations — for any paid advertising platform. Also use when the user mentions 'ad copy variations,' 'ad creative,' 'generate headlines,' 'RSA headlines,' 'bulk ad copy,' 'ad iterat… |
| **ads** | When the user wants help with paid advertising campaigns on Google Ads, Meta (Facebook/Instagram), LinkedIn, Twitter/X, or other ad platforms. Also use when the user mentions 'PPC,' 'paid media,' 'ROAS,' 'CPA,' 'ad campaign,' 'retargeting,' 'audience targeting,' 'Google Ads,' 'Facebook ads,' 'Lin… |
| **ai-seo** | When the user wants to optimize content for AI search engines, get cited by LLMs, or appear in AI-generated answers. Also use when the user mentions 'AI SEO,' 'AEO,' 'GEO,' 'LLMO,' 'answer engine optimization,' 'generative engine optimization,' 'LLM optimization,' 'AI Overviews,' 'optimize for Ch… |
| **analytics** | When the user wants to set up, improve, or audit analytics tracking and measurement. Also use when the user mentions "set up tracking," "GA4," "Google Analytics," "conversion tracking," "event tracking," "UTM parameters," "tag manager," "GTM," "analytics implementation," "tracking plan," "how do… |
| **aso** | When the user wants to audit or optimize an App Store or Google Play listing. Also use when the user mentions 'ASO audit,' 'app store optimization,' 'optimize my app listing,' 'improve app visibility,' 'app store ranking,' 'audit my listing,' 'why aren't people downloading my app,' 'improve my ap… |
| **churn-prevention** | When the user wants to reduce churn, build cancellation flows, set up save offers, recover failed payments, or implement retention strategies. Also use when the user mentions 'churn,' 'cancel flow,' 'offboarding,' 'save offer,' 'dunning,' 'failed payment recovery,' 'win-back,' 'retention,' 'exit… |
| **co-marketing** | When the user wants to find co-marketing partners, plan joint campaigns, or brainstorm partnership opportunities. Use when the user says 'co-marketing,' 'partner marketing,' 'joint campaign,' 'who should we partner with,' 'integration marketing,' 'cross-promotion,' 'collaborate with another compa… |
| **cold-email** | Write B2B cold emails and follow-up sequences that get replies. Use when the user wants to write cold outreach emails, prospecting emails, cold email campaigns, sales development emails, or SDR emails. Also use when the user mentions "cold outreach," "prospecting email," "outbound email," "email… |
| **community-marketing** | Build and leverage online communities to drive product growth and brand loyalty. Use when the user wants to create a community strategy, grow a Discord or Slack community, manage a forum or subreddit, build brand advocates, increase word-of-mouth, drive community-led growth, engage users post-sig… |
| **competitor-profiling** | When the user wants to research, profile, or analyze competitors from their URLs. Also use when the user mentions 'competitor profile,' 'competitor research,' 'competitor analysis,' 'profile this competitor,' 'analyze competitor,' 'competitive intelligence,' 'competitor deep dive,' 'who are my co… |
| **competitors** | When the user wants to create competitor comparison or alternative pages for SEO and sales enablement. Also use when the user mentions 'alternative page,' 'vs page,' 'competitor comparison,' 'comparison page,' '[Product] vs [Product],' '[Product] alternative,' 'competitive landing pages,' 'how do… |
| **content-strategy** | When the user wants to plan a content strategy, decide what content to create, or figure out what topics to cover. Also use when the user mentions "content strategy," "what should I write about," "content ideas," "blog strategy," "topic clusters," "content planning," "editorial calendar," "conten… |
| **copy-editing** | When the user wants to edit, review, or improve existing marketing copy, or refresh outdated content. Also use when the user mentions 'edit this copy,' 'review my copy,' 'copy feedback,' 'proofread,' 'polish this,' 'make this better,' 'copy sweep,' 'tighten this up,' 'this reads awkwardly,' 'clea… |
| **copywriting** | When the user wants to write, rewrite, or improve marketing copy for any page — including homepage, landing pages, pricing pages, feature pages, about pages, or product pages. Also use when the user says "write copy for," "improve this copy," "rewrite this page," "marketing copy," "headline help,… |
| **cro** | When the user wants to optimize, improve, or increase conversions on any marketing page or form — including homepage, landing pages, pricing pages, feature pages, lead capture forms, or contact forms. Also use when the user says 'CRO,' 'conversion rate optimization,' 'this page isn't converting,'… |
| **customer-research** | When the user wants to conduct, analyze, or synthesize customer research. Use when the user mentions "customer research," "ICP research," "talk to customers," "analyze transcripts," "customer interviews," "survey analysis," "support ticket analysis," "voice of customer," "VOC," "build personas,"… |
| **directory-submissions** | When the user wants to submit their product to startup, SaaS, AI, agent, MCP, no-code, or review directories for backlinks, domain rating, and discovery. Also use when the user mentions "directory submissions," "submit to directories," "backlinks from directories," "list my product," "submit to P… |
| **emails** | When the user wants to create or optimize an email sequence, drip campaign, automated email flow, or lifecycle email program. Also use when the user mentions "email sequence," "drip campaign," "nurture sequence," "onboarding emails," "welcome sequence," "re-engagement emails," "email automation,"… |
| **free-tools** | When the user wants to plan, evaluate, or build a free tool for marketing purposes — lead generation, SEO value, or brand awareness. Also use when the user mentions "engineering as marketing," "free tool," "marketing tool," "calculator," "generator," "interactive tool," "lead gen tool," "build a… |
| **image** | When the user wants to create, generate, edit, or optimize images for marketing — blog heroes, social graphics, product mockups, profile banners, listing visuals, or brand assets. Also use when the user mentions 'AI image generation,' 'generate an image,' 'create a graphic,' 'product mockup,' 'he… |
| **launch** | When the user wants to plan a product launch, feature announcement, or release strategy. Also use when the user mentions 'launch,' 'Product Hunt,' 'feature release,' 'announcement,' 'go-to-market,' 'beta launch,' 'early access,' 'waitlist,' 'product update,' 'how do I launch this,' 'launch checkl… |
| **lead-magnets** | When the user wants to create, plan, or optimize a lead magnet for email capture or lead generation. Also use when the user mentions "lead magnet," "gated content," "content upgrade," "downloadable," "ebook," "cheat sheet," "checklist," "template download," "opt-in," "freebie," "PDF download," "r… |
| **marketing-ideas** | When the user needs marketing ideas, inspiration, or strategies for their SaaS or software product. Also use when the user asks for 'marketing ideas,' 'growth ideas,' 'how to market,' 'marketing strategies,' 'marketing tactics,' 'ways to promote,' 'ideas to grow,' 'what else can I try,' 'I don't… |
| **marketing-plan** | When the user needs a comprehensive marketing plan for a client, a company they advise, or their own product. Also use when the user mentions "marketing plan," "growth plan," "GTM plan," "go-to-market plan," "AARRR plan," "90-day marketing plan," "12-month marketing roadmap," "fractional CMO plan… |
| **marketing-psychology** | When the user wants to apply psychological principles, mental models, or behavioral science to marketing. Also use when the user mentions 'psychology,' 'mental models,' 'cognitive bias,' 'persuasion,' 'behavioral science,' 'why people buy,' 'decision-making,' 'consumer behavior,' 'anchoring,' 'so… |
| **offers** | When the user wants to design, construct, or improve an offer — the thing they actually sell — including value framing, bonus stacking, guarantee design, scarcity/urgency, naming, and payment structure. Also use when the user mentions 'offer,' 'offer design,' 'build an offer,' 'grand slam offer,'… |
| **onboarding** | When the user wants to optimize post-signup onboarding, user activation, first-run experience, or time-to-value. Also use when the user mentions "onboarding flow," "activation rate," "user activation," "first-run experience," "empty states," "onboarding checklist," "aha moment," "new user experie… |
| **paywalls** | When the user wants to create or optimize in-app paywalls, upgrade screens, upsell modals, or feature gates. Also use when the user mentions "paywall," "upgrade screen," "upgrade modal," "upsell," "feature gate," "convert free to paid," "freemium conversion," "trial expiration screen," "limit rea… |
| **popups** | When the user wants to create or optimize popups, modals, overlays, slide-ins, or banners for conversion purposes. Also use when the user mentions "exit intent," "popup conversions," "modal optimization," "lead capture popup," "email popup," "announcement banner," "overlay," "collect emails with… |
| **pricing** | When the user wants help with pricing decisions, packaging, or monetization strategy. Also use when the user mentions 'pricing,' 'pricing tiers,' 'freemium,' 'free trial,' 'packaging,' 'price increase,' 'value metric,' 'Van Westendorp,' 'willingness to pay,' 'monetization,' 'how much should I cha… |
| **product-marketing** | When the user wants to create or update their product marketing context document. Also use when the user mentions 'product context,' 'marketing context,' 'set up context,' 'positioning,' 'who is my target audience,' 'describe my product,' 'ICP,' 'ideal customer profile,' or wants to avoid repeati… |
| **programmatic-seo** | When the user wants to create SEO-driven pages at scale using templates and data. Also use when the user mentions "programmatic SEO," "template pages," "pages at scale," "directory pages," "location pages," "[keyword] + [city] pages," "comparison pages," "integration pages," "building many pages… |
| **prospecting** | When the user wants to find, qualify, and build a list of prospects to reach out to — across B2B SaaS, general B2B, or local small businesses. Also use when the user mentions "prospecting," "build a prospect list," "find prospects," "find leads," "lead gen list," "find SaaS companies that," "find… |
| **public-relations** | When the user wants help with public relations, earned media, press coverage, journalist outreach, or media strategy (not pull requests). Also use when the user mentions 'PR,' 'public relations,' 'press,' 'press release,' 'press coverage,' 'media outreach,' 'pitch a journalist,' 'get featured,' '… |
| **referrals** | When the user wants to create, optimize, or analyze a referral program, affiliate program, or word-of-mouth strategy. Also use when the user mentions 'referral,' 'affiliate,' 'ambassador,' 'word of mouth,' 'viral loop,' 'refer a friend,' 'partner program,' 'referral incentive,' 'how to get referr… |
| **revops** | When the user wants help with revenue operations, lead lifecycle management, or marketing-to-sales handoff processes. Also use when the user mentions 'RevOps,' 'revenue operations,' 'lead scoring,' 'lead routing,' 'MQL,' 'SQL,' 'pipeline stages,' 'deal desk,' 'CRM automation,' 'marketing-to-sales… |
| **sales-enablement** | When the user wants to create sales collateral, pitch decks, one-pagers, objection handling docs, or demo scripts. Also use when the user mentions 'sales deck,' 'pitch deck,' 'one-pager,' 'leave-behind,' 'objection handling,' 'deal-specific ROI analysis,' 'demo script,' 'talk track,' 'sales playb… |
| **schema** | When the user wants to add, fix, or optimize schema markup and structured data on their site. Also use when the user mentions "schema markup," "structured data," "JSON-LD," "rich snippets," "schema.org," "FAQ schema," "product schema," "review schema," "breadcrumb schema," "Google rich results,"… |
| **seo-audit** | When the user wants to audit, review, or diagnose SEO issues on their site. Also use when the user mentions "SEO audit," "technical SEO," "why am I not ranking," "SEO issues," "on-page SEO," "meta tags review," "SEO health check," "my traffic dropped," "lost rankings," "not showing up in Google,"… |
| **signup** | When the user wants to optimize signup, registration, account creation, or trial activation flows. Also use when the user mentions "signup conversions," "registration friction," "signup form optimization," "free trial signup," "reduce signup dropoff," "account creation flow," "people aren't signi… |
| **site-architecture** | When the user wants to plan, map, or restructure their website's page hierarchy, navigation, URL structure, or internal linking. Also use when the user mentions "sitemap," "site map," "visual sitemap," "site structure," "page hierarchy," "information architecture," "IA," "navigation design," "URL… |
| **sms** | When the user wants to plan, build, or optimize SMS or MMS marketing — including welcome flows, abandoned cart texts, post-purchase, win-back, promotional sends, or transactional/auth SMS. Also use when the user mentions "SMS marketing," "text message campaigns," "SMS sequence," "SMS automation,"… |
| **social** | When the user wants help creating, scheduling, or optimizing social media content for LinkedIn, Twitter/X, Instagram, TikTok, Facebook, or other platforms, or wants to do social listening and engagement triage. Also use when the user mentions 'LinkedIn post,' 'Twitter thread,' 'social media,' 'co… |
| **video** | When the user wants to create, generate, or produce video content using AI tools or programmatic frameworks. Also use when the user mentions 'video production,' 'AI video,' 'Remotion,' 'Hyperframes,' 'HeyGen,' 'Synthesia,' 'Veo,' 'Sora,' 'Runway,' 'Kling,' 'Seedance,' 'Hailuo,' 'MiniMax,' 'Pika,'… |

## OpenClaudia 마케팅·SEO — OpenClaudia/openclaudia-skills

| 스킬 | 무엇인지 / 언제 쓰나 |
|------|----------------------|
| **brand-monitor** | Brand monitoring and mention tracking via the Brand.dev API. Use when asked to monitor brand mentions, track sentiment, find PR opportunities, detect logo usage, or analyze brand presence online. Trigger phrases: "brand monitoring", "mention tracking", "brand sentiment", "PR opportunities", "logo… |
| **competitor-analysis** | Conduct full competitor strategy breakdowns across SEO, ads, social, email, pricing, and positioning. Use when the user asks to analyze competitors, benchmark against rivals, understand competitive landscape, find competitor weaknesses, or build a competitive matrix. Trigger phrases include "comp… |
| **content-calendar** | Plan and schedule social media and content marketing calendars. Monthly and weekly planning, content mix ratios, theme days, platform-specific timing, and batch creation workflows. Trigger phrases: "content calendar", "posting schedule", "social media calendar", "content plan", "weekly schedule",… |
| **content-gap-analysis** | Identify content gaps between your site and competitors. Use when the user says "content gaps", "what am I missing", "competitor content", "content opportunities", "topics I should cover", "content gap analysis", or asks about finding topics and keywords their site doesn't cover but competitors do. |
| **content-repurposing** | Repurpose and atomize content across platforms and formats. Use when the user says "repurpose this", "turn this into", "convert blog to", "make a thread from", "content atomization", "repurpose content", "turn this article into social posts", or asks about adapting content from one format to anot… |
| **email-sequence** | Create email drip campaigns, nurture sequences, and automated email flows. Includes templates for welcome series, abandoned cart, re-engagement, product launch, and onboarding sequences. Trigger phrases: "email sequence", "drip campaign", "nurture sequence", "email flow", "welcome series", "aband… |
| **email-subject-lines** | Generate, evaluate, and A/B test email subject lines for maximum open rates. Includes formulas for curiosity, urgency, personalization, and more. Trigger phrases: "email subject line", "subject line ideas", "email subject", "write subject lines", "A/B test subject lines", "improve open rates", "e… |
| **facebook-ads** | Create Facebook and Meta ad campaigns, write ad copy, define audiences, and plan budgets. Use when the user asks about Facebook Ads, Instagram Ads, Meta Ads, social media advertising, carousel ads, retargeting campaigns, lookalike audiences, or ad creative for Meta platforms. Trigger phrases incl… |
| **google-ads** | Write Google Ads copy and build campaign structures. Use when the user asks to create Google Ads, write ad copy for search or display, set up PPC campaigns, optimize Quality Score, choose bidding strategies, or generate responsive search ads. Trigger phrases include "Google Ads", "PPC", "search a… |
| **google-ads-report** | Pull Google Ads performance data and generate reports. Use when asked about ad campaign performance, keyword costs, quality scores, ROAS, conversion tracking, or ad spend analysis. Trigger phrases: "google ads", "adwords", "campaign performance", "ad spend", "quality score", "CPC report", "ROAS",… |
| **google-analytics** | Pull GA4 reports, traffic data, and insights from the Google Analytics Data API. Use when asked about website traffic, user behavior, acquisition channels, conversions, or audience segments. Trigger phrases: "google analytics", "GA4", "traffic report", "analytics data", "user acquisition", "engag… |
| **growth-strategy** | Build a growth strategy with frameworks, metrics, and experimentation. Use when the user says "growth strategy", "growth plan", "AARRR", "growth loops", "North Star Metric", "growth model", "activation rate", "retention strategy", "churn reduction", "growth experiments", or asks about overall gro… |
| **keyword-research** | Perform keyword research using the SemRush API. Use when the user says "find keywords", "keyword research", "what should I rank for", "keyword ideas", "search volume", "keyword difficulty", "topic clusters", "content gaps", or asks about SEO keywords for a topic or niche. |
| **launch-strategy** | Plan and execute product launches with week-by-week timelines and channel-specific playbooks. Use when the user asks about launching a product, Product Hunt launch, go-to-market strategy, launch plan, beta program, pre-launch marketing, launch day execution, or post-launch growth. Trigger phrases… |
| **lead-magnet** | Create lead magnets and gated content to capture email subscribers and leads. Use when asked to design checklists, templates, calculators, mini-courses, whitepapers, or other downloadable content offers. Trigger phrases: "lead magnet", "gated content", "email capture", "content offer", "free down… |
| **linkedin-content** | Create high-performing LinkedIn posts and content strategy. Use when the user says "LinkedIn post", "write for LinkedIn", "LinkedIn content", "LinkedIn strategy", "LinkedIn hook", "professional post", "thought leadership post", or asks about creating content specifically for LinkedIn. |
| **newsletter** | Plan and grow an email newsletter. Use when the user says "newsletter strategy", "grow my newsletter", "newsletter content", "email newsletter", "subscriber growth", "newsletter monetization", "Substack strategy", "Beehiiv", or asks about building, growing, or monetizing a newsletter. |
| **page-cro** | Audit and optimize landing pages for conversion rate. Use when the user asks about conversion rate optimization, CRO, landing page audits, improving sign-ups or sales, reducing bounce rate, A/B test ideas for pages, form optimization, or CTA optimization. Trigger phrases include "conversion rate"… |
| **seo-content-brief** | Create an SEO content brief for writers. Use when the user says "content brief", "SEO brief", "writing brief", "brief for", "writer brief", "outline for SEO", or asks about creating a structured brief to hand to a writer for producing search-optimized content. |
| **social-content** | Create and publish social media posts for Reddit, Twitter/X, LinkedIn, Instagram, Facebook, and TikTok. Platform-specific formats, character limits, hashtag strategies, hooks, and content repurposing. Can post directly to Reddit and other platforms via API. Trigger phrases: "social media post", "… |

## Superpowers(개발 워크플로우) — obra/superpowers

| 스킬 | 무엇인지 / 언제 쓰나 |
|------|----------------------|
| **brainstorming** | You MUST use this before any creative work - creating features, building components, adding functionality, or modifying behavior. Explores user intent, requirements and design before implementation. |
| **dispatching-parallel-agents** | Use when facing 2+ independent tasks that can be worked on without shared state or sequential dependencies |
| **executing-plans** | Use when you have a written implementation plan to execute in a separate session with review checkpoints |
| **finishing-a-development-branch** | Use when implementation is complete, all tests pass, and you need to decide how to integrate the work - guides completion of development work by presenting structured options for merge, PR, or cleanup |
| **receiving-code-review** | Use when receiving code review feedback, before implementing suggestions, especially if feedback seems unclear or technically questionable - requires technical rigor and verification, not performative agreement or blind implementation |
| **requesting-code-review** | Use when completing tasks, implementing major features, or before merging to verify work meets requirements |
| **subagent-driven-development** | Use when executing implementation plans with independent tasks in the current session |
| **systematic-debugging** | Use when encountering any bug, test failure, or unexpected behavior, before proposing fixes |
| **test-driven-development** | Use when implementing any feature or bugfix, before writing implementation code |
| **using-git-worktrees** | Use when starting feature work that needs isolation from current workspace or before executing implementation plans - ensures an isolated workspace exists via native tools or git worktree fallback |
| **using-superpowers** | Use when starting any conversation - establishes how to find and use skills, requiring skill invocation before ANY response including clarifying questions |
| **verification-before-completion** | Use when about to claim work is complete, fixed, or passing, before committing or creating PRs - requires running verification commands and confirming output before making any success claims; evidence before assertions always |
| **writing-plans** | Use when you have a spec or requirements for a multi-step task, before touching code |
| **writing-skills** | Use when creating new skills, editing existing skills, or verifying skills work before deployment |

## Context Engineering — muratcankoylan/Agent-Skills-for-Context-Engineering

| 스킬 | 무엇인지 / 언제 쓰나 |
|------|----------------------|
| **advanced-evaluation** | This skill should be used for advanced LLM evaluation: LLM-as-judge systems, direct scoring, pairwise comparison, rubric calibration, evaluator bias mitigation, confidence scoring, and automated quality assessment. |
| **bdi-mental-states** | This skill should be used when modeling agent mental states with BDI concepts: beliefs, desires, intentions, RDF-to-belief transformations, rational agency traces, cognitive agents, BDI ontologies, and neuro-symbolic AI integration. |
| **context-compression** | This skill should be used when long-running agent sessions need context compression, structured summarization, compaction, token-per-task optimization, or durable handoff summaries that preserve decisions, files, risks, and next actions. |
| **context-degradation** | This skill should be used for diagnosing and mitigating context degradation: lost-in-middle failures, context poisoning, context clash, context confusion, attention-pattern issues, and agent performance degradation caused by accumulated or conflicting context. |
| **context-fundamentals** | This skill should be used to explain or reason about the foundational concepts of context engineering: what context is, the anatomy of a context window, how attention mechanics work, the U-shaped attention curve, why context quality matters more than quantity, and the mental models needed to inte… |
| **context-optimization** | This skill should be used for improving context efficiency: context budgeting, observation masking, prefix or KV-cache strategy, partitioning, token-cost reduction, retrieval scoping, and extending effective context capacity without lowering answer quality. |
| **evaluation** | This skill should be used when building agent evaluation systems: deterministic checks, regression suites, multi-dimensional rubrics, quality gates, production monitoring, baseline comparison, and outcome measurement for agent pipelines. |
| **filesystem-context** | This skill should be used when agent work needs file-backed context: durable scratchpads, tool-output offloading, just-in-time discovery, cross-agent handoff files, filesystem memory, or cleanup policies for context stored outside the prompt. |
| **harness-engineering** | This skill should be used when designing autonomous agent harnesses: research loops, evaluation scaffolds, locked and editable surfaces, durable logs, novelty gates, pruning, rollback, PR preparation, and human approval boundaries. |
| **hosted-agents** | This skill should be used when designing hosted or background agent infrastructure: sandboxed execution, remote coding environments, warm pools, session persistence, multiplayer collaboration, self-spawning agents, or Modal-style sandboxes. |
| **latent-briefing** | This skill should be used when the user asks to \"share memory between agents\", \"KV cache compaction for multi-agent\", \"orchestrator worker context\", \"latent briefing\", \"reduce worker tokens\", \"cross-agent memory without summarization\", or discusses Attention Matching compaction, recur… |
| **memory-systems** | This skill should be used for persistent semantic memory in agent systems: cross-session knowledge retention, entity tracking, temporal validity, graph or vector retrieval, memory consolidation, and memory benchmark selection. Route file-backed scratchpads to filesystem-context, handoff summaries… |
| **multi-agent-patterns** | This skill should be used when designing multi-agent systems that need context isolation, supervisor or swarm coordination, explicit handoffs, parallel execution, or a decision on whether multiple agents are justified. |
| **project-development** | This skill should be used for project-level decisions about LLM-powered systems: whether an LLM is the right primitive for the task at hand, the shape of a multi-stage batch or agent pipeline, token and cost estimation, choosing between single-agent and multi-agent at the project level, structure… |
| **tool-design** | This skill should be used for the tool-interface layer of an agent system specifically: writing tool descriptions agents can route on, designing tool schemas and response formats, naming conventions, actionable error recovery messages, MCP server design, tool-set consolidation, and deciding when… |

## UI/UX Pro Max — nextlevelbuilder/ui-ux-pro-max-skill

| 스킬 | 무엇인지 / 언제 쓰나 |
|------|----------------------|
| **banner-design** | Design banners for social media, ads, website heroes, creative assets, and print. Multiple art direction options with AI-generated visuals. Actions: design, create, generate banner. Platforms: Facebook, Twitter/X, LinkedIn, YouTube, Instagram, Google Display, website hero, print. Styles: minimali… |
| **brand** | Brand voice, visual identity, messaging frameworks, asset management, brand consistency. Activate for branded content, tone of voice, marketing assets, brand compliance, style guides. |
| **design** | Comprehensive design skill: brand identity, design tokens, UI styling, logo generation (55 styles, Gemini AI), corporate identity program (50 deliverables, CIP mockups), HTML presentations (Chart.js), banner design (22 styles, social/ads/web/print), icon design (15 styles, SVG, Gemini 3.1 Pro), s… |
| **design-system** | Token architecture, component specifications, and slide generation. Three-layer tokens (primitive→semantic→component), CSS variables, spacing/typography scales, component specs, strategic slide creation. Use for design tokens, systematic design, brand-compliant presentations. |
| **slides** | Create strategic HTML presentations with Chart.js, design tokens, responsive layouts, copywriting formulas, and contextual slide strategies. |
| **ui-styling** | Create beautiful, accessible user interfaces with shadcn/ui components (built on Radix UI + Tailwind), Tailwind CSS utility-first styling, and canvas-based visual designs. Use when building user interfaces, implementing design systems, creating responsive layouts, adding accessible components (di… |
| **ui-ux-pro-max** | UI/UX design intelligence for web and mobile. Includes 50+ styles, 161 color palettes, 57 font pairings, 161 product types, 99 UX guidelines, and 25 chart types across 10 stacks (React, Next.js, Vue, Svelte, SwiftUI, React Native, Flutter, Tailwind, shadcn/ui, and HTML/CSS). Actions: plan, build,… |

## Tapestry(리서치·정리) — michalparkola/tapestry-skills

| 스킬 | 무엇인지 / 언제 쓰나 |
|------|----------------------|
| **article-extractor** | Extract clean article content from URLs (blog posts, articles, tutorials) and save as readable text. Use when user wants to download, extract, or save an article/blog post from a URL without ads, navigation, or clutter. |
| **learn-this** | Unified content extraction and action planning. Use when user says "learn-this <URL>", "learn this <URL>", "weave <URL>", "help me plan <URL>", "extract and plan <URL>", "make this actionable <URL>", or similar phrases indicating they want to extract content and create an action plan. Automatical… |
| **session-log** | Summarize the current conversation session and append results to the weekly agent-log. Use when user says "log this", "session log", "summarize this session", or asks to write results to the agent-log. |
| **ship-learn-next** | Transform learning content (like YouTube transcripts, articles, tutorials) into actionable implementation plans using the Ship-Learn-Next framework. Use when user wants to turn advice, lessons, or educational content into concrete action steps, reps, or a learning quest. |
| **youtube-transcript** | Download YouTube video transcripts when user provides a YouTube URL or asks to download/get/fetch a transcript from YouTube. Also use when user wants to transcribe or get captions/subtitles from a YouTube video. |

## Composio — ComposioHQ/awesome-claude-skills

| 스킬 | 무엇인지 / 언제 쓰나 |
|------|----------------------|
| **content-research-writer** | Assists in writing high-quality content by conducting research, adding citations, improving hooks, iterating on outlines, and providing real-time feedback on each section. Transforms your writing process from solo effort to collaborative partnership. |

## Stop Slop — hardikpandya/stop-slop

| 스킬 | 무엇인지 / 언제 쓰나 |
|------|----------------------|
| **stop-slop** | Remove AI writing patterns from prose. Use when drafting, editing, or reviewing text to eliminate predictable AI tells. |

## Obsidian Second Brain — eugeniughelbur/obsidian-second-brain

| 스킬 | 무엇인지 / 언제 쓰나 |
|------|----------------------|
| **obsidian-second-brain** | Operate any Obsidian vault as a living, self-rewriting second brain (an evolution of Karpathy's LLM Wiki pattern: sources rewrite existing pages, contradictions reconcile automatically, scheduled agents maintain the vault while you sleep). Use this skill whenever the user asks Claude to read, wri… |

## Claude Council — hex/claude-council

| 스킬 | 무엇인지 / 언제 쓰나 |
|------|----------------------|
| **council-execution** | Executes council queries by running the query pipeline across selected AI providers (Gemini, OpenAI, Grok, Perplexity), displaying formatted responses verbatim, and generating a synthesis of consensus, divergence, and recommendations. Invoked by the ask command during standard (non-agent) council… |
| **deep-execution** | Executes agent-enhanced council queries by spawning parallel Claude subagents that each query a provider, evaluate response quality, ask follow-up questions, and return structured insights with confidence ratings and blind spot analysis. Invoked when the --agents flag is used or when complex arch… |
| **local-council-execution** | Runs a local council when no external AI providers are configured. Spawns N independent Claude subagents (one per role, blind to each other) that each answer the question from a single assigned lens, then synthesizes their perspectives. Invoked by the ask command via --local, or when the user acc… |
| **provider-integration** | Adds new AI providers to claude-council, configures provider API settings, troubleshoots provider connections, and documents the provider script interface. Covers creating provider shell scripts, setting API keys, and validating connectivity. Triggers on "add provider", "new AI agent", "provider… |

## 기타 / 직접 추가

| 스킬 | 무엇인지 / 언제 쓰나 |
|------|----------------------|
| **agent-council** | Collect and synthesize opinions from multiple AI agents. Use when users say "summon the council", "ask other AIs", or want multiple AI perspectives on a question. |
