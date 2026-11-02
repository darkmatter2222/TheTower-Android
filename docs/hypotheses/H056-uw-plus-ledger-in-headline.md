# H056 - Does the "stones spent" headline include the UW+ ledger?

Status: open · Raised: 2026-11-02

**Claim.** On `wiki/guide/uw-tier-list` the per-UW table sums to **43 842** and the page headline is **53 547** stones, and
`43 842 + 9 705` (the nine slot unlocks, T008 §1) `= 53 547` exactly. So the headline is
*slot unlocks + basic-stat spend*. The **UW+** purchases then appear nowhere, even though the same table lists three
abilities as owned (Golden Tower level 7, Chrono Field level 4, Spotlight level 0), which by the printed UW+ ladder
(**500 / 625 / 750** for the 1st–3rd) is at least **1 875** stones on top.

Two readings:

| Reading | Consequence |
|---|---|
| **(a)** the headline is `unlocks + stat levels` only (the arithmetic above) | the UW+ ledger is a **third** pool: total invested = `53 547 + (UW+ unlocks + UW+ levels)` |
| **(b)** the per-UW column *does* carry UW+ spend for the three owned abilities and the `+9 705` match is a coincidence | the stat ledger is smaller than 43 842 and §1/§2's percentages must be recomputed |

**Why it is not fully settled.** The **per-level** UW+ prices *are* printed (each `wiki/uw/<name>` page’s `UW+ Cost Table`,
see [T008](../techniques/T008-uw-sync-with-stones.md) §1.④ — 12 650 for Smite, 20 070 for a fully maxed Golden Combo, etc.),
so only the **containment** question is open. The four `UW+ status = Locked` rows (BH 5 740 · DW 5 393 · CL 3 416 · ILM
625) prove *those* cells contain no UW+ price, which favours (a), but the three owned rows are not decomposed.

## The read that settles it

One account, three numbers from the same screenshot session:

1. the **Ultimate Weapons** panel's per-UW "spent" number for **Golden Tower** (call it `G`), read at its current
   Multiplier / Duration / Cooldown levels;
2. the **UW+ tab's** per-level prices for **Golden Combo**, summed over its bought levels (call it `P`);
3. the total stones spent shown for the account (or `sum of the nine per-UW numbers`).

* Reading **(a)**: `G` equals only the sum of §2's per-level columns for GT's three lines, i.e. **P is not inside G**, and
  item 3 is short of the true invested total by `Σ UW+ (unlocks + levels)`.
* Reading **(b)**: `G` exceeds the §2 prefix-sum by exactly `P` (e.g. GT at Multiplier 10 / Duration 15 / Cooldown 10 =
  **534 + 1 076 + 910 = 2 520** (§4) would instead read **2 520 + P**).

## Kill conditions

- If `G` equals the §2 prefix-sum and the account total equals `unlocks + Σ G`, reading **(a)** stands → keep T008 §1's
  four-pool table as-is and add a fifth line for the UW+ levels ladder once it is read level by level.
- If `G` = prefix-sum **+** the UW+ sum, reading **(b)** stands → subtract `Σ UW+` from the 43 842 total and re-derive the
  **17.9 %** completion ratio in T008 §1.①.
- If the UW+ per-level prices turn out to be *per ability* rather than by count-owned (so Golden Combo's ten levels are
  not 10 x one number), the printed 500 … 3 800 ladder is only the **unlock** row → keep both ladders as printed and quote
  the panel per level.
