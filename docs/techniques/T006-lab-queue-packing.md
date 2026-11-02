# T006 — Pack the Lab queue, then buy the *cheapest* skipped hour

Rev: 3 (2026-11-02) — the **two meta-labs** priced (`Labs Speed` ×2.98, `Labs Coin Discount` −29.7 %, one shared coin
curve), the **multiplicative stacking law** with the worked example, the rush-bucket prices re-derived from the flat rate ×
the printed discount column, and **H035 resolved** (both mechanisms: +0.015× per gold-boxed lab + the duration tiering).
Rev: 2 (2026-11-01) · Status: **Verified (arithmetic)** for the boost/rush tables (the bucket prices reproduce from
7.5 gems/h × the printed discount: 7.5·24·0.91 ≈ **163**, 7.5·168·0.79 ≈ **1 000**, 7.5·720·0.66 ≈ **3 550** ✓); the
cell-income model is still a formula without a measured day
**Value:** ★★★ → effectively ×2–3 research throughput for the whole game · **Ease:** 4 taps per boost · **Prerequisite:** Lab unlocked (Tier 1 Wave 30 milestone)

| Boost | Cells per hour (per slot) | **Cells per skipped hour** | Rank |
|---|---|---|---|
| ×1.5 | 15 | **30** | 1 |
| ×2 | 100 | 100 | 2 |
| ×3 | 840 | 420 | 3 |
| ×4 | 3 360 | 1 120 | 4 |
| ×5 | 11 900 | 2 975 | 5 |
| ×6 | 60 000 | 12 000 | 6 |
| ×7 | 250 000 | 41 667 | 7 |
| ×8 | 1 000 000 | 142 857 | 8 |

Cost is flat per hour, so the ×8 column is 24 000 / 800 000 / 2 400 000 cells for the 1 h / 8 h / 24 h presets and the ratio never changes. **Each multiplier step is ~3.3× worse per cell** — ×1.5 is the only “buy” tier, everything above ×3 is for accounts with six-figure cell stocks.

## Why it works

Lab research is a **multiplier** on a stat, so it is the strongest coin-per-coin line in the game — but each level also costs wall-clock time that coins cannot compress. The real budget is *slot-hours*, and the whole technique is: (1) never let a slot idle, (2) buy the cheapest skipped hour available, (3) keep the two currencies that buy time (Elite Cells, Gems) at their best exchange rate.

### Elite Cell income (what you are spending)

- Elites are **Vampire, Ray, Scatter**. Each one drops `1 … Tier` cells uniformly ⇒ **average (1 + Tier) / 2 per kill** for Tiers 1–13 (Tier 14+ has its own table).
- So cell income ≈ `elitesPerWave × wavesPerHour × (1 + Tier)/2`. At 1 elite/wave and 100 waves/h: **T1 ≈ 100 cells/h, T5 ≈ 300 cells/h, T8 ≈ 450, T11 ≈ 600** (see [H009](../hypotheses/H009-elite-density-per-wave.md) for the density to measure).
- The **Wave Skip** card is cell-*positive*: every wave it skips pays **1.1×** the cells of the current wave.
- **Intro Sprint is cell-negative**: cells earned while it is active are reduced to **20 %**. If a day's goal is cells, do not start the run with Intro Sprint.
- Later multipliers, in the order most accounts get them: `Death Wave Cell Bonus` lab → **Cells Bonus** (Workshop Enhancements) → **Enemy Balance / Elite Balance** mastery (more elites per wave) → **Cells** card (+up to 14 cells per elite kill, plus its Cells+ mastery) → Gold Bot + Amplify/Bot Bot overlapping its window.

### The exchange rate that decides Cells vs Gems

| Way to buy 1 skipped research-hour | Cost | Typical share of a day's income |
|---|---|---|
| Elite Cell boost ×1.5 | **30 cells** | ≈ 3 % of ~1 000 cells/day (T5) |
| Gem rush, 1-day bucket | 6.79 gems (163 / 24 h) | ≈ 17 % of ~40 gems/day |
| Gem rush, 1-week bucket | 5.95 gems (1 000 / 168 h) | ≈ 15 % |
| Gem rush, 30-day bucket | 4.93 gems | ≈ 12 % |
| Gem rush, 90-day bucket | 3.70 gems | ≈ 9 % |
| Gem rush, 360-day bucket | 2.89 gems | ≈ 7 % |

Read: **Elite Cells buy time ~5–6× cheaper than gems per skipped hour** for a sub-T11 account, so cells are always spent first and gems go to **lab slots / card slots** ([T009](T009-gem-spend-order.md)). Gem rush becomes competitive only in the ≥ 30-day buckets, i.e. for the multi-day gate labs (`Unlock Perks` 3 d 11 h, `Perk Option Quantity` 10 d, `Auto Pick Ranking` levels).
Gem rush is also **non-linear in your favour**: 1 h = 8 gems but 1 week = 1 000, so never rush a 1-week lab as 168 hourly purchases. Each **fully gold-boxed lab** adds +0.015× to your gem-rush efficiency, so rush after gold-boxing, not before.

