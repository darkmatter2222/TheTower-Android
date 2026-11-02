# T011 — Tune the Perk engine: more picks per run, deterministic picks

Rev: 6 (2026-11-02) - the **per-tier perk bill** added: the required condition levels sum to **0 through Tier 13**, then
**146 / 242 / 328 / 428 / 585 / 735 / 890 / 1 056** picks for Tiers 14 → 21, and **every printed marginal re-adds from the
family steps** (+10 lines, +15 Ultimate lines, +5 `ELS Reduction`, plus the new lines' entry levels) - 8/8 exact, e.g.
T18 = 6·10 + 2·15 + 5 + **2** (More Bosses 3→5) + 60 = **157**. Converted with the pick-rate table, the Tier-14 bill costs
**29 200 / 9 125 / 4 424** waves at 5 / 16 / 33 picks per 1 000 waves (**6.6×** for a tuned engine).
Rev: 5 (2026-11-02) - the **printed perk values** added (§1.⑦): 200-wave cadence, the three early picks and their stacks
(3 / 1 / 5), the **x45.6** Health-Regen ceiling, the **16.111x** defense identity re-adding from `0.145 / 0.009`, and the
**T2 W150** / **T2 W1000** gates (the latter lighting `First Perk Choice` **and** `Garlic Thorns` together).
The **operating rules** from `wiki/guide/guides-thinking-about-perks` follow as §1.⑧: Option Quantity **1** at **200 M**
first, then bans; the coin-run and milestone-run priorities; the printed priority templates with their perk counters
(**3** PWR … **41** UW); pool thinning via a useless UW perk; and the four footguns (Waves Required past **L10**, Auto Pick
before the other labs, `First Choice` not covering trade-offs).
Rev: 4 (2026-11-02) - `wiki/system/perks` (2026-11-01) is a **second copy of every printed ladder** (the §1 Σ figures
reproduce: `Waves Required` **2.42 B**, `Standard Perk Bonus` **3.63 B**, `Improve Trade-Off` **17.26 B** for the first ten
levels) **plus** four things this doc did not have: the **two standard-perk laws printed as formulas** with the site's own
worked example that re-adds (`(200 − 3) × (1 − 0.648) = 69.344 → 69` ✓), the **Quantity 5 cap** on every standard perk, the
full **perk value tables** (standard 15 rows / UW 9 rows / trade-off rows) including the **nine-UW stone ladder that sums to
10 638 stones**, and a **category-odds skew** (65 / 20 / 15 here vs 68 / 20 / 12 before — both sum to 100 %, §1.3).
Rev: 3 (2026-11-02) — the **coin budget level by level** added (what the first 10 levels of each perk lab cost and how many
days of a slot they eat), the **`Auto Pick Ranking` > `First Perk Choice` precedence** confirmed with the source's worked
example (**H006 resolved**), and the `Improve Trade-Off Perks` exclusion (the ranged-enemy trade-off perk is not boosted).
Currency: **Coins** (primary), Cash, Experience — every pick is a run-multiplier, so pick *count* is the compounding lever.
Status: **Verified (arithmetic, Rev 5)** — every Σ in §1 re-adds from the printed per-level prices (**2.42 B · 3.63 B ·
17.26 B** for the first ten levels), the wave formula reproduces the source's own worked example (**69** ✓ from
`(200 − 3) × (1 − 0.648) = 69.344`), and the ladders now stand on **four** sources (fandom `Perks`, game-vault, Tower Hub's
milestone-linked lab pages, `wiki/system/perks` 2026-11-01, and `wiki/guide/tier-specific-guide` for the printed perk
values of §1.⑦ whose `0.145 / 0.009` reproduces the printed **16.111×** exactly); the one open read is the value-column
convention (§4) and the defense-term order (**H055**).

| | |
|---|---|
| **Value** | ★★★★ — a tuned engine gives **3.2× more perk picks** in a 1,000-wave run (5 → 16) and each pick is itself a multiplier. One pick (`Increase Max Game Speed`) alone is +20 % waves/min. |
| **Confidence** | **Medium** — two independent wikis (game-vault, fandom) publish the same formula, the same lab tables and the same 200/250/300/350 step points; the arithmetic below is deterministic from them. Not yet checked against a live save. |
| **Ease** | One-time setup: **~10 taps** across the Lab and the Perks panel, plus **1 tap** per run. 5–10 min. |
| **Prerequisite tier** | Tier 2 Wave 150 milestone (`Unlock Perks` lab). Full engine needs Tier 6 Wave 10 (`Auto Pick Ranking`; the last one in the list). |

---

## 1. The mechanics that make this worth doing

Perks are earned every *N* waves, where **N is not fixed** — it is a formula you control:

```
N = floor( (BaseWaves − WavesRequiredLab) × (1 − PWRqty × 0.20 × (1 + SPB/100)) )
```

* `BaseWaves` = 200 for picks 1–20, **250** after 20 picks, **300** after 30, **350** after 40.
* `WavesRequiredLab` = level of the **Waves Required** lab (−1 per level, 100 levels).
* `PWRqty` = how many times you took the **Perk Wave Requirement −20.00 %** standard perk (max 3).
* `SPB` = level of the **Standard Perk Bonus** lab, in % (25 levels ⇒ 25 %).
* The formula gives the gap for the *first* pick at each base; the gap is then just repeated.

Anchors, from the fandom page: with no lab/perk help the 1st pick lands at wave **200**, the 20th at **4 000**, the 30th at **6 500**, the 40th at **9 500**, and all **79** perks by wave **23 150**.

