# H043 — Do the three Vault tabs' printed totals sum to the ≈ 73 000-key bill?

Status: open · Raised: 2026-11-02

**Claim.** The ≈ **73 000** keys to max the Vault is the sum of the three tabs' own totals, and the **Enemies** tab is the
dominant part of it, with Harmony a rounding error in comparison
([T017](../techniques/T017-vault-keys-priority.md) §2.3): **Harmony 1 350** (all nodes, §2.1) and **Power ≈ 11 255** as
printed, so Enemies must be ≈ **60 400** (73 000 − 1 350 − 11 255).

**Why it matters.** The plan in T017 depends on Harmony being cheap: if the tab totals are 1 350 / 11 255 / ≈ 60 400, then
**1.8 %** of the whole bill buys the entire Harmony tab (every gem-saving node), and the ranking “Harmony → Utility → the
rest” is exact rather than approximate. It also says how many keys each *section* of the Enemies tab is worth of the
73 000 (its four sections unlock at 0/50/100/150 keys while their lines run 25 → 103+ per level for 30 levels each).

**Settling observation (three numbers, one sitting).** Open the **Vault** tab by tab and read the total printed at the
bottom of each (the panels show a spent/total pair, e.g. `1 350 / 1 350` when finished):
1. `Harmony_total`, `Power_total`, `Enemies_total` with all sections unlocked but nothing levelled — the *unlocks only*;
2. then the same three after buying **one** level of one line in each, to see whether the totals include the section
   unlocks (subtract them if not).
- `Harmony + Power + Enemies = 73 000 ± 5 %` (and Harmony ≈ 1 350) ⇒ claim;
- Harmony ≈ 1 350 but the other two far from the expected split ⇒ the wiki's line list is incomplete (the tab totals are
  the authority — recompute §2.2's as-printed sums from them);
- Harmony ≈ 1 320 (= 1 350 − 30) ⇒ the totals exclude section unlocks, which is itself worth knowing for §4's step order.

**Controls.** Read all three in the same session (the totals are per-account and change as you buy), note the version, and
do the read **after** the one free respec has been used or explicitly not used — a respec zeroes the spent column but not
the total.

**Falsifier.** If a tab's `x / y` shows `y` changing as levels are bought (i.e. it is not a fixed max), the UI total is a
running sum rather than a cap → record `y` at three different progress points so the true max can be extrapolated.
