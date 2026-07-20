# AGENTS.md

## Purpose

This file is the shared operating contract for every AI agent working in this
repository, including Codex, Claude, Gemini, and other agentic development or
research tools.

Read this file before taking action. Do not rely on vendor-specific chat
history, hidden memory, or unstated assumptions as the only source of project
context. Important decisions must be reflected in repository files so another
agent can continue the work.

## Instruction scope and precedence

- These instructions apply to the entire repository.
- A more specific `AGENTS.md` in a subdirectory may add or override rules for
  that subtree.
- Follow direct user instructions before this file when they conflict.
- Do not silently reinterpret the business model, legal structure, or target
  audience.
- If a tool does not automatically load `AGENTS.md`, explicitly provide this
  file to that tool as project context.

## Project overview

**Project:** Livestock Rent

**Current market:** Brazil, initially focused on Santa Catarina and Rio Grande
do Sul.

**Potential future market:** United States, subject to a separate legal,
regulatory, tax, and distribution analysis.

**Target audience:** Web3 venture capital firms, angel investors, strategic
agribusiness partners, securitization participants, and other sophisticated
investors.

**Core proposition:** Build a regulated livestock asset-management, servicing,
and data platform that gives investors hands-off exposure to professionally
managed beef and dairy cattle operations.

The preferred framing is **not** “a token backed by cows.” The investable
business is the operating, compliance, traceability, servicing, and
capital-markets infrastructure around livestock cash flows.

## Canonical project document

The current business and diligence analysis is:

`research/livestock-rwa-vc-analysis-2026-07-16.md`

Read that document before changing the project thesis, financial structure,
regulatory analysis, investor narrative, or traceability design.

The memo is a point-in-time research document, not a legal opinion. Verify
time-sensitive facts before presenting them as current.

## Canonical business architecture

Preserve the separation between these layers:

1. **Livestock operations**
   - Approved farms manage beef or dairy cattle under properly documented
     Brazilian operating arrangements.
   - Beef and dairy are separate economic pools with different cash cycles,
     risks, and underwriting models.

2. **Animal identity and evidence**
   - Each admitted animal has one lifecycle NFT connected one-to-one to its
     official SISBOV identity.
   - GTA, invoices, veterinary records, physical tags, photographs,
     geolocation, and recurring independent attestations support the evidence
     package.

3. **Agricultural receivables**
   - Eligible livestock obligations are represented by CPRs.
   - CPRs are registered at B3 and reconciled with the underlying operations,
     animals, documents, and controlled accounts.

4. **Securitization**
   - Eligible CPRs may be assigned to a securitization estate and used as
     backing for a CRA, subject to current Brazilian law and professional
     advice.

5. **Investor and settlement layer**
   - Any investor token must represent or mirror enforceable financial rights;
     it must not replace the CRA, B3 records, contracts, or investor registry.
   - The intended distribution cadence is every four months and must be based
     on realized cash available under the CRA waterfall.
   - USDC is a settlement rail, not the legal source of the investor's rights
     and not protection against BRL/USD currency risk.

## Brazilian terminology

Use Brazilian terms accurately. Define them on first use for international
audiences.

- **B3:** Brazil's principal financial-market infrastructure and exchange,
  where relevant CPR and CRA records may be registered or deposited.
- **CPR — Cédula de Produto Rural:** a Brazilian agricultural credit
  instrument representing an eligible rural product or financial obligation.
- **CRA — Certificado de Recebíveis do Agronegócio:** a Brazilian
  agribusiness-receivables security issued through a securitization structure.
- **SISBOV:** Brazil's official system for individual identification and
  traceability of bovine and buffalo animals.
- **GTA — Guia de Trânsito Animal:** the official animal-movement document.
- **CVM:** Brazil's securities regulator.
- **BCB/BACEN:** the Central Bank of Brazil.
- **MAPA:** Brazil's Ministry of Agriculture and Livestock.
- **CPC 29:** the Brazilian accounting standard for biological assets and
  agricultural produce.
- **USDC:** a USD-denominated stablecoin used here only as a proposed
  distribution or settlement rail.

Do not assume an international reader understands these acronyms.

## Token separation

There are two distinct token concepts. Never merge them in architecture,
contracts, diagrams, copy, or analysis.

### Animal NFT

- A non-financial, role-restricted digital twin for one animal.
- Connected one-to-one to the animal's official SISBOV identity.
- Used for evidence, lifecycle events, reconciliation, and auditability.
- Does not grant ownership, dividends, redemption, or investment rights.
- Must not be publicly transferable as a collectible or speculative asset.

### Investor token