Two properties matter for efficiency:

1. **`Perk Wave Requirement` is retrospective.** Take it late in a run and the game recomputes the schedule — the waves you already cleared pay out extra picks immediately. It is the only perk whose value is paid backwards, which is why it is always the first pick.
2. **Unpicked perks queue.** If a pick becomes ready while the phone is idle, it waits; reaching the next one while one is pending queues both, and you drain them together when you return. Nothing is lost to idle time, so long AFK runs are safe.

### Pick count you can expect (formula-derived)

`L` = Waves Required lab, `q` = PWR perk count, `SPB` = lab %.

| Setup | interval | picks @ 1 000 w | picks @ 3 000 w |
|---|---|---|---|
| Untuned (`L=0, q=0, SPB=0`) | 200 w | **5** | 15 |
| Casual (`L=10, q=1, SPB=5`) | 150 w | 6 | 20 |
| Active (`L=20, q=3, SPB=10`) | 61 w | **16** | 40 |
| Solid (`L=30, q=3, SPB=20`) | 47 w | 20 | 47 |
| Late (`L=50, q=3, SPB=25`) | 37 w | 25 | 55 |
| Near-max (`L=100, q=3, SPB=25`) | 24 w | 33 | 66 |

Read it as: **`Waves Required` lab + 3× PWR + `Standard Perk Bonus` ≈ 3.2× the picks** of an untuned run, and the SPB lab multiplies every one of those picks again (multiplicative perks: `(1 + base × qty) × (1 + SPB)`; additive perks: `base × qty × (1 + SPB)`). SPB does **not** apply to Bounce Shot or Orbs.

### Why the option-count lab is high value (probability table)

Each offer slot is rolled independently: **68 % standard / 20 % Ultimate-Weapon / 12 % trade-off** (if no UW perk can appear: 85 % / 15 %). So the chance an offer contains *at least one* standard (i.e. non-trade-off) perk:

| Choices in the offer | ≥1 standard | ≥1 UW perk |
|---|---|---|
| 2 (base) | 89.8 % | 36 % |
| 3 (`Perk Option Quantity` L1) | 96.7 % | 49 % |
| 4 (`Perk Option Quantity` L2) | **99.0 %** | 59 % |

The offer set for each pick is **fixed for the run — there is no perk reroll**, so the only way to improve the menu is more slots and bans. That is why `Perk Option Quantity` is the cheapest quality-per-gem in the whole perk tree.

### The printed perk tables (second source, `wiki/system/perks`, 2026-11-01)

**Category odds, as printed:** standard **65 %** / Ultimate-Weapon **20 %** / trade-off **15 %** (Σ = 100.0 % ✓). The
earlier copy of this page printed **68 / 20 / 12**; both are internally consistent and both give the same decision, so the
two probability rows sit side by side: with **65 %**, the chance an offer contains ≥ 1 standard perk is **87.8 % / 95.7 % /
98.6 %** for 2 / 3 / 4 slots (with 68 %: 89.8 / 96.7 / 99.0 %).

**Standard perks — every row prints `Quantity 5`** (the per-run cap on any one standard perk), value column as printed:

| Perk | Value | | Perk | Value |
|---|---|---|---|---|
| Game Speed | ×1.20 | | Cash Bonus | ×1.75 |
| Max Health | ×1.15 | | Health Regen | ×1.75 |
| Damage | ×1.15 | | Interest | ×1.50 |
| All Coin Bonuses | ×1.15 | | Land Mine Damage | ×3.50 |
| Defense Absolute | ×1.15 | | Free Upgrade Chance for All | +5.0 % |
| Defense Percent | +4.00 | | (5 more rows behind “Showing 10 of 15 rows”) | |

