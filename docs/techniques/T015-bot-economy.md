# T015 — Bot economy: the three exact cost formulas, and the sync-aware order

Rev: 11 (2026-11-03) — **§3.4: the Bot+ block on the same scale** (new). All three medal ladders in the layer are one law,
`price(n) = 100 + s(n−1)` with **s = 40** (stat lines), **50** (Bot+ lines), **200** (Echoing Shot), so the first step of any
line is still `100/ρ`: **Echoing Shot 33.33e-4 (ρ = 3) and Titan Shock 20.00e-4 (ρ = 5) are the two densest buys in the whole
medal layer**, ahead of Flame Damage (16.00). The par-optimal Bot+ block is **78 levels / 43 550 medals = 72.5 %** of the
capped **60 100** (`Σ ln = 4.754`, **1.09e-4**/medal) with **both cell lines stopping at level 15 = 6 750**; the merged
25-line plan is **445 taps / 212 660 medals = 175.0 events ≈ 350 weeks** F2P, and the **6 250-stone** Bot+ unlock gate costs
only **0.3–78 weeks** of the T014 stone grid, so the UW sync (910 st) keeps priority. Three fandom pages re-fetched with the
**full per-level columns** (Wild Fire and Titan Shock now **printed**, not derived). `tools/botplus-density.ps1`.
Rev: 10 (2026-11-03) — **§3.3: the cross-bot ranking** (new). Every bot line collapses to **one** parameter
**`ρ = base / increment`**: `gain(n) = 1/(ρ + n − 1)` for the growing lines and `1/(ρ − n + 1)` for the Cooldown lines, so
the first step of any line is **100/ρ × 10⁻⁴** — **Flame Damage 16.00 > Flame DmgRed = Thunder Linger 15.00 > Flame Range
13.33 > Thunder Range 12.00 > Amplify Bonus 11.43 > the four ρ = 10 lines 10.00**. Bot-vs-bot (`Σ ln / medals` at the par):
**Thunder 1.30 > Flame 1.28 > Amplify 0.93 > Golden 0.92 > Bot Bot 0.86 e-4**, with Thunder's bill **100.0 %** above par
(which derives “max it or leave it”) and Bot Bot last because its Bonus is a 4.76 % step (`ρ = 21`). The merged
feasibility-constrained sheet is **367 taps / 169 110 medals = 139.2 events ≈ 278 weeks** F2P, with the five unlocks landing
after **0 / 150 / 2 790 / 10 330 / 116 090** medals and only the **Bot Bot** unlock (`0.41e-4`) falling under the best level
lines. `tools/bot-cross-ranking.ps1`.
Rev: 9 (2026-11-03) — **§3.2: the four-line density system** (new). Under `coins = kills-in-coverage × bonus × uptime`,
the four lines become `dR(n) = 2/(18+2n)`, `dB(n) = 0.2/(1.8+0.2n)`, `dD(n) = 0.5/(19.5+0.5n)`, `dC(n) = 3/(123−3n)` over
the price `40n + 60`, and **`dR(n) = dB(n) = 1/(n + 9)` exactly** — Range and Bonus are the *same* ladder while Range is
open (which is the arithmetic behind the guide's “a couple of levels ahead”). Level 1 densities: **10.00 / 10.00 / 2.50 /
2.50 × 10⁻⁴**, so Range–Bonus is the densest buy in the medal layer (**34×** the cosmetic par). The par-optimal bot is
**R 20 / B 24 / D 14 / C 15 = 33 780 medals** (**27.8 events**, **60.2 %** of the capped **56 100**) for **×22.03** on the
chain (**0.92e-4** average). The only free parameter is the tower-amplification constant `A` (**H067**).
`tools/bot-four-line-density.ps1`.
Rev: 8 (2026-11-03) — **§3.1: the uptime density ladder** (new). The two medal lines have **separable** relative gains,
`0.5/(19.5 + 0.5n)` (Duration) and `3/(123 − 3n)` (Cooldown) over the `40n + 60` price, so **level 1 of each is worth
exactly 2.5 %** of uptime and the Cooldown line pulls ahead to `dC/dD =` **2.077** by level 15; the greedy order is
`D1 C1 C2 D2 C3 D3 C4 C5 D4 …` (**7 levels / 1 060 medals** at the 1 215 budget, **13 / 2 820** at 3 000). Ranked by
`ln(multiplier)/medals`: **Flame Cooldown 1.61e-4 > Thunder Duration 1.14e-4 > the four 120→75 Cooldown lines 0.82e-4 >
cosmetics 0.296e-4 > the three 20→35 Duration lines 0.27e-4**, and against that cosmetic par the stop is
**Cooldown 15 / Duration 14** (`0.583` and `0.304` above par, `0.281` below) = **10 740** medals for `27 s / 75 s` = 36 %.
`tools/bot-uptime-density.ps1`.
Rev: 7 (2026-11-03) — **the bot lab layer is confirmed from the full per-level tables** (`tools/bot-research-family.ps1`,
cross-read with T006 §Bot Research): the five `* Cooldown` labs print **one identical 25-level column** and the four
`* Duration`/`Linger` labs **one identical 20-level column** (0 differing cells), so the six-column law of §1.3 is a
two-ladder system; the **20-level time law reproduces on all nineteen steps** (max relative deviation
**2.740 × 10⁻⁵**) and its closed form `t₁(1.15ⁿ−1)/0.15` gives **1 229 323 min** against the printed re-add
**1 229 315 min** (Δ **8 min**) — i.e. the **853.7 d** of Rev 6 is exact; `Burn Stack` too (**442 974.4** vs **442 973**).
Three of this doc’s prints re-add from the tables: the **515.0 M** cooldown block-1, the **1.32 T** Bot-Bot duration block
(= **1 318.75 B** over levels 1-5) and **Σ 567.06 T** for Burn Stack. New: `Thunder Bot Linger Time` is the duration
column with its value ladder shifted by **+3.00 on 20/20 cells**; the per-unit bills are **7.233 0 × 10¹⁰** coins per
−1 s of cooldown, **3.324 2 × 10¹³** per +0.5 s of duration, **1.134 1 × 10¹⁴** per burn stack; the category is
**10 lines / Σ 210 levels = 3.235 5 q** coins for **6 605.8 d**; and `Bot Bot Cooldown` now prints **T6 W60** (a third
gate print, next to **T6 W90** and the 2026-11-02 **T5 W90**) — read the Milestones screen.
Rev: 6 (2026-11-02) — **the Bot+ census closes**: the bot pages now print **Golden Bot+ = 25 levels, 17 500 medals
(×1.25 → ×2.50)** and **Bot Bot+ = 20 levels, 11 500 medals (×1.25 → ×2.25)** in prose, and both re-add from the family
law `25L² + 75L` ⇒ the five-line bill **60 100** is confirmed rather than assembled (§1.4); the **lab research-time law
`time(n) = time(1) × 1.15^(n−1)`** is derived from the printed duration columns (all five Burn-Stack durations reproduce
**to the minute**, and the Duration lab's rows too) ⇒ a lab line's whole time bill is `t₁(1.15ⁿ−1)/0.15`, so the 20-level
Duration lab = **853.7 d ≈ 2.34 years** (T006 → *The two clock laws*); and the cap/lab cross-check closes — cooldown
`120 → 75 → 50 s`, duration `20 + 15 = 35 → 45 s`, exactly what the Golden page prints with labs maxed.
Rev: 5 (2026-11-02) — **all five bots now closed**: Thunder **30 600** and Flame **46 300** (derived, both value ladders
doubly determined), five-bot grand bill **231 860** medals (**235 010** with unlocks ⇒ **193.4 events ≈ 7.4 y** F2P), the
ten bot-lab gates (cooldown labs **W60/W70/W80/W90/T6 W90**, Burn Stack **Σ 567.06 T**), and the placement-deciding
mechanics (Flame DR outside the 98 % cap; Thunder never stuns bosses/elites/fleets, v29.1.2).
Rev: 4 (2026-11-02) — per-bot line caps + totals (§1.3): **Amplify 54 420 reproduces exactly** from `20L²+80L` with caps
(30/15/30/**18**), Bot Bot derived at **44 440** with the **19-level** Bonus line, and the **H034 count question is settled at
19** by its own value arithmetic (`1.05 + 19 × 0.05 = 2.00` ✓); plus the **reusable lab constants** (cooldown-lab block 1 =
**515.0 M** coins on all three bots; Amplify’s cooldown gate is **T5 W90**).
Rev: 3 (2026-11-02) — adds the **medal budget layer** from Tower Hub’s medals guide: the **3 150**-medal five-bot unlock
ladder (150/300/600/900/1 200), the per-event **400 medals** for theme + background (**150 + 250**), the
guide’s **5-step medal spend order**, the per-bot stat priority (**range before bonus** on Golden/Amplify, Thunder must be
maxed, Flame last) and the “**don’t unlock all five before levelling**” rule; every figure re-expressed in events at
≈ 1 215 medals/event.
Rev: 2 (2026-11-01) — three closed-form cost formulas added (each reproduces the wikis' printed totals exactly), H015
resolved (**+0.05** per Bot Bot level), the respec price corrected to **300 gems**, and the lab gates + non-respeccable
cooldown-lab footgun added.
Currency: **Coins** (Golden Bot bonus), **Elite Cells** (Golden Bot+), **Medals** (the whole bot block) · Status:
**Verified (arithmetic, Rev 5)** — 56 100 / 17 500 / 11 500 / 8 100 / **3 150** / **54 420** / 44 440 / **30 600** /
**46 300** / **231 860** all reproduce from the formulas in §1 (e.g. Thunder 30 600 = 9 600 + 5 700 + 9 600 + 5 700); no device capture yet.

| | |
|---|---|
| **Value** | ★★★★ — Golden Bot is the cheapest coin multiplier in the game (×2.0 → ×8.0 with 90 % uptime once both labs |
| | are in), and **Golden Bot+ × Bot Bot+ multiplies every Elite Cell by up to ×6.25** on top of the Cells card, which feeds |
| | the lab-boost loop ([T006](T006-lab-queue-packing.md)). Medal flow is the binding constraint: ≈ 1 215 medals/event. |
| **Confidence** | **High** — two independent wikis (fandom raw wikitext + Tower Hub, “last verified 2026-11-01”, from a |
| | Legend account) agree on every per-level increment and on all four printed totals; the formulas below are exact. |
| | **Medium** on Bot Bot’s level *count* → **settled at 19** in Rev 4 (its own value ladder closes: ×1.05 + 19 × 0.05 = |
| | ×2.00 ✓); the three printed bot totals (56 100 / 54 420) and the five Bot+ totals all re-add. |
| **Ease** | 1 tap per level in the Event Shop's bot panel · **Prerequisite:** Events open (T1 W70); Bot+ needs **all five** |
| | bots; the cooldown labs come from Milestones at **T5 W80** (Golden) and **T6 W90** (Bot Bot). |

---

## 1. The three closed-form cost formulas (all reproduce the printed totals)

| Line type | per-level cost | Σ to level *L* | reproduces |
|---|---|---|---|
| **any normal bot stat line** | `100 + 40(n−1)` | `20L² + 80L` | Golden Bot's four lines = **56 100** (20 400 + 5 700 + 20 400 + 9 600) ✓ |
| **standard Bot+ line** (Bonus Cells, Maximum Power, Wild Fire, Titan Shock) | `50 + 50n` | `25L² + 75L` | 25 levels ⇒ **17 500** ✓ · 20 levels ⇒ **11 500** ✓ |
| **Echoing Shot (Amplify Bot+)** | `100 + 200(n−1)` | `100L²` | 9 levels ⇒ **8 100** ✓ |

Every bot line is therefore: **1 level = 100**, 2 = 140, 3 = 180 … (normal), and Bot+ levels 100, 150, 200, 250 … .
Bot+ unlocks cost **1 250 stones each** ⇒ **6 250 stones** for all five, and the five Bot+ lines together are
**60 100 medals** ≈ 50 events ≈ **100 weeks**.

### 1.1 The medal budget (what each block costs in *events*)

Income is ≈ **1 215 medals per 2-week event** ([T013](T013-event-medal-economy.md) §1), which is the only real constraint:

| Medal sink | Medals | ÷ 1 215 = events | Weeks |
|---|---|---|---|
| Five bot **unlocks** (150 + 300 + 600 + 900 + 1 200) | **3 150** | 2.6 | ≈ 5 |
| **Theme + background** (per event; 150 + 250) | **400** | 0.33 | 1 |
| **Golden Bot** four stat lines (20 400 + 5 700 + 20 400 + 9 600) | **56 100** | 46.2 | ≈ 92 |
| **Golden Bot+** (Bonus Cells, after **1 250 stones**) | **17 500** | 14.4 | ≈ 29 |
| **All five Bot+ lines** | **60 100** | 49.5 | ≈ 99 |
| **All five bots, stat lines maxed** (incl. unlocks) | **235 010** | **193.4** | ≈ **7.4 y** |
| Bot+ **unlocks** (5 × 1 250) + Synchronicity (3 × 1 500) — *in stones* | **10 750 st** | — | stones, not medals |

**Cosmetics first, then the bots.** The guide's order is: **①** older-event relics with lab-speed/coins (T018 §2–3) →
**②** **theme + background** (**150 + 250 = 400** medals/event; the **3 non-rotating songs** cost **200** each,
**+0.6 % coins**, one-time — and every cosmetic bonus is **additive and applies even unequipped**, stacking with
the guild cosmetics of T016 §4) → **③** **1–2 stone packs at most** (each extra pack is worse
value) → **④** **1 gem pack**, only before all 5 lab slots are open → **⑤** the rest into bots, in the §1.2 order.

### 1.2 Per-bot priority (the guide's levelling order, with the reason)

**Do not unlock all five bots before levelling** — a freshly unlocked bot is weak and almost all of its value is in its
levels, so unlock one, develop it, then unlock the next (Bot+ still needs **all five** unlocked, so finish the ladder later).

| Order | Bot | Line order | Why |
|---|---|---|---|
| 1 | **Golden Bot** | **Range** then **Bonus**, **cooldown only to the sync divisor** | “Range is the strongest upgrade, but keep it only a couple of levels ahead of bonus”; cooldown “gives little benefit unless chasing a GT/BH sync” (§3's divisor rule is that chase) |
| 2 | **Amplify Bot** | **Range** then **Bonus** | range “raises the chance of the boss passing through the bot's area” — the boss is where the value is |
| 3 | **Thunder Bot** | **max it or leave it** | “needs to be maxed to be useful … at low levels it can actually cause problems for some builds” |
| 4 | **Flame Bot** | last | “only invest once everything else is maxed or properly levelled” |

**The two numbers that make Range cheap:** it starts at **20 m** and each of its **20** levels adds **+2 m** (60 m from
levels alone, and all bot ranges are additionally **amplified by the tower's own range**, so `Range` workshop levels and the
Range relic/card widen the bot's coverage for free — T001/T012/T018).

**Mechanics notes that decide placements (Rev 5, from the Thunder/Flame pages):**
- **Flame is the defensive bot**: its Damage Reduction (20 % → **95 %**) is a **separate mechanic from Defense %** — it does
  *not* count toward the **98 % defense cap** and is applied *after* Defense Absolute, which makes it one of the few
  multiplicative-feeling defensive lines in the game. Burn damage is trivial (≈ **1 470×** tower damage/s fully maxed incl.
  the Burn Stack lab) and can even **steal kills from the coin multipliers** in Devo setups — level DR/Cooldown/Range before Damage.
- **Thunder** never stuns Bosses/Elites/Fleets (v29.1.2): in range they move at **half speed** and take the linger slow at
  **25 %** strength — its value is the linger %, not the stun, on boss-heavy tiers. **Stun Decay**: each stunned second
  makes that enemy’s next stun **0.5 % shorter** (shared by Poison Swamp / Inner Land Mines / Thunder).
- Field uptime is literally “**on for Duration out of every Cooldown**” (§3’s `Duration/Cooldown` model is the site’s own wording).

### 1.3 Per-bot line caps, totals, and the reusable lab constants

Every bot line is the same arithmetic line (`cost(n) = 100 + 40(n−1)`), so a bot's whole bill is set by its four **level caps**:
`Σ = Σ (20L² + 80L)`.

| Bot | Duration | Cooldown | Bonus | Range | Four lines = |
|---|---|---|---|---|---|
| **Golden** | 30 lv (+0.5 s, 20→35 s) | 15 lv (−3 s, 120→75 s) | 30 lv (+0.2×, ×2.0→**×8.0**) | 20 lv (+2 m, 20→**60 m**) | **56 100** ✓ printed |
| **Amplify** | 30 lv (+0.5 s) | 15 lv (−3 s) | 30 lv (+0.4×, ×3.5→**×15.5**) | **18 lv** (+2 m, 25→**61 m**) | 20 400 + 5 700 + 20 400 + **7 920** = **54 420** ✓ printed |
| **Bot Bot** | 30 lv (+0.5 s) | 15 lv (−3 s) | **19 lv** (+0.05×, ×1.05→**×2.00**) | 20 lv (+2 m, 20→60 m) | 20 400 + 5 700 + **8 740** + 9 600 = **44 440** (derived) |
| **Thunder** | **20 lv** (+0.5 s, 5→**15 s**) | 15 lv (−3 s, 120→**75 s**) | Linger **20 lv** (+3 %, 20→**80 %**) | **15 lv** (+3 m, 25→**70 m**) | 9 600 + 5 700 + 9 600 + 5 700 = **30 600** (derived) |
| **Flame** | DmgRed **25 lv** (+3 %, 20→**95 %** ✓ “up to 95 % at max”) | 15 lv (−3 s, **75**→**30 s**) | Damage **30 lv** (+8×, ×50→**×290**) | **15 lv** (+4 m, 30→**90 m**) | 14 500 + 5 700 + 20 400 + 5 700 = **46 300** (derived) |

Every Thunder/Flame cap is **doubly determined**: the printed level-1 values are exactly `base + 1 increment` (5.5 s =
5 + 0.5 · 117 = 120 − 3 · 23 % = 20 + 3 · 28 m = 25 + 3 · 23 % = 20 + 3 · 72 s = 75 − 3 · 58× = 50 + 8 · 34 m = 30 + 4),
and the row counts match the ladder convention (“Showing 10 of **21** rows” ⇒ 20 for Thunder, **31** ⇒ 30 for Flame).
Flame’s DR cap also self-checks: `20 + 25 × 3 = 95` = the printed cap. Note the odd lines: Thunder’s 4th line is
**Linger** (+3 %/lv, not a duration), Flame has **no Duration line** (its “Duration” column is the DR line), and
**Flame Range adds +4 m/level** while every other bot adds +2 m.

**Print notes (fandom, fetched 2026-11-03).** The `Thunder Bot` page says “each of the **3** Thunder bot upgrades start with
a base upgrade cost of **100** medals and increase by **40** medals each level” while listing **four** upgrade sections
(Duration 20 lv, Cooldown 15 lv, Linger 20 lv, Range 15 lv) — the four section headers with their level counts are the
operative prints and the “3” is a prose artifact; that same page states “**Stun and linger are 50 % effective against Bosses
and Elites**”, where the Tower Hub copy says the linger runs at **25 %** strength (v29.1.2) — one panel read of a boss’s slow
% settles it. `Amplify Bot` prints all four of its lines with base, count and increment (**20 s**/+0.5/30 · **120 s**/−3/15 ·
**×3.50**/+0.4/30 · **25 m**/+2/18), so §3.3’s `ρ` inputs are printed rather than derived there.

Two of the three printed per-stat totals for Amplify (`20 400 / 7 920 / 5 700 / 20 400`, “together **54 420**”) and Golden’s
**56 100** reproduce from the closed form with **no free parameters**, which is what makes the derived **44 440** for Bot Bot
trustworthy — and the per-stat split is *also* a closed-form check: `20·30²+80·30 = 20 400` (Bonus/Duration),
`20·18²+80·18 = 7 920` (Range), `20·15²+80·15 = 5 700` (Cooldown). The cost tables corroborate the caps through the row
count (“Showing 10 of **31** rows” ⇒ **30** levels on every bot that lists its full ladder) and the level-1 values
(Amplify `20.5 s / 117 s / 3.9 / 27 m`; Bot Bot `20.5 s / 117 s / ×1.10 / 22 m`). Note the asymmetry the ranking depends
on: **Amplify’s Range caps at 18 levels (7 920 medals) while Golden’s caps at 20 (9 600)** ⇒ Amplify’s “range first” step
is the cheaper of the two.

**Reusable lab constants** (all ten bot labs, one per stat pair): the cooldown labs are −1 s per level with **25** levels
and the *same* price series; the time labs are +0.5 s with **20** levels; only Flame’s second lab breaks the pattern —
| Lab line | Gate (printed) | Levels | Price ladder (first levels) | Σ printed |
|---|---|---|---|---|
| `* Cooldown` (Flame) | **T5 W60** | 25 | 30 M · 60.05 M · 91.6 M · 132.15 M · 201.2 M | **515.0 M** |
| `* Cooldown` (Thunder) | **T5 W70** | 25 | same | **515.0 M** |
| `* Cooldown` (Golden) | **T5 W80** | 25 | same | **515.0 M** |
| `* Cooldown` (Amplify) | **T5 W90** | 25 | same | **515.0 M** |
| `* Cooldown` (Bot Bot) | **T6 W90**¹ | 25 | same | **515.0 M** |
| `* Duration` (Golden, Amplify) | **T10 W50** | 20 | 100 B · 150 B · 225 B · 337.5 B · 506.25 B (**×1.5/lv**) | **1.32 T** |
| `* Duration` (Bot Bot) | **T6 W90**¹ | 20 | same | **1.32 T** |
| `* Linger Time` (Thunder) | **T10 W60** | 20 | same series (linger 3 s → **13 s** ✓ = 3 + 20 × 0.5) | **1.32 T** |
| `* Burn Stack` (Flame) | **T10 W50** | **5** | 43 T · 64.5 T · 96.75 T · 145.12 T · 217.69 T (**×1.5/lv** ✓ all four ratios) | **567.06 T** |

¹ The Bot Bot page gates **both** of its labs at “tier 6 wave 90” (“This lab is **also** unlocked in Milestones at tier 6
wave 90”), while the Amplify page prints **T5 W90** (cooldown) / **T10 W50** (duration) — so the lab gates are **per bot**,
not one shared pair; one 2026-11-02 fetch also showed T5 W90 for Bot Bot's cooldown gate, and a 2026-11-03 fetch of
`Lab/Bot Bot Cooldown` shows **T6 W60** — three distinct prints, so the Bot Bot gates stay unconfirmed
¹. Read your own Milestones screen.

The cooldown-lab gates form a clean **W60→W70→W80→W90** ladder across Flame/Thunder/Golden/Amplify — a nice confirmation
the milestone waves are per-bot constants. The practical consequence: **each of the five cooldown labs costs ≈ 515 M coins
for its first 5 seconds**, so buying the sync divisor on all five bots is a ≈ 2.6 B-coin decision plus 5 × 5 lab-slot hours;
the Burn Stack lab adds a further **567 T** for ×5-stack ticks (2 hits to the 10-stack cap at max).

**The five-bot grand bill** (all stat lines maxed): 56 100 + 54 420 + 30 600 + 46 300 + 44 440 = **231 860** medals,
plus the **3 150** unlock ladder = **235 010** ⇒ 235 010 ÷ 1 215 = **193.4 events** ≈ **387 weeks ≈ 7.4 years** F2P —
which is why §1.2's order and the “first 10 levels of each line” (where the per-unit ratio is best) matter so much.

(The 515.0 M figure is the sum of the five **printed** per-level prices; an earlier note of “519.9 M” came from a cumulative
print and is superseded.)

### 1.4 The Bot+ census, closed (two printed totals + the family law)

Every Bot+ line is `cost(n) = 50 + 50n` ⇒ **`Σ = 25L² + 75L`** for `L` levels. The two levels the pages print now confirm
the law at both ends, and the remaining three are doubly determined by their own value ladders:

| Bot+ (1 250 stones each) | Effect (as printed) | Levels | Value ladder | Medals | Status |
|---|---|---|---|---|---|
| **Golden Bot+ — Bonus Cells** | elites killed in range grant more Cells | **25** | 1.25 → **2.5** (+0.05/lv) | **17 500** | **printed** ✓ `25·25²+75·25` |
| **Bot Bot+ — Maximum Power** | boosts the *other* Bot+ abilities | **20** | 1.25 → **2.25** (+0.05/lv) | **11 500** | **printed** ✓ `25·20²+75·20` |
| **Amplify Bot+ — Echoing Shot** | tower bullets count as several bullets; **UW projectiles get ⅓ of that** | **9** | 3 → 12 bullets | **8 100** | printed ladder `100 + 200(n−1)` ⇒ `100L²` ✓ |
| **Flame Bot+ — Wildfire** | hit enemies become **Enflamed** as well as Burned; the amplification lasts as long as the current Flame damage | 20 | ×1.5 → ×3.5 (+0.1/lv) | **11 500** | **printed** (fandom column 100 · 150 · … · 1050 + total) |
| **Thunder Bot+ — Titan Shock** | enemy attack speed −5 % → −25 % (× digits of enemy mass) | 20 | −1 %/lv (5 % → 25 %) | **11 500** | **printed** (fandom column 100 · 150 · … · 1050 + total) |
| | | | **Five lines** | **60 100** ✓ = 17 500 + 11 500 + 8 100 + 11 500 + 11 500 | + **6 250 stones** for the five unlocks |

Two printed anchors (17 500 at L25 and 11 500 at L20) fit `25L² + 75L` with no free parameter, which is what makes the
three derived numbers safe. Practical read: the two **cell** lines (Golden + Bot Bot) are **29 000 medals ≈ 24 events** and
carry the whole Elite-Cell multiplier (×2.50 × 2.25 ≈ ×5.6 over the base), so they are bought first and the three combat
Bot+ lines ride behind them ([T006](T006-lab-queue-packing.md) spends the cells).

**Lab constants cross-check (the two systems agree).** Golden Bot prints “×8 coins, 60 m range, **50 s cooldown and 45 s
duration with labs**”, and the §1.3 constants reproduce exactly that: `120 − 3 × 15 = 75 s` from the bot levels, −25 s from
the cooldown lab ⇒ **50 s** ✓; `20 + 0.5 × 30 = 35 s` from the bot, `+0.5 × 20 = +10 s` from the duration lab ⇒ **45 s** ✓.

**Four mechanics that change placement (printed on the same pages).** ① Flame's Damage Reduction is a **separate mechanic
from Defense %** — it does **not** count toward the 98 % defense cap and is applied **after** `Defense Absolute`.
② **Stun Decay**: every second an enemy is stunned by Poison Swamp, Inner Land Mine or Thunder Bot makes its next stun
**0.5 % shorter** ⇒ long runs degrade Thunder's uptime (the field is `Duration / Cooldown` of the time; the bot wanders
randomly near the tower). ③ **Singularity Harness** (Generator module): enemies hit by Flame Bot take **double** damage.
④ The **Area of Effect** card gives **+5 % (1★) → +25 % (7★)** to the AoE damage of Flame Bot, Inner Land Mine, Poison
Swamp, Smart Missile and Land Mine (T012's card ladder).



Same 4×-worse-per-block shape as the UW stone lines (T008 §3) — finish a block, then stop:

| Line | block 1 | block 2 | block 3 | block 4 | block 5 |
|---|---|---|---|---|---|
| **Cooldown** (−3 s/lv, 15 lv) | L1–5 = **900** (60 medals/s) | L6–10 = 1 900 (127) | L11–15 = 2 900 (193) | — | — |
| **Bonus** (+0.2×/lv, 30 lv) | L1–10 = **2 800** (1 400 /×1) | L11–20 = 6 800 (3 400) | L21–30 = 10 800 (5 400) | — | — |
| **Duration** (+0.5 s/lv, 30 lv) | L1–10 = **2 800** (280 /s) | L11–20 = 6 800 (680) | L21–30 = 10 800 (1 080) | — | — |
| **Range** (+2 m/lv, 20 lv) | L1–10 = **2 800** (140 /m) | L11–20 = 6 800 (340) | — | — | — |
| **Bot+ cell/power lines** (+0.05/lv) | L1–5 = **1 000** (×1.25→1.50) | L6–10 = 2 250 (→1.75) | L11–15 = 3 500 (→2.00) | L16–20 = 4 750 (→2.25) | L21–25 = 6 000 (→2.50) |
| **Echoing Shot** (+1 bullet/lv) | L1–5 = **2 500** (500 /bullet) | L6–9 = 5 600 (1 400) | — | — | — |

At ≈ **1 215 medals per 2-week event** (T013 §1): Golden Bot's Cooldown line = 5 700 ≈ 4.7 events; its full 56 100 ≈ 46
events; Bonus Cells to ×2.00 = 6 750 ≈ 5.6 events; all five Bot+ lines = 60 100 ≈ 50 events.

## 3. Uptime and the sync window (this is what actually multiplies coins)

| Golden Bot state | Cooldown | Duration | Activations/h | **Uptime** |
|---|---|---|---|---|
| base | 120 s | 20 s | 30 | 16.7 % |
| Cooldown line 15 + Duration line 30 | 75 s | 35 s | 48 | 46.7 % |
| + both labs (−25 s, +10 s) | **50 s** | **45 s** | 72 | **90 %** |

The two labs are **Milestone-gated**: `Golden Bot Cooldown` at **T5 W80** (25 levels, −1 s each, first levels 30 M /
60.05 M / 91.6 M / 132.15 M / 201.2 M coins) and `Golden Bot Duration` at **T10 W50** (20 levels, +0.5 s each,
100 B → 150 B → 225 B → 337.5 B → 506.25 B, i.e. **×1.5 per level**). Bot Bot's pair (`Cooldown`, `Duration`) unlocks at
**T6 W90** with the same shape.

**Sync rule (ties into T008 §4):** with the coin trio at GT 200 / BH 100 / DW 200, set Golden Bot's cooldown to a
**divisor of 200**: **100 s** = 5 medal levels (900 medals) + 5 lab levels (519.9 M coins) ⇒ fires twice per GT cycle and
is always inside it; the fully-maxed **50 s** (= 15 + 25) is the other clean divisor. Avoid the in-between values —
75 s vs 200 s only re-aligns every 600 s.

⚠️ **Footgun:** the bot **cooldown labs cannot be respecced** (Tower Hub), so the sync target must be chosen *before*
researching level 1. The medal lines *are* respeccable, for **300 gems** (T022 §2's respec list; the Vault reduces it to 0,
T017), and the refund covers Bot+ levels too — re-unlocking Bot+ after a respec costs no stones again.

### 3.1 The uptime density ladder — why Cooldown outranks Duration, level for level (new, Rev 8)

With `U = Duration / Cooldown` (`D` seconds on out of every `C`), the two medal lines are `+0.5 s` and `−3 s` per level on
the shared price ladder `price(n) = 100 + 40(n − 1) = 40n + 60`, so the **relative** gain of a level is separable and
depends only on that line's own index:

```
duration level n :  dU/U = 0.5 / (19.5 + 0.5n)        cooldown level n :  dU/U = 3 / (123 − 3n)
density          :  dD(n) = [0.5/(19.5 + 0.5n)] / (40n + 60)      dC(n) = [3/(123 − 3n)] / (40n + 60)
```

at the Golden/Amplify/Bot Bot base (`D = 20`, `C = 120`); Thunder is `5 / 120`, Flame `? / 75`. `tools/bot-uptime-density.ps1`
prints the ladder; the first levels and the decay:

| level | price | dD | density (×10⁻⁴) | dC | density (×10⁻⁴) | `dC/dD` |
|---|---|---|---|---|---|---|
| 1 | 100 | 0.5/20.0 = 0.02500 | **2.500** | 3/120 = 0.02500 | **2.500** | 1.000 |
| 2 | 140 | 0.02439 | 1.742 | 0.02564 | **1.832** | 1.051 |
| 5 | 260 | 0.02273 | 0.874 | 0.02778 | 1.068 | 1.222 |
| 10 | 460 | 0.02041 | 0.444 | 0.03226 | 0.701 | 1.581 |
| 15 | 660 | 0.01852 | 0.281 | 0.03846 | 0.583 | **2.077** |

**1. The two lines start exactly equal and then the Cooldown line pulls ahead.** Level 1 of either line is worth exactly
**2.5 %** of uptime (`0.5/20 = 3/120`), and after that `dC/dD = 6(19.5 + 0.5n)/(123 − 3n)` rises monotonically from 1.000 to
**2.077** — the cooldown's numerator is constant while its denominator shrinks (each level makes the *next* one stronger),
whereas the duration's denominator grows. Hence the greedy order interleaves as
`D1 C1 C2 D2 C3 D3 C4 C5 D4 C6 D5 C7 C8 …`: **7 levels for 1 060 medals** (D 3 / C 4) at a 1 215-medal budget, uptime
`16.667 % → 19.907 %` = **×1.194**, and **13 levels for 2 820 medals** (D 5 / C 8, ×1.406) at 3 000 medals.

**2. Per-line efficiency, ranked** (the block multiplier ÷ medals, as `ln(multiplier)/medals`; the whole cosmetic line
`ln(1.03)/1 000 =` **0.296 × 10⁻⁴** is the numeraire):

| medal line | uptime multiplier | medals | ×10⁻⁴/medal | events |
|---|---|---|---|---|
| **Flame Cooldown** (75 → 30 s) | ×2.500 | 5 700 | **1.61** | 4.7 |
| **Thunder Duration** (5 → 15 s) | ×3.000 | 9 600 | **1.14** | 7.9 |
| Golden / Amplify / Bot Bot / Thunder **Cooldown** (120 → 75) | ×1.600 | 5 700 | **0.82** | 4.7 |
| cosmetics (theme + background + 3 songs) | ×1.030 | 1 000 | **0.296** | 0.8 |
| Golden / Amplify / Bot Bot **Duration** (20 → 35 s) | ×1.750 | 20 400 | **0.27** | 16.8 |

⇒ **max the Cooldown line before touching Duration** (it is ×3 the density: `0.82` vs `0.27`), and Thunder's Duration line
is the single best *duration* buy (**1.14**, because its base of 5 s triples). The three blocks with both lines capped:
Golden/Amplify/Bot Bot `16.67 % → 46.67 %` = ×2.80 for **26 100** medals (**21.5 events**), Thunder `4.17 % → 20.00 %` =
×4.80 for **15 300** (**12.6 events**) — the five uptime blocks together are **99 300** medals ≈ **81.7 events ≈ 163 weeks**
(Flame contributes its **5 700**-medal Cooldown line only: its page prints no Duration column, so that line is the whole
uptime ladder there).

**3. The stop rule (density ≥ the cosmetic par).** With `par = 0.296e-4`, the Cooldown line stays above par on **all 15**
levels (`0.583e-4` at 15) while the Duration line drops below at **level 15** (`0.281 < 0.296`; level 14 = `0.304`). So the
medal-optimal placement is **Cooldown 15 / Duration 14** per bot — Duration levels 1–14 cost `20·14² + 80·14 =` **5 040**
medals and the remaining **15–30** cost `20 400 − 5 040 =` **15 360** for a further `27 → 35 s` (×1.296, **0.17e-4**/medal). Both sync-divisor targets from §3 sit inside that plan: **100 s** = 5 Cooldown levels (`100 + 140 + 180 + 220 + 260 =` **900** medals,
density `ln(120/105)/900 =` **1.48e-4**, the best five-level buy on the line), **75 s** = the full 15 levels.

**4. Segment check on the decay** (why the early levels carry the block): the first five Cooldown levels cost **900**
medals for `120 → 105 s` = ×1.143 (**1.48e-4**/medal) while the last five cost **2 900** for `90 → 75 s` = ×1.200
(**0.63e-4**) — 3.2× the medals for 1.05× the effect. Level 15 is still worth buying (it is above par) but it is not worth
buying *before* another bot's level 1.

### 3.2 The four-line density system — one Golden Bot, priced end to end (new, Rev 9)

The two lines outside the uptime pair get the same treatment. Under the coin chain of [H015](../hypotheses/H015-bot-bot-increment.md)
(`kills-in-coverage × Golden bonus × uptime`), a level's relative gain is `+2 m` on the current coverage and `+0.2` on the
current multiplier:

```
Range    : dR(n) =    2 /(18 + 2n)     Bonus    : dB(n) = 0.2 /(1.8 + 0.2n)      caps 20 / 30
Duration : dD(n) =  0.5 /(19.5 + 0.5n)  Cooldown : dC(n) =   3 /(123 − 3n)       caps 30 / 15
density(n) = gain(n) / (40n + 60)
```

**1. `dR(n) = dB(n) = 1/(n + 9)` — Range and Bonus are the *same* ladder.** Both start at a **10 %** step on a base that
grows by the same fraction per level (2 m on 20 m; 0.2× on ×2.0), so with the identical price `40n + 60` the two lines are
**exactly interchangeable per medal** while Range is still open (verified numerically on every level:
`tools/bot-four-line-density.ps1`). That is the arithmetic behind the guide's “keep Range only a couple of levels ahead of
Bonus” — the densities are equal, so any placement that keeps the two counters within a level or two is optimal; the only
asymmetry is the **cap** (Range stops at 20, Bonus continues to 30).

**2. The four densities, ×10⁻⁴ per medal:**

| *n* | price | Range = Bonus | Duration | Cooldown |
|---|---|---|---|---|
| 1 | 100 | **10.000** | 2.500 | 2.500 |
| 2 | 140 | 6.494 | 1.742 | 1.832 |
| 5 | 260 | 2.747 | 0.874 | 1.068 |
| 10 | 460 | 1.144 | 0.444 | 0.701 |
| 15 | 660 | 0.631 | **0.281** (below par) | 0.583 |
| 20 | 860 | 0.401 | 0.197 | — (capped) |
| 24 | 1 020 | 0.297 | 0.156 | — |

⇒ **`Range`/`Bonus` level 1 is the densest medal buy in the game** (**10.0e-4**, 4× the Cooldown's level 1 and **34×** the
cosmetic par **0.296e-4**), and all four lines stay above par well past the point where the cosmetic line is worth buying.

**3. The par-optimal Golden Bot** (`density ≥ 2.96e-5`, greedy over the four lines):

| line | levels | medals | panel value after | relative gain |
|---|---|---|---|---|
| **Range** | **20** | 9 600 | 60 m | ×3.00 |
| **Bonus** | **24** | 13 440 | ×6.8 | ×3.40 |
| **Duration** | **14** | 5 040 | 27 s | ×1.35 |
| **Cooldown** | **15** | 5 700 | 75 s | ×1.60 |
| **total** | **73** | **33 780** | — | **×22.03** (`Σ ln = 3.092`) |

**33 780 medals = 27.8 events ≈ 56 weeks**, i.e. **60.2 %** of the fully-capped **56 100** (46.2 events) buys **×22.03** of
the collected-coin chain — average density **0.92e-4** per medal. The purchase order the greedy produces is
`R1 B1 R2 B2 R3 B3 R4 B4 B5 R5 D1 C1 R6 B6 …` (Range and Bonus in lockstep pairs, the uptime pair entering at level 5–6,
the Cooldown line finishing first because its density decays slowest).

**4. The one open parameter (`A`, [H067](../hypotheses/H067-bot-range-amplification.md)).** The site says bot ranges are
“**amplified by the tower's own range**”, which would replace `18 + 2n` by `20 + A + 2n`. `A = 0` reproduces the table
above; the measured effect is a **uniform down-scaling** of the Range density: level 1 reads **10.00 / 6.67 / 5.00 /
3.33 / 2.00e-4** for `A = 0 / 10 / 20 / 40 / 80` m, so **at `A ≥ 10` Bonus overtakes Range from level 1** and the Range
line drops below par at level 16 (`A = 40`) or 12 (`A = 80`). Everything else in the table is `A`-independent.

### 3.3 The cross-bot ranking — every line collapses to one parameter `ρ` (new, Rev 10)

For a line with printed base *b* and printed increment *i*, put **`ρ = b / i`**. Then the relative gain of level *n* is

```
growing  lines (Range, Bonus, Duration, Linger, Damage, DmgRed) :  gain(n) = i/(b + i(n−1)) = 1/(ρ + n − 1)
shrinking lines (all five Cooldown lines)                        :  gain(n) = i/(b − i(n−1)) = 1/(ρ − n + 1)
density(n) = gain(n) / (40n + 60)        level-1 density = (100/ρ) × 10⁻⁴        Σcost(L) = 20L² + 80L
```

so **each of the 19 bot lines is fully described by two printed numbers** (`ρ` and its level cap), and `100/ρ` is the whole
first-step ranking. `tools/bot-cross-ranking.ps1` builds the table from the §1.3 prints only:

| # | line | base → +i | `ρ` | cap | **stop** | first-step (e-4) | medals to stop | ln | e-4/medal |
|---|---|---|---|---|---|---|---|---|---|
| 1 | Flame **Damage** | 50 → +8 | 6.25 | 30 | **25** | **16.00** | 14 500 | 1.6094 | **1.11** |
| 2 | Flame **DmgRed** | 20 % → +3 | 6.667 | 25 | 25 (cap) | 15.00 | 14 500 | 1.5581 | 1.07 |
| 2 | Thunder **Linger** | 20 % → +3 | 6.667 | 20 | 20 (cap) | 15.00 | 9 600 | 1.3863 | **1.44** |
| 4 | Flame **Range** | 30 → +4 m | 7.5 | 15 | 15 (cap) | 13.33 | 5 700 | 1.0986 | **1.93** |
| 5 | Thunder **Range** | 25 → +3 m | 8.333 | 15 | 15 (cap) | 12.00 | 5 700 | 1.0296 | 1.81 |
| 6 | Amplify **Bonus** | ×3.5 → +0.4 | 8.75 | 30 | **24** | 11.43 | 13 440 | 1.3198 | 0.98 |
| 7 | Golden **Range** | 20 → +2 m | 10 | 20 | 20 (cap) | 10.00 | 9 600 | 1.0986 | 1.14 |
| 7 | Golden **Bonus** | ×2.0 → +0.2 | 10 | 30 | **24** | 10.00 | 13 440 | 1.2238 | 0.91 |
| 7 | Bot Bot **Range** | 20 → +2 m | 10 | 20 | 20 (cap) | 10.00 | 9 600 | 1.0986 | 1.14 |
| 7 | Thunder **Duration** | 5 → +0.5 s | 10 | 20 | 20 (cap) | 10.00 | 9 600 | 1.0986 | 1.14 |
| 11 | Amplify **Range** | 25 → +2 m | 12.5 | 18 | 18 (cap) | 8.00 | 7 920 | 0.8920 | 1.13 |
| 12 | Bot Bot **Bonus** | ×1.05 → +0.05 | 21 | 19 | 19 (cap) | 4.76 | 8 740 | 0.6444 | 0.74 |
| 13 | Flame **Cooldown** | 75 → −3 s | 25 | 15 | 15 (cap) | 4.00 | 5 700 | 0.9163 | **1.61** |
| 14 | the four **120-s Cooldowns** | 120 → −3 s | 40 | 15 | 15 (cap) | 2.50 | 5 700 each | 0.4700 | 0.82 |
| 15 | the three **20-s Durations** | 20 → +0.5 s | 40 | 30 | **14** | 2.50 | 5 040 each | 0.3001 | 0.60 |

**1. The ties are exact, and so is the split.** Four lines share `ρ = 10` (Golden Range, Golden Bonus, Bot Bot Range,
Thunder Duration) ⇒ their ladders are cell-for-cell identical, which is the §1.2 “keep Range a couple of levels ahead of
Bonus” rule as an identity. Seven lines share `ρ = 40` (all four 120-s Cooldowns + the three 20-s Durations) and therefore
**start** at the same `2.500e-4`, but the two laws then diverge: the Cooldown lines *rise* to `0.583e-4` and run to their
cap 15, the Duration lines *fall* and stop at 14 (`0.304e-4` above par at 14, `0.281e-4` below at 15).

**2. The bot-vs-bot ranking** (each bot at the par, statistic = `Σ ln / medals`):

| Bot | levels | medals | events F2P / boosted | Σ ln | **e-4/medal** | % of its capped bill |
|---|---|---|---|---|---|---|
| **Thunder** | 70 | **30 600** | 25.2 / 14.2 | 3.985 | **1.30** | **100.0 %** |
| **Flame** | 80 | 40 400 | 33.3 / 18.7 | 5.182 | **1.28** | 87.3 % |
| **Amplify** | 71 | 32 100 | 26.4 / 14.9 | 2.982 | 0.93 | 59.0 % |
| **Golden** | 73 | 33 780 | 27.8 / 15.6 | 3.092 | 0.92 | 60.2 % |
| **Bot Bot** | 68 | 29 080 | 23.9 / 13.5 | 2.513 | 0.86 | 65.4 % |

Three readings: **(a)** **Thunder's entire bill is above par** (`100.0 %` of 30 600) — the guide's “max it or leave it” is
now derived, not quoted; **(b)** **Amplify (0.93) edges Golden (0.92)** because its Range caps at 18 levels (7 920 not
9 600) and its Bonus starts at `ρ = 8.75` instead of 10; **(c)** **Bot Bot is last** solely because its Bonus line is a
**4.76 %** step (`ρ = 21`, a `+0.05` increment on a `×1.05` base). For the coin chain itself only Golden/Amplify/Bot Bot
multiply coins, and there the order is Amplify > Golden > Bot Bot; Thunder's `×53.76` and Flame's `×178.13` are products of
mixed-unit stats (linger %, DR %) and are only used for their line order.

**3. The merged tap sheet** (density-greedy over all 19 ladders **plus** the five unlock prices, with the feasibility rule
that a level comes after its own unlock). The first 24 taps:

```
UNLOCK-Golden@150 UNLOCK-Amplify@300 Amplify.Bonus1@100 Golden.Range1@100 Golden.Bonus1@100 Amplify.Range1@100
Amplify.Bonus2@140 Golden.Range2@140 Golden.Bonus2@140 Amplify.Range2@140 Amplify.Bonus3@180 Golden.Range3@180
Golden.Bonus3@180 Amplify.Bonus4@220 Amplify.Range3@180 Golden.Range4@220 Golden.Bonus4@220 UNLOCK-Thunder@600
Thunder.Linger1@100 Thunder.Range1@100 Thunder.Duration1@100 Thunder.Linger2@140 Thunder.Range2@140 Thunder.Duration2@140
```

Priced against the levels, each unlock's own density is `ln(base)/price`: **Golden 46.21 · Amplify 41.76 · Thunder 3.04 ·
Flame 2.03 · Bot Bot 0.41 × 10⁻⁴**, and the sheet places them after **0 · 150 · 2 790 · 10 330 · 116 090** medals of levels.
Only the **Bot Bot** unlock (`×1.05` for 1 200 medals) falls under the best level lines — that single number is why the
guide's “unlock one, level it, then unlock the next” beats “unlock all five first”: 1 200 medals on that unlock buys
`0.41e-4`, the same 1 200 on `Flame.Damage`-style lines buys `1.11e-4`.
Total sheet: **367 taps / 169 110 medals** (362 levels + 5 unlocks) = **139.2 events ≈ 278 weeks** F2P, or **78.3 events ≈
157 weeks** at the boosted 2 160/event; the level part is **165 960 = 71.6 %** of the five-bot grand bill **231 860** for
`Σ ln = 17.755`, i.e. **1.07e-4** on average.

**4. The tail split** (why the par stops where it does — the last levels are 1/3 of the bill for 1/9 of the effect):

| line | stop / cap | medals | % of the line's bill | % of the line's gain | tail density |
|---|---|---|---|---|---|
| Golden Bonus | 24 / 30 | 13 440 / 20 400 | 65.9 % | **88.3 %** | 6 960 medals → 0.23e-4 |
| Amplify Bonus | 24 / 30 | 13 440 / 20 400 | 65.9 % | 88.7 % | 6 960 → 0.24e-4 |
| Flame Damage | 25 / 30 | 14 500 / 20 400 | 71.1 % | 91.6 % | 5 900 → 0.25e-4 |
| each 20-s Duration | 14 / 30 | 5 040 / 20 400 | **24.7 %** | 53.6 % | 15 360 → 0.17e-4 |

**5. `A` sensitivity ([H067](../hypotheses/H067-bot-range-amplification.md)).** Tower amplification only changes the Range
lines' `ρ` to `(base + A)/i`, so it *moves the Range lines down the table* and nothing else: with `A = 40` m,
`Flame.Range` 13.33 → 5.71, `Thunder.Range` 12.00 → 4.62, `Golden/Bot Bot Range` 10.00 → 3.33, `Amplify.Range` 8.00 →
3.08e-4 — at that point every Range line sits below `Bot Bot.Bonus` (4.76) and the tap order flips to Bonus-first.

### 3.4 The Bot+ block on the same scale — three price ladders, one law (new, Rev 11)

The fandom now prints **cell-by-cell** the Bot+ tables (`Flame Bot`, `Thunder Bot`, `Amplify Bot`, fetched 2026-11-03), and
all three medal ladders in the bot layer are the *same* arithmetic line with a different slope:

```
price(n) = 100 + s(n−1)      s = 40  stat lines        Σ = 100L + 20L(L−1) = 20L² + 80L
                             s = 50  Bot+ lines        Σ = 100L + 25L(L−1) = 25L² + 75L
                             s = 200 Echoing Shot      Σ = 100L + 100L(L−1) = 100L²
density(n) = 1/((ρ + n − 1)(100 + s(n−1)))   or   1/((ρ − n + 1)(100 + s(n−1))) for the Cooldown lines
```

(the three Σ forms already banked in §1 and §1.4 are this one formula at `s = 40 / 50 / 200`; every ladder starts at
**100**, so the first step of *any* line in the layer is still **100/ρ**.)

**1. The unified ranking of all 25 lines** — the two densest buys in the whole medal layer are **Bot+ levels**:

| # | line | base → +i | `s` | `ρ` | cap | stop | first step | medals | ln | e-4/medal |
|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **Echoing Shot** (Amplify+) | 3 → +1 bullet | 200 | 3 | 9 | 9 | **33.33** | 8 100 | 1.3863 = ×4.00 | **1.71** |
| 2 | **Titan Shock** (Thunder+) | 5 % → +1 % | 50 | 5 | 20 | 20 | **20.00** | 11 500 | 1.6094 = ×5.00 | 1.40 |
| 3 | Flame Damage | 50 → +8 | 40 | 6.25 | 30 | 25 | 16.00 | 14 500 | 1.6094 | 1.11 |
| 4–5 | Thunder Linger / Flame DmgRed | 20 % → +3 | 40 | 6.667 | 20 / 25 | cap | 15.00 | 9 600 / 14 500 | 1.3863 / 1.5581 | 1.44 / 1.07 |
| 6–7 | Flame Range / Thunder Range | 30 → +4 / 25 → +3 | 40 | 7.5 / 8.333 | 15 | cap | 13.33 / 12.00 | 5 700 each | 1.0986 / 1.0296 | 1.93 / 1.81 |
| 8 | Amplify Bonus | ×3.5 → +0.4 | 40 | 8.75 | 30 | 24 | 11.43 | 13 440 | 1.3198 | 0.98 |
| 9–12 | the four `ρ = 10` lines | — | 40 | 10 | 20/30 | 20 / 24 | 10.00 | 9 600 / 13 440 | 1.0986 / 1.2238 | 1.14 / 0.91 |
| 13 | Amplify Range | 25 → +2 m | 40 | 12.5 | 18 | 18 | 8.00 | 7 920 | 0.8920 | 1.13 |
| 14 | **Wild Fire** (Flame+) | ×1.5 → +0.1 | 50 | **15** | 20 | **19** | 6.67 | 10 450 | 0.8183 = ×2.27 | 0.78 |
| 15 | Bot Bot Bonus | ×1.05 → +0.05 | 40 | 21 | 19 | 19 | 4.76 | 8 740 | 0.6444 | 0.74 |
| 16–18 | **Bonus Cells** / **Maximum Power** (1.25 → +0.05) and Flame Cooldown | — | 50 / 50 / 40 | 25 | 25 / 20 / 15 | **15** / 15 / 15 | 4.00 | 6 750 / 6 750 / 5 700 | 0.4700 / 0.4700 / 0.9163 | 0.70 / 0.70 / 1.61 |
| 19–25 | the seven `ρ = 40` uptime lines | — | 40 | 40 | 30 / 15 | 14 / 15 | 2.50 | 5 040 / 5 700 | 0.3001 / 0.4700 | 0.60 / 0.82 |

**2. The Bot+ block at the par** (`density ≥ 2.956e-5`): **78 levels / 43 550 medals = 72.5 %** of the capped **60 100**,
`Σ ln = 4.754`, **1.09e-4** per medal (**35.8 events** F2P, 20.2 boosted). Echoing Shot and Titan Shock run to their caps
(**100.0 %** of their bills above par), Wild Fire stops one level short of its cap (19/20), and **both cell lines stop at
level 15** — which reproduces the §5 step-6 recommendation (`×2.00` for **6 750**) from the density side rather than from
the block table. Note the asymmetry the par exposes: at the same `ρ = 25`, the 25-level line is above par only to 15
(**38.6 %** of its 17 500) while the 20-level line reaches **58.7 %** — the long cell line's tail (levels 16–25, **10 750**
medals for `×2.50/×2.00 = ×1.25`, **0.21e-4**) is the single worst medal block in the bot layer.

**3. Where the block enters the tap order.** The Bot+ levels are locked behind **all five** bot unlocks (3 150 medals), and
the fifth unlock (Bot Bot, 1 200) is itself only `0.41e-4`, so a pure density-greedy defers it far down the sheet: the
merged 25-line plan is **445 taps / 212 660 medals = 175.0 events ≈ 350 weeks** F2P (**98.5 events ≈ 197 weeks** boosted),
with the unlocks at taps **1 / 2 / 54 / 88 / 331** (cumulative **0 / 150 / 8 910 / 17 410 / 139 030**) and the Bot+ block
opening at **tap 332 (cum 140 230)**. Priced as a *package* instead, the last unlock plus the whole Bot+ block is
`(0.0488 + 4.754) / (1 200 + 43 550) =` **1.07e-4** per medal, i.e. **above** the `ρ = 40` uptime lines (`0.60`) and the two
cell lines (`0.70`): the practical rule is **finish the five unlocks as fast as possible** (they are 3 150 medals, 2.6 events
in total) **and then take Echoing Shot's 9 levels and Titan Shock's 20 before finishing the uptime lines** of the stat bots.

**4. The stone gate is not the binding one.** The five Bot+ unlocks cost **5 × 1 250 = 6 250 stones**. Against the T014 §3.3
weekly grid: **78.1 / 40.6 / 14.5 / 5.8 / 1.0 / 0.3 weeks** in the bands **80 / 154 / 432 / 1 080 / 6 400 / 20 160**
stones/week, so below Platinum the gate costs weeks but never more than the ~350-week medal bill — while the **910-stone**
GT+DW+BH sync of T008 needs only **0.8–11.4** of those same weeks. Order the stone wallet as **UW sync first, Bot+ second**,
and note that Bot+ levels themselves cost **medals**, not stones (the 1 250 is per unlock).

## 4. What each Bot+ ability is worth

| Bot+ (1 250 stones) | Levels | Effect at 0 → max | Why it ranks |
|---|---|---|---|
| **Golden Bot+ — Bonus Cells** | 25 (17 500 m) | ×1.25 → **×2.50** cells | directly multiplies Elite Cells → lab boosts (T006) |
| **Bot Bot+ — Maximum Power** | 20 (11 500 m) | ×1.25 → **×2.25** to *other* Bot+ | multiplies the line above ⇒ ≈ **×5.6** cells together |
| **Amplify Bot+ — Echoing Shot** | 9 (8 100 m) | 3 → **12** bullets | near-linear damage (UW projectiles get ⅓) |
| **Flame Bot+ — Wild Fire** | 20 (11 500 m) | ×1.5 → ×3.5 | damage-on-burn |
| **Thunder Bot+ — Titan Shock** | 20 (11 500 m) | −5 % → −25 % enemy attack speed (× digits of enemy mass) | permanent, so it is run-independent |

## 5. Steps (UI only)

1. Home → **Events** → **Event Shop** → the bot entries; unlock in this order: **Golden Bot (150)** → **Amplify (300)** →
   **Thunder (600)** → **Flame (900)** → **Bot Bot (1 200)** (Σ **3 150**; the price is the count you already own). Unlock
   **one**, level it, then unlock the next — a freshly unlocked bot is nearly worthless (§1.2).
2. Open **Golden Bot** in the panel and tap the **Cooldown** line's `+` to level 5 (**900 medals**) — that alone takes
   uptime from 16.7 % to ≈ 21 % and is the cheapest multiplier per medal in the shop.
3. Then **Bonus** to 10 (**2 800**, ×2.0 → ×4.0) and **Range** to 10 (**2 800**, 20 m → 40 m). *Two readings:* the Tower Hub
   guide puts **Range first** (“the strongest upgrade”, and it also scales with the tower's own range), keeping it only a
   couple of levels ahead of Bonus; the per-unit table of §2 favours Bonus while your kills are inside the tower's range. In
   practice: alternate them, keeping Range ≤ 2 levels ahead.
4. When the **`Golden Bot Cooldown`** lab appears (Milestones T5 W80), decide the target first (§3): take **5 lab levels**
   to land on exactly **100 s** — not 8, not 12 (non-divisors break the sync).
5. Research **`Golden Bot Duration`** at T10 W50 (its first 5 levels cost 100 B → 506.25 B coins, so it is a late-tier
   purchase; each level is +0.5 s and it is what pushes uptime to 90 %).
6. After **all five bots**: **Bot+** panel → buy **Golden Bot+** (1 250 stones) and take it to level 15 (**×2.00**, 6 750
   medals) — the block table says level 16+ costs 24 %–75 % more per +0.05; then **Bot Bot+** to level 10 (**×1.75**).
7. Take the **300-gem bot respec** only inside an event, and only to move medals from `Range`/`Duration` into
   `Cooldown`/`Bonus` — the refund returns Bot+ levels too, so a Bot+ re-unlock costs no stones.
8. Do **not** research bot cooldown lab levels past your sync divisor “because the lab is cheap” — those levels are
   permanent and are the one bot purchase the respec cannot undo.

## 6. Reproduction checklist

- [ ] Bot unlock prices read **150 / 300 / 600 / 900 / 1 200**; the first upgrade level of any line reads **100**, the
      second **140**, the third **180** (formula `100 + 40(n−1)`).
- [ ] Golden Bot's four lines at max read **×8.0 / 35 s / 75 s / 60 m** and the panel's total spent is **56 100** medals.
- [ ] `Bonus Cells` reads **×1.25** at level 0, **×1.30** at level 1 (**+0.05** per level), and **×2.50** at 25 — the line
      total is **17 500** medals (this is also the H015 read: 0.05, not 0.5).
- [ ] `Maximum Power` caps at **×2.25** (20 levels, 11 500 medals).
- [ ] With 5 cooldown-lab levels + 5 medal levels, Golden Bot's cooldown reads exactly **100 s**.
- [ ] **§3.1 density:** with **0** levels the **Bots** screen shows Golden `20 s / 120 s`; after **one** level on each of
      the two lines it reads `20.5 s / 117 s`, i.e. uptime `(20.5/117)/(20/120) =` **×1.05128**, which is exactly
      `(1 + 0.5/20)(1 + 3/120)` from the separable law.
- [ ] **§3.1 the 900-medal checkpoint:** five Cooldown levels cost `100 + 140 + 180 + 220 + 260 =` **900** medals and the
      panel must read **105 s** (= 120 − 3·5); ten levels ⇒ **2 800** medals on that line and **90 s**.
- [ ] **§3.1 the stop rule:** **Cooldown 15 / Duration 14** reads `27 s / 75 s` = **36 %** uptime on
      `5 040 + 5 700 =` **10 740** medals (against **26 100** fully capped) — the last sixteen levels sit below the
      cosmetic par of **0.296e-4**.
- [ ] **§3.2 the Range–Bonus tie:** one **Range** level must read `22 m` and one **Bonus** level `×2.2`; if the collected
      coins move by the **same** factor after each (measured over the same wave window), the `1/(n + 9)` identity holds and
      `A = 0` (**H067**).
- [ ] **§3.2 the par plan:** at **R 20 / B 24 / D 14 / C 15** the panel reads `60 m / ×6.8 / 27 s / 75 s` on
      `9 600 + 13 440 + 5 040 + 5 700 =` **33 780** medals (**27.8 events**), against **56 100** fully capped.
- [ ] **§3.3 the ρ read:** one level on each of these lines must print exactly `base + one increment` — Amplify Bonus
      **×3.9**, Thunder Linger **23 %**, Thunder Range **28 m**, Flame Damage **×58**, Flame DmgRed **23 %**, Flame Range
      **34 m**; those six prints are the whole input of the ranking (`ρ = base/increment`).
- [ ] **§3.3 the first-event checkpoint:** the sheet's event 1 is **8 taps for 1 130 medals** (2 unlocks + 6 levels) and
      leaves **85** of the **1 215**; the cumulative ledger is **1 130 / 2 350 / 3 590 / 4 690 / 5 830** after events
      1–5 (**8 / 15 / 20 / 27 / 32** taps).
- [ ] **§3.3 the unlock milestones:** the Thunder unlock becomes the best buy after **2 790** medals of levels, the Flame
      unlock after **10 330**, the Bot Bot unlock only after **116 090**; the whole sheet is **367 taps / 169 110 medals**.
- [ ] **§3.4 the Bot+ price column:** the first five levels read **100 · 150 · 200 · 250 · 300** (`Σ = 1 000`) and the
      twentieth reads **1 050** with the panel total **11 500**; the **Echoing Shot** column reads
      **100 · 300 · 500 · … · 1 700** with the total **8 100**.
- [ ] **§3.4 the cell-line stop:** **Golden Bot+** at **level 15** reads **×2.00** on **6 750** medals (`25·15² + 75·15`),
      and that is exactly the density-par stop; levels 16–25 are **10 750** medals for `×2.50/×2.00` = **0.21e-4**.
- [ ] **§3.4 the block bill:** at the par the five Bot+ lines total `8 100 + 11 500 + 10 450 + 6 750 + 6 750 =` **43 550**
      medals (**72.5 %** of the capped **60 100**) after `5 × 1 250 =` **6 250** stones.
- [ ] The respec costs **300 gems** and the medal counter returns in full.
- [ ] The five unlock prices are **150 / 300 / 600 / 900 / 1 200** ⇒ **Σ 3 150**.
- [ ] The **theme** costs **150** and the **background** **250** in the current event (**400** together), and each of the
      **3** (non-rotating) songs costs **200** and reads **+0.6 %** coins — even while **unequipped**.
- [ ] Golden Bot's four **level-1** values read **20.5 s / 117 s / ×2.2 / 22 m** (+0.5 s, −3 s, +0.2×, +2 m per level), and
      its level-10 prices are **100 / 140 / 180 / 220 / 260 / 300 / 340 / 380 / 420 / 460** (Σ **2 800** per line).
- [ ] **Amplify Bot**’s panel total reads **54 420** medals, its **Range** line stops at **18** levels (**61 m**) and its
      Bonus at **×15.5**.
- [ ] **Bot Bot**’s Bonus reads **×1.10** at level 1 and stops at **×2.00** after **19** levels (line total **8 740**, four
      lines **44 440**).
- [ ] Any `* Cooldown` lab’s first five levels sum to **515.0 M** coins and any `* Duration` lab’s to **1.32 T**.
- [ ] Thunder’s level-1 values read **5.5 s / 117 s / 23 % / 28 m** (caps **15 s / 75 s / 80 % / 70 m**) and Flame’s
      **23 % / 72 s / 58× / 34 m** (caps **95 % / 30 s / ×290 / 90 m**).
- [ ] Flame’s **Burn Stack** lab shows five levels **43 T → 217.69 T** (Σ **567.06 T**) and Thunder’s **Linger Time** lab
      gates at **T10 W60**.
- [ ] The Burn-Stack lab’s **time** column is 45 d 15 h → 52 d 11 h 15 m → 60 d 8 h 8 m → 69 d 9 h 21 m → 79 d 19 h 10 m
      (**×1.15** each, T006’s clock law) and the whole line sums to **307.6 d**.
- [ ] With all labs maxed, Golden Bot reads **50 s** cooldown and **45 s** duration (the §1.4 cross-check), and the two
      printed Bot+ totals are **17 500** (25 levels) and **11 500** (20 levels).
- [ ] Flame’s damage reduction shows up as a **separate** line from `Defense %` (it does not push the defense readout to
      98 %), and a stunned enemy’s next stun is measurably shorter after a long run (**Stun Decay** 0.5 %/s).

## 7. Falsification

- If a normal line's level 2 costs something other than **140**, the `+40` ladder changed → re-read three levels and
  rebuild §1 (the whole ranking is ratio-driven, so only the block boundaries matter).
- If Bot Bot's `Bonus` reads **+0.5** per level, Tower Hub's 19-level/×2.00 table is stale and the fandom's 30-level/×2.55
  is live → recompute §2's Bot+ rows and note it in [H015](../hypotheses/H015-bot-bot-increment.md).
- If `Bonus Cells` at level 1 is not ×1.30, the Bot+ ladder is not `50 + 50n` → record the first five prices.
- If **theme + background** do not cost **400** medals together (**150 + 250**), or a song is not **200** / not
  **+0.6 %**, §1.1's cosmetics row is re-versioned (theme + background rotate per event; the songs do not) → re-read the
  Event Shop panel; the bot rows are unaffected.
- If **Amplify Bot**'s four-line total is not **54 420**, its Range caps at **20** not **18** (that would make the total
  **56 100**, Δ 1 680) → re-read the Range line's max level and re-sum §1.3.
- If **Bot Bot**'s Bonus line has **30** levels (not 19), the four-line total is **56 100** not **44 440**, and the value
  ladder would have to end at **×2.55**, not ×2.00 → record both printed numbers; §1.3's derivation is the check.
- If Thunder’s Linger tops out below **80 %** (ladder `20 + 3n`) or Flame’s Range stops below **90 m** (`30 + 4n` — note the
  **+4 m** step, unique among bots), §1.3’s caps are version-skewed → re-read level-1 value + cap per line; only the
  derived **30 600 / 46 300** (and the 231 860 grand bill) change, the printed 56 100/54 420 anchors do not.
- If a low-level **Thunder Bot** provably does *not* disturb a build (the guide says it “can actually cause problems”), the
  “max it or skip it” rule relaxes to normal per-unit ordering (§1.2 row 3).
- If the Golden Bot cooldown reads a value that is not `120 − 3·(medal levels) − (lab levels)`, another source (module
  sub-stat, relic, Vault line) is in the sum → list them and re-derive the divisor.
- **§3.1:** if a **Duration** level moves the printed value by other than **0.5 s**, or a **Cooldown** level by other than
  **3 s**, the two numerators change → re-read the per-level value from the **Bots** screen and re-run
  `tools/bot-uptime-density.ps1` (the par comparison survives, only the stop levels move).
- **§3.1:** if the panel shows a **Duration** value for **Flame** other than the assumed base, the absolute uptime % moves
  but the Cooldown block's **×2.50** (`75 → 30 s`) does not — it is a ratio of the printed column alone.
- **§3.1:** if the bot's coin output does **not** scale with the on-time fraction (e.g. a fixed number of collections per
  activation), the ranking still orders the lines but the multipliers are no longer the coin multipliers → re-check the
  coin/day counter with the two lines capped (**46.67 %** uptime expected).
