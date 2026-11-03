# T010 — Module economy: level the *slot*, merge by recipe, reroll with few locks

Rev: 11 (2026-11-03) — **the stone ledger and the module tail, printed** (`Currency/Power Stones`, `Modules/Cost`,
`Assist Module Labs`, pulled 2026-11-03; `tools/assist-primary-tail.ps1`). **Income:** daily-mission **weekly boxes 5, 6,
7 give 10 / 15 / 20 = 45 stones per week** (= 2 340/y with no medals), event-shop medal trades **15 stones each**, and
tournament **1st place pays 20 / 40 / 80 / 180 / 300 / 375 / 475** by league (Copper → Mythic) — plus milestones and the
paid packs; **any purchase ≥ 100 stones shows a confirmation dialog** (never refunded). **Prices:** card masteries
**500–1 250** each, **28 500** for all ✓ (matches the T025 anchor), assist slots **1 000** each ✓, **Bot+ 1 250** each,
**Synchronicity 1 500 + 3 × 1 500**. **The slot ladder is printed to level 300: 3 136 095 shards and 18.07 s coins**, its
per-level column being `7, 7, 20, 40, 75, 120, 180, 250, 350, 500, 700, 1 000, 1 300, 1 800, 2 500, 3 000, 4 000, 5 000,
5 125, 6 250, 7 500, 8 750, 10 000, 15 000, 20 000, 30 000, 40 000, 49 500` shards (implied slopes **1.4 … 500** per
level), and the unit that follows Q is pinned to **`s` = 10²¹** by the trapezoid test (**0.3 %** vs 104.4 % / 1004.4 % at
the neighbouring exponents). **Unit note:** the assist lab page prints its header as **`Cost (Q Coins)`** (1 Q = 10¹⁸), so
the eight labs are **930.00 Q** coins — see [T006](T006-lab-queue-packing.md) Rev 36, and the four `Primary Module Bonus`
labs (**1 %/level, +30 % max, T23 W500**) have no printed table ⇒ **H065**.
Rev: 10 (2026-11-03) — **the twelve named lab lines now carry full per-level sums** (cross-checked against
[T006](T006-lab-queue-packing.md) §Module named labs / Appendix B layer `Q`, `tools/module-named-family.ps1`): the twelve
lines are **Σ 254 levels = 0.718 3 Q** for **5 341.4 d**; the four **ban** labs are **99.70 %** of that (Core 555.555 q)
and live on **two master ladders** — costs `50 B, 500 B, 5 T, 50 T, 500 T, 5 q, 50 q, 500 q` (ratio **10.0000**) and a
time ladder whose differences are the **100-h arithmetic** series `30 000 … 66 000 min` on a `24 000 min = 400 h` head,
read as the subsequences `{2,4,6,7}` (`Cannon` = `Armor`, 0/4 differing cells), `{3,5,7}` (`Generator`) and
`{1,3,4,5,6,7,8}` (`Core`). `Module Shard Cost` / `Module Coin Cost` share one **time** column (0/30 differ) but 18/30
cost cells differ (**Σ −11.53 B**, the shard line cheaper ⇒ buy it first). Per-point: **Common 1.988 2 × 10¹⁰** coins
per +1.00 pp vs **Rare 2.842 5 × 10¹³** — **×1 430** apart for the same printed effect. Two print skews against §2.1/§2.2:
`Reroll Shards` L1-10 re-adds to **2 200 410 000** (was 2 240 400 402) and `Daily Mission Shards` L10 prints **2.1 B**
(was 2.19 B) — 3-s.f. source-table differences, ratios unchanged; the Shatter ratios **2.3881 / 2.1741** re-add ✓.
Rev: 9 (2026-11-02) — **§8.7, all four sub-stat tables in full (73 rows)** from `wiki/module/sub-module-effects`: Cannon
**17 · Armor 17 · Generator 13 · Core 26**, with the **rarity-pool law** (rows starting at Common **23** · Rare **9** ·
Epic **24** · Legendary **16** · Mythic **1** ⇒ cumulative pool **23 / 32 / 56 / 72 / 73**), **24 arithmetic rows**,
**seven shared ladders covering 22 rows**, the rarity-sensitivity ranking (`Defense Absolute` **66.7**, `Cash / Wave`
**33.3**, Core damage **31.25**, `Coins / Wave` **17.5**) and the one-cooldown exception (**`Poison Swamp - Cooldown`
starts at Rare**, every other `−N s` row at Legendary); plus the dated model-migration note against the fandom’s
11-row v0.24 list (four of its rows no longer exist).
Rev: 8 (2026-11-02) — **§8, the printed module layer from three Hub pages**: the per-boss drop rates (**reroll shards 15 %**,
Common module 2 %, Rare 0.5 %) with the tier quantity ladder closing as **`quantity(t) = 40 + 5·(t − 11)` for t ≥ 11**
(✓ 11/11 printed rows ⇒ **EV/boss 2.70 at T8, 6.00 at T11, 12.75 at T20**), the four sub-stat laws (rarity ≤ module rarity,
the `n/a` gate staircase, arithmetic-vs-geometric price families, and the printed roll chances **46.2/40/10/2.5/1/0.3** Σ 100.0 ✓),
the **13-row currency sub-stat table** (`Cash / Wave` 30 → **1 000** = ×33.3, `Coins / Wave` 20 → **350**,
`Interest / Wave` **2 → 8 %** from Epic), the **reroll-lock ladder** (10 / 40 / 160 / 500 … ×4, ×4, ×3.125 ⇒ **3 locks = 71×
the unlocked price, 7 locks = 300×**), the free-`Restore` refund law, the `Main Effect / Substat` lab (30 lv × 0.25 q =
**7.5 q** for +30 %) and the one-ladder-on-five-UWs print (**8/15/25/50/100/250**) ⇒ [H059](../hypotheses/H059-substat-rarity-roll-chances.md).
Rev: 7 (2026-11-02) — **§2.2, all twelve module labs with gates and value laws** (`wiki/module/module-labs`, 2026-11-01):
the **T4 W70** cluster (`Reroll Shards` 100 lv, `Daily Mission Shards` **50 lv at +1 shard/level ⇒ +50**, `Common Drop
Chance` 10 lv `+0.10 %/lv`) is the cheap one (L1 = 900 K / 1.2 M / 5 M coins, ≤ 4 d 4 h each); the **T10 W40** cluster
(`Module Shard Cost` and `Module Coin Cost` 30 lv `−1 %/lv ⇒ −30 %`, `Rare Drop Chance` 10 lv, the four **ban** labs
**4/4/3/7** lv) starts at 5 B; `Unmerge Module` is **1** level for **10,000,000** coins / 2 d at **T8 W20**; and the ban
ladders are the convex ones (**500 B → 50 T → 5 q → 50 q**, Σ times **495.83 d**) ⇒ take ban level 1–2 per tab only.
Rev: 6 (2026-11-02) — **`Reroll Shards` priced** (`wiki/module/module-labs-reroll-shards`, 2026-11-01): gate
**T4 W70**, **100** levels, **+1 shard/level**, level 1 = **900,000** coins / **120 000 s**, level 10 = **755,277,021** /
**1 d 18 h 6 m** ⇒ Σ10 **2.2404 B** coins and **15.64 d** of slot; the EV consequence at T5 (**1.8 → 3.30**, a doubling for
2.24 B coins), and the page's two “Good to know” prints confirmed (Vault **Module Reroll Discount +2.5 % × 8 = +20 %,
180 keys**, matching T017; **shattering a Rare = 10 shards**, shards **typed by module type**).
Rev: 5 (2026-11-02) — **§2.1, the three module labs priced**: `Shatter Shards` (unlock **T16 W40**, 5 levels) prints its
whole ladder — value is the clean `20 × n` (**+20 %/level ⇒ +100 %** ✓), the five prices are **10 T / 87 T / 229.2 T /
547.36 T / 1.19 q** (Σ **2 063.56 T = 2.06 q**) and the five times Σ to **35 348.5 h = 1 472.9 d ≈ 4.04 y**; its cost
ratios (**8.7 / 2.6345 / 2.3881 / 2.1741**) match **no** known lab family, so it is recorded as a fourth, hand-set shape.
Plus the sibling caps from the lab census (`Module Shard Costs` 30 ⇒ −30 %, `Reroll Shards` 100, both drop-chance labs 10,
`Unmerge Module` 1, `Daily Mission Shards` 50, effect bans 4/4/3/7).
Rev: 4 (2026-11-02) — **the assist-stone ladders now have a closed form** (`C(n) = 1.5n² + 10.5n − 12`, exact on every
printed row of both tables), the banner/pity expected-value table, and the boss-drop expected-value split.
Rev: 3 (2026-11-01) — added the v29 patch-note facts (inventory 350, one-tap slot-to-substat button, `Primary Module
Bonus` labs, Preset ladders) · Status: **Verified (arithmetic)** for the slot-level and assist-stone ladders (the closed
form reproduces 13/13 printed rows of both ladders); the pull-EV figures are derived from printed rates
**Value:** ★★★★ — slot levels and sub-stat count are multiplied by every stat on the module, and shard income is the binding constraint.
**Ease:** 1 tap per level (**the arrow** next to the locked sub-stat), 2–4 taps per merge.
**Prerequisite:** **Tier 2 Wave 90** (Modules unlocked; you get **10 free module tickets**, first Epic guaranteed inside those 10).

