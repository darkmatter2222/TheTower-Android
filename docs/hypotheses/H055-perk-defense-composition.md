# H055 — How do the perk defense terms compose to exactly 99.1 %?

Status: open · Raised: 2026-11-02

**Claim.** The tier guide prints three numbers for the defended state: the pre-perk `Defense %` cap **85.5 %**, the perk
contributions **+25 pp** of defense and a **−55 %** enemy-damage cut, and the total **99.1 %** (with the printed ratio
`0.145 / 0.009 = ` **16.111×** re-adding exactly). The **composition order** of the two perk terms is what is missing.

**Why it is not settled by the source.** Neither obvious reading lands on 99.1 %:

| Reading | Result |
|---|---|
| additive: `85.5 + 25` | **110.5** (and 99.1 is above the printed 99-style caps anyway) |
| multiplicative on the remainder: `1 − 0.145 × 0.45` | **93.475 %** |
| `1 − (1 − 0.855 − 0.25) × 0.45` | negative-remainder case, no match |
| `1 − 0.145 × 0.45 × 0.75` (five ×5 % stacks ≈ 0.774) | **94.95 %** |

So the game applies the +25 pp and the −55 % in an order (or against a different base) that the page does not state.

**Why it matters.** The 99.1 % state is the entire reason the defensive build is worth its coin spend
([T011](../techniques/T011-perk-engine-tuning.md) §1.⑦ pays **16.111×** for it), and the *marginal* value of one more
`Defense +5 %` stack depends on which leg it multiplies: additive-on-the-cap means the fifth stack is nearly free
(sitting 0.009 from the cap), while multiplicative-on-the-remainder means each stack is worth a constant ×0.95 of the
incoming damage and the ordering of the other perks is irrelevant.

## The read that settles it

Three reads of the **same** run's stats panel `Defense %` line (and the incoming-damage figure for one tracked hit):

1. no perks taken yet;
2. after the **5** `Defense +5 %` stacks only;
3. after also taking the **−55 %** damage-taken perk.

Expected under the additive reading: 85.5 → 90.5 → 95.5 with the 55 % applied last; under the multiplicative reading the
second read stays **85.5** in the panel while the incoming damage falls by ×0.95⁵.

## Kill conditions

- If the three reads are **85.5 / 90.5 / 95.5**, the terms are plain additive and the printed **99.1 %** belongs to a
  fourth source not listed on the page (a relic or module sub-stat) → search the relic table for a `Defense %` line and
  re-sum T018 §3.1's relic counts.
- If the panel keeps reading **85.5** while the incoming damage falls, the perk terms are *off-panel multipliers* → keep the
  16.111× identity (it is a damage ratio, not a panel percentage) and stop treating 99.1 % as a workshop stat.
- If a fifth `Defense +5 %` stack is refused by the game (a hard cap at four stacks), the printed “stacks up to five times”
  is version-stale → re-tabulate the stacks from the offer screen.