- **§3.2:** if one **Range** level changes the collected coins by other than `2/(20 + A + 2(n−1))` for one constant `A`,
  coverage is not linear in the printed range → use the measured per-level factors instead of `1/(n + 9)`
  ([H067](../hypotheses/H067-bot-range-amplification.md)); the Bonus/Duration/Cooldown ladders are unaffected.
- **§3.2:** if **Bonus** and **Range** do **not** tie at level 1 (both should be a 10 % step), then `A > 0` and Bonus leads
  — re-run `tools/bot-four-line-density.ps1` with the measured `A`; the par-optimal level counts fall out of the same loop.
- **§3.3:** the `ρ` reduction fails for any line whose level-1 print is **not** `base + one increment` (e.g. a line that
  prints `+3 %` on one level and `+2 %` on the next) → that line is re-inserted with its measured two-point ladder and the
  other lines keep their `100/ρ` first step.
- **§3.3:** if the five unlock prices are not **150 / 300 / 600 / 900 / 1 200**, the sheet's unlock positions
  (**0 / 150 / 2 790 / 10 330 / 116 090**) move — they are pure prefix sums of the price ladder — but the line ranking and
  the block totals do not.
- **§3.3:** if Thunder's Linger prints a per-level increment other than **+3 %**, its `ρ = 6.667` and its
  **1.44e-4**-per-medal block leave the table (the block total 30 600 is unaffected, it is a cap sum).