## 0. What Rev 1 got wrong (corrected)

1. **Levels belong to the slot, not to the module.** Each of the 4 module slots (and each assist slot) levels to **300** with that type's shards + coins; the equipped module uses the slot level **up to its rarity cap** (then it reads “Level Capped by Rarity”). Swapping modules loses nothing, and an **empty slot can be levelled ahead of time**.
2. **Common modules cannot be merged at all.** The merge ladder starts at Rare. Rare merges to **Legendary+**, a natural **Epic** merges to **Ancestral 5★**.
3. **Merged Rares never gain a Unique Effect** (only epics *pulled* from a banner do), and a merged Rare keeps its original name, so it can never match a banner epic — it is wildcard material only.

**v29 patch-note facts that pin the numbers** (fandom `Version History/V0.29`, 25 Aug 2026): the module **inventory cap is
350** (was 300); a **quick button levels a Module Slot to its next Sub-Stat Effect** in one tap (use it instead of
tapping +1 repeatedly); four new labs **`Primary Module Bonus` (Cannon / Armor / Generator / Core)** exist with **30
levels, +1 % → +30 %** each, which is a fourth multiplicative layer on top of the slot levels in §1; and **Module
Presets** come from the **`Presets` lab level 4** (350 B coins) plus 3 more in the Vault (`Module Presets`, 20 keys,
T017) — presets make the merge/reroll workflow cheap enough to redo after a respec.

## 1. The three ladders you are spending into

### Rarity ladder (max level / max sub-stats / total Epic copies needed)

| Rarity | Rare | Rare+ | Epic | Epic+ | Legendary | Legendary+ | Mythic | Mythic+ | Ancestral | 1★ | 2★ | 3★ | 4★ | 5★ |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Max level | 30 | 40 | 60 | 80 | 100 | 120 | 140 | 160 | 200 | 220 | 240 | 260 | 280 | 300 |
| Max sub-stats | 2 | 2 | 3 | 3 | 3 | 4 | 4 | 5 | 6 | 7 | 7 | 8 | 8 | 8 |
| Epic copies (total) | 0 | 0 | 1 | 2 | 2 | 4 | 4 | 4 | 8 | 10 | 12 | 14 | 16 | 18 |

Ancestral stars: each star needs an **Epic+ copy of the same module**, gives **+20 max level** and multiplies the main effect **×1.04 / ×1.08 / ×1.12 / ×1.16 / ×1.20**.

### Merge recipes (primary + materials → result)

| Needs | Result |
|---|---|
| Rare + **2 Rare (same name)** | Rare+ |
| Rare+ + **2 Rare+ (any of that type)** | Epic |
| Epic + **1 Epic (same)** | Epic+ |
| Epic+ + **2 Epic+ (any)** | Legendary |
| Legendary + **1 Epic+ (same)** | Legendary+ |
| Legendary+ + **1 Legendary+ (any)** | Mythic |
| Mythic + **1 Legendary+ (any)** | Mythic+ |
| Mythic+ + **2 Epic+ (same)** | Ancestral |
| Ancestral + **1 Epic+ (same)** | next star |

“Same” = the identical module, “any” = any module of the same **type** (Cannon / Armor / Generator / Core). The **first module you tap** is the primary. Merging is done from the Modules list with the **type + rarity filters** set — only legal materials are then selectable.

### Slot-level cost (per level, and cumulative at each milestone)

| Slot lvl | Shards/level | Cumulative shards | Cumulative coins | Unlocks |
|---|---|---|---|---|
| 1–10 | 7 | 70 | 100 K | first sub-stat(s) |
| 11–20 | 20 | 220 | 550 K | |
| 21–30 | 40 | 420 | 1.75 M | |
| 31–40 | 75 | 1 165 | 6.45 M | |
| **41** | 120 | **1 715** | **7.45 M** | +1 sub-stat |
| 51–100 | 180→700 | 20 595 | 129.45 M | |
| **101** | 1 000 | **23 595** | **16.3 B** | +1 sub-stat |
| **141** | 3 000 | **91 595** | **1.31 T** | +1 sub-stat |
| **161** | 5 000 | **163 595** | **20.81 q** | +1 sub-stat |
| **201** | 10 000 | **466 095** | **41.91 q** | +1 sub-stat |
| **241** | 20 000 | **1 071 095** | **14.46 Q** | +1 sub-stat |
| 300 | 49 500 | 3 136 095 | 18.07 s | cap |

Read: **shard cost grows ~linearly, coin cost explodes** — so at low tiers the *coins* are the limit (7.45 M buys you the first extra sub-stat) and shards are plentiful; after level 101 the reverse. Coin-side discounts: the `Labs Coin Discount` / Workshop-discount lines do **not** apply here, so slot levels compete directly with Workshop upgrades for coins.

### Pull economics (what one gem-pull is worth in shards)

Standard Banner rates are printed: **Common 68.5 % / Rare 29 % / Epic 2.5 %** (Σ = 100.0 ✓ — no hidden fourth bucket),
with **bad-luck protection: pull #150 without an Epic is a guaranteed Epic**, and **every 10-pull contains ≥ 1 Rare**.

| Quantity | Value | How |
|---|---|---|
| Pull price | 20 gems ×1, 200 gems ×10 | printed |
| Epic rate | 2.5 % ⇒ **1 Epic ≈ 39.1 pulls ≈ 782 gems** | `E = (1 − 0.975¹⁵⁰)/0.025`, 0.975¹⁵⁰ ≈ 0.0224 |
| 10-pull Rare guarantee | binds in **2.3 %** of 10-pulls | `0.685¹⁰ ≈ 0.0228` (≈ free, take the ×10 anyway) |
| **Shards/pull, early** (natural Epic shatters for 90) | **8.575** = 0.43 shards/gem | 0.685·5 + 0.29·10 + 0.025·90 |
| **Shards/pull, late** (5★ Anc owned ⇒ natural Epic = 1 000) | **31.325** = 1.57 shards/gem | 0.685·5 + 0.29·10 + 0.025·1 000 |

**The 3.65× jump is the compounding lever:** the *same* 20-gem pull becomes 3.65× more shard-efficient the moment you own
a **5★ Ancestral** of that module (31.325 ÷ 8.575 = 3.65), because the natural Epic then shatters for 1 000 instead of 90.
In T014 §2's gem-equivalents (1 shard = 0.6 gems) a pull returns **5.1 gems early / 18.8 gems late** against its 20-gem
price — so gem pulls are a **net loss (0.26×) early and ≈ break-even (0.94×) late**: spend tickets first, then gems only
from the surplus left by [T009](T009-gem-spend-order.md), and **never** start a banner before the first Epic is guaranteed
(inside the 10 free tickets).

## 2. Shard income, and the two gotchas

| Source | Amount |
|---|---|
| Shatter **Common** | 5 |
| Shatter **Rare** | 10 |
| Shatter **Rare+** | 30 |
| Shatter **Epic (merged)** | 90 |
| Shatter **natural Epic** | **1 000** — but only while still at Epic *and* only once you own a **5★ Ancestral** of that module |
| `Shatter Shards` lab | +20 % per level (max +100 %) — **5 levels ⇒ every yield above doubles at max** (5→10, 10→20, 30→60, 90→180, 1 000→2 000) |
| Also | daily missions, **fleet enemies**, the Guardian's **Fetch** chip, the Event shop, the Guild store |