The two laws the page prints (§1's math block) reconcile several of these at `Quantity = 5`: a multiplicative line is
`(1 + base × 5) × (1 + SPB)`, so a per-pick base of **0.15** ⇒ **×1.75** and **0.10** ⇒ **×1.50** ✓ exactly the two
currency rows above, and **0.05** ⇒ **1.25** for Game Speed with a maxed SPB lab — the page's own note “the Game Speed perk
increases to **1.25**, bringing the maximum game speed to **6.25** (displayed 6.3)” ✓. ⇒ *the value column is the run total
at Quantity 5, not the per-pick step* (the one device read that would falsify this is in §4).

**Trade-off perks** (`Quantity 1` each, benefit side raised by the `Improve Trade-Off Perks` lab, which explicitly does
**not** boost the ranged-distance one): **×1.80 coins / tower max health −70 %** · **×12.00 Cash per Wave / kills give no
cash** · ×1.50 tower damage / bosses 8× health · enemies −50 % health / regen+lifesteal −90 % · enemies −50 % damage /
tower −50 % damage · ranged distance reduced / ranged enemies ×3 damage · enemy speed −40 % / enemy damage ×2.5 · tower
regen ×8.00 / max health −60 % · boss health −70 % / boss speed +50 % · lifesteal ×2.50 / knockback −70 %. The two currency
rows are **#1 (×1.80 coins)** and the **×12.00 Cash/Wave** pair — the latter is the biggest single cash lever in the run
engine, and it is the one to *ban away* only in a coin-maximising preset ([T001](T001-interest-idle-engine.md)).

**UW perk table + the stone ladder** (nine rows, `Quantity 1` per UW perk): `More Smart Missiles 1`, `Swamp Radius ×1.5`,
`+1 Wave on Death Wave 1`, `Extra Set of Inner Mines 1`, `Golden Tower Bonus ×1.5`, `Chain Lightning Damage ×2`,
`Chrono Field Duration +5 s`, `Black Hole Duration +12.0 s`, `Spotlight Damage Bonus ×1.5`; the same page's UW table
prints the **stones-to-max** per weapon — ILM **600**, CL **700**, PS **715**, SM **741**, BH **984**, DW **1 009**, GT
**1 639**, CF **1 824**, Spotlight **2 426** ⇒ **Σ = 10 638 stones** for all nine (the bill used in
[T008](T008-uw-sync-with-stones.md)). The random-UW perk grants a *semi-upgraded* weapon and does **not** unlock its labs,
and it leaves the pool once all nine are owned.

**Table-reading note:** lab tables print one row per level (`“Showing 10 of 100 rows”` on the 100-level `Waves Required`
line), unlike the bot tables (`+1`) and the chip tables (`+2`).



### The coin budget, level by level (printed ladders + Σ)

Times are the **cumulative** base time of that line's own levels (before `Labs Speed`/relics, T006 §meta-labs).

| Lab | L1 | L2 | L3 | L5 | L10 | **Σ L1–L10** | Σ time |
|---|---|---|---|---|---|---|---|
| `Waves Required` (100 lv, −1 w/lv) | 100 K | 220 K | 940 K | 20.98 M | **1.18 B** | **≈ 2.42 B** | 10 d 4 h |
| `Standard Perk Bonus` (25 lv, +1 %/lv) | 100 K | 280 K | 1.36 M | 31.42 M | **1.77 B** | **≈ 3.63 B** | 3 d 7 h |
| `Auto Pick Ranking` (32 lv, +1 rank/lv) | 100 K | 180 K | 878 822 | 15.66 M | **591.04 M** | **≈ 1.29 B** | 10 d 4 h |
| `Improve Trade-Off Perks` (10 lv, +1 %/lv) | 600 M | 700.03 M | 801.18 M | 1.05 B | **4.92 B** | **≈ 17.3 B** | 8 d 11 h (L10) |
| `Ban Perks` (8 lv, +1 ban/lv) | 10 M | 100 M | 1.00 B | 100.00 B | — | **1.101116 q** (all 8) | 333 d 8 h (L8) |

Single-level lines: `Unlock Perks` **1.50 M** / 3 d 11 h 20 m · `First Perk Choice` **1.00 B** / 4 d 15 h 7 m ·
`Auto Perk Pick` **100 M** / 4 d 23 h 27 m · `Perk Option Quantity` **200 M** (+1) then **2.00 B** (+2, 10 d 4 h 27 m).

**Reading the ratios:** `Waves Required`, `Standard Perk Bonus` and `Auto Pick Ranking` all start at **100 K coins for the
first level** — the cheapest first levels in the entire lab tree — and each level after that is ~×2–5 dearer (the two double-sourced lines share the **same tail shape**: level-to-level
ratios **3.01 / 2.48 / 2.16 / 1.95 / 1.80** on `Waves Required` and **3.01 / 2.48 / 2.16 / 1.95 / 1.80** on
`Standard Perk Bonus` — so lab costs are a per-lab table, *not* one geometric law the way the bot labs are, T006), so **the first
10 levels of those three lines ≈ 7.3 B coins buys essentially the whole engine effect** (interval 61 w ⇒ 16 picks per
1 000 waves). `Ban Perks` is the outlier: it steps in **decimal** blocks (10 M → 100 M → 1 B → 15 B → 100 B → 1 T →
100 T → 1 q), so bans 6–8 cost more than everything else combined — take **5 bans** (≈ 116 B coins) and stop.
The two ×1.00-B single levels (`First Perk Choice`, `Perk Option Quantity` L1 at 200 M) are the cheap quality wins; `Perk
Option Quantity` L2 at **2.00 B** is the single priciest quality-per-coin step before the Ban tail.

**⑦ The printed perk values and the 16.111× defense identity** (`guide/tier-specific-guide`, last verified 2026-07-29).
Cadence, gates and the best early picks are all printed:

| Printed fact | Value | Where it bites |
|---|---|---|
| Raw perk cadence (no labs) | a forced pick between **2** options every **200** waves | §1.1's base interval |
| Perks reset at the end of a run | yes (“each attempt unique”) | no permanent perk stock |
| Perks in tournaments | **none at all** | §“the 16.1× note” below |
| Gate for the Perks lab | **Tier 2 Wave 150**, **3 days** of research | T019's milestone row |
| Gate for `First Perk Choice` **and** `Garlic Thorns` | **Tier 2 Wave 1000** (one milestone, both labs) | T006 has Garlic Thorns' ladder |
| `−20 % Perk Wave Requirement` | stacks **3** times | the cheapest picks-per-run lever |
| `−50 % damage dealt / −50 % damage taken` | the recommended early trade | orbs/thorns builds |
| `Defense +5 %` | stacks **5** times | the damage-reduction core |
| `Health Regen` from perks | up to **×45.6** | the most valuable perk stat |
| Damage from a full decent perk set | only ≈ **+80 %** | why perks favour a defensive build |

**The defense identity (arithmetic ✓).** The page prints: without perks the `Defense %` cap is **85.5 %**, and the perk
layer (+25 pp of defense, a −55 % enemy-damage cut) lifts the total to **99.1 %**, “which means you take **16.111×** more
damage than at 99.1 %”. The ratio re-adds exactly from the two printed percentages:

```
(1 − 0.855) / (1 − 0.991) = 0.145 / 0.009 = 16.1111…   ✓ the printed 16.111x
```

so *every point of Defense % above the 85.5 % cap is worth ~111× its face value at the top end* — the reason the perk labs
rank ahead of nearly every other coin sink in §1, and the reason the tournament build (no perks ⇒ floor **0.145** incoming)
is a DPS build while the farm build is defensive (T014 §“bracket build”). How the two perk contributions compose into
exactly **99.1 %** is not printed (neither `85.5 + 25` nor `1 − 0.145 × 0.45` lands there) → **H055**.

**⑧ The printed operating rules (`wiki/guide/guides-thinking-about-perks`, last verified 2026-11-01).** Same
mechanics, operational form, plus four footguns with prices attached:

| Printed rule | Value | Note |
|---|---|---|
| First essential buy | `Perk Option Quantity` **L1 = 200 M** ⇒ **3** options | matches §1's ladder exactly |
| Then | `Ban Perks` (cheap) — dead-weight trade-offs first, long-investment perks (the investing perk) in ban slot **3–4** | the ban tail is priced in §1 |
| Coin-run priority | `Perk Wave Requirement` **first** (not guaranteed to reach all 3 copies even with 4 options + first pick, “especially if your maximum wave is still under 2 000”) | §1.②'s law |
| Coin-run second tier | high tier, short runs → the coin trade-off; low tier, long runs → **distance** perks: `Free Upgrade Chance`, `Game Speed`, the **−50/−50** trade-off | the split is printed |
| Milestone-run priority | PWR → `Free Upgrades` (target in the thousands of waves) → funnel levels into **Critical Factor / Bounce Range / landmine radius / damage-per-metre**; if owned, prioritise **Super Crit** and the enemy attack/health **skip** (their costs climb quickest) | the workshop-level arbitrage |
| Short milestone push | **skip** Free Upgrades; use `Defense %`, `Health`, `Damage` | — |
| Pool thinning | take the **useless UW perk** on purpose: one boost perk per ultimate, so it leaves the pool | the only rival is PWR |
| Pool-thinning cap | after **20** perks held “the gap between picks grows” | check the panel before relying on it |
| `Cash` trade-off perk | cash/wave **×12**, **no** cash from kills | pairs with T002's CPW/CPK split |
| `Standard Perk Bonus` | **25** levels, **0 % → 25 %** | **+1 pp/level** ✓ same ladder as §1 |
| `Boss Speed/Health` perk | boss health **−70 %**, boss speed **+50 %** | the tournament/DPS perk |

**Priority templates (printed, “perks taken” counters assume ideal picks at max quantity):** standard route
**(3)** PWR → **(4)** the −50/−50 → **(5)** game speed → **(10)** free upgrades → **(17)** coin perks (the ×1.8 coin and
Golden Tower ×1.5) → **(23)** Defense % → **(28)** Damage ≈ **(33)** Health → **(41)** UW perks. Front-loaded utility route:
**(3)** PWR → **(4)** game speed → **(17)** single-quantity perks (the −50/−50, ×1.8 coin, all UW perks) → **(22)** Bounce
or Orb. Both are “starting templates”, and the counter in brackets is exactly the `Waves Required` law of §1.② evaluated
at that perk index — a quick sanity check on the panel.

**The four printed footguns.** ① `Waves Required` (the lab) “offers little appeal past **level 10**”; ② `Auto Pick Perks`
is costly, needs multi-stage preparation, and “only earns its place after your other perk labs are already levelled”;
③ `First Choice` **does not cover Trade-off perks** — “you cannot use it to cheese the 1.8 coin trade-off”; ④ freshly
unlocked perks are two-option gambles, and “at this stage your lab slots are precious” (i.e. Option Quantity 1 before
anything else).

---

### The per-tier perk bill (the condition levels each tier demands, `wiki/system/tiers`)

Every battle condition line in the **Perks** screen is printed with a **required level** per tier, and one pick = one level
(the SPB lab only multiplies the *value* of the level, never the count), so the sum of the required levels **is** the number
of perk picks the tier costs. Adding the printed columns up:

| Tier | Coin bonus | Condition lines | **Σ picks required** | Marginal picks | Bonus per marginal pick |
|---|---|---|---|---|---|
| 1–13 | 1 → 14.7 | **0** | **0** | — | — |
| 14 | 17.6 | 6 | **146** | +146 | 0.0199 |
| 15 | 21.3 | 8 | 242 | +96 | **0.0385** |
| 16 | 25.2 | 9 | 328 | +86 | **0.0453** |
| 17 | 29.1 | 10 | 428 | +100 | 0.0390 |
| 18 | 33 | 13 | 585 | +157 | 0.0248 |
| 19 | 40 | 14 | 735 | +150 | **0.0467** |
| 20 | 48 | 15 | 890 | +155 | **0.0516** |
| 21 | 60 | 17 | **1 056** | +166 | **0.0723** |

**The marginal bill decomposes exactly** (every one of the eight printed marginals re-adds), because each line family has
its own step: `marginal = (10 × count of the +10 lines still below their 95 cap) + (15 × count of Ultimate lines) +
5 (ELS Reduction) + ΔMore Bosses + the entry levels of the new lines that tier introduces`:

- **T15 = 96** = 4 × 10 (Orb, Death Ray, Thorns, Plasma) + 5 (ELS) + 1 (More Bosses 1 → 2) + **50** of new lines
  (Knockback 40 + Armored 10).
- **T16 = 86** = 6 × 10 + 5 + 1 + **20** (Protector's) · **T17 = 100** = 6 × 10 + 15 + 5 + **20** (Tank's, with
  More Bosses parked at 3 → 3 for 0).
- **T18 = 157** = 6 × 10 + 2 × 15 + 5 + **2** (More Bosses 3 → 5, the only +2 step) + **60** (Scatter + Ray + Vampire at 20
  each) — the most expensive step in the ladder, because three lines enter at once.
- **T19 = 150** = 2 × **5** (Orb and Death Ray now only climb 90 → 95) + 4 × 10 + 5 × 15 + 5 + **20** (Fast's) ⇒ note the
  two 95-capped lines start contributing **5** instead of 10, and stop contributing entirely from T20.
- **T20 = 155** = 4 × 10 + 6 × 15 + 5 + **20** (Boss's) · **T21 = 166** = (10 + **5** + 10 + 10) + 7 × 15 + 5 + **21**
  (Basic's 20 + Mass Enforcement 1).

**Turn the Σ into waves** with the pick-rate table above (`picks per 1 000 waves`): the same bill in cumulative waves —

| Σ picks | untuned (5 / 1 000 w) | Active (16 / 1 000 w) | Near-max (33 / 1 000 w) |
|---|---|---|---|
| **146** (Tier 14) | 29 200 w | **9 125 w** | **4 424 w** |
| 585 (Tier 18) | 117 000 w | 36 563 w | 17 727 w |
| **1 056** (Tier 21) | 211 200 w | 66 000 w | 32 000 w |

⇒ **the perk tuning in §1 is worth ≈ 6.6× the wave-budget of an untuned account on the same tier ladder**, and through
Tier 13 the bill is literally zero, so every early pick can go to the coin-percentage perks of §“the printed perk tables”
without delaying a tier unlock. Two planning rules follow: **buy the Ultimate lines in 15-blocks and the +10 lines in
10-blocks** (a level between the steps is never needed), and **a tier that introduces several lines at once is the expensive
step** — T18 (three new lines, +157) is worse value per pick than T16 (+86) even though both raise the bonus by less.

## 2. Step-by-step (UI only)

### A. One-time: unlock the perk tree

1. Home screen → tap the **Lab** button (flask icon).
2. Tap an empty lab slot → the **Lab Search** bar appears at the top of the slot picker → type `Perk`.
3. Queue **`Unlock Perks`** (unlocks at Tier 2 Wave 150; 1 level, 1.50 M coins, 3 d 11 h). Nothing else in the Perk category is visible until this finishes.
4. After it completes, the same search now lists the rest. Queue in this order (each is gated by the tier milestone shown):

| Priority | Lab | Milestone gate | Levels | What it buys you |
|---|---|---|---|---|
| 1 | `Waves Required` | after Unlock Perks | 100 | −1 wave per level → **more picks**, cheapest per level early |
| 2 | `Standard Perk Bonus` | after Unlock Perks | 25 | +1 % per level → multiplies *every* pick, incl. PWR itself |
| 3 | `Perk Option Quantity` | **T4 W80** | 2 | +1 / +2 offer slots → 99 % standard-perk coverage |
| 4 | `Auto Pick Perks` | **T4 W50** | 1 | hands-free picking (100 M coins, 4 d 23 h — cheap) |
| 5 | `Auto Pick Ranking` | **T6 W10** | 32 | makes Auto Pick deterministic instead of top-choice |
| 6 | `Ban Perks` | **T5 W40** | 8 | removes 8 perks from the pool permanently |
| 7 | `First Perk Choice` | **T2 W250** | 1 | guarantees one perk in the first offer (1 B coins) |
| 8 | `Improve Trade-Off Perks` | **T2 W400** | 10 | +10 % to trade-off benefits at L10 |

   Use the small **clock icon** left of the lab progress bar (**Auto Research**) so the next level of the same lab starts automatically — that keeps slot 1 from idling between levels (see T006).
   Note: before any perk lab, the *Main Research* **`Game Speed`** lab (Tier 1 Wave 30, 7 levels, `x5.0` at L7) should be maxed — it multiplies every wave of every run, and the `Increase Max Game Speed` perk only extends that cap.
   While a level is running, tapping the lab lets you switch research: coins are refunded and the elapsed time is kept as a green bar, but you pay the coins again — so *do not* switch a `Waves Required` level mid-flight unless the new one is also in your priority list.

### B. One-time: program the picks (only outside a run)

Bans, the First Perk Choice and the ranking **cannot be changed while a run is in progress**. Do all of this on the home screen with no active run.

5. Home screen → tap the **Perk button** (top-right corner) to open the **Perks panel**.
6. If `First Perk Choice` is researched: set it to **`Perk Wave Requirement −20.00 %`**.
7. If `Auto Pick Ranking` is researched: drag your priority list to the top (ranked perks show a highlight; grey = unranked, red = banned):
   1. `Perk Wave Requirement −20.00 %`
   2. `Golden Tower Bonus x1.5` *(skip if GT is not upgraded — see T008)*
   3. `Black Hole Duration +12.0s` *(higher if GT+DW+BH are synced, T008)*
   4. `x1.15 All Coin Bonuses`
   5. `Increase Max Game Speed by +1.00`
   6. `x1.15 Cash Bonus`
   7. `x1.80 coins, but Tower Max Health −70 %`
   8. `Free Upgrade Chance for All +5.0 %`
   9. `Defense Percent +4.00` then `x1.20 Max Health` (survival tail for longer runs)
8. If `Ban Perks` is researched, ban these eight (worst-per-slot first):
   `Interest x1.50` · `x1.15 Defense Absolute` · `x1.75 Health Regen` · `Tower Health Regen x8.00, but Tower Max Health −60 %` · `x12.00 Cash Per Wave, but Enemy Kill Don't Give Cash` · `Enemies Speed −40 %, But Enemies Damage x2.5` · `Ranged Enemies Attack Distance Reduced, But Tower Ranged Enemies Damage x3` · `Lifesteal x2.50, But Knockback force −70 %`.
   Ultimate-Weapon perks can only be banned for weapons you actually own.

> Note on `x1.80 coins but −70 % Max Health`: it is the best coins-per-pick in the pool, but it shortens the run. Rank it *below* the survival perks while you are still learning a tier's wall, above them once the run length is stable.

### C. Every run

9. Start the run. Once the top **perk bar** appears, tap it once to toggle **Auto Pick Perks** on. With Auto Pick on, the game takes the **highest-ranked** perk currently on offer; if none of the offered perks is
   ranked, it falls back to the **top** slot. **Precedence (settles H006):** `Auto Pick Ranking` **overrides**
   `First Perk Choice` — with `First Perk Choice` = `Perk Wave Requirement` but `Golden Tower Bonus` ranked higher, and both
   in the opening offer, the game takes **`Golden Tower Bonus`**. So the ranking list is the only list that matters once it
   exists; keep `First Perk Choice` as a backstop for the unranked case.
   Also: `Improve Trade-Off Perks` **does not boost the ranged-enemy trade-off perk** (the source names that exclusion), so
   the trade-off line's +1 %/level skips one of the pool's entries.
10. Leave the run to its natural end — do not stop at a round number. From the table above, the tuned engine pays ~4 extra picks per additional 300 waves; those picks are where the coin rate increase comes from.
11. If you came back to a stack of pending picks, take them in one sitting — the retrospective PWR recalculation makes the PWR pick worth more the later you take it only in the sense that it then accelerates everything after it; still pick it first whenever the menu contains it.

---

## 3. Reproduction checklist

- [ ] `Unlock Perks` shows as completed in the Lab panel (flask icon, Perk category).
- [ ] In a fresh run, the first perk offer appears **before** wave 200 once `Waves Required` is level ≥ 1 (e.g. level 20 + 3× PWR + SPB 10 ⇒ first offer at wave **61**).
- [ ] Count the perk offers in one 1 000-wave run and compare with the table row matching your lab levels.
- [ ] Take `Perk Wave Requirement` at the first opportunity and watch the counter on the perk bar drop (retrospective recalculation).
- [ ] With Auto Pick enabled, the perk that is taken is the top-ranked one of the offer, not always slot 1.
- [ ] The Perks panel is not editable during a run; the same panel is editable 1 second after the run ends.
- [ ] `Waves Required` L1 reads **100 000** coins / **1 d 1 h 40 m** and its L10 reads **1.18 B** / **10 d 4 h 5 m**;
      `Standard Perk Bonus` L10 = **1.77 B** / **3 d 7 h 12 m** (the two lines price differently from L3 onward).
- [ ] **Printed values (§1.⑦):** the two-perk offer repeats every **200** waves in an unmodified run; the Perks lab cell
      is **Tier 2 Wave 150** and its research reads **3 d**; the T2 W1000 cell lights *both* `First Perk Choice` and
      `Garlic Thorns`.
- [ ] **The 16.111× identity:** the stats panel's incoming-damage figure is ≈ **16×** smaller once the defense perks are
      taken (`0.145 / 0.009 = 16.111` ✓), and in a tournament (no perks) it returns to the 0.145-fraction value.
- [ ] **⑧ prices:** `Perk Option Quantity` **L1 = 200 000 000** coins and the offer then shows **3** cards; the
      `Standard Perk Bonus` line has **25** levels whose last reads **+25 %**; `Boss Speed/Health` reads
      **−70 %** health / **+50 %** speed.
- [ ] **⑧ trade-off wording:** the `Cash` trade-off perk reads cash/wave **×12** and the Cash-per-kill line stays at 0 for
      the rest of that run; `First Perk Choice` visibly does **not** act on a trade-off offer.
- [ ] `Ban Perks` L3 reads **1.00 B** and L5 **100.00 B** (the decimal ladder), so 5 bans ≈ **116 B** coins.
- [ ] With both `First Perk Choice` and a higher-ranked perk in the opening offer, the **ranked** one is taken.
- [ ] No perk button appears in a tournament run (bracket start → the button is hidden).
- [ ] Every standard perk row shows **Quantity 5** in the panel, and the offer mix behaves like **65 % standard / 20 % UW /
      15 % trade-off** (§1.3); `Improve Trade-Off Perks` L1 = **600 M** and L10 = **4.92 B** (Σ of the first ten = **17.26 B**),
      and it leaves the ranged-distance trade-off perk's benefit unchanged.

- [ ] **The tier bill (§“per-tier perk bill”):** the **Perks** screen’s condition list shows **6** lines at Tier 14
      (50 / 50 / 20 / 20 / 1 / 5, **Σ 146**) and Tier 15 adds exactly **+96** — four lines +10, `ELS Reduction` +5,
      `More Bosses` +1, and two new lines entering at 40 and 10. Tiers 1–13 show **no** list at all.
- [ ] **Pick-rate payoff:** that 146-pick bill costs **29 200 / 9 125 / 4 424** waves at the untuned / Active / Near-max
      tunings (5 / 16 / 33 picks per 1 000 waves) — so counting your own offers per 1 000 waves places you in the table.

## 4. Falsification

- First offer lands at exactly **wave 200** even though the `Waves Required` lab is level ≥ 1 → the lab is not being applied (wrong category / not completed); the technique's table is wrong for your save.
- Taking `Perk Wave Requirement` mid-run does **not** immediately produce extra pending picks → the retrospective claim is wrong; treat the schedule as fixed and pick PWR at the first offer only.
- With Auto Pick on and `Auto Pick Ranking` researched, an obviously-ranked perk is skipped in favour of the left-most slot → `Auto Pick Ranking` is not active (needs T6 W10 milestone), so `First Perk Choice` is doing the work instead.
- A banned perk appears in an offer → bans only apply from the next run (they cannot change mid-run), or the ban count exceeds your lab level.
- Perks appear during a **Tournament** → this document's "no perks in tournaments" note is wrong.
- **Value-column convention (the one read that moves §1.3).** Take `All Coin Bonuses` **1 / 2 / 5** times in one run and
  read the coin multiplier: **+15 / +30 / +75 %** confirms the printed law `(1 + base × qty) × (1 + SPB)` (so the table's
  ×1.75 is the Quantity-5 total); **+75 % after five distinct picks of 1.15** (i.e. ×1.15⁵ = **2.01**) means the value
  column is a per-pick multiplier and every total in §1.3 must be re-derived as `base^qty`.
- `Perk Option Quantity` **L1** does not cost **200 000 000** coins undiscounted, or the offer still shows **2** cards after
  buying it → §1.⑧'s ladder moved; re-read the line's levels before re-pricing §1's quality table.
- `First Perk Choice` visibly decides a **trade-off** offer (e.g. always takes the ×1.8 coin trade-off) → the printed
  limitation is version-stale, the ban tail becomes less critical, and §1's ban ranking needs re-ordering.

- If a tier’s condition list shows a **different line count** than the table (e.g. Tier 18 prints 12 lines, not 13), the
  printed ladder was re-versioned → re-sum the panel’s required levels and take the marginals from those sums; the family
  steps (10 / 15 / 5) are a cross-check, not a law, so only the decomposition needs rebuilding.
- If **one pick grants more than one level** on some line (its level jumps by 2 per pick), the Σ is no longer the pick count
  → divide that family’s levels by its printed per-pick step before using the wave table (the Σ column itself still matches
  the panel).
- If the coin bonus the game prints for a tier is not the table’s value (e.g. Tier 14 shows something other than **17.6**),
  the two tables are from different versions → take the bonus column from the panel and recompute only the
  “bonus per marginal pick” column.

## 5. Notes / open items

- **Max game speed chain (three sources agree).** `Game Speed` is a *Main Research* lab, unlocked at the
  Tier 1 Wave 30 milestone, **7 levels**, value `x4.0` at L5 and `x5.0` at L7 — so maxing it is the single
  cheapest early speed win (1.0 M coins for the last level). Then the `Increase Max Game Speed by +1.00`
  perk (1 quantity) takes the cap to **6.00**, and a maxed `Standard Perk Bonus` lab inflates the perk to
  +1.25 ⇒ **6.25**, which the stats screen shows as **6.3** (it rounds to tenths; game-vault's "6.2" is the
  same value truncated). Caveat from the fandom `Game Speed` page: *the nominal multiplier overstates real
  throughput — x5.0 behaves closer to x4.0 and x6.25 closer to x5.* So budget **~20–25 %** extra waves/hour
  for the whole chain, not 25 % of the nominal 5→6.25 ratio. See [H008](../hypotheses/H008-duplicate-game-speed-perk.md)
  for whether extra copies of the perk are worth taking.
- Ranking dependency: `Auto Pick Ranking` (T6 W10) only appears **after** `Auto Pick Perks` is completed —
  do not look for it before that.
- The random-UW perk grants a *semi-upgraded* weapon but does **not** unlock that weapon's own lab research, and it disappears from the pool once all UWs are owned.
- See [H006](../hypotheses/H006-auto-pick-ranking-vs-first-perk-choice.md) and [H007](../hypotheses/H007-stepped-base-waves-lab-subtraction.md).

## Sources

- Tower Hub `wiki/system/tiers` (last verified **2026-07-29**) — the per-tier bill: the `Tier / Coin Bonus / Battle
  Conditions` table whose condition column is **`None` for Tiers 1–13** and whose required levels per line give the Σ-pick
  ladder (146 at Tier 14 → 1 056 at Tier 21), the per-line step families (the `X's Ultimate` lines at 20 then +15,
  `Orb`/`Death Ray Resistance` at 50 with the **+10 / 95-cap** behaviour, `Thorns`/`Plasma Cannon` +10 from 20, `Knockback`
  from 40, `Armored Enemies` from 10, `ELS Reduction` +5 from 5) and the hand-set `More Bosses` series
  (**1, 2, 3, 3, 5, 5, 5, 5**, read as the boss interval `10 − level`).
- Tower Hub `wiki/guide/tier-specific-guide` (last verified **2026-07-29**) — the printed perk values behind §1.⑦: the
  **200**-wave offer cadence with **2** options, “perks reset when a run ends”, **no perks in tournaments** (“at least 16.1×
  more damage”), the **T2 W150** gate with “a lab research that takes three days”, the **T2 W1000** gate lighting
  `First Perk Choice` **and** `Garlic Thorns`, the three recommended early perks with their stacks (**3** / **1** / **5**),
  `Health Regen` up to **×45.6**, “damage only gains about 80 % from a full set of decent perks”, and the
  **85.5 % → 99.1 %** pair whose ratio is the printed **16.111×**.
- Tower Hub `wiki/guide/guides-thinking-about-perks` (last verified **2026-11-01**) — §1.⑧: the **200 M** Option-Quantity
  entry price and its 3-option effect, the ban-order advice (dead-weight trade-offs first, the investing perk at ban slot
  3–4), the coin-run and milestone-run priorities with the named funnel targets (`Critical Factor`, `Bounce Range`,
  landmine radius, damage-per-metre, Super Crit, the enemy skips), both printed priority templates with their perk
  counters, the **20**-perk pool-thinning note, the four footguns, and the `Cash` trade-off (**×12**/wave, no kill cash),
  `Standard Perk Bonus` (**25** levels 0→25 %) and `Boss Speed/Health` (**−70 %** / **+50 %**) values.
- Tower Hub `wiki/system/perks` (last verified **2026-11-01**, 13 data tables) — the second copy of every lab ladder
  (`Waves Required` 100 levels 100 K · 220 K · 940 K · 5.26 M · 20.98 M · 63.1 M · 156.22 M · 336.94 M · 656.26 M · 1.18 B,
  Σ **2.42 B**; `Standard Perk Bonus` 25 levels … 1.77 B at L10, Σ **3.63 B**; `Improve Trade-Off Perks` 10 levels
  600 M → 4.92 B, Σ **17.26 B**; `Unlock Perks` 1 lv **1.50 M** / 3 d 11 h 20 m; `First Perk Choice` 1 lv **1.00 B** /
  4 d 15 h 7 m) **and** the law prints: the wave formula with its worked example (`(200 − 3) × (1 − 0.648) = 69.344 → 69`),
  the additive/multiplicative perk formulas, **base wave steps 200 → 250 (20 picks) → 300 (30) → 350 (40)**, the
  **2 → 4 option count**, category odds **65 / 20 / 15**, the standard-perk table (`Quantity 5` on every row), the
  trade-off table (incl. **×12.00 Cash/Wave** vs no cash from kills), the UW-perk list, the nine-UW stone ladder
  (**600 / 700 / 715 / 741 / 984 / 1 009 / 1 639 / 1 824 / 2 426** ⇒ **Σ 10 638 stones**), the “semi-upgraded weapon, no lab
  access, leaves the pool when all nine are owned” rule, the **milestone gates** (`Unlock Perks` T2 W150 · `First Perk
  Choice` **T2 W250** · `Improve Trade-Off Perks` **T2 W400** · `Auto Perk Pick` **T4 W50**) and the “set First Perk Choice
  outside a run, from the top-right of the home screen” note.

- https://the-tower-idle-tower-defense.game-vault.net/wiki/Perks (rev. 2025-03-12) — lab tables with exact times/costs, recommended/bad perk lists, waves-required formula.
- https://the-tower-idle-tower-defense.fandom.com/wiki/Perks (raw wikitext) — offer-slot probabilities (68/20/12), 79-perk schedule and step waves, Auto Pick fallback rule, no-mid-run-editing, trade-off lab max values.
- https://the-tower-idle-tower-defense.fandom.com/wiki/Perk_Labs/Standard_Perk_Bonus — 25-level cap, Bounce Shot/Orbs exclusion.
- https://the-tower-idle-tower-defense.fandom.com/wiki/Lab_Upgrades — Lab Search / Auto Research / switch-refund UI behaviour.
- https://www.tower-hub.com/wiki/lab/perk-labs (last verified 2026-11-01) — every perk lab's level count with its printed
  cost/time ladder (`Waves Required` 100 lv: 100 K → 1.18 B; `Standard Perk Bonus` 25 lv: 100 K → 1.77 B;
  `Auto Pick Ranking` 32 lv: 100 K → 591.04 M; `Improve Trade-Off Perks` 10 lv: 600 M → 4.92 B; `Ban Perks` 8 lv:
  10 M → 1.00 q), the milestone gates (T2 W150 / T2 W250 / T2 W400 / T4 W50 / T4 W80 / T5 W40 / T6 W10), the
  **ranking-over-first-choice precedence** example, the ranged-enemy trade-off exclusion, the SPB formulas
  (multiplicative `(1 + base × qty) × (1 + SPB)`, additive `base × qty × (1 + SPB)`), and “perks are disabled in
  tournaments for now”.
- `tools/gm_strings.txt` — `Assets\Scripts\Perks.cs`, panel strings `Perks Panel`, `Perks Choices Panel`, `Perk Button`, `Assets\Scripts\LabSpeedUp.cs` + `2_showSpeedUpIdleIndicator`.
- https://the-tower-idle-tower-defense.fandom.com/wiki/Game_Speed — 7-level Game Speed lab (x5.0 at L7), 6.25 cap, "x5.0 behaves closer to x4.0".
- https://the-tower-idle-tower-defense.game-vault.net/wiki/Lab/Game_Speed and `/wiki/Guide:Labs_Guide` — lab gate (T1 W30), 5-slot role allocation, Elite-Cell speed-up cost-per-2x table.
- https://the-tower-idle-tower-defense.fandom.com/wiki/Golden_Tower — GT stone totals (27,186) and the T4 W200 lab gate.
- https://tvtropes.org/pmwiki/pmwiki.php/VideoGame/TheTowerIdleTowerDefense — third-party confirmation that the PWR perk is retroactive and that `Auto Pick Ranking` requires `Auto Pick Perks` first.
- https://www.reddit.com/r/TheTowerGame/comments/13jj6nq/ and `/13332lg/` — community numbers for the speed cap (5 / 6.0 / 6.25→"6.3").