## The two meta-labs (buy these before any stat line)

`Labs Speed` and `Labs Coin Discount` are the only lines that multiply *every other* line's cost or duration, so each
level is a discount on the whole remaining lab tree. Both have **99 levels**, both **exclude themselves** from their own
effect, and both use **one shared coin curve** (printed, first 10 levels — the same 10 numbers on both pages):

| Level | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
|---|---|---|---|---|---|---|---|---|---|---|
| coins | 40 | 83 | 211 | 522 | 1 116 | 2 099 | 3 579 | 5 667 | 8 474 | 12 116 |
| **Σ coins** | 40 | 123 | 334 | 856 | **1 972** | 4 071 | 7 650 | 13 317 | 21 791 | **33 907** |
| base time (cumulative) | 0 m | 10 m | 24 m | 45 m | 1 h 14 m | 1 h 53 m | 2 h 43 m | 3 h 45 m | 5 h 1 m | **6 h 32 m** |

| Meta-lab | Unlock | Per level | At L10 | At L99 | Max cost |
|---|---|---|---|---|---|
| `Labs Speed` | **T1 W150** milestone | **+0.02×** | ×1.20 | **×2.98** (1 + 0.02·99 ✓) | 472 456 246 coins · **237 689 238 s** of base time (= 2 751 days ≈ 7.5 yr of one slot at 1×) |
| `Labs Coin Discount` | **T1 W30** milestone | **−0.30 %** | −3.00 % | **−29.7 %** (0.30·99 ✓) | same curve (both share it) |

**The stacking law (multiplicative, not additive):** `effective time = base ÷ (lab-speed research bonus × relic bonus)` —
the source's own example is **1.25 (relic) × 2.98 (research) = 3.725**, not 3.23 ✓. Two consequences: (a) **lab-speed relics
are top-priority event buys**, because they multiply the research bonus instead of adding to it; (b) `Labs Speed` is worth
taking to **L99** eventually even though its own levels never accelerate themselves (relics *do* shorten its levels).

**Two quirks that read like bugs:** `Labs Speed` does **not** speed up its own remaining levels (so its first 10 levels cost
the full **6 h 32 m** at 1× — start it first thing in a session), and it does **not** advance the “lab time” event mission,
so level it outside a mission deadline ([T013](T013-event-medal-economy.md)).

**Order inside the pair:** both cost the same per level, so take them in **10-level blocks**, `Labs Speed` first while you are
online often (it raises levels/day for all 5 slots: a `3 d 11 h` line becomes **22.3 h** at ×3.725), then
`Labs Coin Discount` while you bank coins (−3.00 % per 10 levels on *every* line you buy afterwards). Reference: 5 slots cost
**4 900 gems** total ([T009](T009-gem-spend-order.md) §1), and the boost ladder above is what buys back their hours.

## Steps

1. Home screen → **Lab** (flask icon) → **Research Panel**. Read every slot's remaining time.
2. Daytime: start levels that finish in **≤ 7 h** so each session refreshes a slot. Long levels go in the **overnight** queue. Never leave a slot showing “completed” for hours — that time is unrecoverable.
3. Tap the small **clock icon** left of a slot's progress bar (**Auto Research**) so the next level of the same line starts by itself. This is the single highest-yield QoL toggle in the game.
4. Boost with cells: select the slot → **Speed Up** → choose **1 h / 8 h / 24 h**, then the multiplier → the panel shows the Elite Cell price. Take **×1.5** on **every slot that has research running** (5 slots = 75 cells/h total, 1 800 cells/day) and set the boost to **auto-queue** in the same menu so it renews itself.
   - Only raise a slot to ×2 / ×3 after all five slots already carry ×1.5 **and** the cell counter is still climbing.
   - Do **not** buy a boost for an empty slot — boosts only tick while a lab is slotted for research (the idle indicator stays grey).
5. Only then consider gems, and only for the multi-day gate lab that unblocks your next system: use the **biggest single bucket** (1 week / 30 days), not hourly taps.
6. Priority lines for a new / low-tier account:
   - **Main:** `Game Speed` to max (×5.0 at L7) first, then `Lab Speed`, then `Labs Coin Discount`.
   - **Utility:** `Coins/Kill Bonus` (top economy line), `Cash Bonus`, `Max Interest`, then `Perks` unlocks ([T011](T011-perk-engine-tuning.md)).
   - **Attack:** `Attack Speed` for a long stretch (it raises the cap), then split `Damage` / `Critical Factor` / `Damage Per Meter`.
   - **Defense:** `Health`, `Defense %`; a couple of `Defense Absolute` levels only.
   - **Skip:** `Range` (breaks orb/land-mine builds), `Health Regen`, `Defense Absolute` past the first few levels.