### 2.1 The three module labs, priced (Rev 5)

Printed rows, `wiki/lab/lab-shatter-shards` (2026-11-01) — the lab unlocks at the **Tier 16 Wave 40** milestone and its
`Value` column is a clean arithmetic `+20 pp/level` (**20 / 40 / 60 / 80 / 100 %** ✓ = `20 × n`):

| Level | 1 | 2 | 3 | 4 | 5 | Σ |
|---|---|---|---|---|---|---|
| coins | 10.00 T | 87.00 T | 229.20 T | 547.36 T | **1.19 q** | **2 063.56 T = 2.06 q** |
| slot time | 142 d 14 h 13 m | 191 d 4 h 53 m | 256 d 10 h 59 m | 359 d 8 h 9 m | **523 d 6 h 15 m** | **35 348.5 h = 1 472.9 d ≈ 4.04 y** |
| value | +20 % | +40 % | +60 % | +80 % | **+100 %** | — |

Two notes. (a) **This line's cost column is not a clean geometric** — the four level-to-level ratios are **8.7 / 2.6345 /
2.3881 / 2.1741**, so it is neither the ×1.5 bot family nor the ×1.3 discount family (T006 §clock laws); use the rows, and
read the family from the first two rows of any line before forecasting it. (b) The knee is real: **level 1 is 10 T for the
first +20 pp**, then the price jumps 8.7× at level 2, so levels 1–2 (97 T, 333 d of slot) are the whole deal for a sub-T11
account and the last level alone (1.19 q, 523 d) is a late-game project.

The sibling caps, from the same lab census (`wiki/lab/lab-upgrades`, T006 §census): `Module Shard Costs` **30 levels** ⇒
**−1 %/level ⇒ −30 %** on module purchase prices; `Reroll Shards` **100 levels** (the +1 shard/level line in §2); `Common
Drop Chance` / `Rare Drop Chance` **10 levels each**; `Unmerge Module` **1**; `Daily Mission Shards` **50 levels** (step
still a device read); and the four effect-ban labs (**Cannon 4 · Armor 4 · Generator 3 · Core 7**).

**`Reroll Shards` is now priced (`wiki/module/module-labs-reroll-shards`, 2026-11-01).** Unlock **Tier 4 Wave 70**;
**100 levels**; “each level adds **one extra reroll shard per boss drop**, for a total of **100 additional shards** at max
level”. Printed rows: level 1 = **900,000** coins / **1 d 9 h 20 m** (120 000 s), level 10 = **755,277,021** coins /
**1 d 18 h 6 m**, and the first ten sum to **2 240 400 402 coins = 2.2404 B** for **1 351 440 s = 15.64 d** of slot time
(≈ 1.6 d and 224 M coins per level — cheap by the standards of the 99-level lines in T006 §census).

Because the drop is `base + lab level` and the drop chance is **15 %**, the EV column of the table below is a one-line
calculation: at **T5** (base 12) the tap is `0.15 × 12 = ` **1.8**, and with the lab at **L10** it is `0.15 × 22 = `
**3.30**, i.e. **2.24 B coins doubles the boss reroll-shard tap**. Priorities follow: the same page's “Good to know” also
prints the **Vault `Module Reroll Discount` = +2.5 % per level, 8 levels (+20 %, 180 keys)** ✓ the same node T017 prices at
180 keys, and “**shattering a Rare gives 10 shards**; shards are **typed by module type**” ✓ §2's yield row.

*(shape note, per T006 §four more printed ladders: this lab's **time** column is near-geometric at **×1.026**/level while
its **cost** column is irregular (ratios 3.24 / 4.77 / 2.86 / 2.15 / 1.82 / 1.63 / 1.51 / 1.43 / 1.37) ⇒ use the printed
rows, not an extrapolated ratio.)*

### 2.2 All twelve module labs, with gates and value laws (new, Rev 7)

*(the page prints **11** tables — the twelve lines below are the twelve entries of the Module Research category, the
`Module Coin Cost` / `Armor Effect Bans` / `Core Effect Bans` rows share a table with their sibling)*

Source: `wiki/module/module-labs` (2026-11-01, 11 data tables). Every **value** column is `step × n`, so each cap re-adds
as `step × levels`:

| Lab | Milestone gate | Lv | Value law | Cap (✓) | L1 cost / time |
|---|---|---|---|---|---|
| `Common Drop Chance` | **T4 W70** | 10 | `+0.10 % × n` | **+1.00 %** (2 % → 3 %) | 5,000,000 / 4 d 4 h |
| `Reroll Shards` | **T4 W70** | **100** | `+1 × n` | **+100** | 900,000 / 1 d 9 h 20 m |
| `Daily Mission Shards` | **T4 W70** | **50** | `+1 × n` | **+50 shards/mission** | 1,200,000 / 1 d 9 h 20 m |
| `Module Shard Cost` | **T10 W40** | 30 | `−1 % × n` | **−30 %** | 5.00 B / 5 d 5 h |
| `Module Coin Cost` | **T10 W40** | 30 | `−1 % × n` | **−30 %** | per panel |
| `Rare Drop Chance` | **T10 W40** | 10 | `+0.10 % × n` | **+1.00 %** (0.5 % → 1.5 %) | 70.00 B / 8 d 16 h 20 m |
| `Unmerge Module` | **T8 W20** | **1** | unlock | Unmerge available | **10,000,000** / 2 d 0 h |
| `Shatter Shards` | **T16 W40** | 5 | `+20 % × n` | **+100 %** | 10.00 T / 142 d 14 h 13 m |
| `Cannon Effect Bans` | **T10 W40** | **4** | `+1 ban × n` | **4 bans** | 500.00 B / 37 d 12 h |
| `Armor Effect Bans` | **T10 W40** | **4** | `+1 ban × n` | **4 bans** | per panel |
| `Generator Effect Bans` | **T10 W40** | **3** | `+1 ban × n` | **3 bans** | 5.00 T / 62 d 12 h |
| `Core Effect Bans` | **T10 W40** | **7** | `+1 ban × n` | **7 bans** | per panel |

Three consequences for the queue:

1. **The cheap tier is T4 W70.** Three of the twelve lines unlock together there — `Reroll Shards`, `Daily Mission Shards`
   and `Common Drop Chance` — and their first levels cost **900 K / 1.2 M / 5 M** coins with **≤ 4 d 4 h** of slot each.
   That is the cheapest cluster in the whole module layer; the *next* cluster (**T10 W40**) is nine lines but its L1 prices
   start at **5 B** and its times at **5–8 d**.
2. **Ban labs are the convex ones.** `Cannon Effect Bans` prints **500.00 B → 50.00 T → 5.00 q → 50.00 q** with
   **37 d 12 h / 91 d 16 h / 162 d 12 h / 204 d 4 h** of slot per level (cost ratios **×100 / ×100 / ×10**; the four times
   Σ to **42 840 000 s = 495.83 d** and the four prices to **50.5 T + 55 q** = `0.5 + 50` T and `5 + 50` q), while
   `Generator Effect Bans` prints
   **5.00 T → 500.00 T → 50.00 q** over **62 d 12 h / 125 d / 204 d 4 h**. So the **first ban on each tab is nearly the
   whole value** — take level 1 (and 2 where the price is still in `T`) and leave the **50 q** tail.
3. **`Daily Mission Shards` is +1 shard per level, additive** (“across its **50** levels, it adds up to **50 extra shards
   per mission**”), so the mission payout is `base(n) + lab level` — at **L50** a T10 mission pays `35 + 50 = ` **85**
   shards and a T24 mission `105 + 50 = ` **155** (T004 §daily ledger). Weekly, `42 × (base + L)`.

**Boss-drop expected value (per boss kill)** — this is the steady-state shard tap, and it explains why *reroll* shards,
not module shards, are the scarce ones:

| Drop | Chance | Shard EV per boss at T5 | Note |
|---|---|---|---|
| **Reroll shards** | **15 %** × tier amount (T2 = 3, T5 = 12, T10 = 35, T12 = 45, +1/level of the `Reroll Shards` lab) | **1.8** | then none for 5 waves |
| Common module | **2 %** base (+ their lab, **+3 %** max from the Vault ⇒ 5 %) | 0.10 (0.25 with the Vault) | then none for 5 waves |
| Rare module | **0.5 %** base (+ its lab) | 0.05 | |

