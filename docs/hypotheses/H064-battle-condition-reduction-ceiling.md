# H064 — Battle-condition reduction: is the maximum **58.5 %**, **80 pp**, or **54.4 %**?

**Status:** open (device read needed) · **Opened:** 2026-11-03 (iteration 130) · **Affects:**
[T006](../techniques/T006-lab-queue-packing.md) §the cap table (the **R = 54.4 %** ceiling, the `removed = 16 / 23` floor
and the `skip = ×0.7492` law at value 55), §BC/Boss finding 6, [T014](../techniques/T014-tournament-tickets.md) §4.1

## The three prints

| # | Source | What it prints | Reading |
|---|---|---|---|
| **A** | the five lab pages (pulled 2026-11-03) | `Lab/Battle Condition Reduction` value column `2 … 20`; each `Lab/Battle Conditions Group 1…4` value column `1% … 20% / 20% / 10% / 10%` | maxima **20 / 20 / 20 / 10 / 10** pp ⇒ additive **80 pp** (uncapped?) or multiplicative `1 − 0.8 · 0.8 · 0.8 · 0.9 · 0.9 = ` **58.5 %** |
| **B** | T014 §4.1’s per-step percentages, used by T006 §the cap table | `10 × 2 % + 20 × 0.21 % + 20 × 0.51 % + 10 × 1 % + 10 × 1 %` | **R = 54.4 %** — Group 1 and Group 2 steps are **0.21 % / 0.51 %**, not 1 % |
| **C** | the in-game **Tournaments → Battle Conditions** panel | the reduction shown next to a condition with labs bought | decides it (see the readings) |

The arithmetic that ties the model together: at value 55 the skip law is `skip = ×0.7492`, and **0.7492 = 1 − 0.2508**
with the brackets/removed counts (`removed = 16 / 23`) derived from **R = 54.4 %**; a different ceiling moves both floors.

## Readings to take

1. **One lab, one step.** Open the **Lab** screen → `Battle Conditions Group 1` and note its printed value at level *n*
   (**1 %** per level per print A). Then in a **Tournament** round with a Group-1 condition active (e.g. `Knockback
   Resistance`) compare the shown effect with the same condition at 0 levels. Effect falls **1 pp per level** ⇒ print A;
   **≈0.21 pp per level** ⇒ print B.
2. **The cap panel.** With a group lab at its cap, read the condition’s own entry: if it reads a number ending in
   **20 %** (Group 1/2) and **10 %** (Group 3/4), print A is what the UI shows.
3. **The stacked case.** With all five labs capped, one condition’s total reduction is the deciding number:
   **58.5 %** (multiplicative), **80 %** (additive), or **54.4 %** (the model). Note the wave-count effect too: if
   `removed` still reads **16 / 23** at value 55, the model’s **54.4 %** is the operative one for the skip law.

## What each outcome changes

- **A (58.5 %)** — §the cap table’s floors move: `removed` counts and the value-55 skip `×0.7492` must be re-derived from
  the new ceiling; the coin/clock figures in Appendix B are unaffected.
- **A additive (80 pp)** — same as above plus the condition effect can be fully removed (cap at 100 %), so the
  "no bracket can be fully removed" statement dies.
- **B (54.4 %)** — the lab pages’ `Value` column is a *display* simplification (1 pp shown where 0.21 pp applies);
  keep T006 as printed and mark the wiki’s value columns as rounded.

## Falsification

If the in-game panel shows a per-level step that is neither **1 pp** nor **≈0.21 / 0.51 pp** for the same lab (for
instance a per-condition multiplier), then the lab value columns and the tournament steps are two different quantities
and both tables need their own labels — the single-number ceiling is then not a well-formed claim.
