# T006 — Pack the Lab queue, then buy the *cheapest* skipped hour

Rev: 12 (2026-11-02) — **the wave axis gets a law**: `wave(chance, tier) = base × 0.9^(tier − 1)` (10/10 rows at T15,
15/15 tiers on the 0.33 % row), the Elite spawn ladder is printed from **0.33 % at W500** to **33 % at W8 000**, the
predicted cells/run table is computed from it (T11 W1000 ≈ **140**, T14 W1000 ≈ **395**), and the fleet drop columns close
as `5 + (wave − 1)/250` (21/21 ✓, **25** at W5 000) and **1 080 → 2 100** reroll shards (T14 → T21).
§“The wave laws”.
Rev: 11 (2026-11-02) — **the enemy-stat layer closes**: the twenty 30-level enemy-stat lines share **one** time ladder
(Σ **106 785 720 s = 1 235.95 d** of base slot each), the value steps are **−0.40 %** (Common/Fast/Vampire/Ray/Scatter) or
**−0.30 %** (Protector pair + Boss pair) so the caps are **−12 % / −9 % / −6 %** ✓, the T19 trio is fully arithmetic
(cost `0.25 q × n`, time `n × 10 d 19 h 11 m` ⇒ Σ **116.25 q** / **5 021.68 d** each), and
`Lightning Amplifier - Scatter` is the cleanest closed form in the repo: value `1.25 × n` ⇒ **×37.5**, cost
`100 B × 1.5^(n−1)` ⇒ L30 = **12.78 q** ✓, time `720 000 s × 1.12^(n−1)` ⇒ Σ **173 759 640 s = 2 011.11 d** ✓
— a **×1.5 / ×1.12** pairing (new time constant). Coins-per-point ranking in §enemy-stat layer.
Rev: 10 (2026-11-02) — **the cap table is closed line by line.** All eleven `wiki/lab/lab-category-*` pages
(fetched 2026-11-02) print every line's `Max Lv`: the per-category counts re-add to the census
(15 · 9 · 16 · 12 · 39 · 10 · 9 · 8 · 21 · 14 · 5 = **158** ✓), the **whole lab system is Σ 4 693 level-ups**, the twenty
enemy-stat lines are **30** levels each with the single exception `Protector Damage Reduction` (**20**), and the five
Battle Condition caps (**10 / 20 / 20 / 10 / 10**) give the maximum condition reduction **R = 54.4 %** — hence the floors
`removed = 16 / 23` and `skip = ×0.7492` at value 55 (§the cap table, line by line).
Rev: 9 (2026-11-02) — **four more printed ladders + the per-column law**: the six **Wall** labs (gates T8 W10 / T10 W70 /
T12 W10 / T14 W60; 50/20/30/20/10/60 levels; value laws `2n`/`−10n`/`10n`/`1n`/`1n`/`20n`), `Garlic Thorns`
(**T2 W1000**, 10 lv, `0.5 × n`, Σ **1 350 000** coins / **25.45 d**), `Boss Health` + `Boss Attack` (**T9 W20**, 30 lv,
`−0.30 % × n` ⇒ **−9.00 %** ✓), `Reroll Shards` (**T4 W70**, 100 lv, Σ10 **2.2404 B** / **15.64 d**); plus the measured
**per-column** result (cost ratios fall 1.170→1.077 while time ratios rise 1.167→1.326 inside one lab ⇒ the
×1.5/×1.15 pair is family-specific), the **1 200 s → 150 s** rebuild floor, and Fortification's `Wall Regen` dependency.
Rev: 8 (2026-11-02) — the **Second Wind lab pair** added to §census (`wiki/lab/second-wind-labs`, 2026-11-02):
`Second Wind Blast` (**T3 W150**, 4 lv, value `25 × n` ⇒ **100 %**, costs 1.8 M / 3.0 M / 4.5 M / **75 M** = Σ **84.3 M**,
times **100 000/150 000/200 000/300 000 s** ⇒ Σ **750 000 s = 8 d 16 h 20 m**) and `Recharge Second Wind`
(**T14 W60**, 7 lv, value 2 000→400 waves, costs Σ **14.43 T** with Δ +500/+500/+500/+510/+510/+530 B, times Σ
**10 371 960 s = 120 d 1 h 6 m**); both are further **hand-set** instances where the *cost* and *time* columns follow
**different** shapes, so the family must be read per column; plus the printed mechanic (revive at **50 %** HP, Wall
respawn, invincibility `5 × star + 5` ⇒ **10…40 s**).
Rev: 7 (2026-11-02) — the **printed lab census** added: **158 named labs in 11 categories** (Main 15 · Attack 9 ·
Defense 16 · Utility 12 · UW 39 · Card 10 · Perk 9 · Bot 8 · Enemies 21 · Module 14 · Battle Condition 5), every
per-level law in this repo capped-checked against the printed `Max Lv` (`Labs Speed` 99 ⇒ ×2.98, `Labs Coin Discount` 99 ⇒
−29.7 %, the five 99-level coin lines ⇒ ×2.98, `Starting Cash` 99 ⇒ 495, `Max Interest` 15, `Enhancement Coin Discount`
100 ⇒ −30 %, `Shatter Shards` 5 ⇒ +100 %, `Module Shard Costs` 30 ⇒ −30 %); the **gem-rush ladder** closes on
`180 gems/day × (1 − discount)` with the **> 360 d = 25 000 flat** tail (⇒ 25 gems/day on a 1 000-day level), the
**all-labs = 5 × one-lab** identity on all 18 rows, and the skip law `skip = (m − 1) × duration`.
Rev: 6 (2026-11-02) — the **third time shape** added: the `Dissonant Echo` labs are **not** ×1.15 lines — their printed
rows are `cost = 1q · 2.25^(n−1)` and **`time = n × 20 d 20 h`** (arithmetic), whose two closed forms reproduce Tower
Hub's printed totals **8.85e21 coins** and **378 000 000 s** exactly, so the ×1.5/×1.15 pair below is scoped to the
bot/perk-style stat lines and the family must be identified before forecasting a line.
Rev: 5 (2026-11-02) — **the two clock laws added** (above): cost `×1.5/level` and research **time `×1.15/level`**, both
reproducing the printed rows to the last digit (Burn Stack's five durations = 45 d 15 h · 52 d 11 h 15 m · 60 d 8 h 8 m ·
69 d 9 h 21 m · 79 d 19 h 10 m ⇒ every ratio 1.150 ✓, Σ = 307.62 d; `Duration` L6 = 16 d 18 h 16 m / 759.38 B and
L10 = 29 d 7 h 34 m / 3.84 T ⇒ `t₁ = 8 d 8 h`, `c₁ = 100 B`), the **whole-line forecasts** that follow from them
(20-level line ≈ **853.7 d ≈ 2.34 y** and ≈ **665 T** coins) and the **coins-per-saved-hour drift of ×1.304/level**.
Rev: 4 (2026-11-02) — the **Elite Cell ledger closes** against Tower Hub’s currency pages (2026-11-01): the T14–T24
drop table **re-adds 10/10** (`(min+max)/2` = printed average, and the T14 “+50 % = 10.5/7” row proves the T1–13 law ends
at average **7** on T13), the **full eight-row boost-cost table** is printed (15 → 1 000 000 cells/h), each multiplier’s
ladder closes (DW lab 20 lv = ×3.0 ✓, Bonus Cells 25 lv = ×2.5 ✓, Cells card +2/lv = +14 at lv 7 ✓), and the **Cells/Kill
enhancement** gets its first 10 coin prices with the cumulative column re-adding to **1.42 T** at level 10.
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

### The two clock laws (cost ×1.5, time ×1.15 per level)

Lab lines are geometric in **both** currencies, and the printed rows pin both ratios exactly:

* **coins:** `cost(n) = c₁ · 1.5^(n−1)` ⇒ `Σ(n) = c₁(1.5ⁿ − 1)/0.5`
* **wall clock:** `time(n) = t₁ · 1.15^(n−1)` ⇒ `Σ(n) = t₁(1.15ⁿ − 1)/0.15`