At Tier 5 the reroll-shard tap is worth **1.8** vs **0.15** for both module drops together — a **12 : 1** ratio. So the
`Reroll Shards` lab (+1 each) and the boss-density of the run dominate raw shard income; the Common/Rare drop-rate labs
only matter for filling the 350-slot inventory with merge material.

- **Unmerge is shard-neutral**, which makes it a pure “reroll” purchase: the Unmerge Module lab
  (**Tier 8 Wave 20**) lets you undo a merge for **20 gems**, returning the lower-rarity module **with new
  sub-stats** plus the shards its consumed materials were worth (Epic → Rare+ + 60 = 2 × 30; Legendary →
  Epic+ + 360 = 2 × 180; Mythic+ → Mythic + 720). So 3 × Rare+ = 90 shards whether you shatter them directly
  or route them through merge→unmerge; the 20 gems is simply the price of a **sub-stat reroll** paid without
  spending reroll shards.
- Favourited / equipped / preset-saved modules **cannot** be shattered — unequip and un-favourite first.
- The inventory caps at **350 modules**; a full inventory is the usual reason “Auto Merge did nothing”.

## 3. Reroll shards: the scarcest of the four shard types

- Drop chance per **boss kill: 15 %**, amount **by tier** (T1 = 1, T2 = 3, T3 = 5, T4 = 8, **T5 = 12**, T6 = 15, T7 = 20, T8 = 25, T9 = 30, **T10 = 35**, **T11 = 40**, T12 = 45, … T24 = 105), plus **+1 per level** of the `Reroll Shards` lab.
- **After a drop, none can drop again for 5 waves** — so the ceiling is `bosses/hour × 15 %` bounded by one drop per 5 waves. Fleet enemies, elites and recovery packages also drop them.
- **Reroll cost by number of locked sub-stats: 10 / 40 / 160 / 500 / 1 000 / 1 600 / 2 250 / 3 000** for 0…7 locks. That is a 300× escalation ⇒ **lock at most 2–3 effects** and let the rest roll.
- **Auto Roll** (the `Auto Reroll` panel) is the cheap path: you define the acceptable effects and rarities and the game rolls until one matches — it costs the same per roll but stops at your target, so you never pay the lock premium for stats you merely tolerate.
- **Effect-ban labs** shrink the pool instead of paying for locks: 4 bans for Cannon, 4 for Armor, 3 for Generator, **7 for Core**. Research them before you start rerolling, exactly like the perk bans in [T011](T011-perk-engine-tuning.md).
- Sub-stat rarity odds per roll: Common 61.2 % / Rare 25 % / Epic 10 % / Legendary 2.5 % / Mythic 1.0 % / Ancestral 0.3 %. A module's own rarity is the **cap** for its sub-stats' rarity, so merging up is what makes Ancestral sub-stats possible at all.
- The Vault's `Module Reroll Discount` cuts reroll cost by up to 20 % (later game).

## 4. Steps (UI only)

1. **Modules** panel → **banner** (Standard Banner) → spend the **10 free tickets** first (tickets are always consumed before gems; the first Epic is guaranteed inside the 10). Then `x10` for 200 gems only if you have surplus after [T009]'s order.
2. Equip one module per slot, of the **type matching your build** (Cannon = attack, Armor = defense, Generator = utility, Core = ultimate weapons).
3. Level the **slot** with the **arrow** next to the next locked sub-stat — one tap takes it exactly to 41 / 101 / 141 / 161 / 201 / 241 instead of tapping past them.
   Do 41 on all four slots **before** pushing any slot past 101: the first extra sub-stat is the cheapest multiplier per shard in the system (1 715 shards cumulative).
4. Merge from the **Modules** list with the **type** and **rarity** filters set: tap the primary first, then the legal materials shown (module icon = same name, wildcard orb = any of that type). Use **Auto Merge** to collapse every complete set in one action.
5. Keep **one** copy of each natural Epic out of the shatter pool (it is your merge primary) and shatter the spare copies.
6. Reroll flow: set your **ban** list (from the ban labs) → set **Auto Roll** acceptance → lock only the 2–3 effects you really need → reroll. Stop at 3 locks; the 4th lock triples the price (500 → 1 000).
7. If a module's sub-stats are wrong after a merge, use **Unmerge** (needs the Tier 8 Wave 20 lab, 20 gems) to get the same module back with new sub-stats.
8. Use **Restore** on a mis-levelled slot: it costs nothing, sets the slot to 0 and returns **all shards and coins** (reroll shards are *not* returned, sub-stats are kept).
9. Save **presets** (2 from the Presets lab L4, +3 from the Vault = 5): a preset stores the 4 primary and the assist modules; presets cannot be switched during a run.

## 5. Reproduction checklist

- [ ] The first 10 pulls cost **0 gems** (tickets) and at least one Epic appears.
- [ ] A slot levelled to 41 shows one more unlocked sub-stat than at 40, and the cumulative shard spend is **≈ 1 715**.
- [ ] Swapping the equipped module leaves the slot's level unchanged.
- [ ] Shattering a spare Rare+ adds exactly **30** shards (and **60** with `Shatter Shards` at +100 %).
- [ ] **§2.1 ladder:** `Shatter Shards` appears after the **T16 W40** milestone, level 1 costs **10 T** for **+20 %**, level 2
      costs **87 T** (ratio **8.7**, not 1.5), and level 5 reads **1.19 q / +100 %**; the five times sum to **≈ 1 473 d**.
- [ ] `Module Shard Costs` reaches **−30 %** at its 30th level and `Reroll Shards` has **100** levels (+1 shard each).
- [ ] **`Reroll Shards` ladder (§2.1):** after the **T4 W70** milestone the lab's level 1 costs **900,000** coins with
      **1 d 9 h 20 m** of research, level 10 reads **755,277,021** coins, and a boss drop goes from **12** shards to **22**
      at T5 (EV **1.8 → 3.30**).
- [ ] **§2.2 gates:** `Reroll Shards`, `Daily Mission Shards` and `Common Drop Chance` all appear after the **T4 W70**
      milestone (level-1 prices **900,000 / 1,200,000 / 5,000,000** coins), `Unmerge Module` after **T8 W20**
      (**10,000,000** coins, one level), and the cost/ban labs after **T10 W40**.
- [ ] **Daily Mission Shards law:** with the lab at **L10** a T10 mission pays `35 + 10 = ` **45** shards; at **L50** it
      pays **85**, and a T24 mission **155** (base + lab level, additive).
- [ ] A boss kill yields **12** reroll shards at Tier 5 (or 12 + lab levels), and none for the next 5 waves.
- [ ] The Standard Banner panel lists **68.5 / 29 / 2.5** and every ×10 pull shows at least one Rare.
- [ ] The 150-pull pity counter is visible and the 150th pull without an Epic shows an Epic.
- [ ] The assist main-effect ladder reads **15 / 18 / 21** stones for 2 % / 3 % / 4 %, its 10 % cumulative is **243**, and
      100 % is **16 038**; the sub-stat ladder ends at **70 %** with **8 073** and “Stones Needed to Max” **0**.
- [ ] **§8.1 tier law:** a boss drop shows **40** reroll shards at Tier 11, **45** at T12, **50** at T13 (+5/tier), and
      **85** at T20; the EV per boss is therefore **6.00** at T11 (`0.15 × 40`).
- [ ] **§8.3 value law:** an Ancestral `Cash / Wave` sub-stat reads **1 000** and a Common one **30** (×33.3), and
      `Interest / Wave` first appears at **Epic** with **2 %**.
- [ ] **§8.2 cap law:** on an **Epic** module, ≥ 50 rerolls never produce a Legendary+ sub-stat (the ceiling is the module's
      own rarity); after merging it to Legendary the same rolls can.
- [ ] **§8.4 lock ladder:** one lock doubles-plus the price — **10 → 40** with 1 lock, **160** with 2, **500** with 3.
- [ ] **§8.7 rarity-pool law:** a **Common** module’s `ℹ` list contains **23** sub-stat names, a **Rare** module’s **32**,
       an **Epic** one **56**, a **Legendary** one **72** — and the two spot values read **Attack Speed 0.3 (Common) → 5
       (Ancestral)** on Cannon and **Poison Swamp Cooldown −2 s already at Rare** on Core.