- **§3.4:** if a **Bot+** level-1 price is other than **100**, or its step other than **50** (**200** for Echoing Shot),
  the slope `s` for that line changes → re-run `tools/botplus-density.ps1` on the printed column; the `ρ` values and the
  ranking of *first steps* are unaffected, only the stop levels and block totals move.
- **§3.4:** if a Bot+ level does not move its printed value by exactly its increment (**×1.5 → ×1.6** for Wild Fire,
  **5 % → 6 %** for Titan Shock, **3 → 4** bullets for Echoing Shot), that line leaves the `100/ρ` table and is re-entered
  with its measured ladder.
- **§3.4:** if Bot+ levels turn out to be buyable **before** all five bots are unlocked, the block moves earlier in the
  sheet — its package density **1.07e-4** then outranks the `ρ = 40` uptime lines (0.60) from the first event.

## Sources

- Tower Hub `wiki/bot/golden-bot`, `wiki/bot/amplify-bot`, `wiki/bot/bot-bot`, `wiki/bot/thunder-bot`,
  `wiki/bot/flame-bot` (all last verified **2026-11-01**) — the second copy of every stat line and the prose totals:
  Golden “each of its four upgrades starts at **100 medals** per level and rises by **40** … maxing all four takes
  **56 100 medals**” with the cost table’s header row (`1 100 20.5 117 2.2 22` … `10 460 25.0 90 4.0 40`, “Showing 10 of
  **31** rows”) and its summary line “**×8 coins, 60 m range, 50 s cooldown and 45 s duration with labs**”;
  **Golden Bot+ Bonus Cells** “1 250 stones … its **25 levels** … from **1.25×** by **0.05** per level to **2.5×**, for
  **17 500 medals** in total”; **Bot Bot+ Maximum Power** “**1.25× to 2.25×** (**20 levels**, +0.05); 1 250 stones … then
  **11 500 medals** to max”; **Amplify** “Medals to max per stat: Bonus 20 400, Range 7 920, Cooldown 5 700, Duration
  20 400 (together **54 420**” and the Echoing Shot/⅓-UW rule; **Flame** DR “starts at 20 % … 25 levels, adding 3 % …
  **up to 95 %** … a **separate mechanic** from Defense %, does **not** count toward the 98 % cap and is applied **after**
  Defense Absolute”, its lab table’s time column (45 d 15 h … 79 d 19 h 10 m) and Wildfire/Singularity Harness/AoE-card
  notes; **Thunder** 20/15/20/15-level lines, the “never stuns bosses/elites/fleets, linger at 25 % strength (v29.1.2)”
  rule and **Stun Decay** (−0.5 % per stunned second, shared with Poison Swamp and Inner Land Mine).

- fandom raw wikitext: `Golden Bot`, `Amplify Bot`, `Flame Bot`, `Thunder Bot`, `Bot Bot` — per-line increments/level
  counts (e.g. Golden: Bonus 30 lv +0.2, Duration 30 lv +0.5, Cooldown 15 lv −3, Range 20 lv +2; Flame cooldown starts at
  **75 s**; Amplify Bonus +0.4/lv → ×15.5), the “100 + 40/level” rule, and the five Bot+ tables with their totals
  (17 500 / 8 100 / 11 500 / 11 500 / 11 500).
- Tower Hub `wiki/bot/golden-bot` + `wiki/bot/bot-bot` (last verified 2026-11-01) — the **56 100**-medal total,
  Bot Bot's **19 levels / +0.05 / ×2.00** cap, `Maximum Power` **×1.25→×2.25 / 11 500** (now printed as “**20 levels,
  +0.05**” — closes its level count too), the lab gate waves (**T5 W80**, **T6 W90**, **T10 W50**) with per-level coin
  costs (30 M → 3.25 B; 100 B → 3.84 T at ×1.5/level), the **300-gem** bot respec that also refunds Bot+, and
  “lab levels cannot be respecced”.
