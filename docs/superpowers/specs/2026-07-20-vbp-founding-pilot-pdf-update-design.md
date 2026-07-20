# VBP update design for the Founding Pilot brief

**Date:** 20 July 2026  
**Status:** Revised direction, pending investor-economics approval

## Objective

Update the Livestock Rent Founding Pilot brief with the latest official 2026
Gross Value of Agricultural Production (VBP) figures from Brazil's Ministry of
Agriculture and Livestock (Mapa), while preserving the document's optimistic
Web3 VC investment narrative and clearly presenting the different economics of
the two 10,000 USDC allocations.

## Approved editorial approach

Use a concise strategic integration rather than a separate market report:

- add the official market-size figures immediately after the section that
  establishes Brazil's productive livestock base;
- emphasize that cattle is the second-largest Brazilian agricultural value
  chain and that market depth is not the project's constraint;
- position 2026 margin pressure as support for Livestock Rent's underwriting,
  servicing, traceability, and cash-control advantage;
- preserve Santa Catarina and Rio Grande do Sul as the pilot environment for
  operating discipline and data quality;
- present Mato Grosso, Minas Gerais, and Sao Paulo as future scale markets,
  without changing the approved first-pilot geography; and
- distinguish total market value from startup revenue or obtainable market
  share.

## Revised investment economics

The 20,000 USDC commitment must be presented as two legally separate
instruments:

| Allocation | Amount | Investor economics |
|---|---:|---|
| Founding equity investment | 10,000 USDC | Long-term, illiquid risk capital in Livestock Rent, economically similar to shares; no redemption or return after four months |
| CRA participation | 10,000 USDC | Subscription or permissioned participation in a CRA backed by eligible livestock CPRs, with four-month contractual remuneration of 4%, equal to 400 USDC, and total scheduled payment of 10,400 USDC |

The CRA participation should state the economic promise directly:
**10,000 USDC principal plus 400 USDC contractual remuneration after four
months**, payable under the CRA waterfall and subject to the final legally
enforceable issuance documents.

The investor's financial right is against the CRA structure according to its
issuance terms, not a direct profit-sharing claim against individual cattle.
Eligible livestock obligations are documented through CPRs, registered at B3,
assigned to the securitization estate, and used as CRA backing. Cash collected
from the CPRs enters the CRA waterfall, which pays costs and required reserves
before CRA remuneration and principal according to the issuance documents.

The revised architecture is:

```text
10,000 USDC CRA allocation
  -> lawful BRL conversion and CRA subscription
  -> securitization estate
  -> eligible B3-registered livestock CPRs
  -> cattle acquisition, feed and operating management
  -> CPR collections
  -> CRA waterfall
  -> 10,000 USDC principal + 400 USDC remuneration after four months
  -> authorized conversion and USDC settlement
```

The 4% is the CRA's proposed fixed contractual remuneration for the four-month
term. It is not proof that the underlying cattle operation will necessarily
produce 4% accounting profit and does not eliminate default, timing, operational,
currency, or securitization risk. The final CRA documents must identify the CPR
issuers and obligors, eligible backing, payment source, maturity, collateral and
reserves, waterfall, default consequences, enforcement route, and treatment of
collections below the scheduled 10,400 USDC.

Until the CPRs are originated, registered and assigned and the CRA is validly
issued, the brief must describe these as the proposed Founding Pilot terms. It
must not imply that a completed CRA issuance, B3 registration, tax treatment, or
credit guarantee already exists.

## Required official figures

Use Mapa's 16 July 2026 publication, based on preliminary information available
through May 2026:

| Measure | Official estimate |
|---|---:|
| Brazilian agricultural VBP | R$ 1.4 trillion |
| Livestock VBP | R$ 511.1 billion |
| Cattle VBP | R$ 249.5 billion |
| Cattle share of national VBP | Approximately 17.5% |

Cattle must be described as Brazil's second-largest agricultural value chain,
behind soybean, and the largest livestock chain in the published ranking.

## Document changes

1. Update the Markdown source:
   `research/livestock-rent-founding-pilot-opportunity-2026-07-20.md`.
2. Replace the direct livestock-pool instrument with a 10,000 USDC CRA
   participation backed by eligible livestock CPRs.
3. Add a compact market-opportunity section and a three-number investor callout.
4. Reinforce the market validation in the "Why now" and catalytic-capital
   sections without repeating the full table.
5. Add the official Mapa source and the project VBP analysis to the references.
6. Regenerate the existing PDF at:
   `research/livestock-rent-founding-pilot-opportunity-2026-07-20.pdf`.

## Tone and guardrails

- Remain optimistic, concise, and suitable for a Web3 VC or angel investor.
- Describe the VBP numbers as market-scale evidence, not Livestock Rent revenue.
- State that the figures are preliminary and identify their information cutoff.
- State the proposed CRA remuneration of 4% for the four-month term explicitly,
  while separating it from the operating-performance narrative.
- Describe the CRA/CPR/B3 chain and the CRA waterfall as the legal and financial
  source of the investor's rights.
- Do not describe the 4% as risk-free, credit-guaranteed, or already issued
  until the CRA and its backing are validly established.
- Do not promise market share, CRA issuance, or completed B3 registration.
- Keep the two 10,000 USDC allocations legally and economically separate.

## Verification

- Check every required figure and qualifier against the official Mapa source.
- Confirm the Markdown contains no unsupported TAM-to-revenue inference.
- Confirm the document shows 400 USDC remuneration and 10,400 USDC total
  scheduled payment consistently.
- Confirm the equity tranche has no four-month redemption or return claim.
- Confirm the investor return is attributed to the CRA terms and CPR cash flows,
  not to direct ownership of cattle or a direct Livestock Rent pool contract.
- Extract PDF text and confirm the new section, figures, source, and notices.
- Render every PDF page and inspect for clipping, overflow, broken characters,
  table defects, and inconsistent headers or footers.
- Run `git diff --check` and leave unrelated untracked files untouched.