| Lab (printed rows) | `c₁` / `t₁` | printed per-level | law | Σ printed vs derived |
|---|---|---|---|---|
| `Burn Stack` (Flame, 5 lv) | 43 T / **45 d 15 h** | 43.00 · 64.50 · 96.75 · 145.12 · 217.69 T | ×1.5 ✓ | **567.06 T** = 43(1.5⁵−1)/0.5 ✓ |
| same rows, time column | — | 45 d 15 h · 52 d 11 h 15 m · 60 d 8 h 8 m · 69 d 9 h 21 m · 79 d 19 h 10 m | ×1.15 ✓ (**all five reproduce to the minute**) | Σ = **307.62 d** |
| `Duration` (Golden/Amplify, 20 lv) | 100 B / **8 d 8 h** | L6 = 16 d 18 h 16 m and 759.38 B · L10 = 29 d 7 h 34 m and 3.84 T | ×1.5 + ×1.15 ✓ | first-5 = **1.32 T** ✓ · **whole line ≈ 664.9 T and 853.7 d ≈ 2.34 y** |
| `Dissonant Echo - X` (4 labs, 20 lv) | 1q / **20 d 20 h** | 2.25q · 5.06q · 11.39q … 970.74q · **4.91s** (×**2.25**) · 41 d 16 h · 62 d 12 h · 83 d 8 h … 208 d 8 h (= `n·t₁`) | **mixed**: coins ×2.25, time **arithmetic** | Σ = **8.846e21** ✓ = printed **8.85e21** · Σ = **378 000 000 s** ✓ |

**Three shapes, one page.** The ×1.5/×1.15 pair is the law of the **bot- and perk-style stat lines**; the
`Dissonant Echo` family prices coins at **×2.25** and *times* **arithmetically** (`n·t₁`, T021 §3), so read the family
from the first two printed rows before extrapolating a total — a 20-level Echo line is **4 375 d** of base slot time, not
the **≈102 × t₁** the geometric law predicts.

**Why the pair matters.** Because time rises ×1.15 while coins rise ×1.5, the *coins-per-saved-hour* of a line grows
**×1.304 per level** — late levels are relatively cheaper in wall-clock time. Practical consequences:

1. **Forecast any lab before starting it**: read `t₁` from the panel, then `Σ = t₁(1.15ⁿ−1)/0.15`. A 20-level line costs
   ≈ **102 × t₁**, so a lab whose first level is 8 d 8 h ties up a slot for **2.34 years** of real time — which is why
   the ×1.5 cell boost (30 cells/skipped hour, table above) is worth more on the *long* lines than on the short ones.
2. A lab's **last** level is 16.4× as slow as its first and 33.3× as expensive ⇒ buy the first 10 levels of many lines
   before the tail of one (the same knee rule as every other ladder in this repo).
3. With five slots, one season (8 weeks = 56 d) buys ≈ **280 slot-days**; at `t₁ = 8 d 8 h` that is 4 first-levels per
   slot per season, so the queue is the scarcest currency in the game — cheaper than coins, cells or gems to refill.

### The printed lab census, the rush-rate law, and the 5× identity (Rev 7)

Source: Tower Hub `wiki/lab/lab-upgrades` (last verified 2026-07-29; “List of Lab Upgrades” table, all categories).

**Census — 158 named labs in 11 categories.** The count per category is the fastest self-check on a Lab screen (a missing
line means an unclaimed milestone gate, T019):

| Category | Labs | Category | Labs |
|---|---|---|---|
| Main Research | **15** | Card Research | **10** |
| Attack Research | 9 | Perk Research | 9 |
| Defense Research | 16 | Bot Research | 8 |
| Utility Research | 12 | Enemies Research | 21 |
| Ultimate Weapon Research | **39** | Module Research | 14 |
| Battle Condition | 5 | **Total** | **158** |

Every level cap the rest of this repo uses comes from that table, and each one re-adds from `step × levels`:

| Lab | Max Lv (printed) | Step | Cap re-add |
|---|---|---|---|
| `Labs Speed` | **99** | +0.02 | `1 + 0.02×99 = ` **×2.98** ✓ |
| `Labs Coin Discount` | **99** | −0.30 % | **−29.7 %** ✓ |
| `Cash Bonus` / `Cash / Wave` / `Coins / Kill Bonus` / `Coins/wave` / `Interest` | **99** each | +0.02 | **×2.98** ✓ (T020 §1.2) |
| `Starting Cash` | **99** | +5 | **495** ✓ |
| `Max Interest` | **15** | cap ladder | T001 §2.C ✓ |
| `Enhancement Coin Discount` (×3 tracks) | **100** | −0.30 % | **−30 %** ✓ (T020 §6.3) |
| `Module Shard Costs` | **30** | −1 % | **−30 %** ✓ |
| `Shatter Shards` | **5** | +20 % | **+100 %** ✓ (one step per 100 %-cap = 20 pp) |
| `Daily Mission Shards` | **50** | +1 shard | **+50 shards/mission** ✓ (T004 §ledger, `wiki/module/module-labs`) |
| `Perk Option Quantity` / `Standard Perks Bonus` / `Waves Required` / `Auto Pick Ranking` / `Ban Perks` / `Improve Trade-Off Perks` | 2 / 25 / 100 / 32 / 8 / 10 | as printed | T011 ✓ |
| 4 × bot cooldown, 4 × bot duration, `Burn Stacks` | 25 / 20 / **5** | as printed | T015 ✓ |
| `Battle Condition Reduction` + Groups 1–4 | 10 / 20 / 20 / 10 / 10 | — | T006 §battle-condition ✓ |
| `Card Mastery (1 lab per card)` | **9** per card | — | the per-card mastery line, 32 such labs |
| `Second Wind Blast` / `Recharge Second Wind` | **4** / **7** | +25 pp / −waves | §Second Wind below ✓ |

**The Second Wind pair, as two more hand-set ladders (`wiki/lab/second-wind-labs`, 2026-11-02).** Both are fully printed,
and both confirm the “read the family from the first two rows” rule rather than adding a new family:

| Lab (gate) | Levels | Per-level **value** | Per-level **cost** | Σ |
|---|---|---|---|---|
| `Second Wind Blast` (**T3 W150**) | **4** | `25 × n` ⇒ 25/50/75/**100 %** ✓ | 1.8 M · 3.0 M · 4.5 M · **75 M** (ratios 1.667 / 1.5 / **16.667**) | **84.3 M** coins, **750 000 s = 8 d 16 h 20 m** |
| `Recharge Second Wind` (**T14 W60**) | **7** | 2 000→1 500→1 250→1 000→750→550→**400** waves | 550 B · 1.05 T · 1.55 T · 2.05 T · 2.56 T · 3.07 T · 3.60 T (Δ **+500/+500/+500/+510/+510/+530 B**) | **14.43 T** coins, **10 371 960 s = 120 d 1 h 6 m** |

Three reads worth having: (a) the Blast **times** are exactly **100 000 / 150 000 / 200 000 / 300 000 s** (the printed
minute forms are those values rounded, and the four sum to a clean **750 000 s**), so this line's time column is arithmetic
in 50 000-s steps while its **cost** column is not (a **16.667×** jump at level 4); (b) the Recharge **cost** column is
near-arithmetic (**+500 B** for L1→L4, drifting to +530) while its **time** column is geometric with a *rising* ratio
(1.267 → 2.069) — the two columns of one lab follow different shapes, which is why the family must be read per column;
(c) the underlying mechanic is printed too: **Second Wind revives the tower at 50 % health, respawns the Wall and grants
invincibility once per round**, and the invincibility is `5 × star + 5` seconds ⇒ **10/15/20/25/30/35/40 s** at stars
1–7 ✓ (star = the card's star rank, max **7**, T012). `Blast` is a **T3 W150** milestone gate, so it is inside the
sub-T11 window; `Recharge` needs **T14 W60** and its level 1 alone ties up a slot for **5 d 5 h** for 2 000 waves of
recharge delay.

**Four more printed ladders, and the per-column law (Rev 9).** From `wiki/lab/wall-labs`, `wiki/lab/lab-garlic-thorns`,
`wiki/lab/lab-category-*`-sibling pages `wiki/enemy/boss-labs` and `wiki/module/module-labs-reroll-shards` (all 2026-11-01
except wall-labs 2026-07-29). The **value** column is exact arithmetic `step × n` on **every** line; the **cost** and
**time** columns each follow their *own* law, so the “×1.5 cost / ×1.15 time” pair is a **family** property
(main/bot/perk research), not a universal one:

| Lab | Gate | Lv | Value law (✓) | Σ cost | Σ slot time |
|---|---|---|---|---|---|
| `Wall Health` | **T8 W10** | **50** | `+2 % × n` ⇒ L50 **+100 %** | per panel | per panel |
| `Wall Rebuild` | **T8 W10** | **20** | `−10 s × n` ⇒ L20 **−200 s** | per panel | per panel |
| `Wall Regen` | **T10 W70** | **30** | `+10 pp × n` ⇒ L30 **300 %** | 30.00 B (L1) → 217.89 B (L30) | 279 d 11 h 27 m (L30) |
| `Wall Thorns` | **T10 W70** | **20** | `+1 % × n` ⇒ L20 **20 %** | 30.00 B (L1) → 202.03 B (L20) | 263 d 3 h 46 m (L20) |
| `Wall Invincibility` | **T12 W10** | **10** | `+1 s × n` ⇒ L10 **10 s** | **5 383.72 B = 5.38 T** (Σ all 10) | **7 236 840 s = 83.76 d** |
| `Wall Fortification` | **T14 W60** | **60** | `+20 % × n` ⇒ L60 **1 200 %** | 300.00 B (L1) → 10.57 T (L60) | per panel |
| `Garlic Thorns` | **T2 W1000** | **10** | `+0.5 × n` ⇒ L10 **5.0** | **1 350 000** coins | **2 199 300 s = 25.45 d** |
| `Boss Health` / `Boss Attack` | **T9 W20** | **30** each | `−0.30 % × n` ⇒ **−9.00 %** ✓ | 40.00 B (L1) → 421.14 B (L10) | 7 d 15 h 32 m (L10) |
| `Reroll Shards` | **T4 W70** | **100** | `+1 shard × n` ⇒ **+100** | Σ10 **2 240 400 402** = **2.2404 B** | Σ10 **1 351 440 s = 15.64 d** |

**The per-column measurement** (only the two fully-printed lines): on `Wall Invincibility` the **cost** ratios *fall*
(1.170 → 1.077 across levels 2–10) while the **time** ratios *rise* (1.167 → 1.326) inside the same lab; on
`Reroll Shards` the time column is near-geometric at **×1.026** (nine ratios 1.0255–1.0267, i.e. the per-level delta grows
≈ +120 s: 51 → 65 minutes) while its cost ratios jump 3.24 → 4.77 → 2.86 → 2.15 → … So: **read the family per column from
that column's first two printed rows**, and never assume the cost law from the time law.

Two facts worth having next to the table: **base Wall rebuild time is 1 200 s and can never go below 150 s**, with the
reduction coming from Workshop + lab + module substats + Vault + relics + **Fortress Mastery** (so the lab's −200 s is one
of six sources inside a 1 050-s budget); and `Wall Fortification` only pays if **`Wall Regen` is researched first** — the
extra pool above the maximum is healed by regen alone. The printed note on the enemy pages is a caution for every stat
comparison in this repo: once enemy-stat labs are researched, “the usual base relationships between enemy types stop
holding true” (e.g. boss health is no longer reliably **20×** basic health), so baseline multipliers are starting points,
not constants.


**The gem-rush ladder is a flat rate × one discount column.** Printed: 1 h **7.5** gems (**180**/day, 0 %), 1 d **163**
(163/day, 9 %), 1 w **1 000** (142.9, 21 %), 30 d **3 550** (118.3, 34 %), 90 d **8 000** (88.9, 51 %), 360 d **25 000**
(69.4, 61 %), **> 360 d = 25 000 flat**. Two derived laws: `gems/day = gems ÷ days` reproduces every middle column
(1000/7 = 142.86 ✓, 3550/30 = 118.3 ✓, 8000/90 = 88.9 ✓, 25000/360 = 69.4 ✓), and the printed discount is exactly
`1 − (gems/day)/180` (→ 9.4 / 20.6 / 34.3 / 50.6 / 61.4 %, i.e. the print’s 9/21/34/51/61 rounded) ⇒ **180 gems per day of
research is the base rate**. Practical consequence of the flat tail: because >360 d stays **25 000**, a 1 000-day level
rushes at **25 gems/day** — *six times cheaper per hour* than a 1-day level, so rush the long lines first (this is the
same effect the ×1.304 coin/time drift creates in §clock laws, now on the gem side).

**Buying a boost for five slots is exactly 5× one slot.** In the printed boost table the `Cost All labs` column is
**5 ×** `Cost One lab` on all **18** rows where both are printed (15→75, 120→600, 360→1 800, 100→500, 800→4 000,
2 400→12 000, 840→4 200, 6 720→33 600, 20 160→100 800, 3 360→16 800, 26 880→134 400, 80 640→403 200, 11 900→59 500,
95 200→476 000, 285 600→1 428 000, 60 000→300 000, 480 000→2 400 000, 1 440 000→7 200 000) ⇒ **no bulk discount**, so
“all labs” is worth buying only when all five slots actually have time left (matching `Buy multiplier`’s no-discount rule,
T020 §1.5). The `Effective time skip` column is the hours actually removed: 1 h → 0.5, 8 h → 4, 24 h → 12 at ×1.5, i.e.
the closed form **`skip = (multiplier − 1) × duration`**, which also re-derives this doc’s own
*cells-per-skipped-hour* column (`×3`: 840 ÷ 2 = **420** ✓, `×4`: 3 360 ÷ 3 = **1 120** ✓, `×5`: 11 900 ÷ 4 = **2 975** ✓,
`×6`: 60 000 ÷ 5 = **12 000** ✓ — that is why ×1.5 looks cheap per cell but expensive per skipped hour).

**Slot bill check:** `100 + 400 + 1 400 + 3 000 = ` **4 900** gems for slots 2–5 ✓ (the same figure inside T022’s
≈ 115 k framework bill).



- Elites are **Vampire, Ray, and the full-size Scatter** — and *only* those: Scatter children, Fleets and Bosses drop
  **nothing**. Each one drops `1 … Tier` cells uniformly ⇒ **average (1 + Tier) / 2 per kill** for Tiers 1–13.
- So cell income ≈ `elitesPerWave × wavesPerHour × (1 + Tier)/2`. At 1 elite/wave and 100 waves/h: **T1 ≈ 100 cells/h, T5 ≈ 300 cells/h, T8 ≈ 450, T11 ≈ 600** (see [H009](../hypotheses/H009-elite-density-per-wave.md) for the density to measure).
- The **Wave Skip** card is cell-*positive*: every wave it skips pays **1.1×** the cells of the current wave — Tower Hub
  adds “**even during Intro Sprint**”. Combined with the next bullet, an Intro-Sprint-skipped wave pays ≈ `1.1 × 0.20 = 0.22×`.
- **Intro Sprint is cell-negative**: cells earned while it is active are reduced to **20 %**. If a day's goal is cells, do not start the run with Intro Sprint.

**The Tier 14+ drop table (printed; every row re-adds).** From T14 the *minimum* jumps while the max stays = tier; the
printed average is exactly `(min + max) / 2` in all ten visible rows, and the T14 “+50 % (= 10.5 / 7)” row proves the T1–13
law ends at average **7** (= (1+13)/2) — the two regimes link without a gap:

| Tier | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24* |
|---|---|---|---|---|---|---|---|---|---|---|---|
| min | 7 | 11 | 12 | 12 | 12 | 15 | 15 | 15 | 15 | 15 | 15* |
| max | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24* |
| avg | 10.5 | 13 | 14 | 14.5 | 15 | 17 | 17.5 | 18 | 18.5 | 19 | 19.5* |

\* “Showing 10 of **11** rows” ⇒ the hidden row is T24 (min 15 = max tier law), so 19.5 is extrapolated. These are the
*default* values — “the server can override them”. The two big step-ups are T14 (+50 % over T13) and **T19 (+13.3 %)**;
between them T15–T18 pay almost flat, so tier-crawling 15→18 is *not* a cell-pressing strategy.