- Tower Hub `wiki/bot/bot-bot` + `wiki/bot/amplify-bot` (fetched **2026-11-02**) — Bot Bot’s Bonus ladder “starts at
  **x1.05**, **19 levels**, each **+0.05**, up to **x2.00**” and Range “20 m, **20 levels**, +2 m → **60 m**” (⇒ the
  derived **44 440**); Amplify’s printed per-stat maxes **Bonus 20 400 · Range 7 920 · Cooldown 5 700 · Duration
  20 400 = 54 420**, its Range “starts at **25 m**, **18 levels**, +2 m” (→ **61 m**), the “**Showing 10 of 31 rows**”
  ⇒ 30-level corroboration, and the per-bot lab gates (Bot Bot’s two labs both at **T6 W90**). New detail lines:
  “**Gilded Sniper does not work on Bot Bot**”, the Amplify cooldown lab is “flagged in the **Footguns** section”, and
  Echoing Shot = “tower bullets within range count as several bullets; UW projectiles boosted by **1/3** of that”.
- Tower Hub `wiki/bot/thunder-bot` + `wiki/bot/flame-bot` (2026-11-01) — Thunder: Duration **20 lv** (5→15 s), Cooldown
  **15 lv** (120→75), **Linger 20 lv +3 %** (20→80 %), Range **15 lv +3 m** (25→70 m); “on for Duration out of every
  Cooldown”; bosses/elites/fleets half-speed + 25 %-linger (v29.1.2); **Stun Decay −0.5 %/stunned second**; lab gates
  **T5 W70** / **T10 W60** (linger 3→13 s). Flame: DR **25 lv +3 %** (20→**95 %**, “separate mechanic… not counted toward
  the 98 % cap, applied after Defense Absolute”), Cooldown **15 lv** (**75**→30 s), Damage **30 lv +8×** (×50→×290, ≈
  **1 470×/s** maxed incl. lab), Range **15 lv +4 m** (30→90 m); **Burn Stack** lab T10 W50, **5 lv** at 43 T ×1.5/lv
  (Σ **567.06 T**), 10-stack cap in 2 hits at max; `Singularity Harness` doubles damage to burned enemies; AoE card
  +5 %→+25 % (1→7 stars) on Flame/Inner Land Mines/Poison Swamp/Smart Missiles/Land Mines. Both pages corroborate the
  per-bot lab gates and the ×1.5 coin series (43/64.5/96.75/145.12/217.69 re-multiplies exactly).
