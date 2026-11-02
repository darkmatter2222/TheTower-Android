# H046 — How is a maxed rarity's mass redistributed: proportional (85/15) or Epic-frozen (97/3)?

Status: open · Raised: 2026-11-02

**Claim (two published variants, both in [T012 §1](../techniques/T012-card-deck-order.md)).** When a whole rarity is
maxed, its share of the pull distribution is re-allocated — but the sources disagree on how:

| Source | Rule after all 12 Commons are maxed | Consequence: pulls to max all 9 Rares |
|---|---|---|
| fandom `Cards` | **proportional** — 0.80 splits 17 : 3 ⇒ **68 % Rare / 12 % Epic** (total 85/15 with the base shares) | **1 807** |
| game-vault `Cards` | **Epic frozen at 3 %** — “when all common cards are purchased, the chance to get a rare card goes up to **97 %**” | **1 732** |

**Why it matters.** Only the *intermediate* schedule moves (the deck total is invariant at **2 560 pulls = 51 200 gems**,
because every pull yields exactly one needed copy): the 75-pull gap is ≈ **1 500 gems** of difference on the Rare-class
finish, and it decides whether Epic cards start arriving meaningfully before the Rares are done (15 % vs 3 % mass = 5×
the Epic income during the Rare phase). Under the 97/3 rule an Epic card's L4 is effectively unreachable until the Rares
finish, so the “buy Epics late” ordering becomes strict.

**Settling observation (device, one read).** Open the **Cards** tab → **ℹ (info) panel** right after the 12th Common
reaches level 7 and read the two remaining percentages:
- **85 % / 15 %** ⇒ proportional rule, use the 1 807-pull schedule;
- **97 % / 3 %** ⇒ Epic-frozen rule, use the 1 732-pull schedule.

**Kill condition.** Any other pair (e.g. 80/20) invalidates both models → rebuild the phase table from the panel's own
numbers; the per-card closed form `pulls = copies × n_rarity ÷ mass` still applies with the read mass.