- A permissioned representation or mirror of regulated financial rights.
- Subject to securities, custody, investor-eligibility, KYC/AML, transfer, and
  recordkeeping rules.
- Must remain reconciled with the legally controlling CRA and investor records.

The project must continue to function legally and operationally if either token,
its blockchain, a wallet provider, or a smart contract becomes unavailable.

## SISBOV-connected NFT requirements

- Mint only after the animal has a validated SISBOV record and the physical tag,
  invoice, GTA/sanitary documents, and initial independent evidence match.
- Use an authorized and properly homologated SISBOV certifier or integration
  participant. Do not claim direct production access without evidence.
- Enforce one active NFT per unique, non-reusable SISBOV number.
- Store sensitive records off-chain with controlled access. Put only necessary
  references and cryptographic hashes on-chain.
- Prefer a privacy-preserving reference or keyed hash instead of publishing the
  full SISBOV identifier.
- Append corrections; do not erase lifecycle history.
- Reconcile SISBOV status, NFT status, physical tag, farm inventory, invoices,
  GTA movements, CPR allocation, CRA backing, and accounting.
- Mark unavailable or delayed integrations as `sync_pending` or `stale`.
- Exclude missing, disputed, stale, duplicated, SISBOV-mismatched, or otherwise
  unreconciled animals from eligible CRA backing and distribution calculations.
- Retire rather than burn the NFT after death, slaughter, final sale, or
  confirmed loss so the audit trail remains available.

An NFT improves tamper evidence; it does not independently prove that an animal
currently exists, is healthy, is unencumbered, or is owned by the project.

## Financial and accounting rules

- Model beef and dairy separately.
- Use cohort-level unit economics and actual operator evidence.
- Base investor distributions only on realized, collected cash after operating
  expenses, taxes, reserves, debt service, fees, and required waterfall items.
- Do not treat CPC 29 fair-value gains as distributable cash.
- Model returns in both BRL and USD.
- Show FX exposure explicitly. USDC settlement does not remove FX risk.
- Include mortality, disease, theft, feed, acquisition price, sale price,
  productivity, offtaker, operator, liquidity, and basis risks.
- Label every forecast, scenario, target return, and illustrative model as such.
- Never present an illustrative return as historical performance or a
  guaranteed yield.

## Legal, regulatory, and tax guardrails

This repository contains business research, not legal, accounting, tax,
investment, veterinary, or regulatory advice.

Before fundraising or launch, the project requires written advice from
qualified Brazilian professionals covering at least:

- livestock ownership, custody, farm agreements, collateral, insolvency, and
  enforceability;
- CPR eligibility, issuance, registration, assignment, and collateral;
- CRA eligibility, securitization, fiduciary regime, offering, custody, and
  investor records;
- CVM treatment of the offering and any tokenized representation;
- BCB/BACEN rules for virtual-asset services, payments, foreign exchange, and
  cross-border USDC settlement;
- tax treatment for each investor type and jurisdiction;
- privacy and data protection, including LGPD;
- future US securities, commodities, tax, sanctions, and money-transmission
  requirements before any US offering or solicitation.

Do not state that:

- the NFT proves or guarantees cattle existence;
- the investor directly owns a cow unless controlling legal documents literally
  establish that result;
- B3 registration guarantees payment, title, collateral perfection, animal
  existence, or absence of fraud;
- a CRA makes income universally tax-free;
- CRA payments are “dividends”;
- USDC removes currency, issuer, custody, smart-contract, or depeg risk;
- using an RWA or utility-token label avoids securities regulation;
- returns or four-month distributions are guaranteed;
- the future US structure can reuse the Brazilian structure without separate
  analysis.

When discussing CRA taxation, identify the investor class, residence, current
law, withholding rules, and relevant conditions. Use “remuneration”,
“distribution”, or “payment under the waterfall” rather than “dividend” unless
the payment is legally a corporate dividend.

## Research standards

### Source hierarchy

Prefer primary and authoritative sources:

1. Brazilian statutes, regulations, and official government publications.
2. CVM, BCB/BACEN, CMN, MAPA, Receita Federal, B3, and official state agencies.
3. Embrapa, CEPEA, Epagri/Cepa, Emater/RS-Ascar, and recognized academic
   research.
4. Official service-provider documentation for technical integrations.
5. Reputable secondary reporting only when primary material is unavailable.

For US topics, prefer SEC, CFTC, FinCEN, IRS, state regulators, statutes, and
official stablecoin or protocol documentation.

### Time-sensitive work

- Browse and verify regulations, tax rules, market prices, interest rates,
  product specifications, API behavior, and institutional roles at the time of
  the task.