- Tower Hub `wiki/guide/medals-guide` (last verified **2026-11-01**) — the unlock ladder **150/300/600/900/1 200**, the
  “**100 medals plus 40 per level already bought**” rule, the **300-gem** once-per-event respec returning all medals incl.
  Bot+, the 5-step medal spend order (relics → theme+song → ≤ 2 stone packs → 1 gem pack → bots), the **400**-medal
  theme + song pair, the **3 songs × +0.6 %** coins, and the per-bot priority with reasons (§1.2). `wiki/system/events`
  (2026-11-01) sharpens the cosmetics to **150 theme + 250 background = 400/event** and **200 × 3 non-rotating songs**,
  and prices the Bot+ layer in stones: **5 × 1 250** unlocks + **3 × 1 500** Synchronicity slots = **10 750 stones**.
  The `golden-bot` page also
  prints the four lines' **level-1 values** (20.5 s / 117 s / ×2.2 / 22 m) and caps (**30 / 15 / 30 / 20**), the maxed
  **×8.0 / 35 s / 75 s / 60 m**, the lab ceilings (**45 s** / **50 s**), and “all bot ranges are amplified by your tower's
  range”; plus `Gilded Sniper` counting a kill as inside Golden Bot **only while the bot is active** and the v28 change
  (bots move while active, speed no longer tied to cooldown).