**The multiplier stack, with every ladder closed.** Cells/kill = `(base · CellsPerKill-enh · DW-lab · BonusCells + card)
· CellsMastery`, in that order (the card is added **after** the multipliers, the Mastery multiplies the total *including*
the card):

| Multiplier | Unlock gate | Ladder | Max |
|---|---|---|---|
| `Cells/Kill Bonus` (Workshop Enhancement) | after spending **500 B** coins on Utility enhancements | ×1 at unlock, **+0.01/lv** | **L300 = ×4.00** (L200 = ×3 ✓ same law) |
| `Death Wave Cells Bonus` (lab) | Death Wave lab block | **+0.1/lv, 20 lv** | ×1.0 → **×3.0** ✓ (0.1 × 20 = 2 ✓) |
| `Bonus Cells` (Golden Bot+) | 1 250 stones | **+0.05/lv, 25 lv** | ×1.25 → **×2.5** ✓ (= the 17 500-medal line of T015) |
| `Cells` card (Rare) | **T4 W40** | **+2 cells/lv, 7 lv** | +14 (additive, post-multiplier) |
| `Cells Mastery` | **1 000 stones** | ×1.05 → **×1.32** as of v29 (patch note said 1.03 → 1.3) | final multiplier |
| Enemy Balance / Elite Balance, Wave Skip, Intro Sprint **masteries** | T012 | more elites/wave or faster waves | — |

### The cap table, line by line (Rev 10)

Source: the eleven `wiki/lab/lab-category-*` pages (fetched **2026-11-02**), each printing `Line — Max Lv` for every line
of that category. The counts re-add to the census (15 · 9 · 16 · 12 · 39 · 10 · 9 · 8 · 21 · 14 · 5 = **158** ✓), and the
**Σ** column is the sum of that category's printed caps:

| Category | Lines | Σ levels | Printed caps (`line cap`, in the pages' own order) |
|---|---|---|---|
| Main Research | 15 | **712** | Game Speed 7 · Starting Cash 99 · Wksp Attack/Defense/Utility Discount 99 · Labs Coin Discount 99 · Labs Speed 99 · Buy multiplier 4 · More Round Stats 1 · Target Priority 2 · Card Presets 1 · Workshop Respec 1 · Reroll Daily Missions 1 · Workshop Enhancement 1 · Enhancement Coin Discount **100** |
| Attack Research | 9 | **598** | Damage **100** · Attack Speed 99 · Critical Factor 99 · Range **80** · Damage/Meter 99 · Super Crit Chance 50 · Super Crit Mult 40 · Max Rend Armor Multiplier 30 · Light Speed Shots 1 |
| Defense Research | 16 | **655** | Health 100 · Health Regen 100 · Defense Absolute 100 · Defense % **50** · Orb Speed 20 · Land Mine Damage 20 · Land Mine Decay **35** · Shockwave Size 20 · Orb Boss Hit 10 · Wall Health 50 · Wall Rebuild 20 · Wall Regen 30 · Wall Thorn 20 · Wall Invincibility 10 · Wall Fortification 60 · Garlic Thorns 10 |
| Utility Research | 12 | **611** | Cash Bonus 99 · Cash / Wave 99 · Coins / Kill Bonus 99 · Coins/wave 99 · Interest 99 · Max Interest 15 · Package After Boss 1 · Recovery Package Amount / Max / Chance 20 · **Enemy Attack Level Skip 20 · Enemy Health Level Skip 20** |
| Ultimate Weapon | 39 | **669** | eight **1-level** unlocks (Missiles Explosion, Chrono Field Damage Reduction, Swamp Stun, Chain Lightning Shock, Missile Barrage, Inner Mine Stun, Extra Black Hole, Black Hole Disable Ranged Enemies) + nine 25–30-level depth lines (Chrono Field Duration / Reduction % / Range, Swamp Radius / Stun Chance / Stun Time, Death Wave Health, Chain Thunder, Lightning Amplifier) + the rest at 1–20 |
| Card Research | 10 | **99** | Second Wind Blast 4 · Double Death Ray 30 · Extra Orb Adjuster 1 · Extra Extra Orbs 2 · Energy Shield Extra Hit 2 · Super Tower Bonus 30 · Recharge Second Wind / Demon Mode / Nuke 7 · Card Mastery **9 (one lab per card)** |
| Perk Research | 9 | **180** | Unlock Perks 1 · Waves Required 100 · Auto Pick Perks 1 · Standard Perks Bonus 25 · Perk Option Quantity 2 · First Perk Choice 1 · Ban Perks **8** · Improve Trade-Off Perks 10 · Auto Pick Ranking 32 |
| Bot Research | 8 | **165** | four Cooldown lines **25** · Burn Stacks **5** · Linger Time 20 · two Duration lines 20 = `4×25 + 5 + 3×20` ✓ T015 |
| Enemies Research | 21 | **620** | twenty lines at **30** + `Protector Damage Reduction` at **20** |
| Module Research | 14 | **314** | the 12 lines of T010 §2.2 (Σ **254**: Reroll Shards 100, Daily Mission Shards 50, the two Cost lines 30, the two Drop Chance lines 10, Shatter 5, Unmerge 1, bans 4/4/3/7) **+ the two assist lines at 30** |
| Battle Condition | 5 | **70** | generic `Battle Condition Reduction` **10** · Group 1 **20** · Group 2 **20** · Group 3 **10** · Group 4 **10** |
| **All** | **158** | **4 693** | (= 4 633 if the two assist lines are counted with the module page's 12) |

Four consequences:

1. **Two cap shapes, not one.** The “increment” lines (the ×1.5-cost family: +0.02 or −0.30 % steps — Labs Speed, Labs
   Coin Discount, the three Workshop discounts, the five coin lines, Attack Speed, Critical Factor, Damage/Meter) cap at
   **99**, while the “+1 %-style” lines (Damage, Health, Health Regen, Defense Absolute, Waves Required, the three
   `Enhancement Coin Discount` labs) cap at **100**. A one-level difference, but it is the fingerprint that tells the
   two clock-law families apart from the Lab screen alone.
2. **The enemy-stat layer is 620 levels of a uniform 30-level line.** With the printed **−0.30 %/level** step (T009’s
   boss pages) one maxed line is **−9.00 %**, and the odd one out is `Protector Damage Reduction` (**20** levels).
3. **The two Utility `* Level Skip` labs cap at 20 each** — each level removes one enemy level from that stat’s growth, so
   the pair is the cheapest enemy-stat relief in the game and it is *inside* the same 12-line category as the four coin
   lines (T020 §1.2), which is why they should be queued together.
4. **Battle Condition: the ceiling is R = 54.4 %.** With T014 §4.1’s printed steps the five caps give
   `10×2 % + 20×0.21 % + 20×0.51 % + 10×1 % + 10×1 % = 20 + 4.2 + 10.2 + 10 + 10 = ` **54.4 %**, so no Legend bracket can
   ever scale a condition below `1 − 0.544 = 0.456`: the Overheat decays stop at **⌈35 × 0.456⌉ = 16** and
   **⌈50 × 0.456⌉ = 23** removed levels, and a skip condition at value 55 bottoms out at `1 − 0.01·55·0.456 = `
   **×0.7492** (at value 96: **×0.5622**).

**The cap table is a second source for every cap used in this repo:** Main’s `Max Interest` 15 (T001), the five 99-level
coin lines and the 100-level `Enhancement Coin Discount` trio (T020), the six Wall caps + Garlic 10 (this doc), the perk
caps 1/100/1/25/2/1/8/10/32 (T011), the bot caps 25/25/25/25/5/20/20/20 (T015), `Card Mastery` 9 (T012), the twelve
module caps (T010) and the BC caps (T014) — all re-add unchanged.

### The enemy-stat layer, ladder by ladder (Rev 11)

Source: `wiki/enemy/common-enemy-labs`, `fast-enemy-labs`, `protector-labs`, `vampire-labs`, `ray-labs`, `scatter-labs`
(2026-11-01 / one page 2026-07-29). Every **value** column is `step × n`, and the **30-level lines all share one time
ladder** (`2d 7h 33m → 161d 9h 28m`, Σ **106 785 720 s = 1 235.95 d**), so one line's slot bill is a constant:

| Lab (gate) | Lv | Value law | Cap | Price ladder | Σ coins | Σ time | coins / pp |
|---|---|---|---|---|---|---|---|
| `Common Enemy Health` / `Attack` | **T9 W10** | `−0.40 % × n` | **−12.00 %** ✓ “up to -12 %” | 20.00 B → 2.40 T | **21.117 T** | 1 235.95 d | **1.76 T** |
| `Fast Enemy Health` / `Attack` | **T9 W20** | `−0.40 % × n` | −12.00 % | 30.00 B → 2.70 T | 25.768 T | 1 235.95 d | 2.15 T |
| `Fast Enemy Speed` | **T9 W300** | `−0.40 % × n` | −12.00 % | 60 B → 3.60 T | 39.716 T | 1 249.83 d | 3.31 T |
| `Protector Health` / `Radius` | **T9 W20** | `−0.30 % × n` | −9.00 % | 40.00 B → 3.29 T | 34.767 T | 1 235.95 d | 3.86 T |
| `Protector Damage Reduction` | **T9 W20** | `−0.30 % × n` | **−6.00 %** (20 lv) | 80.00 B → 1.77 T | 16.521 T | 272.60 d | 2.75 T |
| `Boss Health` / `Boss Attack` | **T9 W20** | `−0.30 % × n` ✓ §four-more-ladders | −9.00 % | (per panel) | — | — | — |
| `Vampire` · `Ray` · `Scatter` Health + Attack | **T19 W60** | `−0.40 % × n` | −12.00 % | `0.25 q × n`: **0.25 q → 7.50 q** | **116.25 q** each | **5 021.68 d** each | **9.69 q** |
| `Lightning Amplifier - Scatter` | **T16 W60** | `1.25 × n` ⇒ **×37.5** | ×37.5 | `100 B × 1.5^(n−1)`: 100.00 B → **12.78 q** (×1.5 ✓ 29/29) | **38.344 q** | **2 011.11 d** | 1.02 q per ×1 |

Four reads that matter for the queue:

1. **The cheap band is T9, the expensive band is T19 — by ~5 500× per point.** One `Common Enemy Health` point costs
   **1.76 T** coins, one `Vampire`/`Ray`/`Scatter` point **9.69 q** (= 9 688 T). With 6 pp of gate difference (T9 → T19)
   that is the single largest price gap in the lab system, and it is why the T19 trio is a *far-future* line below T11.
2. **The T19 trio is fully arithmetic**: cost `0.25 q × n` (Σ = `0.25q × 465 = ` **116.25 q** ✓) and time `n × t₁` with
   `t₁ = 10 d 19 h 11 m = 933 060 s` (Σ = `933 060 × 465 = ` **433 872 900 s = 5 021.68 d** ✓) — the `n · t₁` time shape
   of T021's Echo labs, here paired with an *arithmetic* cost instead of ×2.25.
3. **`Lightning Amplifier - Scatter` is the cleanest closed form in this doc**: value `1.25 × n` ⇒ **×37.5**, cost
   `100 B × 1.5^(n−1)` ⇒ L30 = **12.78 q** ✓ (the printed row) and Σ = `100 B × (1.5^30 − 1)/0.5 = ` **38.34 q** ✓,
   time `720 000 s × 1.12^(n−1)` ⇒ L30 = **19 259 940 s = 222 d 21 h 59 m** ✓ and Σ = `720 000 × (1.12^30 − 1)/0.12 = `
   **173 759 640 s = 2 011.11 d** ✓ — a **×1.5 cost / ×1.12 time** pairing, i.e. the cost family of the main lines with a
   *slower* time constant than the ×1.15 of the bot/perk family (new constant for the shape table).
4. **The Protector pair's price ladder starts at 40 B, its Damage-Reduction line at 80 B** (double), which is the printed
   reason the 20-level line is the priciest-per-point of the T9 group after `Fast Enemy Speed`.

**The two `* Level Skip` labs' steps are now printed too** (`wiki/workshop/enemy-level-skip`): **20** levels, value
`0.10 × n` ⇒ **+2.00** at L20, Σ **0.745 T** coins / **11 258 700 s = 130.31 d** per line — that is
**373 B coins per point**, cheaper per point than *every* enemy-stat line above; full ledger in
[T024](T024-enemy-level-skip-ledger.md).

### The wave laws: 0.9 per tier, and what it predicts for Elite Cells (Rev 12)

Source: `wiki/enemy/enemies` (16 tables) and `wiki/enemy/elite-enemies`, both last verified **2026-11-01**. Both print the
same grid: rows are the **spawn chance** of an Elite, columns are **T1 … T21/T24**, cells are the **wave** at which that
chance begins. Two things fall out:

**① The chance ladder (T1).** `0 %` at W0 · **0.33 %** at W500 · **1.33 %** at W1 000 · **3 %** at W1 500 · **5 %** at
W2 000 · **8 %** at W3 000 · **12 %** at W4 000 · **16 %** at W5 000 · **21 %** at W6 000 · **27 %** at W7 000 ·
**33 %** at W8 000. A wave inside a band pays that band’s chance (a step function, not a curve).

**② Tier compresses the wave axis by exactly 0.9.** `wave(chance, tier T) = base(chance) × 0.9^(T − 1)`. All **10** non-zero
rows re-add at T15 (`round(base × 0.9^14)`: 114 / 229 / 343 / 458 / 686 / 915 / 1 144 / 1 373 / 1 601 / 1 830 — every cell
✓), and the printed 0.33 % ladder re-adds for **15/15** tiers (`500 → 450 → 405 → 365 … 114`). Consequence: **a tier-14 run
reaches the 33 % elite band at about W1 830, a tier-1 run not until W8 000** — the same 4.4× head start that makes
T14+ the cell tier (§Elite Cell income).

**③ The predicted elite count** (step-function sum × the printed per-tier average from §Elite Cell income):

| Tier | Depth | Expected elites | × printed avg cells | ≈ cells/run |
|---|---|---|---|---|
| T1 | W1 000 | 1.65 | 1 | **2** |
| T5 | W1 000 | 5.92 | 3 | **18** |
| T10 | W1 000 | 20.28 | 5.5 | **112** |
| T11 | W1 000 | 23.26 | 6 | **140** |
| T13 | W1 000 | 32.92 | 7 | **230** |
| T14 | W1 000 | 37.63 | 10.5 | **395** |
| T14 | W2 000 | 223.11 | 10.5 | **2 343** |
| T18 | W1 000 | 72.16 | 15 | **1 082** |

The reading for a sub-T11 account: at W1 000 the elite bands that have *started* are only the first few (T11’s band starts
are **174 / 349 / 523 / 697 / 1 046 / …**), so the cells-per-run figure is dominated by how far past the **W500** first
band the run gets — depth, not luck. Note also the printed mechanics that cap the yield: at most **1** elite per wave early
(a second becomes possible at higher waves), each type capped at **8** on screen (Scatter children excluded), and every
elite is immune to **Orbs, Death Ray, Shockwave and Black Hole**.

**④ Fleet numbers (T14+), and they are pure shard income.** `wiki/enemy/fleet-enemies` prints the fleet drop table, and
both columns close: module shards = **`5 + (wave − 1) / 250`** (all **21** printed band rows ✓, reaching the printed cap
**25** at W5 000), reroll shards **1 080 → 2 100** for T14 → T21 (the deltas are **+120 then +150/tier** ✓). 80 % of fleet
drops are reroll shards, 20 % module shards (5 % per type). Spawn first-waves: T1–T13 `15 000 − 250 × (T − 1)` at a
frequency of **100** waves/fleet (T13 = 12 000 ✓), then **T14 2 495 · T15 1 495 · T16 995 · T17 495 · T18 95 · T19 45 ·
T20+ 5**, with the “bonus spawn” column closing as **`11 750 − 250 × (T − 14)`** (all 10 deltas = −250 ✓). Fleet
companions are fixed: **Overcharge + Ranged, Commander + Tank, Saboteur + Fast**. Tool coverage on fleets (printed):
Chrono Field, Chrono Loop (CF+), Thunder Bot, Poison Swamp stun and Land Mine stun work at **half** strength; Orbs, Death
Ray, Shockwave, Knockback and both Black Hole damage and pull do **not** connect, and Plasma Cannon cannot even select them.

**Skew, recorded not resolved.** The two pages print the *same* grid but from **T16** onward the columns are offset by one
row and differ by ±1 (`…/elite-enemies` shows 102 / 205 / 308 / 411 where `…/enemies` shows 103 / 206 / 412 / 618 — i.e.
`floor` vs `round` of the same `base × 0.9^15/16`). Use ① + ② to compute, and read the panel cell when a T16+ number
matters.


(multiplier − 1) × hours”:

| Boost | ×1.5 | ×2 | ×3 | ×4 | ×5 | ×6 | ×7 | ×8 |
|---|---|---|---|---|---|---|---|---|
| cells/h | **15** | 100 | 840 | 3 360 | 11 900 | 60 000 | 250 000 | 1 000 000 |
| cells per *saved* hour (1-h bucket) | **30** | 100 | 420 | 1 120 | 2 975 | 12 000 | 41 667 | 142 857 |

So every step above ×1.5 costs **2.7–4.2× more per saved hour** — buy ×1.5 repeatedly and let the big multipliers ride
on multi-day gate labs. (This is also the derivation of the “30 cells” row in the table below.)

**The two enhancement coin-ladders share one printed series** (first 10 levels, pre-discount): **5 B · 6.25 B · 12.46 B ·
27.42 B · 54.5 B · 96.85 B · 157.45 B · 239.17 B · 344.79 B · 477.01 B**, cumulative **5 → 11.25 → 23.71 → 51.14 →
105.64 → 202.49 → 359.94 → 599.11 → 943.90 → 1.42 T** — every printed cumulative re-adds ✓ (10/10), and “Showing 10 of
**300** rows” confirms the 300-level cap. `Coin Bonus` (gate **50 B** Utility spend, ×1 + 0.01/lv → ×4 at L300) and
`Cells/Kill` (gate 500 B) cost the same per level; the site notes Coin Bonus applies to *both* the tier bonus and
Coins/Kill, “so its effective benefit is **squared**” — it is the strongest late-coin enhancement line.

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
- [ ] **Clock laws:** a lab's level-2 research time is level 1 × **1.15** while its coin
      price is × **1.5**; (8 d 8 h ⇒ 9 d 14 h at level 2); and the whole 20-level `Duration` line forecasts to ≈ **853.7 d** from `t₁ = 8 d 8 h`.
- [ ] **Family check:** `Dissonant Echo - Utility` (visible from **T17 W60**) prices level 2 at **2.25q** and
      **41 d 16 h** — coins ×2.25 and time `2 × t₁` (the arithmetic shape), so its level 10 is **208 d 8 h**, not the
      **73 d 7 h** a ×1.15 ladder would give.
- [ ] All five slots show the green speed-up background while their own timers keep their nominal length.
- [ ] Elite Cell counter still ends the day **>** 0 after all five ×1.5 renewals (if it hits 0, stop escalating multipliers).
- [ ] Record: cells at run start / run end ÷ minutes = your measured cells/h — then check it against `(1 + Tier)/2 × elites/h`.
- [ ] `Labs Speed` level 1 costs **40** coins with **0 m** base time, and its panel value reads **1.02**; level 10 = **12 116**
      coins / **1.20**; the Σ across levels 1–10 is **33 907** coins.
- [ ] `Labs Coin Discount` level 1 = **40** coins / **0.30 %** and level 10 = **12 116** / **3.00 %**.
- [ ] With one lab-speed relic equipped, the effective time shown on a line drops by the **product** (e.g. 3.725× with a
      ×1.25 relic at `Labs Speed` L99), not the sum.
- [ ] A 1-week lab's rush price is **1 000** gems (never 168 × the 1-hour price of 7.5).
- [ ] On T14 a run's average drop per Elite lands near **10.5** cells (min 7, max 14); on T13 near **7**.
- [ ] The ×8 boost line reads **1 000 000** cells/h in the Speed Up menu (it only appears on long gate labs).
- [ ] The `Coin Bonus` (or `Cells/Kill`) enhancement’s first level costs **5 B** coins and level 10’s **Total** reads
      **1.42 T**; the 300-level cap is visible in its panel.
- [ ] A Wave-Skipped wave during **Intro Sprint** still pays cells (≈ 0.22× of a normal wave = 1.1 × 0.20).
- [ ] **Census (§census):** the Lab list’s category counts are Main **15** · Attack **9** · Defense **16** · Utility **12** ·
      UW **39** · Card **10** · Perk **9** · Bot **8** · Enemies **21** · Module **14** · Battle Condition **5**; a missing
      line = an unclaimed milestone gate.
- [ ] **Rush prices:** a 1-day remaining reads **163** gems, 1 week **1 000**, 30 d **3 550**, 90 d **8 000**, and anything
      past 360 d reads **25 000** (the flat tail ⇒ deep lines are the cheapest gems-per-hour in the game).
- [ ] The Speed Up menu’s `all labs` price is exactly **5 ×** the single-slot price (e.g. **15 → 75**, **360 → 1 800**), and
      the skipped hours at ×1.5 are **half** the nominal duration (1 h → 0.5, 24 h → 12).
- [ ] `Daily Mission Shards` has **50** levels and `Shatter Shards` **5** and `Module Shard Costs` **30** (the last two cap at
      **+100 %** and **−30 %**).
- [ ] **Second Wind pair:** `Second Wind Blast` appears after the **T3 W150** milestone with **4** levels reading
      **25 / 50 / 75 / 100 %** and costs **1.8 M → 3.0 M → 4.5 M → 75 M**; `Recharge Second Wind` (T14 W60) has **7** levels
      whose value falls **2 000 → 400** and whose time at level 1 is **5 d 5 h**.
- [ ] With Second Wind at **star 1** the invincibility is **10 s** and at **star 7** it is **40 s** (`5 × star + 5`), and it
      fires **once per round** — a second death in the same round has no save.
- [ ] **Wall ladder (§four more printed ladders):** the six Wall labs show **50 / 20 / 30 / 20 / 10 / 60** levels and their
      value columns read `+2 %` … `+100 %`, `−10 s` … `−200 s`, `+10 %` … `300 %`, `+1 %` … `20 %`, `+1 s` … `10 s`,
      `+20 %` … `1 200 %` — one arithmetic law per line.
- [ ] **Rebuild floor:** with every reduction source maxed the Wall's rebuild time stops at **150 s** (base **1 200 s**).
- [ ] `Garlic Thorns` unlocks at the **T2 W1000** milestone, has **10** levels costing **4 500 → 459 900** coins
      (Σ **1 350 000**) and its value column is **0.5 … 5.0**.
- [ ] `Boss Health` / `Boss Attack` (both **T9 W20**) cap at **−9.00 %** after 30 levels, i.e. `0.30 % × 30`.
- [ ] **§cap table:** the per-category `Σ levels` re-add on the Lab screen: Main **712** · Attack **598** · Defense **655** ·
      Utility **611** · UW **669** · Card **99** · Perk **180** · Bot **165** · Enemies **620** · BC **70** · Module **314**
      ⇒ **4 693** for all 158 lines, and the enemy-stat lines all read **30** levels except `Protector Damage Reduction`
      (**20**).
- [ ] **Cap-shape fingerprint:** the increment lines stop at level **99** (`Labs Speed`, the three Workshop discounts, the
      five coin lines) while the +1 %-style lines stop at **100** (`Damage`, `Health`, `Defense Absolute`, `Waves Required`,
      the three enhancement-discount labs).
- [ ] **R ceiling:** with the generic BC lab + all four group lines maxed, an Overheat removes **16** and **23** levels
      (not 15/22, not 17/24) and a value-55 skip reads **×0.7492**.
- [ ] **§enemy-stat layer:** `Common Enemy Health` (T9 W10) has **30** levels whose value column runs
      **−0.40 % … −12.00 %** with prices **20.00 B → 2.40 T** (Σ **21.117 T**, Σ **1 235.95 d**), and every other
      30-level enemy line prints the *same* times (**2d 7h 33m** at L1, **161d 9h 28m** at L30).
- [ ] **T19 arithmetic ladder:** `Vampire Enemy Health` L1 = **0.25 q / 10 d 19 h 11 m** and L30 = **7.50 q /
      323 d 23 h 39 m** (= `30 × t₁`), Σ **116.25 q** / **5 021.68 d**.
- [ ] **The ×1.5 / ×1.12 line:** `Lightning Amplifier - Scatter` (T16 W60) prints **×1.25** at L1 and **×37.5** at L30
      (`1.25 × n`), prices **100.00 B → 12.78 q** (×1.5 every level) and times **8 d 8 h → 222 d 21 h 59 m** (×1.12).
- [ ] **Level Skip labs:** each of the two 20-level lines sums to **0.745 T** coins / **130.31 d** and its value column
      ends at **2.00** ([T024](T024-enemy-level-skip-ledger.md) §2).
- [ ] **Wave law:** the elite spawn table’s 0.33 % row reads **500 / 450 / 405 / 365 / 328** for T1–T5, and the 33 % row
      reads **1 830** at T15 (= `8000 × 0.9^14` ✓).
- [ ] **Elite count:** a T11 run to W1 000 shows roughly **23** elite kills on the counter (the model says 23.26); at T14
      the same depth shows ≈ **38**.
- [ ] **Fleet shards:** the fleet drop column reads **5** module shards at W1, **6** from W250, **7** from W500 … and
      **25** from W5 000 (`5 + (wave − 1)/250`); the reroll-shard column reads **1 080** at T14 and **2 100** at T21.

## Falsification

- If a ×2 boost costs **less than ~3.3× the ×1.5 price**, the flat per-hour pricing changed (it was made flat in v25.5) → re-derive the ranking column from the in-game prices.
- If a boost on an **empty** slot still ticks down, the “only ticks while slotted” rule is wrong and you can pre-buy boosts before starting the level.
- If cells do not appear from Vampire/Ray/Scatter kills at all, note which enemy type is missing and which tier you are in — the drop table is indexed by tier (`gm_strings.txt`: “Drop range of Elite Cells by tier … X is the min value and Y the max value”).
- If the gem-rush price for a 1-week lab is exactly 168× the 1-hour price, the long-bucket discount no longer exists → gems and cells then rank by table only (the printed discount column — 0.91 / 0.79 / 0.66 — is the version marker).
- If `Labs Speed` **does** shorten its own remaining levels, the self-exclusion quirk is gone → re-read the two meta-labs'
  level-1 times and re-order the pair (with self-acceleration the speed line dominates even more clearly).
- If a lab-speed relic and the research bonus **add** (1.25 + 1.98 = 3.23 rather than ×3.725), rebuild the effective-time
  column as `base ÷ (1 + Σbonuses)` — every hours-per-level figure here uses the product form.
- If a **> 360-day** lab’s rush price is **more than 25 000** gems, the flat tail became proportional ⇒ the “rush the long
  lines first” ranking changes; recompute `gems/day = price ÷ days` for each bucket before re-ordering.
- If the Lab list’s **category counts** differ from §census (e.g. Utility shows 13 instead of **12**), a lab was added or a
  milestone gate is unclaimed — the census is the quickest way to spot a missed unlock, and one added line shifts every
  “Σ levels per season” estimate in this doc.
- If `Second Wind Blast` level 4 is not **75 M** (or level 1 is not **1.8 M**), the hand-set ladder was re-versioned → read
  the four prices and re-add them; the `25 × n` value column is independent of the prices, so the +100 % cap likely stands.
- If a Second Wind save gives something other than **50 %** HP, or the invincibility is not `5 × star + 5`, the star law is
  superseded → read stars 1 and 2 and derive the step from that pair (10 → 15 is +5 s/star).
- If a Wall lab's value column stops being arithmetic (e.g. `Wall Health` level 2 reads something other than **+4 %**),
  the line was re-versioned → re-read levels 1–2 and derive the step from that pair; the gate/level-count table is the
  part that shifts the Σ estimates.
- If the Wall's rebuild time can go **below 150 s**, the floor changed → re-derive the six-source reduction budget
  (1 200 − floor) before comparing rebuild builds.
- If `Reroll Shards` costs rise at a steady ratio after level 3 (rather than the printed 3.24 / 4.77 / 2.86 / 2.15 …), the
  cost column became a clean geometric → then forecast it from the first two ratios instead of using the rows.
- If T14’s average stops landing on **10.5** (e.g. always 7 or always 14), the server overrode the default drop table →
  record your min/max/mean per tier; the “server can override” caveat is the version marker.
- If a skipped wave during Intro Sprint pays **0.22×** but the plain-IS wave pays ≠ 20 %, the two rules are not
  multiplicative → re-derive §“Elite Cell income” rows 2–3 from one timed run.
- If a category’s `Σ levels` is not the §cap-table value, one line’s `Max Lv` was re-versioned (or the category gained a
  line) → read the last level of each line in that category and re-add; the Σ is the fastest integrity check because it
  moves only when a cap moves.
- If the Module category lists **12** lines in your client, the two 30-level assist lines belong to the assist page
  instead → the total is **4 633**, not 4 693 (the census’s “14” is the 12 + 2 reading).
- If an Overheat removes **15/22** levels at fully-maxed BC labs, the group labs are not additive with the generic one →
  re-derive `R_max` as `max(generic, group)` instead of the sum, and re-check the two floor values above.
- If a 30-level enemy-stat line's **times** are not the shared ladder (`2d 7h 33m … 161d 9h 28m`), the constant-time
  property is version-dependent → recompute that line's Σ from its own printed rows (the per-point table uses only Σ).
- If `Lightning Amplifier - Scatter` level 2 costs **125 B** (×1.25) rather than **150 B** (×1.5), or its level-2 time is
  not **9 d 8 h** (= `8 d 8 h × 1.12`), the closed forms are superseded → rebuild from the two printed ratios; the value
  column `1.25 × n` is independent of both.
- If a T19 enemy lab's cost column grows geometrically (**L2 = 0.375 q**, L3 = **0.5625 q**) instead of the printed
  **L2 = 0.50 q**, L3 = **0.75 q**, the trio left the arithmetic shape → its Σ becomes
  `0.25q × (1.5^30 − 1)/0.5 = ` **95 875 q** instead of **116.25 q** (an **825×** difference), so re-rank it against the
  T9 lines before queuing.
- If the elite spawn table’s 0.33 % row does **not** halve-ish per tier (e.g. T2 reads something other than **450**), the
  0.9 compression is version-dependent → recompute the band starts from the two printed tiers’ ratio and keep the
  step-function sum (§“The wave laws” ③ needs only the band starts).
- If the fleet module-shard column jumps by **2** at some wave band (6 → 8), the `5 + (wave − 1)/250` line was re-binned →
  read the band edges and rebuild the arithmetic; the reroll-shard column is independent of it.
- If a T1 run to W1 000 yields far more than **2** elites, either the run passed W500 twice (Intro Sprint re-counts) or the
  band function is per-run rather than cumulative → log the elite counter against the wave counter in one run.

## Sources

- Tower Hub `wiki/enemy/common-enemy-labs` · `fast-enemy-labs` · `protector-labs` · `vampire-labs` · `ray-labs` ·
  `scatter-labs` (last verified **2026-11-01**, `ray-labs` 2026-07-29) — the per-level `Level | Time | Cost | Value`
  rows behind §enemy-stat layer: Common 20.00 B → 2.40 T with **−0.40 % … −12.00 %**, Fast 30.00 B → 2.70 T,
  the 60-B line 60,000,000,000 → 3,600,000,000,000, Protector 40.00 B → 3.29 T and its Damage-Reduction twin
  80.00 B → 1.77 T (**20** levels, “unlike the other two protector labs”), Vampire/Ray/Scatter **0.25 q → 7.50 q**
  all at **T19 W60**, and `Lightning Amplifier - Scatter` (**T16 W60**) with `×1.25 … ×37.5` and
  **100.00 B → 12.78 q**; plus the pages’ own “Labs for Basic, Fast, Tank and Ranged Health and Attack: 30 levels, up to
  -12 %” summary line and the caution that researching enemy-stat labs breaks the default ratios between enemy types.
- Tower Hub `wiki/workshop/enemy-level-skip` (last verified **2026-11-01**) — the two **20**-level `* Level Skip` labs with
  their `0.10 … 2.00` value column (**900,000,000 → 152.29 B**, `0d 16h 40m → 17d 7h 20m`), which is the step the §cap
  table left open; full ledger in [T024](T024-enemy-level-skip-ledger.md).
- Tower Hub `wiki/enemy/enemies` (last verified **2026-11-01**, 16 data tables) + `wiki/enemy/elite-enemies` (2 data
  tables) — the Elite spawn grids behind §“The wave laws”: eleven chance rows with their T1 bases
  (500 / 1 000 / 1 500 / 2 000 / 3 000 / 4 000 / 5 000 / 6 000 / 7 000 / 8 000) and the tier columns that re-add as
  `× 0.9^(T−1)`; plus the printed elite rules (1 per wave early and 2 later, **8** on screen per type with Scatter children
  excluded, immune to Orbs / Death Ray / Shockwave / Black Hole) and the two-page floor-vs-round offset from T16.
- Tower Hub `wiki/enemy/fleet-enemies` (last verified **2026-11-01**, 5 data tables) — the fleet reward table (reroll shards
  **1 080 → 2 100** for T14 → T21, module shards **5 → 25** by wave band, split 80 % / 20 % with 5 % per type), the spawn
  tables (**T1–T13**: first spawn `15 000 − 250·(T−1)` at frequency **100**; **T14+**: first wave 2 495 / 1 495 / 995 /
  495 / 95 / 45 / 5, bonus-spawn column `11 750 − 250·(T−14)`), the fixed companion pairs (Overcharge+Ranged,
  Commander+Tank, Saboteur+Fast), the per-type behaviours (Saboteur de-levels one UW per tower hit, Commander pulses
  ×1.15 health/mass/speed up to 8, Overcharge multiplies its projectile ×1.4 per hit) and the tool-coverage list
  (half-strength: Chrono Field / Chrono Loop / Thunder Bot / both stuns; no connection: Orbs, Death Ray, Shockwave,
  Knockback, Black Hole damage and pull; Plasma Cannon cannot select them).
- Tower Hub’s eleven `wiki/lab/lab-category-<name>` pages (fetched **2026-11-02**) — the per-line `Max Lv` list for
  Main (15 rows), Attack (9), Defense (16), Utility (12), Ultimate Weapon (39), Card (10), Perk (9), Bot (8), Enemies
  (21), Battle Condition (5) and the Module page’s 12: the §cap table is transcribed from those tables, including the
  two **20**-level `Enemy Attack/Health Level Skip` lines, the **20**-level `Protector Damage Reduction`, the
  **8**-level `Ban Perks` and the BC caps **10 / 20 / 20 / 10 / 10**.
- Tower Hub `wiki/bot/flame-bot` + `wiki/bot/amplify-bot` (last verified **2026-11-01**) — the lab tables’ three-column
  rows (`Level | Time | Cost | Value`) that give both clock laws: Burn Stack 43.00/64.50/96.75/145.12/217.69 T with
  45 d 15 h · 52 d 11 h 15 m · 60 d 8 h 8 m · 69 d 9 h 21 m · 79 d 19 h 10 m (value 1…5), and the Duration lab’s
  L5–L10 (506.25 B/14 d 13 h 48 m · 759.38 B/16 d 18 h 16 m · 1.14 T/19 d 6 h 37 m · 1.71 T/22 d 4 h · 2.56 T/
  25 d 11 h 48 m · 3.84 T/29 d 7 h 34 m, value +0.5 s per level) — “Showing 10 of **20** rows” ⇒ 20 levels.

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
- Tower Hub `wiki/lab/lab-upgrades` (2026-07-29, 4 data tables) — the **complete lab list by category with `Max Lv`**
  (the 158-lab census in §census: 15/9/16/12/39/10/9/8/21/14/5 and the per-line caps 99 / 100 / 50 / 30 / 25 / 20 / 15 / 5 …),
  “you start with a single lab slot … up to a maximum of five … buying all of them costs **4 900** gems”, the
  **gem-rush table** (1 h **7.5** / 1 d **163** / 1 w **1 000** / 30 d **3 550** / 90 d **8 000** / 360 d **25 000** /
  **> 360 d = 25 000**) with its `Gems/Day rate` and `Discount` columns, “gold-boxing … adds **0.015×** to your gem
  efficiency, stacking additively”, and the boost table’s `Cost One lab` / `Cost All labs` / `Effective time skip` columns.
- Tower Hub `wiki/lab/second-wind-labs` (last verified **2026-11-01**, 2 data tables) — `Second Wind Blast` “unlocked
  through Milestones at **tier 3 wave 150** … The lab has **4 levels**” with its Level/Time/Cost/Value rows
  (1 d 3 h 47 m · **1,800,000** · 25 % … 3 d 11 h 20 m · **75,000,000** · 100 %), and `Recharge Second Wind` “unlocked …
  at **tier 14 wave 60** … allows it to recharge and become available again a set number of waves after it activates …
  **7 levels**” with its seven rows (550.00 B → **3.60 T**, value **2,000 → 400**); “**Once per round Second Wind revives
  the tower at 50% health, respawns the Wall and grants invincibility** for a set time. Second Wind invincibility by
  star 1-7: **10, 15, 20, 25, 30, 35, 40 s**”.
- Tower Hub `wiki/lab/wall-labs` (2026-07-29, 6 data tables) — the six Wall labs with their milestone gates
  (“**Wall Health and Wall Rebuild** … at **tier 8 wave 10**; **Wall Regen and Wall Thorns** … at **tier 10 wave 70**;
  **Wall Invincibility** … at **tier 12 wave 10**; **Wall Fortification** … at **tier 14 wave 60** and has **60 levels**”),
  the per-level tables, the “requires **Wall Regen** to heal any health above the maximum” dependency, and “Base rebuild
  time is **1,200 s** and can never go below **150 s**; sources are Workshop, lab, module substats, Vault, relics and
  **Fortress Mastery**”.
- Tower Hub `wiki/lab/lab-garlic-thorns` (2026-11-01) — “You unlock Garlic Thorns by reaching **wave 1000 on tier 2**. The
  lab has **10** upgrade levels”, the ten Level/Time/Cost/Value rows (4,500 → 459,900 coins; 0.5 → 5.0), and the mechanic
  (Vampires take a % of thorns damage **per second while channeling** their ranged attack, which normal thorns do not).
- Tower Hub `wiki/enemy/boss-labs` (2026-11-01) — `Boss Health` and `Boss Attack`, both “unlock in Milestones at
  **tier 9 wave 20** … **30 levels**”, the −0.30 %/level column with 40.00 B → 421.14 B, and the caution that enemy-stat
  labs break the base relationships (“boss health will no longer reliably sit at **twenty times** basic enemy health”).
- Tower Hub `wiki/module/module-labs-reroll-shards` (2026-11-01) — “unlocked through Milestones by reaching **wave 70 on
  tier 4** … **100 levels**, and each level adds **one extra reroll shard per boss drop**”, the ten printed rows
  (900,000 → 755,277,021 coins), and “**Shattering a Rare gives 10 shards**; shards are typed by module type. Vault:
  **Module Reroll Discount +2.5 % per level, 8 levels (+20 %, 180 keys)**”.
- Tower Hub `wiki/currency/currency-elite-cells` (last verified **2026-11-01**) — the T14–T24 min/max/average table
  (10 rows, all re-adding; “the server can override them”), the three drop-enemy types and the zero-drop list, the
  **1.1×-even-during-Intro-Sprint** skip rule, the full boost-cost ladder (**15 … 1 000 000** cells/h) with
  “`(multiplier − 1) × hours` saved”, the four multiplier ladders with closed caps (DW lab 20 lv → ×3.0, Bonus Cells
  25 lv → ×2.5, Cells card T4 W40 +2/lv → +14, Cells Mastery 1 000 stones ×1.05→×1.32 v29), and the Cells/Kill
  enhancement gate (**500 B** Utility spend) + its 10 printed prices with the cumulative **1.42 T**.
- Tower Hub `wiki/currency/currency-coins` (2026-11-01) — the **Coin Bonus** enhancement (gate **50 B** Utility spend,
  ×1 + 0.01/lv, L300 = ×4, “applies to both the tier bonus and Coins/Kill → effective benefit is **squared**”), the
  four coin sources (kills pay on every type *except* Basic), and the tier/farm-depth advice line.