- Record the exact access or publication date when it matters.
- Link directly to the supporting page or document.
- Distinguish source facts from agent inference.
- Do not cite a search-results page as evidence.
- Do not preserve a broken or unverified URL merely because it appeared in an
  older memo.
- Treat the canonical memo's figures and regulatory conclusions as historical
  until refreshed.

### Quantitative work

- Show units, currency, period, source date, and formulas.
- Keep sourced facts separate from assumptions.
- Use ranges and sensitivities when evidence does not support a precise point
  estimate.
- Reconcile totals and call out missing data.
- Never fabricate farm performance, animal counts, insurance coverage, legal
  opinions, partners, registrations, or investor commitments.

## Investor communications

- Lead with the regulated asset-management and traceability platform, not token
  novelty.
- Explain Brazilian acronyms for international investors.
- Keep outreach concise and request a low-friction next step, such as permission
  to send the deck or a short call.
- Match claims to the project's actual stage. Use “we are structuring” or
  “designed to” until execution is documented.
- Do not describe planned partners, regulatory approvals, B3 registrations,
  SISBOV integrations, insurance, audits, or issuances as completed without
  evidence in the repository.
- Avoid “risk-free”, “guaranteed”, “tax-free”, “passive income”, and similar
  promotional language.
- For Web3 VCs, emphasize repeatable origination, servicing revenue, data,
  compliance infrastructure, auditability, and scalable distribution.

## Working method for agents

Before substantive work:

1. Read this file.
2. Read the canonical memo and any files directly relevant to the request.
3. Run `git status --short --branch`.
4. Inspect existing changes and preserve unrelated user work.
5. Identify which claims require current web verification.

During work:

- Make the smallest change that fully satisfies the request.
- Follow existing structure and terminology.
- Keep beef and dairy analyses separate unless explicitly comparing them.
- Do not silently change the legal or economic architecture.
- Do not overwrite or discard another agent's or the user's changes.
- Do not create fictitious facts to fill gaps. State the uncertainty or add a
  clearly labeled TODO when the user requests a persistent placeholder.
- Use absolute dates instead of ambiguous terms such as “today” when recording
  research.
- Keep secrets, credentials, personal data, investor lists, farm coordinates,
  and non-public animal records out of committed files.

After work:

1. Re-read the user's request and verify every requirement.
2. Review the changed files.
3. Run checks appropriate to the artifact.
4. Run `git diff --check` when the repository has a baseline commit.
5. Report what changed, what was verified, and any remaining assumptions or
   blockers.

Do not claim completion without fresh verification evidence.

## File and documentation conventions

- Use UTF-8 and Markdown for research and project documentation.
- Use clear, descriptive, lowercase filenames with dates in `YYYY-MM-DD` form
  when a document is a dated snapshot.
- Keep durable research under `research/`.
- Prefer updating an existing canonical analysis over creating competing
  versions unless the user requests a new dated snapshot.
- Preserve source links close to the claims they support or in a clearly
  organized source section.
- Use English for institutional research by default. Use Brazilian Portuguese
  when requested or when writing for Brazilian stakeholders.
- Define acronyms on first use in investor-facing documents.
- Keep code, contracts, data, financial models, and legal drafts in clearly
  separated directories if those artifact types are added later.

## Cross-agent handoff protocol

Because agents may not share chat history:

- Treat repository files as the handoff medium.
- Record durable business decisions in the canonical memo or a clearly named
  decision document.
- Record source URLs and dates for research another agent may need to audit.
- Leave the worktree in an understandable state.
- Summarize incomplete work and blockers in the final response; do not hide them
  only in chat reasoning.
- Do not add vendor-specific instructions that contradict this file.
- If vendor entry files such as `CLAUDE.md` or `GEMINI.md` are later added, keep
  them short and direct those agents to read `AGENTS.md` rather than duplicating
  the full configuration.

## Git and GitHub rules

- The repository uses the `main` branch unless the user specifies another
  workflow.
- Inspect status before editing.
- Do not use destructive commands such as `git reset --hard`, forced checkout,
  history rewriting, or force-push without explicit user authorization.
- Do not stage, commit, push, open a pull request, create a release, or modify a
  remote unless the user asks.
- Keep commits focused and do not include unrelated changes.
- Never commit credentials, private keys, access tokens, `.env` files,
  confidential investor information, or regulated personal/animal data.
- The GitHub CLI may be available, but authentication does not imply permission
  to mutate GitHub state.

## Current repository state

At the time this file was created:

- the repository is initialized on `main`;
- there is no baseline commit yet;
- the principal artifact is the livestock RWA research memo under `research/`.

This section is informational and may become stale. Always verify current Git
state rather than relying on it.