- Cross-references: [T013](T013-event-medal-economy.md) (medal income), [T006](T006-lab-queue-packing.md) (what cells buy),
  [T008](T008-uw-sync-with-stones.md) §4 (the 200-s sync package the bot must divide), [T017](T017-vault-keys-priority.md)
  (respec-to-0 lines).
- `tools/bot-uptime-density.ps1` (new, §3.1) — the two density laws and their 15-level tables, the greedy interleave
  (**7 levels / 1 060 medals** at 1 215; **13 / 2 820** at 3 000), the per-line ranking
  (**1.61 / 1.14 / 0.82 / 0.296 / 0.27 × 10⁻⁴**), the cosmetic par `ln(1.03)/1 000`, the stop levels
  (**Cooldown 15 / Duration 14**, `5 040 + 5 700 =` **10 740** medals) and the segment check
  (**900** medals for ×1.143 vs **2 900** for ×1.200). It also re-adds every printed per-line total from
  `Σ(100 + 40(n−1)) = 20L² + 80L`: **20 400** (L30) · **5 700** (L15) · **9 600** (L20) · **7 920** (L18).
- `tools/bot-four-line-density.ps1` (new, §3.2) — the four density ladders and the `dR = dB = 1/(n + 9)` identity check,
  the par-optimal plan (**R 20 / B 24 / D 14 / C 15 = 33 780** medals, `Σ ln = 3.092` = **×22.03**, **0.92e-4** average)
  with its purchase sequence, and the `A`-sensitivity table (**10.00 / 6.67 / 5.00 / 3.33 / 2.00e-4** at level 1 for
  `A = 0 / 10 / 20 / 40 / 80` m). Prints from Tower Hub `wiki/bot/golden-bot` (the “amplified by your tower's range”
  sentence) and the fandom `Golden Bot` ladder values (`20 m`, +2 m, cap 60 m; ×2.0, +0.2, cap ×8.0).
