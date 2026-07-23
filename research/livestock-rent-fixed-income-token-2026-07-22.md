# Livestock Rent — Fixed-Income Livestock Token

## A 60-month, CDI-linked, CRA-backed token collateralized by beef and dairy cattle

**22 July 2026 | Brazil | Private concept brief — not an offer or solicitation**

> This document supersedes the founding-pilot scope. Livestock Rent is now a
> **fixed-income product**: a permissioned token representing participation in
> a CRA backed by professionally managed beef and dairy cattle in Brazil,
> paying **100% of CDI** over a **60-month term**, with **quarterly interest
> payments on 50% of the invested capital** and the remainder compounding to
> maturity. Minimum investment: **20,000 USDC**. Target rating path: **Fitch
> Ratings, international scale.**

## 1. The instrument at a glance

| Term | Definition |
|---|---|
| Product | Permissioned fixed-income token representing a CRA participation |
| Legal backing | CRA issued by a CVM-authorized securitization company, backed by beef- and dairy-cattle CPRs registered at B3 |
| Tenor | **60 months** (5 years) |
| Benchmark | **100% of CDI** (Brazil's interbank deposit rate, the local risk-free benchmark) |
| Coupon | **Quarterly interest on 50% of the invested capital** (20 coupons) |
| Principal + accrual | The remaining 50% compounds at 100% of CDI and is paid at maturity, together with all principal |
| Minimum investment | **20,000 USDC** |
| Settlement | Native USDC through authorized providers, after the BRL waterfall is calculated and paid |
| Collateral monitoring | Every animal individually identified (SISBOV + permissioned digital identity), reconciled monthly |
| Rating path | Fitch national scale `sf(bra)` at first institutional pool; **Fitch international scale** as the product scales |
| Target investor | Non-resident Web3-native allocator (US, Europe, Asia, Australia) who operates in USDC and wants asset-backed fixed income |

### Illustrative economics (pre-issuance, at an assumed CDI of 12% p.a.)

All figures are illustrative. CDI floats daily; actual coupons follow realized
CDI. FX conversion to USDC occurs at each payment date through authorized
providers.

| Flow | Amount (USDC-equivalent) |
|---|---:|
| Principal | 20,000 |
| Coupon base (50% of capital) | 10,000 |
| Quarterly coupon at CDI (≈2.87%/quarter at 12% p.a.) | ≈ 287 |
| Total coupons over 20 quarters | ≈ 5,750 |
| Accruing half at maturity (10,000 × 5y at 100% CDI) | ≈ 17,620 |
| Coupon-half principal returned at maturity | 10,000 |
| **Total cash received over 60 months** | **≈ 33,370** |

The investor receives cash flow every quarter from month 3 onward — the
product is designed to *demonstrate* solvency continuously, not to ask for
five years of trust.

## 2. Why beef and dairy together

The 60-month, coupon-paying structure is only as good as the cash-flow engine
behind it. Beef and dairy have complementary cycles, and the pool is built on
that complementarity:

- **Dairy herds produce revenue monthly.** Milk receivables are the natural
  funding source for the quarterly coupons — recurring, contracted with
  offtakers, and measurable per animal per day.
- **Beef finishing produces revenue in cycles.** Successive finishing cohorts
  (rolled every 4–8 months across the 60-month term) build the terminal value
  that repays principal and the compounded half at maturity.
- **Both herds are individually identified** through SISBOV and the
  permissioned digital-identity registry, and underwritten as separate
  sub-pools with separate performance reporting. Dairy cash flow covering
  coupons and beef terminal value covering principal is the base case; the
  waterfall, reserves, and over-collateralization absorb deviations.

This is the same discipline as the original pilot — every animal financed,
documented, and allocated once — applied to a longer instrument with a
recurring payment obligation.

## 3. Payment mechanics

```text
20,000 USDC minimum subscription
    -> lawful BRL conversion and CRA subscription
    -> securitization estate (CVM-authorized issuer)
    -> beef + dairy CPRs registered at B3
    -> monthly collections (milk offtake + cattle sales)
    -> CRA waterfall: expenses -> reserves -> quarterly coupon -> reinvestment
    -> every quarter: CDI interest on 50% of capital, converted and settled in USDC
    -> month 60: principal + compounded CDI on the remaining 50%, settled in USDC
```

Reserve mechanics matter more in a 60-month product than in a 120-day pilot:
the structure carries a coupon reserve sized to cover at least two quarterly
payments, funded before any reinvestment, so a weak dairy quarter does not
translate into a missed coupon. Collections above the coupon requirement are
reinvested in new CPR cohorts inside the estate — that reinvestment is what
lets a biological asset pay a 5-year financial obligation.

## 4. What a USDC investor must understand about CDI

- **CDI is a BRL rate.** It is Brazil's interbank benchmark, historically one
  of the highest real interest rates among major economies. 100% of CDI is
  the reference every Brazilian fixed-income investor prices against.
- **The obligation is calculated in BRL and settled in USDC.** The investor
  carries BRL/USD exposure between payment dates. Historically, high CDI
  partially compensates BRL depreciation — but not mechanically and not in
  every window. Future pools may offer hedged (lower-yield) share classes.
- **Why not just pay a dollar rate?** Because the collateral earns in BRL.
  Promising a USD-denominated coupon against BRL cash flows would embed an FX
  mismatch inside the structure. Passing CDI through transparently keeps the
  structure honest; the investor chooses the FX exposure knowingly.

## 5. The Fitch rating path — the core of the trust story

For the target investor — a Web3-native allocator in the US, Europe, Asia, or
Australia who wants yield *with collateral* — animal-level transparency is
necessary but not sufficient. The independent opinion that their regulators
and committees already accept comes from a global rating agency, and **Fitch
is formally recognized in every target market**: NRSRO with the SEC (US),
ESMA-registered ECAI (EU), recognized by the JFSA (Japan), accepted by the
MAS (Singapore), and an APRA-recognized ECAI (Australia).

The rating strategy is sequenced with scale:

| Phase | Scale | Rating action |
|---|---|---|
| First tokenized pool | Launch scale | Unrated; produces the rating dossier (asset-level default, mortality, recovery, and cost data; documented servicing; legal opinions) |
| Institutional pool | R$ 5–20 million | **Fitch national scale** structured finance rating (`sf(bra)`) — unlocks Fiagros and domestic institutional distribution |
| Scaled pools | R$ 50 million+ | **Fitch international scale** alongside national — the rating a US, European, Asian, or Australian mandate can actually use |

Stated plainly: Fitch rates Brazil **BB (stable)** with a **BB+ country
ceiling**, so the international-scale rating on a BRL-collections structure
will be high yield, not investment grade. A sovereign downgrade would pressure
the rating regardless of herd performance. The structure's USDC settlement
design addresses precisely the transfer-and-convertibility risk behind that
ceiling, and ceiling mitigants (offshore coupon reserve, pre-funded payments)
are evaluated at scale. The 60-month tenor is an advantage here: five years of
quarterly payment history and animal-level performance data is exactly the
surveillance record Fitch's structured finance methodology rewards — and the
agency's machinery for this market is battle-tested, having acted on 191 CRA
series in a single review in June 2026.

No rating exists today and no agency has been engaged; this section describes
the intended trajectory.

## 6. Token design

- **Permissioned ERC-20-style token** representing the CRA participation;
  transfers restricted to allowlisted, KYC-verified wallets.
- **Quarterly distributions pushed onchain** in native USDC to token holders
  of record, with the waterfall calculation published alongside each payment.
- **Animal-level collateral registry**: each animal's non-transferable
  identity token reconciles to the pool; investors can audit collateral
  composition continuously rather than quarterly.
- **Recovery and compliance controls**: wallet recovery, pause, and
  dispute procedures documented; Brazil's 2026 virtual-asset framework and
  the applicable CVM offering route govern the distribution.

## 7. Risk factors (summary)

Credit risk of CPR obligors; biological risk (mortality, disease, weight
underperformance); milk and cattle price risk; reinvestment risk across the
60-month term; FX risk (BRL/USD) between payment dates; liquidity risk (no
secondary market is promised); structure risk (securitization, waterfall,
reserves); regulatory and tax risk in Brazil and in the investor's
jurisdiction; sovereign-ceiling risk on any future international rating.
There is no FGC (Brazilian deposit insurance) coverage and no guarantee of
principal or yield. CDI-linked returns are calculated in BRL; USDC settlement
value varies with FX.

## 8. Next steps

1. Term sheet for the fixed-income token, including final coupon mechanics
   and reserve sizing;
2. Investor eligibility, KYC/AML, tax, and registration analysis per
   jurisdiction (US, EU, Asia, Australia routes differ);
3. Securitization partner engagement and CRA documentation for a 60-month,
   coupon-paying issuance backed by mixed beef + dairy CPRs;
4. Rating-dossier data room assembled to Fitch structured finance methodology
   from day one — including price, feed-cost, milk-yield, and mortality
   stress scenarios;
5. Token, allowlist, distribution, and USDC settlement infrastructure;
6. First pool subscription (minimum ticket 20,000 USDC).

## Important notice

This document is a strategic private concept brief, not an offer,
recommendation, or solicitation to the public. All economics are illustrative
and pre-issuance; actual terms are defined only by final offering documents of
a CRA issued by a CVM-authorized securitization company. Payments depend on
collections, reserves, and the waterfall, and are exposed to credit,
biological, price, reinvestment, currency, tax, conversion, custody,
liquidity, and settlement risks. No credit rating exists today and no rating
agency has been engaged; references to Fitch Ratings describe an intended
trajectory, constrained by Brazil's sovereign rating and country ceiling
(currently BB / BB+ at Fitch). Projected returns are not a guarantee of
results.

## Project references

1. [Founding pilot brief (superseded scope)](livestock-rent-founding-pilot-opportunity-2026-07-20.md)
2. [Fitch Ratings and the Brazilian CRA market — research note](fitch-cra-brasil.md)
3. [Fitch rating trajectory analysis](livestock-rent-fitch-rating-analysis-2026-07-22.md)
4. [Brazil 2026 VBP analysis](vbp-agropecuaria-2026-analysis-2026-07-20.md)
5. [Project overview](../README.md)
