# H062 — `Nuke Mastery`: which of the two printed ladders is the mastery value?

**Status:** open (device read needed) · **Opened:** 2026-11-03 (iteration 119) · **Affects:**
[T012](../techniques/T012-card-deck-order.md) §2.3, the mastery product `270 = 5 × 6 × 9`

## The two prints

| # | Page (last verified) | What it prints | Reading |
|---|---|---|---|
| **A** | `wiki/card/nuke` (**2026-11-01**) | “Research *Nuke Mastery* (max level **9**): *slows enemy attack speed for 300 waves*, **0.05** at level 0 up to **0.5** at level 9, in steps of **0.05**” | the mastery’s own quantity is the **attack-speed slow**: `v(k) = 0.05 × (k + 1)` ⇒ **5 % → 50 %** (the §2.1/§2.2 mastery law with base **0**, step **0.05**) |
| **B** | `wiki/card/nuke-vs-slow-aura-mastery` (pulled at T012 Rev 5) | `Nuke` mastery = **1 + 0.10·(k + 1)** ⇒ **×1.40** at level 3, **×1.50** at 4, **×1.70** at 6, **×2.00** at 9; “both at 9 … **×3.00** combined” (= `Slow Aura` ×1.50 × `Nuke` ×2.00 ✓) | the mastery is a **card-value multiplier** with step **0.10** |

Both cannot describe the same column: A’s level-9 value is **0.5** (⇒ ×1.50 if read as a multiplier), B’s is **×2.00**.
The card page’s own per-star ladder (**25 / 35 / 45 / 55 / 65 / 80 / 100 %**, `wiki/card/nuke`) is a third, separate
quantity (the share of on-screen enemies the nuke removes), so the card carries at least two numeric ladders.

## Readings to take

1. **Cards screen → tap `Nuke` → its mastery row.** Note the value at the current mastery level, buy **one** mastery
   level (stones), note it again. **Δ = 0.05** supports print A, **Δ = 0.10** supports print B.
2. **Same two reads at the top of the ladder** (mastery 8 → 9): the endpoint is the discriminator — **1.50** (A) vs
   **2.00** (B).
3. **Does the on-screen clear share move?** Trigger the nuke manually before and after a mastery purchase: if the cleared
   share changes, the mastery multiplies the card value (print B’s role); if only the enemy attack-speed pause changes
   (the printed **300-wave** window), it is the slow (print A’s role).

## What each outcome changes

- **Δ = 0.05 and the clear share unchanged** → print A is the mastery and print B’s `×2.00` belongs to a *different*
  quantity (likely the pair product column); T012 §2.3 item 6 keeps its `1 + 0.10·(k+1)` rows but they must be labelled as
  the comparison page’s own scale, and the product law’s factor for `Nuke` at 9 becomes **1.5** ⇒ the trio product is
  **5 × 6 × 9** only under print B.
- **Δ = 0.10** → print B is the mastery; print A’s `0.05 … 0.5` is the **attack-speed slow** (a second mastery quantity on
  the same card, which the §2.2 “one unit per family” rule must then allow for).
- Any other pair of readings → both prints are stale for this build; re-derive `v(k) = base + (k+1)·s` from levels 0–2 as
  in §2.2 and use that step.

## Why it matters for a sub-T11 account

The mastery stone bill is the same either way (**9** levels per card, shared lab **50 q** coins / **562.5 d**), but the
*value per stone* differs by a factor of two between the two readings, and `Nuke` is a **T11 W10** milestone card — the
first special card many accounts can equip, so its mastery is usually the first mastery bought with surplus stones.
