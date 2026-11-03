# T003 — Turtle build: clear Tier 1–2 almost for free

Rev: 4 (2026-11-02) - **three printed gates** added: the Wall’s readiness conditions (**hundreds of billions of coins per
day** + at least **three lab slots**, “costs **trillions**” before it pays) from `wiki/guide/frequently-asked-questions`;
the **Tier 13 / 14 orb breakpoint** from `wiki/guide/guides-100-afk-orb-devo` (below T14 orbs **instantly kill** Basic /
Fast / Tank / Ranged — not Protectors or shielded — booking the leftover health as orb damage; from T14 the `Orb
Resistance` BC turns it into a **share of max health**), with Orb Devo hoarding **on** the tower and Reverse Orb Devo
**outside** range; and the midgame order from `wiki/guide/strategies` with the **−50 % / −50 %** perk trade printed as
**×2** effective health.
Rev: 3 (2026-11-02) - **the printed build ladder** added from `wiki/guide/health-build` · `hybrid-guide` · `cf-guide` ·
`devo-guide` · `orb-devo` · `smax-devo`: the tier windows (**eHP T1-9 -> hybrid T1-11 -> glass cannon T12+**, tournaments
stay hybrid), the eHP law `1/(1 - Def%)` with **x10 / x20 / x100** at 90/95/99 % (3/3 re-add), the **98 %** cap's four
sources, the five-slot **lab target sheet** (`Labs Speed` 99, `Attack Speed` 99, `Def %` 23, `Health` 40-50, `Cash Bonus`
40-50, `Coins/Kill` 50-70, `GT Duration` 20 before `GT Bonus`, `Waves Required` on **4n+1**), the CF split verified from
the printed columns (**667.62 d** raw / **333.8 d** at Labs Speed 50 = the predicted x2.0 / **224.0 d** at 99; stone lines
`5 + 9(n-1)` over **35** levels = **5 530** and the last ten = **2 705**, slow **2 910**, cooldown **1 506**, maxed CF
**9 946**), and the devo family (**1 B** / **10-15 B** entry, the **x7** DW cap, **800**-stone optimum at the **3:20** sync,
the 2:1 HP/Damage alternation). Three printed skews recorded (Shockwave-with-Wall inverted between two pages, Thorns 5-20
vs 15-20 %, Plasma Cannon 6 vs 7). Section "The printed build ladder".
Rev: 2 (2026-11-02) - the Tier 1-2 layer is now **printed** (`wiki/guide/beginner-guide`, last verified 2026-11-02
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

## The printed build ladder: eHP T1–9 → hybrid T1–11 → glass cannon T12+ (Rev 3)

Four guide pages now print the build layer with numbers (`wiki/guide/health-build`, `wiki/guide/hybrid-guide`, last
verified **2026-11-01** / **2026-07-29**), and every prose figure re-adds from the wiki tables.

**Tier windows.** Hybrid = equal investment in damage and health; it is *the* farming build for **T1–T11**, still possible at
T12 with a developed Wall, and from **T12** the farming build switches to **Glass Cannon** — while top tournament players keep
running hybrid. Health/eHP builds “dominate the early game because health scales efficiently through tiers 1–9”, and the build
needs **no** Ultimate Weapon to start (GT + BH only accelerate it).

**The eHP law** (printed): `eHP = (Health + Defense Absolute) / (1 − Defense %)` ⇒ **90 % = ×10**, **95 % = ×20**,
**99 % = ×100** — all three re-add exactly (`1/(1−0.95) = 20` ✓), so each Def % point is a *multiplicative* health bonus and
95 → 99 % alone is ×5. The printed **98 %** farm cap is the sum of four named sources: **`Def %` lab level 23** + maxed
`Standard Perk Bonus` at **25** + a maxed **Def % card** + an **ancestral Def % substat**. The `Extra Defense` card is
**+5 / 6 / 7 / 8 / 9 / 10 / 11 pp** at stars 1–7 (arithmetic, +1 pp per star).

**The five-slot lab plan (printed targets — the sheet to work from below Tier 11).**

| Slot | Labs, with the printed level target |
|---|---|
| 1 | `Game Speed` **7**, `Labs Speed` **99** |
| 2 | `Attack Speed` **99** (drives knockback *and* DPS) |
| 3 | `Health` **40–50**, `Def %` **23**, `Orb Speed` **20**, `Extra Orb Adjuster` **1**, `Extra Extra Orbs` **2**, `Black Hole Damage` **10** |
| 4 | `Cash Bonus` **40–50**, `Coins/Kill` **50–70** (later = higher), `GT Duration` **20**, `GT Bonus` **20–25** (duration first), `BH Coin Bonus` **20**, `Spotlight Coin Bonus` **20**; perk labs maxed **except** `Waves Required`, which should sit on **4n + 1**, and `Auto Perks` |
| 5 | flexible pull from slots 3–4 + `Package After Boss`, `Crit Factor`, `Damage`, `DPM` (the last two when protectors resist) |

Two of these match the printed ladders: `GT Duration` really is a **20**-level line and `GT Bonus` a **25**-level one (T006
§“The UW-category lab ladders”), and the **99** caps are the increment-style fingerprint from T006’s cap table. `Orb Boss Hit`
is a switch lab: L1 = **3** orb hits to drop a boss, L2 = **2**, L3 = **1** (with **Plasma Cannon** 6–7 + Thorns); it does
nothing else for an HP build.

**Workshop / card gates (printed).** Unlock the Attack tab **through Rapid Fire**, the Defense tab **through Orbs**, the
Utility tab **through Free Upgrades**; max the cheap defense-tab upgrades *first* so Free Upgrades keep landing on Health.
Then hold Health and Damage at a **1 : 1 or 1 : 2** cost ratio, and once `Enemy Level Skip` is open, buy **both** EALS (survival)
and EHLS (protectors). Cards: **≥ 6 slots** with Enemy Balance, Coins, Cash, Critical Coin, Health, Attack Speed.
`Plasma Cannon` at **1** drops max boss hits 3 → 2 with Thorns, at **7** → 1. **Avoid Energy Net** (it parks bosses so the rest
of the pack gets free hits). Diagnostics: one-shot by a boss → Health; consecutive boss hits → Lifesteal (Attack Speed /
Damage / Crit Factor); regular enemies → crowd control (Attack Speed / Orbs); protectors letting the pack through → Damage.

**The Chrono Field decision, verified from the printed columns.** `wiki/guide/cf-guide` prints: lab **30** levels = **30 s**,
stones cover **40 s**, full uptime at a **1:00** cycle; the last ten lab levels cost **667 d** raw, **334 d** at `Labs Speed`
50; the final level alone is **111 d**; the last ten duration stone-levels cost **2,705**; totals **5,530** (duration),
**2,910** (slow), **1,506** (cooldown to 60 s); the recommended stop is lab level **26–27**. Every one of those re-adds:
Σ L21–L30 = **667.62 d** ✓, L30 = **111.27 d** ✓, and the lab-speed law `×(1 + 0.02 · level)` gives ×2.0 at 50 ⇒
**333.8 d ≈ 334** ✓ (predicted, not copied) — at `Labs Speed` **99** the same model gives **224.0 d**. The stone lines are
*arithmetic*: the duration line is `5 + 9(n − 1)` over **35** levels ⇒ Σ = **5 530** ✓ and L26–L35 = **2 705** ✓; the slow
line is hand-set (0, 15, 25, 40, 60, 120, 150, 200, 300, 450, 650, 900) ⇒ Σ = **2 910** ✓. Maxed CF ≈ **9 946** stones.
Ordering that the pages agree on: duration lab **immediately** (it is the long pole), stones into cooldown → 1:00, then
duration, then the **range** lab, then max slow; hold **slow** at ≤ 40 % until uptime is complete (stack release), and the
damage-reduction lab is worth ≤ level 10–15.

**The devo family (printed).** Variants: Max, Crescent, Orb, LM, SM Devo. Entry: workable at **1 B** lifetime coins,
recommended at **10–15 B**. Goal of basic devo = the **×7** DW health cap. DW investment tiers: *minimal* = nothing or a few
damage levels + the second wave; **optimal ≈ 800 stones** = minimal + DW synced with GT and BH at **3:20**; beyond that, max
**Chrono Field** next. Zero the killers: Attack Speed, Multishot/Rapid Fire/Bounce Shot Chance, Knockback Chance, Orbs,
Shockwave Size, Landmine Chance + Radius, all three Free Upgrade lines (Thorns starts at 0 and is raised with cash toward
**~34 %**). Workshop: HP and Damage equal to start, then **HP at 2× the Damage rate** until HP maxes in-run, then level Damage
to equality, then **Damage at 2× the HP rate**, with Def Abs sprinkled in. Range targets: tower **40–45 m** (30 m acceptable
for Max Devo, too tight for Orb Devo), Orb Devo runs **69.5 m** tower / **60 m** Extra Orb card / BH range **38–42 m**.
Two mechanical notes: you no longer need to offset DW early (it can cost coins), and from **Tier 14** the Orb Resistance
battle condition turns an orb kill into a share of max health (T1–13: orbs instakill Basic/Fast/Tank/Ranged, not Protectors).

**Printed skews, recorded not resolved.** (a) Shockwave-with-Wall: `orb-devo` says **1.4** with Wall / **1.65–1.75** without,
`smax-devo` inverts it (**1.65–1.75** with Wall, **1.4** without), and `devo-guide` says **1.7–1.9** to support orb devo —
treat 1.4 and 1.7–1.75 as two working values and test in your own run. (b) Thorns starting point: **5–20 %** (`devo-guide`)
vs **15–20 %** (orb/smax), both rising toward ~34 %. (c) Plasma Cannon “level 7 → 1 boss hit” vs “levels 1–3 with level 6”.

## Where Turtle stops

The page’s own transition rule: once you can **max Attack Speed inside a run**, add **Multishot**; then the same pattern
for **Rapid Fire**, then **Bounce Shot**. Long-term the page splits progression into “more HP or more damage” and states
that **HP scales faster on its own than damage does**, so the health build is the cheaper of the two — and at that point
you **stop buying Def Abs in-run**. Before attempting Tier 2, Knockback / Lifesteal / Orbs / Attack Speed / Multishot
should each be about half-maxed. Note `Lifesteal` heals **only off tower projectile damage** (orbs and thorns do not
heal you), `Knockback` gains value once you have orbs, and `Damage/meter` “behaves more like damage per 10 meters”.

## Three printed gates for the turtle layer (new, Rev 4)

**① When the Wall is worth buying — printed, not guessed** (`wiki/guide/frequently-asked-questions`, 2026-07-29):
“Early on the Wall hurts you more than it helps: it does not apply thorns quickly enough, so enemies survive their hits
and heat up.” The page gives two readiness conditions and a price tag: **(a)** income in the **hundreds of billions of
coins per day** so the essential Wall labs are affordable, **(b)** at least **three lab slots** so Wall thorns, Wall
regen, Wall health and fortification can be pushed together — and “treat the Wall as a **long-term investment** that will
cost **trillions** of coins before it pays off properly”. Against T001’s per-day coin model those two conditions are the
cheapest way to pick the week the Wall goes up.

**② The orb breakpoint is Tier 13 / 14** (`wiki/guide/guides-100-afk-orb-devo`, 2026-11-01): on **Tiers 1–13** orbs
**instantly kill** `Basic`, `Fast`, `Tank` and `Ranged` enemies (**not** `Protectors` or shielded ones), booking the
remaining health as orb damage; **from Tier 14** the `Orb Resistance` battle condition turns the instant kill into a
**share of max health**. So the orb half of this build is qualitatively stronger below T14 — same reason T005 prints
“Tiers 1–13 need no battle conditions”. The same page fixes the two hoard geometries: **Orb Devo** gathers enemies on
the tower/wall, **Reverse Orb Devo** gathers them **outside tower range** (which is why the `Range` pair of T020 §1.13 is
a build lever, not a stat: Range also sets the ranged enemies’ firing distance).

**③ The midgame priority list, as printed** (`wiki/guide/strategies`, 2026-07-29): **Health first** (“buy it whenever it is
available, regardless of how steep the cash and coin costs climb”, and keep the health labs up), kills come from
**maxed Thorns** + **maxed Orb Speed** with **Shockwave** pushing enemies into the orbs, cards
`Health` · `Coins` · `Extra Defense` · `Free Upgrades` with `Slow Aura` and `Range` as the strong extras (slower enemies
spend more waves in orb range), `Plasma Cannon` / `Energy Net` tuned so **one** thorns hit finishes a boss; in perks take
the requirement perks, then **Health**, the **−50 % enemy damage / −50 % tower damage** trade — printed as “effectively
doubles your health pool” (✓ `1 / 0.5 = 2`) — then `Defense %`, and only after Health is maxed add `Attack`,
`Crit Chance`, `Super Tower`.

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
- [ ] **eHP law:** at **90 %** Defense % the effective-health figure is **10×** the raw `Health + Def Abs` sum (**20×** at
      95 %, **100×** at 99 %).
- [ ] **Lab sheet:** `Labs Speed` and `Attack Speed` sit at **99**, `Def %` at **23**, `Health` at 40–50, and `GT Duration`
      reached **20** before `GT Bonus` passed ~10; the perk lab `Waves Required` sits on a **4n + 1** level.
- [ ] **CF clocks:** the last ten `Chrono Field Duration` lab levels print **32d 14h / 38d 3h / 44d 8h / 51d 7h / 59d 0h /
      67d 14h / 77d 1h / 87d 10h / 98d 19h / 111d 6h** (Σ ≈ **667 d** raw, ≈ **334 d** at `Labs Speed` 50), and the CF
      duration stone line’s last level is **311** stones (level 35).
- [ ] **Devo gate:** the Death Wave health bonus reads **×7** on screen, and with ~800 stones spent the BH/GT/DW activations
      land together at **3:20**.
- [ ] **Rev 4 gates:** the Wall is bought only after the **third** lab slot and a hundreds-of-billions-per-day coin rate;
       below **Tier 14** an orb kill is instant on Basic / Fast / Tank / Ranged (Protectors and shielded enemies keep their
       health); the **−50 % / −50 %** perk reads as **×2** effective health.

## Falsification

- If the hits-to-kill do **not** follow `⌈100 / t⌉` (e.g. 34 % still takes 4 hits), the breakpoint model is wrong → record
  the hits at 25/26/33/34 % and use the printed list 6/11/21/26/34 as a lookup table instead (H054).
- If `Def Abs` clearly needs **far more than 50** levels to hold Tier 1, your Thorns is off-breakpoint or the version
  changed the per-hit scaling → re-read the two values and re-derive the split from one run.
- If raw Damage levels clearly out-rank Thorns at equal coin cost on Tier 1–2, note the wave
  numbers here and re-test after Lifesteal unlocks (Turtle is expected to decay after Tier ~3).
- If the effective-health figure is **not** `1/(1 − Def %)` of `Health + Def Abs` (e.g. Def Abs stops scaling as a flat add),
  record the raw panel numbers at 90 / 95 / 99 % and fall back to the printed multipliers 10 / 20 / 100 as a lookup table.
- If the CF `Duration` lab’s last ten levels no longer sum near **667 d**, or the CF duration stone line’s last level is not
  **311** stones, those tables were re-binned → re-sum from the panel and re-derive the lab-vs-stone split and the
  **26–27** stop (the ×(1 + 0.02·level) lab-speed law is the only assumption).

## Sources

Tower Hub `wiki/guide/health-build` · `hybrid-guide` · `cf-guide` · `devo-guide` · `orb-devo` · `smax-devo` (last verified
**2026-11-01**, hybrid **2026-07-29**) — §“The printed build ladder”: the tier windows (eHP T1–9, hybrid T1–11, glass cannon
T12+, tournaments hybrid), the `eHP = (Health + Def Abs) / (1 − Def %)` law with 10× / 20× / 100×, the 98 % cap’s four
sources, `Extra Defense` +5…+11 pp at stars 1–7, the five-slot lab sheet (Game Speed 7, Labs Speed 99, Attack Speed 99,
Health 40–50, Def % 23, Orb Speed 20, Extra Orb Adjuster 1, Extra Extra Orbs 2, BH Damage 10, Cash Bonus 40–50, Coins/Kill
50–70, GT Duration 20, GT Bonus 20–25, BH Coin 20, Spotlight Coin 20, `Waves Required` on 4n+1), `Orb Boss Hit` 3/2/1 hits
and the Plasma Cannon levels, the boss-hit diagnostics, the CF split (lab 30 levels = 30 s, stones 40 s, 1:00 target,
667 d / 334 d / 111 d, 2 705 / 5 530 / 2 910 / 1 506 stones, stop at 26–27, slow ≤ 40 % pre-uptime), and the devo numbers
(1 B / 10–15 B entry, ×7 DW cap, ≈800 stones at the 3:20 sync, the zero-list, the 2:1 HP/Damage alternation, ranges
40–45 / 30 / 69.5 / 60 / 38–42 m, Thorns → ~34 %, the Tier-14 Orb Resistance note).

Tower Hub `wiki/guide/beginner-guide` (last verified **2026-07-29**) — the workshop order with level targets (Def Abs ≈ 50,
Health 1–2/run, Def % after 50), the Thorns “1 % above a fraction breakpoint (for example 6 %, 11 %, 21 %, 26 %)” rule,
`Coins/Kill Bonus` = **20 M** to max, `Super Critical` at **100 M**, `Interest` “caps out at $50 … until you unlock max
interest at tier 2 wave 80”, the ~20× tier-2 jump and “pays out nearly double the coins”, and the W1000/W300 crossover.
Earlier: game-vault `Guide:Beginners_Guide` §Health / §Turtle Build Guide; oslink.io strategy summary (4 % per-hit damage
scaling, Thorns priority, the 34 % breakpoint).

- Tower Hub `wiki/guide/frequently-asked-questions` (**2026-07-29**) â€” the Wall readiness conditions (income in the
  hundreds of billions per day, >= three lab slots, "costs trillions") and the heat-up law (**x1.04** per surviving hit).
  Tower Hub `wiki/guide/guides-100-afk-orb-devo` (**2026-11-01**) â€” the Tier 1-13 orb instant-kill set (Basic / Fast /
  Tank / Ranged, not Protectors or shielded), the Tier 14 `Orb Resistance` share-of-max-health change, and the Orb Devo
  vs Reverse Orb Devo hoard geometry. Tower Hub `wiki/guide/strategies` (**2026-07-29**) â€” the midgame order (Health
  first, Thorns and Orb Speed maxed, Shockwave, the four essential cards) and the **-50 % / -50 %** perk trade printed as
  x2 effective health.