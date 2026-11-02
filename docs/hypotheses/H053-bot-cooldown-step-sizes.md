# H053 — Bot cooldown steps: is a medal upgrade −3 s and a lab upgrade −1 s (base 120 s)?

Status: open · Raised: 2026-11-02

**Claim.** The two bot cooldown ladders are linear with **medal upgrade = −3 s** and **lab upgrade = −1 s** per level, and
a bot’s base cooldown is **120 s**, so the whole lattice is `cd = 120 − 3m − l` seconds.

**Evidence (all printed, all mutually consistent).** Tower Hub `wiki/guide/footguns` gives three steps and two waypoints:

| Printed statement | Equation | Solved with `m = 3`, `l = 1` |
|---|---|---|
| “intervals of 5 seconds (1 medal plus 2 labs)” | `m + 2l = 5` | `3 + 2 = 5` ✓ |
| “or 10 seconds (3 medals plus 1 lab)” | `3m + l = 10` | `9 + 1 = 10` ✓ |
| “6 medal and 2 lab cooldown upgrades to reach a 100-second cooldown” | `base − (6m + 2l) = 100` | `120 − 20 = 100` ✓ |
| “at max cooldowns, all bots (excluding Flame Bot) … land on a 50-second cooldown” | `base − 70 = 50` | `120 − 70 = 50` ✓ |

The 2×2 system `m + 2l = 5`, `3m + l = 10` has exactly one solution (`m = 3`, `l = 1`), so the two equations already fix
both steps; the third and fourth rows then fix the base at **120 s**. That is four printed rows, four unknown-free checks.
The UW side of the same lattice is *already* closed inside [T008](../techniques/T008-uw-sync-with-stones.md) §3: every
GT/BH/DW block endpoint is a multiple of 10 s (300→200 in 10 levels, →150 in 5, →100 in 5, etc.), i.e.
**UW cooldown = −10 s per level**, and the maxes there (GT 100, BH 50, DW 50) are the same numbers `footguns` prints.

**Why it is not settled by the source.** The page never states the per-level seconds; it gives combined steps, so the
solution is inferred. Two things could break the inference: (a) a **non-linear** ladder (e.g. the first levels are cheaper,
which is how the *stone* price columns behave on every UW line), or (b) a **different base per bot** — the page says “all
bots (excluding Flame Bot)” share the *max* value, which is not the same claim as sharing a base.

**Why it matters.** It turns the bot sync into arithmetic instead of trial and error: with `m = 3`, `l = 1` you can compute
the exact tap count to reach *half* of your current GT/DW sync cooldown (the page’s target, for a clean 2:1), and — because
**lab levels cannot be respecced while medal levels can** (300 gems, T009 §1) — the tap count is also the size of the
irreversible commitment. It also decides whether the 6-medal-2-lab waypoint is reachable in the *cheapest* mix: with those
steps, 20 s of reduction costs 8 upgrades, and the same 20 s in medals alone costs 6.67 → 7 medals.

## The read that settles it

On one bot, in this order, reading the cooldown line each time: **0 levels** (expect **120 s**) → **1 medal level**
(expect **117 s**) → **+1 lab level** (expect **116 s**) → **6 medals + 2 labs total** (expect **100 s**).
A second bot, same reads, tests whether the base is shared.

## Kill conditions

- If level 1 of the medal line reads **115 s** (i.e. −5 s), the two printed “intervals” are *totals of a block*, not sums
  of the parts → set `m = 5 − 2l` from the block rows and re-read; the 120 s base survives, the tap counts do not.
- If the two single-level reads are not 3 and 1 but the 6+2 read is still 100 s, the ladder is non-linear → keep only the
  printed waypoints (100 s, 50 s) as targets and count taps to each instead of computing them.
- If a second bot’s base is **not** 120 s, the lattice is per-bot: record each base, and note that the page’s “all bots …
  land on 50 s” is then a statement about *max* levels only (still usable, but not a shared starting point).
