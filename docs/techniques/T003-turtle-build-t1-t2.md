# T003 — Turtle build: clear Tier 1–2 almost for free

Rev: 2 (2026-11-02) — the Tier 1–2 layer is now **printed** (`wiki/guide/beginner-guide`, last verified 2026-11-02
fetch): the workshop order comes with **levels** (Def Abs ≈ 50, Health 1–2/run, Def % only *after* Def Abs 50), the
Thorns breakpoint law closes on one formula — **`t = ⌊100/n⌋ + 1`** for `n = 20, 10, 5, 4, 3` ⇒ **6 / 11 / 21 / 26 / 34 %**
(5/5 printed values ✓) — and the coin bills are named: `Coins/Kill Bonus` maxes for **20 M** coins, `Super Critical`
unlocks once 100 M is “not a stretch”, `Interest` is stuck at **$50** until **Tier 2 Wave 80** (`Max Interest`).
**Status: Verified (arithmetic)** for the breakpoint law and the printed level counts; the wave gain itself is still a
device read.
Value: ★★ (fast tier unlocks → bigger daily/weekly coin rewards) · Ease: 10 min · Prerequisite: Tier 1

## Why it works

Enemy damage scales by roughly 4 % per consecutive hit, while **Defense Absolute** is a flat
subtraction. At low tiers a big Absolute-Defense number reduces incoming damage to almost
nothing, so the tower survives nearly indefinitely, and **Thorns** (which reflects a % of
incoming damage on every hit) does all the killing — no coin-heavy Attack investment needed.
This is the cheapest known path through Tier 1–2 and the base for the later Blender build.

## Steps

1. Open the **Workshop** and spend Coins only on these four, in this order:
   1. **Defense Absolute** — the printed target is **about 50 levels** (“it only needs about 50 workshop levels,
      overshooting is fine; the coin cost at low levels is trivial long-term”).
   2. **Health** — **1–2 levels** per run early on, nothing more; it matters much more later.
   3. **Defense %** — start pushing it *once* **Def Abs hits level 50** (the page sequences them exactly this way).
   4. **Thorns** — your main damage source; sit **1 % above a fraction breakpoint** (§“The printed numbers”), i.e.
      **6 %, 11 %, 21 %, 26 %, 34 %**.
2. Add **Health Regen** a few levels only until **Lifesteal** unlocks; afterwards Lifesteal replaces it and should cost ~2× the HP upgrades.
3. Keep **Knockback** at the same purchase cost as **Attack Speed** until Knockback Force is maxed (enemies get pushed back into your orbs).
4. In-run: follow [T002](T002-run-phase-order.md); add Absolute Defense and Def % as the survival phase.
5. Do **not** buy Range, Damage-per-Meter, or Crit Factor yet (`Range`: “ignore for now”; `Crit Factor`: “final levels
   get very expensive”).

## The printed numbers (Tier 1–2)

All from `wiki/guide/beginner-guide`; the named coin bills and the interest gate are the ones that let you locate
yourself by coin counter alone.

| Item | Printed value | Use |
|---|---|---|
| `Def Abs` target | ≈ **50** workshop levels | the whole Turtle defence, then stop |
| `Health` early intake | **1–2** levels per run | keeps the coin cost near zero |
| `Def %` start | when `Def Abs` = **50** | the sequencing rule |
| Thorns sits at | **6 / 11 / 21 / 26 / 34 %** | `⌊100/n⌋ + 1`, `n = 20, 10, 5, 4, 3` (**5/5 ✓**) |
| `Coins/Kill Bonus` full max | **20 M** coins | the first coin bill you can actually finish |
| `Super Critical` unlock | once **100 M** is not a stretch | = **5×** the CPK bill ⇒ deliberately later |
| `Interest` before `Max Interest` | **$50** per payment | gate = **Tier 2 Wave 80** (matches T001’s 15-level ladder) |
| Tier 2 vs Tier 1 difficulty | ≈ **20×** | “an extreme jump that tiers 3–9 don’t repeat” |
| Tier 2 vs Tier 1 payout | **nearly double** the coins | crossover maths in [T005](T005-tier-rush-then-farm.md) |
| Tier 1 farm ceiling | test Tier 2 once **W1000** is reliable | crossover ≈ **Tier 2 W300** |