- [ ] **§8.5 restore:** note the module's spent shards/coins, tap **Restore** — the refund equals the ledger's
      **Total Shard / Total Coins** for that level and the sub-stats are still listed.
- [ ] A “+3 quantity” line shows **+0** at 33 % efficiency and **+1** at 34 %.
- [ ] The reroll price shown with 3 locks is **500** and with 4 locks **1 000**.
- [ ] **Restore** returns the shard and coin totals listed in the table above to the same slot's type.
- [ ] A merged Rare still shows its original name and no Unique Effect.

## 6. Falsification

- If a **Common** module can be merged, the rarity ladder above is stale → rebuild it from the in-game merge screen.
- If shattering a Rare+ returns something other than 30 × (1 + Shatter Shards bonus), note the value — every derived number in §2 must then be re-scaled.
- If **Restore** does not return the full shard/coin total (e.g. it drops the 10 % “sale” portion), record the difference; it changes whether pre-levelling an empty slot is safe.
- If the assist main-effect ladder's per-level price is **not** `3n + 9` (e.g. level 10 shows something other than **39**
  stones, or 100 % other than **16 038**), the closed form `C(n) = 1.5n² + 10.5n − 12` is stale → re-read the first five
  rows and refit; every breakpoint in §7 is derived from it.
- If the 150-pull pity counter **does not carry between banners** (a featured banner restarts its own count), the
  782-gems-per-Epic figure must be recomputed per banner → [H045](../hypotheses/H045-module-pity-counter-scope.md).
- If a 5★ natural Epic shatters for something other than **1 000**, the 3.65× late-game pull-efficiency jump is wrong.
- **§8.1 quantity skew:** the Hub's tier table prints **6** shards at T5 while the older `Currency/Shards` print (used in §5's
  boss-drop item) has **12** at T5 — the two are reconcilable only as *base 6 + 6 lab levels*. If a T5 boss shows **12** with the
  `Reroll Shards` lab at 0, the Hub's quantity column is a different quantity (probably the *per-wave* total); take the in-game
  number as the base and shift the `40 + 5·(t − 11)` ladder's intercept to match.
- **§8.1 rate skew:** if a boss drops shards on **every** kill rather than ≈ 15 % of kills, the 15 % print is not the drop
  chance for this quantity ⇒ record the observed per-kill count and rebuild the EV line without the 0.15 factor.
- **§8.2:** if a sub-stat on an Epic module shows a Legendary value, the cap law is wrong → the ceiling is the *banner* or the
  slot level, not the module rarity; rebuild the value table per slot level instead. See [H059](../hypotheses/H059-substat-rarity-roll-chances.md)
  for the percentage read.
- **§8.4:** if the lock prices are not 10 / 40 / 160 / 500 …, the reroll-shard budget in §3 must be re-derived from the panel's
  own column (the 2–3-lock recommendation is a ratio statement and survives as long as the ladder is convex).
- If the reroll price with locks is not the 10/40/160/500/1 000/1 600/2 250/3 000 ladder, the lock-cost curve changed —
  re-derive the “stop at N locks” rule from the panel.

## 7. Assist modules (Tier 19 Wave 40): the stone ladders in closed form

Both stone ladders are **arithmetic progressions** — level *n* costs `3n + 9` stones (the 1 % row is free, it comes with
the 1 000-stone unlock) — so the cumulative price is a quadratic with no constant-fudge needed:

> **C(n) = 1.5 n² + 10.5 n − 12 stones**  (n = the percent shown on the line, n ≥ 1)

**Validation — reproduces 13/13 printed rows of both tables exactly** (main-effect *and* sub-stat ladders are the same
curve): n = 1 → **0** ✓ · 2 → **15** ✓ · 5 → **78** ✓ · 10 → **243** ✓ · 20 → **798** ✓ · 25 → **1 188** ✓ · 34 →
**2 079** ✓ · 50 → **4 263** ✓ · 67 → **7 425** ✓ · 69 → **7 854** ✓ · 70 → **8 073** ✓ (= the printed sub-stat total) ·
99 → **15 729** ✓ · 100 → **16 038** ✓ (= the printed main total). The sub-stat table's own “Stones Needed to Max” column
is `8 073 − C(n)` and matches too (its 10 % row prints **7 830** = 8 073 − 243 ✓).

