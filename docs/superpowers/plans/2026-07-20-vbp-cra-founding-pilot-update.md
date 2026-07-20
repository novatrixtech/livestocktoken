# VBP and CRA Founding Pilot Update Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Update the Founding Pilot Markdown and PDF with official 2026 Mapa market data and the corrected 10,000 USDC CRA participation backed by livestock CPRs.

**Architecture:** Keep the 10,000 USDC startup equity investment separate from the 10,000 USDC CRA allocation. Present the CRA as the legally controlling investor instrument, eligible B3-registered CPRs as its backing, and the securitization waterfall as the source of the proposed 4% four-month remuneration.

**Tech Stack:** Markdown, ReportLab, pypdf, Poppler

---

### Task 1: Update the investment proposition and legal-financial flow

**Files:**
- Modify: `research/livestock-rent-founding-pilot-opportunity-2026-07-20.md`

- [ ] **Step 1: Replace the direct livestock-pool economics**

Change the second 10,000 USDC allocation from a direct operating-pool
participation to a CRA subscription or permissioned participation with these
terms:

- 10,000 USDC principal;
- 4% proposed fixed CRA remuneration for the four-month term;
- 400 USDC scheduled remuneration;
- 10,400 USDC total scheduled payment;
- payment under the CRA waterfall; and
- exposure to CPR obligor, collection, securitization, BRL/USD and USDC
  settlement risks.

- [ ] **Step 2: Correct the capital flow**

Use this flow consistently:

```text
CRA investor allocation
    -> lawful BRL conversion and CRA subscription
    -> securitization estate
    -> eligible livestock CPRs registered at B3
    -> cattle acquisition, feed and management
    -> CPR collections
    -> CRA waterfall
    -> principal plus CRA remuneration
    -> authorized conversion and USDC settlement
```

- [ ] **Step 3: Preserve equity separation**

Describe the other 10,000 USDC as long-term, illiquid startup risk capital
represented by equity, SAFE or equivalent instrument. State that it has no
redemption or four-month return claim.

- [ ] **Step 4: Run terminology checks**

Run:

```bash
rg -n "10,000 USDC|4%|400 USDC|10,400 USDC|CRA|CPR|B3|waterfall|equity|SAFE" research/livestock-rent-founding-pilot-opportunity-2026-07-20.md
```

Expected: both allocations and the full CPR-to-CRA payment chain appear
consistently; no passage gives the CRA investor direct cattle ownership.

### Task 2: Integrate official 2026 Mapa VBP data

**Files:**
- Modify: `research/livestock-rent-founding-pilot-opportunity-2026-07-20.md`

- [ ] **Step 1: Add the market-scale section**

Add a concise investor-facing section containing:

| Measure | Mapa preliminary 2026 estimate |
|---|---:|
| Brazilian agricultural VBP | R$ 1.4 trillion |
| Livestock VBP | R$ 511.1 billion |
| Cattle VBP | R$ 249.5 billion |
| Cattle share of national VBP | Approximately 17.5% |

State that Mapa published the figures on 16 July 2026 using information
available through May 2026. Describe cattle as the second-largest agricultural
value chain nationally and the largest livestock chain in the published
ranking.

- [ ] **Step 2: Connect market size to the thesis**

Explain that the addressable production base is already large and that
Livestock Rent's opportunity is to convert a small, carefully underwritten
portion into auditable, financeable receivables. Use margin pressure only to
support the need for spread underwriting, animal evidence, controlled cash and
servicing discipline.

- [ ] **Step 3: Add geographic sequencing**

Keep Santa Catarina and Rio Grande do Sul as the data-rich pilot region and
identify Mato Grosso, Minas Gerais and Sao Paulo as future scale markets after
the operating model is proven.

- [ ] **Step 4: Add direct references**

Add:

- the official Mapa publication:
  `https://www.gov.br/agricultura/pt-br/assuntos/noticias/em-junho-valor-bruto-da-producao-agropecuaria-e-estimado-em-r-1-4-trilhao`;
- `research/vbp-agropecuaria-2026-analysis-2026-07-20.md`.

### Task 3: Regenerate and verify the PDF

**Files:**
- Modify: `research/livestock-rent-founding-pilot-opportunity-2026-07-20.pdf`
- Create temporarily: `tmp/pdfs/founding-pilot/`

- [ ] **Step 1: Generate the PDF**

Use the bundled Python runtime and ReportLab. Preserve the existing A4 visual
system, update the investment summary, add the VBP callout, and keep notices and
references legible.

- [ ] **Step 2: Verify extracted content**

Run pypdf extraction and assert that the PDF contains:

```text
R$ 1.4 trillion
R$ 511.1 billion
R$ 249.5 billion
4%
400 USDC
10,400 USDC
CPR
CRA
B3
four months
```

Expected: all ten phrases are present.

- [ ] **Step 3: Render every page**

Run:

```bash
pdftoppm -png -r 140 research/livestock-rent-founding-pilot-opportunity-2026-07-20.pdf tmp/pdfs/founding-pilot/page
```

Expected: one PNG per PDF page.

- [ ] **Step 4: Inspect layout**

Inspect every rendered page for clipped text, overlaps, black squares, broken
tables, inconsistent footers, orphan headings and unreadable references. Fix
the generator and repeat generation and rendering if any defect appears.

- [ ] **Step 5: Run final repository checks**

Run:

```bash
git diff --check
git status --short
```

Expected: no whitespace errors; unrelated untracked files remain untouched.
Remove `tmp/pdfs/founding-pilot/` after verification.