**The Thorns law (one formula, five printed values).** Thorns deals `t %` of the enemy’s max HP per hit, so the hits
needed to kill are `⌈100 / t⌉`; that number only changes at the reciprocal values `100 / n`. Buying the first integer
*strictly above* each reciprocal captures the cheaper hit count for exactly one level — and the page’s stated reason for
the +1 is the game’s own rounding on an exact division (“to dodge rounding issues”):

```
 n :    20      10      20→5    25→4    33.3→3   (50     100)
100/n:   5      10      20      25      33.3     (50     100)
  t :    6      11      21      26      34       (51     99 = the cap)   = ⌊100/n⌋ + 1 ✓ 5/5
hits:   17      10       5       4       3       (2      1)              = ⌈100/t⌉
```

So **6 %** buys 17 hits where 5 % needs 20 (three hits cheaper for one level), and **34 %** buys 3 hits where 33 % still
needs 4. Levels *between* breakpoints are near-free but buy nothing: 26 % and 25 % both give 4 hits, so the +1 is
insurance against the rounding, and the value is entirely in **never stopping just below** a breakpoint.

## Where Turtle stops

The page’s own transition rule: once you can **max Attack Speed inside a run**, add **Multishot**; then the same pattern
for **Rapid Fire**, then **Bounce Shot**. Long-term the page splits progression into “more HP or more damage” and states
that **HP scales faster on its own than damage does**, so the health build is the cheaper of the two — and at that point
you **stop buying Def Abs in-run**. Before attempting Tier 2, Knockback / Lifesteal / Orbs / Attack Speed / Multishot
should each be about half-maxed. Note `Lifesteal` heals **only off tower projectile damage** (orbs and thorns do not
heal you), `Knockback` gains value once you have orbs, and `Damage/meter` “behaves more like damage per 10 meters”.

## Reproduction checklist

- [ ] Thorns sits exactly on a breakpoint (**6 / 11 / 21 / 26 / 34 %**) rather than an in-between level, and the panel’s
      step is **+1 %** per level.
- [ ] **Hit-count law:** at **34 %** a normal enemy dies in **3** hits while at **33 %** it needs **4** (the law is
      `hits = ⌈100 / t⌉`), and at **6 %** it needs **17** where 5 % needs **20**.
- [ ] `Def Abs` is around level **50** when Tier 1 falls; `Health` is a handful of levels; `Def %` was started *after* 50.
- [ ] `Coins/Kill Bonus` maxes for **20 M** coins total (read the last level’s total), and `Super Critical` appears once
      the coin counter passes **100 M**.
- [ ] `Interest` pays **$50** per payment before the **Tier 2 Wave 80** milestone and more after it.
- [ ] Wave reached at Tier 1 rises versus your control without buying Damage; Tier 2 is a visible step-change (~20×).

## Falsification

- If the hits-to-kill do **not** follow `⌈100 / t⌉` (e.g. 34 % still takes 4 hits), the breakpoint model is wrong → record
  the hits at 25/26/33/34 % and use the printed list 6/11/21/26/34 as a lookup table instead (H054).
- If `Def Abs` clearly needs **far more than 50** levels to hold Tier 1, your Thorns is off-breakpoint or the version
  changed the per-hit scaling → re-read the two values and re-derive the split from one run.
- If raw Damage levels clearly out-rank Thorns at equal coin cost on Tier 1–2, note the wave
  numbers here and re-test after Lifesteal unlocks (Turtle is expected to decay after Tier ~3).

## Sources

Tower Hub `wiki/guide/beginner-guide` (last verified **2026-07-29**) — the workshop order with level targets (Def Abs ≈ 50,
Health 1–2/run, Def % after 50), the Thorns “1 % above a fraction breakpoint (for example 6 %, 11 %, 21 %, 26 %)” rule,
`Coins/Kill Bonus` = **20 M** to max, `Super Critical` at **100 M**, `Interest` “caps out at $50 … until you unlock max
interest at tier 2 wave 80”, the ~20× tier-2 jump and “pays out nearly double the coins”, and the W1000/W300 crossover.
Earlier: game-vault `Guide:Beginners_Guide` §Health / §Turtle Build Guide; oslink.io strategy summary (4 % per-hit damage
scaling, Thorns priority, the 34 % breakpoint).