7. When you switch a running research: the coins are refunded and elapsed time is kept as a **green bar**, but you pay the coins again on resuming — so switch only to another line you also want.

## Reproduction checklist

- [ ] No slot shows “completed, not started” for more than a few minutes; at least one long level is running overnight.
- [ ] The **Speed Up** menu shows **15** cells for a 1 h ×1.5 boost (that number confirms the table above).
- [ ] All five slots show the green speed-up background while their own timers keep their nominal length.
- [ ] Elite Cell counter still ends the day **>** 0 after all five ×1.5 renewals (if it hits 0, stop escalating multipliers).
- [ ] Record: cells at run start / run end ÷ minutes = your measured cells/h — then check it against `(1 + Tier)/2 × elites/h`.
- [ ] `Labs Speed` level 1 costs **40** coins with **0 m** base time, and its panel value reads **1.02**; level 10 = **12 116**
      coins / **1.20**; the Σ across levels 1–10 is **33 907** coins.
- [ ] `Labs Coin Discount` level 1 = **40** coins / **0.30 %** and level 10 = **12 116** / **3.00 %**.
- [ ] With one lab-speed relic equipped, the effective time shown on a line drops by the **product** (e.g. 3.725× with a
      ×1.25 relic at `Labs Speed` L99), not the sum.
- [ ] A 1-week lab's rush price is **1 000** gems (never 168 × the 1-hour price of 7.5).

## Falsification

- If a ×2 boost costs **less than ~3.3× the ×1.5 price**, the flat per-hour pricing changed (it was made flat in v25.5) → re-derive the ranking column from the in-game prices.
- If a boost on an **empty** slot still ticks down, the “only ticks while slotted” rule is wrong and you can pre-buy boosts before starting the level.
- If cells do not appear from Vampire/Ray/Scatter kills at all, note which enemy type is missing and which tier you are in — the drop table is indexed by tier (`gm_strings.txt`: “Drop range of Elite Cells by tier … X is the min value and Y the max value”).
- If the gem-rush price for a 1-week lab is exactly 168× the 1-hour price, the long-bucket discount no longer exists → gems and cells then rank by table only (the printed discount column — 0.91 / 0.79 / 0.66 — is the version marker).
- If `Labs Speed` **does** shorten its own remaining levels, the self-exclusion quirk is gone → re-read the two meta-labs'
  level-1 times and re-order the pair (with self-acceleration the speed line dominates even more clearly).
- If a lab-speed relic and the research bonus **add** (1.25 + 1.98 = 3.23 rather than ×3.725), rebuild the effective-time
  column as `base ÷ (1 + Σbonuses)` — every hours-per-level figure here uses the product form.

## Sources

- fandom `Lab_Upgrades` (raw) — boost cost table (flat since v25.5), most-efficient 5-lab ladder, gem-rush bucket prices, gold-box +0.015×, Auto Research / green-bar / search / history UI behaviour.
- fandom `Currency/Elite Cells` (raw) — elite = Vampire/Ray/Scatter, `1 … Tier` drop range, `(1+X)/2` average, Wave Skip ×1.1, Intro Sprint 20 %, list of cell-flow upgrades.
- game-vault `Guide:Labs_Guide`, `Currency` — 5-slot role allocation, lab slot gem costs (0/100/400/1 400/3 000).
- `tools/gm_strings.txt` — `Assets\Scripts\LabSpeedUp.cs`, UI strings `Research`, `Research Panel`, `Research Confirm Panel`, `Speed Up`, `2_showSpeedUpIdleIndicator`, and the Elite-Cell drop-range config comment.
- Tower Hub `wiki/lab/labs-speed` (last verified 2026-11-01) — 99 levels, **+0.02/level ⇒ ×2.98**, the printed
  cost/time ladder (40 / 83 / 211 / 522 / 1 116 / 2 099 / 3 579 / 5 667 / 8 474 / 12 116 with cumulative times to
  6 h 32 m), the **multiplicative** relic stacking with the 1.25 × 2.98 = 3.725 example, the **self-exclusion** quirk
  (relics do shorten its own levels), “does not help the lab time event mission”, and “at most 5 labs”.
- Tower Hub `wiki/lab/labs-coin-discount` (2026-11-01) — 99 levels, **−0.30 %/level ⇒ −29.7 %**, same cost ladder, the
  self-exclusion note, and the max figures **472 456 246 coins / 237 689 238 s** of base time.
- Tower Hub `wiki/lab/laboratory` (2026-07-29) — the 5-slot bill (**4 900** gems: 100/400/1 400/3 000) and the **v0.17
  rush table** with its discount column (0.91 / 0.79 / 0.66) against the pre-0.17 flat 7.5 gems/hour — the second source
  for the bucket prices in the exchange-rate table.