- `tools/bot-cross-ranking.ps1` (new, §3.3) — the `ρ` reduction and the 19-line table (first step = `100/ρ × 10⁻⁴`), the
  tie groups (`ρ = 10` on four lines, `ρ = 40` on seven), the bot-vs-bot ranking (**1.30 / 1.28 / 0.93 / 0.92 / 0.86e-4**),
  the feasibility-constrained 367-tap sheet with the five unlock positions (**0 / 150 / 2 790 / 10 330 / 116 090**) and the
  per-event ledger, the tail-split table, and the `A` sensitivity of the five Range lines. Its inputs are the §1.3 prints
  only, and it re-adds all five capped bills (**56 100 / 54 420 / 44 440 / 30 600 / 46 300 = 231 860**) from `20L² + 80L`.
- `tools/botplus-density.ps1` (new, §3.4) — the three-slope law `price(n) = 100 + s(n−1)` (`s = 40 / 50 / 200`) and the
  unified 25-line ranking (**33.33 / 20.00 / 16.00 / 15.00 …**), the Bot+ block at the par (**78 levels / 43 550 = 72.5 %**
  of **60 100**, both cell lines stopping at **15 = 6 750**), the merged 25-line sheet (**445 taps / 212 660 medals =
  175.0 events**), the unlock positions **1 / 2 / 54 / 88 / 331** and the Bot+ opening at **tap 332 (cum 140 230)**, the
  package density **1.07e-4**, and the **6 250-stone** gate against the T014 grid. It re-adds the printed totals from
  `Σ = 100L + s·L(L−1)/2`: **17 500** (L25, s50) · **11 500** (L20, s50) · **8 100** (L9, s200) · **20 400** / **5 700** (s40).
- fandom raw wikitext, fetched **2026-11-03**: `Flame Bot` (the **Wild Fire** column 0 · 100 · 150 · … · 1050 with ×1.5 →
  **×3.5** in **+0.1** steps and the total **11 500**), `Thunder Bot` (**Titan Shock** 5 % → **25 %** in **+1 %** steps,
  total **11 500**; the four upgrade sections 20/15/20/15 against the prose “**3** upgrades”; “Stun and linger are **50 %**
  effective against Bosses and Elites”), `Amplify Bot` (**Echoing Shot** 100 · 300 · … · 1700 = **8 100** for 3 → **12**
  bullets, and the four stat lines **20 s**/+0.5/30 · **120 s**/−3/15 · **×3.50**/+0.4/30 · **25 m**/+2/18).