| Target n | Price this level | Cumulative C(n) | Why stop there |
|---|---|---|---|
| 10 % | 39 | **243** | cheapest 10 points in the whole stone layer (24.3 /point) |
| 25 % | 84 | **1 188** | first FLOOR tick for a **+4** quantity line |
| 34 % | 111 | **2 079** | first FLOOR tick for a **+3** line (the wiki's own example: 33 % → +0.99 → +0) |
| 50 % | 159 | **4 263** | +1 for a **+2** line, +2 for a **+4** line |
| 67 % | 210 | **7 425** | second FLOOR tick for a **+3** line |
| 70 % | 219 | **8 073** | **the sub-stat ladder's cap** — no stone exists beyond 70 % |
| 100 % | 309 | **16 038** | main-effect cap |

**Quantity lines use FLOOR, so buy up to the next `100/q` boundary and no further** (each extra point between boundaries
buys 0 quantity): q = 2 ⇒ 50 / 100 % · q = 3 ⇒ 34 / 67 / 100 % · q = 4 ⇒ 25 / 50 / 75 / 100 % · q = 5 ⇒ 20 / 40 / 60 / 80 /
100 %. The main-effect ladder has no such cliff, so its **71→100 % tail is the worst rate in the layer: 16 038 − 8 073 =
7 965 stones for 30 points = 265.5/point vs 115.3/point for the first 70 % (2.30× dearer)** — buy that tail last.

**Per-slot budget (stones):** unique-effect ladder **1 000** (unlock, Epic) + **1 000** (Legendary) + **1 200** (Mythic) +
**1 400** (Ancestral) = **4 600** ✓ printed total · main to 100 % = **16 038** · sub-stat to the 70 % cap = **8 073** ⇒
**28 711 stones for one fully-maxed assist slot** — ≈ 11 Ultimate-Weapon sync packages (2 620 each, [T008](T008-uw-sync-with-stones.md)).

**Spend order (cheapest point first):** ① slot unlock (1 000, gives the Epic unique + 1 % main/sub for free) → ② main
effect to **10 %** (243) → ③ main to the FLOOR boundary of your best quantity line (**34 %** = 2 079 for a +3 line) →
④ unique-effect rarity tiers (1 000 / 1 200 / 1 400 — the only way to raise the unique itself) → ⑤ sub-stat efficiency to
the same boundary (34 % = 2 079) → ⑥ only then the main tail to 100 %. Labs (T19 W50) push both efficiencies past the
stone caps, so **do not buy the tail before checking the lab levels** — the lab may already be at your boundary.

Other assist facts: assist multipliers are **multiplicative for all four types** since v27.1 · hard caps (**98 %** Defense,
**90 %** Chrono slow, **150 s** wall rebuild, **7 s** shockwave, **37 s** ILM cooldown) are **not** bypassed · assist slots
cannot equip a module that shares a name with the primary · `Primary Module Bonus` labs (30 lv, +1 % each) gate at
**Tier 23 Wave 500**.

## 8. The printed module layer — drop rates, the four type tables, the lock ladder (new, Rev 8)

Sources: `wiki/module/modules`, `wiki/module/sub-module-effects`, `wiki/module/epic-module-unique-effect` (all last verified
**2026-11-02**), payload parsed with `tools/card-tables-parse.ps1`.

### 8.1 Where the shards come from, printed

Per **boss kill**: **reroll shards 15 %**, **Common module 2 %**, **Rare module 0.5 %** — and “both of these [module] rates can
be raised through their respective labs”, i.e. the two §2.2 lines (`Common Drop Chance` 10 lv at **+0.10 %/lv** ⇒ **3 %**
maxed = **×1.5**, `Rare Drop Chance` 10 lv). The **reroll-shard quantity scales with the tier**, printed for T1 → T21:
**1, 2, 3, 4, 6, 8, 12, 18, 25, 32, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90**.

```
quantity(t) = 40 + 5·(t − 11)          for t ≥ 11          (✓ exact on all 11 printed rows T11 … T21)
EV/boss     = 0.15 × quantity(t)        ⇒ T5 0.90 · T8 2.70 · T11 6.00 · T15 9.00 · T20 12.75
```

⇒ **one extra tier = +5 shards/drop = +0.75 EV per boss**, linear; the lock prices you pay (§8.4) are geometric, so
*the highest tier you can hold is always the right farm*. Below T11 the ladder is ≈ ×1.4–2 per tier (printed ratios
2.0, 1.5, 1.33, 1.5, 1.33, 1.5, 1.5, 1.39), so **T8 → T11 alone is 18 → 40 = ×2.2** on the same number of boss kills.

### 8.2 Four laws of a sub-stat (printed)

1. **Cap law:** “the highest rarity a sub-module can reach is **the module's current rarity**” — an Epic module can roll
   Common/Rare/Epic sub-stats but never Legendary+. Merge first, then reroll: the same 1 reroll shard buys a higher ceiling.
2. **Gate law:** a named effect only exists from its printed first rarity (the `n/a` staircase). Currency-relevant gates:
   `Coins / Kill Bonus`, `Cash Bonus`, `Cash / Wave`, `Coins / Wave`, the three `Free … Upgrade` lines and `Black Hole - Size`
   exist from **Common**; `Interest / Wave`, `Recovery Amount`, `Max Recovery`, `Package Chance` and both
   `Enemy … Level Skip` lines need **Epic**; **cooldown-reduction** rows (`Golden Tower − Cooldown`, `Chrono Field − Cooldown`)
   need **Legendary**.
3. **Two price families** across the six rarity columns: **arithmetic** (+2 pp per rarity step: `Free Attack/Defense/Utility
   Upgrade` 2 → 12 %, `Interest / Wave` 2 → 8 %, both Level Skip lines 2 → 8 %, `Coins / Kill Bonus` +0.1 → +0.6,
   `Black Hole - Size` 2 → 12 m) or **geometric ≈ ×1.7–2 per step** (`Cash / Wave` 30 → 1 000 = **×33.3** over the five steps,
   `Coins / Wave` 20 → 350 = **×17.5**, `Health Regen` ×20, `Defense Absolute` ×66.7) ⇒ each merge step roughly **doubles** a
   good sub-stat while the arithmetic lines add a flat 2 pp.
4. **Rarity roll chances** (printed under Sub-Module Effects): Common **46.2 %** / Rare **40 %** / Epic **10 %** /
   Legendary **2.5 %** / Mythic **1.0 %** / Ancestral **0.3 %** ⇒ Σ = **100.0 ✓**; “Epic or better” = **13.8 %**, “Legendary or
   better” = **3.8 %** ⇒ a 6-slot module shows at least one Legendary+ sub-stat in **20.7 %** of rolls
   (`1 − 0.962⁶`). Ancestral is **1 in 333** — do not plan around it. The page's pull model is separately printed as
   68.5 / 29 / 2.5 (§1), so the two prints are two *different* distributions → **H059** decides which one the in-game
   sub-stat panel shows.

### 8.3 The currency sub-stats (Generator/Utility type), printed values by rarity

| Sub-stat | Common | Rare | Epic | Legendary | Mythic | Ancestral |
|---|---|---|---|---|---|---|
| **Cash / Wave** | 30 | 50 | 100 | 200 | 500 | **1 000** |
| **Coins / Wave** | 20 | 35 | 60 | 120 | 200 | **350** |
| Cash Bonus | 0.1 | 0.2 | 0.3 | 0.5 | 1.2 | **2.5** |
| Coins / Kill Bonus | 0.1 | 0.2 | 0.3 | 0.4 | 0.5 | **0.6** |
| Free Attack Upgrade | 2 % | 4 % | 6 % | 8 % | 10 % | **12 %** |
| Free Defense Upgrade | 2 % | 4 % | 6 % | 8 % | 10 % | **12 %** |
| Free Utility Upgrade | 2 % | 4 % | 6 % | 8 % | 10 % | **12 %** |
| **Interest / Wave** | n/a | n/a | 2 % | 4 % | 6 % | **8 %** |
| Recovery Amount | n/a | n/a | 3 % | 5 % | 7 % | **10 %** |
| Max Recovery | n/a | n/a | 0.4 | 0.7 | 1.0 | **1.5** |
| Package Chance | n/a | n/a | 5 % | 8 % | 11 % | **15 %** |
| Enemy Attack Level Skip | n/a | n/a | 2 % | 4 % | 6 % | **8 %** |
| Enemy Health Level Skip | n/a | n/a | 2 % | 4 % | 6 % | **8 %** |

**Reading for a sub-T11 account:** four lines are the currency engine — `Coins / Wave`, `Cash / Wave`, `Interest / Wave`, and
the three `Free … Upgrade` lines. `Cash / Wave` at Ancestral (**1 000**) is **33×** the Common roll (30) on the same 1 reroll
shard, so **the rarity of the roll is worth more than the number of rolls**: merge the module up (law 1 raises the ceiling)
before spending the shard. The payload carries **13** Utility rows while the rendered panel claims **17** ⇒ 4 tail rows are
unprinted here (record them if the in-game panel shows more).

### 8.4 The reroll-lock price ladder (printed)

| Locks | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 |
|---|---|---|---|---|---|---|---|---|
| **reroll shards** | 10 | 40 | 160 | 500 | 1 000 | 1 600 | 2 250* | 3 000* |
| ratio to previous | — | **×4** | **×4** | ×3.125 | ×2 | ×1.6 | ×1.406 | ×1.333 |

⇒ the first three locks alone are **710** shards per roll (71× the unlocked price); **7 locks = 300×** it. Marginal deltas:
30 / 120 / 340 / 500 / 600 / 650 / 750. Practical law: **lock 2–3 (≈ 210 shards/roll), never more** — the 4th lock doubles the
price for one extra stat.

### 8.5 The free `Restore` refund + the `Main Effect / Substat` lab

**“The restore button resets a module for free, refunding every shard and coin you spent on it. Reroll shards are not refunded,
but all sub-module effects are kept, including ones that normally require higher levels.”** ⇒ levels are freely movable between
modules (test: the refund must equal the printed **Total Shard / Total Coins** columns of §1's ledger at that level), while
reroll shards are a one-way spend — another reason for the 2–3-lock rule. Related: the **`Main Effect / Substat` lab** prints
**30 levels at 0.25 q coins each** (Σ **7.5 q coins**) for **+1 %/level ⇒ +30 %**, with times `259.18 × n h`
(10 d 19 h 11 m → …, exact +259.18 h steps) ⇒ per-level reading Σ **120 519 h = 5 022 d**, cumulative reading **324 d** — the
[H050](../hypotheses/H050-lab-time-column-per-level-vs-cumulative.md) twin, unresolved for this table.
Also printed (Assist Modules): **Epic 1 000 / Legendary 1 000 / Mythic 1 200 / Ancestral 1 400 stones, Σ 4 600**.

### 8.6 The unique-effect and UW tables are ladder-shaped too

`epic-module-unique-effect` prints each module's unique ability as a **4-value ladder** (Epic / Legendary / Mythic / Ancestral)
that is usually arithmetic: `20 / 40 / 60 / 80` (+20), `25 / 50 / 75 / 100` (+25), `10 / 15 / 20 / 25` (+5),
`1.0 / 1.5 / 2.0 / 2.5` (+0.5); the non-arithmetic ones are `5 / 7 / 10 / 14` and `2 / 4 / 7 / 15`. In the Core (UW) table
**five rows share one ladder** — `Death Wave`, `Smart Missiles`, `Inner Land Mines`, `Poison Swamp`, `Chain Lightning` damage
are all **8 / 15 / 25 / 50 / 100 / 250** (ratios 1.88, 1.67, 2.0, 2.0, 2.5) — so a Core module's *damage* sub-stat is one
printed ladder on five weapons, while its **cooldown** rows start only at **Legendary** (Golden Tower −5 / −8 / −12 s,
Chrono Field −4 / −7 / −10 s): the GT/CF cooldown targets in [T008](T008-uw-sync-with-stones.md) need Legendary rolls, and
the hard caps printed alongside are **98 % defense, 90 % Chrono Field slow, 150 s Wall rebuild, 7 s Shockwave frequency,
37 s Inner Land Mine cooldown** (assist sub-stats cannot push past them).

### 8.7 All four type tables in full — 73 rows, and the rarity-pool law (new, Rev 9)

`wiki/module/sub-module-effects` prints **four** tables under the same header `| Common | Rare | Epic | Legendary | Mythic |
Ancestral |`: **Cannon 17 · Armor 17 · Generator 13 (§8.3) · Core 26 = 73 rows** (parsed cell-by-cell by
`tools/substat-census.ps1`). “—” = the page’s `n/a`, i.e. that sub-stat does not exist at that rarity.

**Cannon (attack):**

| Sub-stat | C | R | E | L | M | A |
|---|---|---|---|---|---|---|
| `Attack Speed` | 0.3 | 0.5 | 0.7 | 1 | 3 | 5 |
| `Crit Chance [%]` | 2 | 3 | 4 | 6 | 8 | 10 |
| `Crit Factor` | 2 | 4 | 6 | 8 | 12 | 15 |
| `Attack Range [m]` | 2 | 4 | 8 | 12 | 20 | 30 |
| `Damage / Meter [m]` | 0.005 | 0.01 | 0.025 | 0.04 | 0.075 | 0.15 |
| `Multishot Chance [%]` | — | 3 | 5 | 7 | 10 | 13 |
| `Multishot Targets` | — | — | 1 | 2 | 3 | 4 |
| `Rapid Fire Chance [%]` | — | 2 | 4 | 6 | 9 | 12 |
| `Rapid Fire Duration` | — | 0.4 s | 0.8 s | 1.4 s | 2.5 s | 3.5 s |
| `Bounce Shot Chance [%]` | — | 2 | 3 | 5 | 9 | 12 |
| `Bounce Shot Targets` | — | — | 1 | 2 | 3 | 4 |
| `Bounce Shot Range [m]` | — | 0.5 | 0.8 | 1.2 | 1.8 | 2.0 |
| `Super Crit Chance [%]` | — | — | 3 | 5 | 7 | 10 |
| `Super Crit Multi` | — | — | 2 | 3 | 5 | 7 |
| `Rend Armor Chance [%]` | — | — | — | 2 | 5 | 8 |
| `Rend Armor Multi [%]` | — | — | — | 2 | 5 | 8 |
| `Max Rend Armor Multi [%]` | — | — | — | 200 | 300 | 500 |

**Armor (defense):**

| Sub-stat | C | R | E | L | M | A |
|---|---|---|---|---|---|---|
| `Health Regen [%]` | 20 | 40 | 60 | 100 | 200 | 400 |
| `Defense [%]` | 1 | 2 | 3 | 5 | 6 | 8 |
| `Defense Absolute [%]` | 15 | 25 | 40 | 100 | 500 | **1 000** |
| `Thorns Damage` | — | — | 2 | 4 | 7 | 10 |
| `Lifesteal [%]` | — | — | 0.3 | 0.5 | 1.5 | 2.0 |
| `Knockback Chance [%]` | — | — | 2 | 4 | 6 | 9 |
| `Knockback Force` | — | — | 0.1 | 0.4 | 0.9 | 1.5 |
| `Orb Speed` | — | — | 1 | 1.5 | 2 | 3 |
| `Orbs` | — | — | — | — | 1 | 2 |
| `Shockwave Size` | — | — | 0.1 | 0.3 | 0.7 | 1 |
| `Shockwave Frequency [s]` | — | — | −1 | −2 | −3 | −4 |
| `Land Mine Damage [%]` | — | 30 | 50 | 150 | 500 | 800 |
| `Land Mine Chance [%]` | — | 1.5 | 3 | 6 | 9 | 12 |
| `Land Mine Radius` | — | 0.1 | 0.15 | 0.3 | 0.75 | 1 |
| `Death Defy [%]` | — | — | — | 1.5 | 3.5 | 5 |
| `Wall Health [%]` | — | — | 20 | 40 | 90 | 120 |
| `Wall Rebuild [s]` | — | — | −20 | −40 | −80 | −100 |

**Core (Ultimate Weapons; negative = seconds removed):**

| Sub-stat | C | R | E | L | M | A |
|---|---|---|---|---|---|---|
| `Golden Tower - Bonus` | — | — | 1 | 2 | 3 | 4 |
| `Golden Tower - Duration [s]` | — | — | — | 2 | 4 | 7 |
| `Golden Tower - Cooldown [s]` | — | — | — | −5 | −8 | −12 |
| `Black Hole - Size [m]` | 2 | 4 | 6 | 8 | 10 | 12 |
| `Black Hole - Duration [s]` | — | — | — | 2 | 3 | 4 |
| `Black Hole - Cooldown [s]` | — | — | — | −2 | −3 | −4 |
| `Spotlight - Bonus` | 1.2 | 2.5 | 3.5 | 10 | 15 | 20 |
| `Spotlight - Angle` | — | — | 3 | 6 | 11 | 15 |
| `Chrono Field - Duration [s]` | — | — | — | 4 | 7 | 10 |
| `Chrono Field - Speed Reduction [%]` | — | — | 3 | 8 | 11 | 15 |
| `Chrono Field - Cooldown [s]` | — | — | — | −4 | −7 | −10 |
| `Death Wave - Damage [x]` | 8 | 15 | 25 | 50 | 100 | 250 |
| `Death Wave - Quantity` | — | — | — | 1 | 2 | 3 |
| `Death Wave - Cooldown [s]` | — | — | — | −6 | −10 | −13 |
| `Smart Missiles - Damage` | 8 | 15 | 25 | 50 | 100 | 250 |
| `Smart Missiles - Quantity` | — | — | 1 | 2 | 4 | 5 |
| `Smart Missiles - Cooldown [s]` | — | — | — | −2 | −4 | −6 |
| `Inner Land Mines - Damage [x]` | 8 | 15 | 25 | 50 | 100 | 250 |
| `Inner Land Mines - Quantity` | — | — | — | 1 | 2 | 3 |
| `Inner Land Mines - Cooldown [s]` | — | — | — | −5 | −8 | −10 |
| `Poison Swamp - Damage [x]` | 8 | 15 | 25 | 50 | 100 | 250 |
| `Poison Swamp - Duration [s]` | — | — | — | 2 | 5 | 10 |
| `Poison Swamp - Cooldown [s]` | — | −2 | −4 | −6 | −8 | −10 |
| `Chain Lightning - Damage [x]` | 8 | 15 | 25 | 50 | 100 | 250 |
| `Chain Lightning - Quantity` | — | — | 1 | 2 | 3 | 4 |
| `Chain Lightning - Chance [%]` | 2 | 4 | 6 | 9 | 12 | 15 |

**Five laws the 73 cells give for free.**
① **The rarity-pool law.** Every row starts at exactly one rarity: **Common 23 · Rare 9 · Epic 24 · Legendary 16 · Mythic 1**
(`Orbs` is the only Mythic-start row) — Σ **73** ✓. Cumulative pool a module can roll: Common **23** → Rare **32** →
Epic **56** → Legendary **72** → Mythic and Ancestral **73**, the cap law of §8.2 in numbers (a Common module has only
**23** possible sub-stats, a Legendary+ one 72).
② **24 of 73 rows are exactly arithmetic** (constant step across their printed cells): 4 Cannon, 2 Armor, 7 Generator,
11 Core. The rest are piecewise — a small step for the first two-three rarities then a jump (`Attack Speed` +0.2 ×3 then
+2 ×2; `Cash / Wave` +20 / +50 / +100 / +300 / +500).
③ **Seven shared ladders** carry **22 rows**: `8/15/25/50/100/250` on the **five** Core damage rows (×31.25 C→A);
`2/4/6/8/10/12` on the three `Free … Upgrade` rows **and `Black Hole - Size`**; `2/4/6/8` on `Interest / Wave` + both
Level-Skip rows; `1/2/3/4` on `Multishot Targets`, `Bounce Shot Targets`, `Golden Tower - Bonus`,
`Chain Lightning - Quantity`; `1/2/3` on `Death Wave` + `Inner Land Mines - Quantity`; `3/5/7/10` on
`Super Crit Chance` = `Recovery Amount`; `2/5/8` on `Rend Armor Chance` = `Rend Armor Multi`.
④ **Rarity-sensitivity = Ancestral ÷ Common** (what one reroll is worth on that row): `Defense Absolute` **66.7**,
`Cash / Wave` **33.3**, the Core damage rows **31.25**, `Cash Bonus` **25**, `Coins / Wave` **17.5**,
`Coins / Kill Bonus` and the `Free … Upgrade` trio **6**, `Interest / Wave` + the Level Skips **4**,
`Package Chance` **3**, the cooldown rows **2–2.2** ⇒ for the coin engine, **lock `Cash / Wave` or `Coins / Wave` and
push module rarity** — the same 10–40 shards buy 2–10× more on those rows than on `Package Chance`.
⑤ **Cooldown sub-stats are Legendary-gated except one:** every `−N s` row starts at Legendary **except
`Poison Swamp - Cooldown`, which starts at Rare** (`−2/−4/−6/−8/−10`) ⇒ below Tier 11 the only UW cooldown a module can
carry is Poison Swamp’s; T008’s Golden Tower (−5/−8/−12) and Chrono Field (−4/−7/−10) cooldown rolls need **Legendary+**
modules, which is why the §8.6 hard caps only bind late.

**Model-migration note (dated by T005’s timeline).** The fandom’s v0.24 list has **11** rows, and four of them do not
exist in today’s 73-row print (`Armor Penetration` 5→40, `Coin Drop Rate` +0.5→+3, `Kill Coins` ×5→×30,
`Energy` 1→50, plus a `Wave Skip` 2→50 that today is a *workshop* line) ⇒ the fandom table is the **v0.24-era** model.
Where the two agree they agree to the cell (`Coin Bonus +10 % → +50 %` = `Cash Bonus` Common **0.1** → Legendary **0.5** ✓).
Use these four tables as current.

## Sources

- Tower Hub `wiki/module/modules` (**2026-11-02**) — the per-boss drop chances (**reroll shards 15 %**, Common module 2 %,
  Rare module 0.5 %), the **T1 → T21 shard-quantity ladder**, the rarity table (max level 30 → 300, max sub-stats 2 → 6,
  Epic copies 1 → 18), the slot-cost ledger with the printed **Total Shard / Total Coins** columns (level 300:
  **3 136 088** shards / **18.07 s** coins), the six-bucket “Chance” table, the **reroll lock ladder**, the sub-stat unlock
  levels **41 / 101 / 141 / 161**, the `Restore` refund rule, the assist stone costs by rarity (**1 000 / 1 000 / 1 200 /
  1 400, Σ 4 600**) and the `Main Effect / Substat` lab ladder (30 × 0.25 q, `+1 % × n`).
  **Skews vs the older prints kept above:** max sub-stats cap at **6** here (fandom: 8), and the ledger's milestone totals read
  **1 708 / 23 588 / 91 588 / 163 588 / 592 588 (L201) / 3 136 088 (L300)** where §1's derived table had
  1 715 / 23 595 / 91 595 / 163 595 / 466 095 / 3 136 095 — the printed column is the authority, the derived one is the model.
- Tower Hub `wiki/module/sub-module-effects` (**2026-11-02**) — the four type tables (Cannon / Armor / **Generator** / Core)
  with the six rarity columns (§8.3), the “sub-stat rarity ≤ module rarity” cap, the hard-cap list (**98 % defense, 90 %
  Chrono Field slow, 150 s Wall rebuild, 7 s Shockwave frequency, 37 s Inner Land Mine cooldown**) and the lock-cost sentence
  (“each lock increases the cost of the roll”). Payload row counts (**Rev 9, all four tables parsed**): Cannon **17**,
  Armor **17**, Generator **13** (panel claims 17), Core **26** ⇒ **73** cells per rarity column; the start-rarity
  histogram is **23 / 9 / 24 / 16 / 1** (Σ 73 ✓) and **24** rows are exactly arithmetic.
- Tower Hub `wiki/module/epic-module-unique-effect` (**2026-11-02**) — the unique abilities as 4-value ladders by rarity and
  the repeated **8 / 15 / 25 / 50 / 100 / 250** damage ladder across five UW rows.
- Tower Hub `wiki/lab/lab-shatter-shards` (last verified **2026-11-01**, 1 data table) — unlock “**reaching tier 16 wave
  40** through Milestones”, “The lab has **5 levels**, and each level adds **20%** more shards from shattering, for a
  maximum increase of **100%** … every module you shatter gives double the shards”, and the Level/Time/Cost/Value rows
  (10.00 T · 87.00 T · 229.20 T · 547.36 T · 1.19 q / 142 d 14 h 13 m … 523 d 6 h 15 m / 20 % … 100 %).
- Tower Hub `wiki/lab/lab-category-module-research` (2026-07-29) — the Module Research line list with max levels
  (`Common Drop Chance` 10, `Reroll Shards` 100, `Daily Mission Shards` 50, `Module Shard Costs` 30, `Module Coin Cost` 30,
  `Rare Drop Chance` 10, `Unmerge Module` 1, `Shatter Shards` 5, effect bans 4/4/3/7, assist lines 30/30).
- Tower Hub `wiki/module/module-labs-reroll-shards` (last verified **2026-11-01**, 1 data table) — “You unlock this lab
  through Milestones by reaching **wave 70 on tier 4** … The lab has **100 levels**, and each level adds **one extra reroll
  shard per boss drop**, for a total of **100 additional shards** at max level”, the Level/Time/Cost/Value rows
  (**900,000** … **755,277,021** coins; 1 d 9 h 20 m … 1 d 18 h 6 m; +1 … +10), and the Good-to-know pair
  (**+2.5 % × 8 = +20 %** for **180** Vault keys; **Rare = 10 shards**, typed by module type).
- Tower Hub `wiki/module/module-labs` (last verified **2026-11-01**, 11 data tables) — per-lab gates and level counts:
  `Common Drop Chance` “**Tier 4 Wave 70** … **10 levels** … adds a total of **1 %**” (values +0.10 % … +1.00 %, prices
  5,000,000 → 7.32 B); `Daily Mission Shards` “**Tier 4 Wave 70** … across its **50 levels**, it adds up to **50 extra
  shards per mission**” (1,200,000 → 2.19 B); `Module Shard Cost` / `Module Coin Cost` “**Tier 10 Wave 40** … **30 levels**
  … cuts shard costs by **30 %**” (5.00 B → 118.31 B, −1 %/level); `Rare Drop Chance` “**Tier 10 Wave 40** … base rare drop
  chance is **0.5 %** … **10 levels** … **1 %** at maximum” (70.00 B → 11.01 T); `Unmerge Module` “**Tier 8 Wave 20** …
  a **single level**” (10,000,000 / 2 d 0 h) with the two unmerge resolutions; `Shatter Shards` “**Tier 16 Wave 40** …
  **5 levels**, each adding **20 %** … total **100 %**”; and the four **Effect Bans** labs at **T10 W40** with
  **4 / 4 / 3 / 7** levels (Cannon **500.00 B / 50.00 T / 5.00 q / 50.00 q** at 37 d 12 h / 91 d 16 h / 162 d 12 h /
  204 d 4 h; Generator **5.00 T / 500.00 T / 50.00 q** at 62 d 12 h / 125 d / 204 d 4 h).
- fandom `Modules` (raw wikitext, fetched per section 1–12) — slot-level ownership of levels, rarity table (max level /
  sub-stats / Epic copies), shatter yields, 15 % boss drop + 5-wave cooldown, reroll-shard-per-tier ladder (T13–T24 = +5/tier),
  lock-cost ladder, sub-stat rarity odds, ban-lab counts, presets, 350 inventory cap, hard caps; **new this pass**: the
  Standard Banner rates 68.5 / 29 / 2.5 %, the **150-pull pity** and the ≥ 1-Rare-per-10-pull rule, the **2 % / 0.5 %**
  Common/Rare boss-drop chances (+3 % Common from the Vault), and the two full assist stone tables (per-level and
  cumulative, ending 16 038 and 8 073, plus the “Stones Needed to Max” column) that the closed form in §7 was fitted to.
- fandom `Modules/Merging` (raw) — recipes, “Commons cannot be merged”, uniques only on pulled epics, unmerge refund table, Ancestral star rules.
- fandom `Modules/Cost` (raw) — shard/coin price per level with cumulative totals.
- game-vault `Guide:Gem_Guide` §Buying Modules; `tools/gm_strings.txt` (`ModuleManager`, `AutoMergeUI`, `ModuleUnmergeUI`, `ModuleRestoreAndMaxUI`, `Assist Module Info Panel`, `Shards Drop`, `Rarity Colors`, and `Auto Reroll` from `AutoRerollUI.cs`).
- fandom `Module Labs` — the shard-cost-reduction labs (Tier 10 W40 group, up to −30 % on shard costs, per `Module Research` category) on top of the per-level prices in §1.
