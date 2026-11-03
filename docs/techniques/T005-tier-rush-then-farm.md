# T005 — Tier-rush with a survival build, then farm the new tier

Rev: 4 (2026-11-02) — **the content timeline** (all 27 `wiki/patch/version-history-v0-*` pages + the index page, 2026-07-29):
every numbered system is now dated — **Def % cap 90 → 98 at v0.22** (second, dated print for the 98-vs-99 skew), **milestone
gates exist only from v0.18** (with Tier 13 + the Protector), **Elite Cells = “speed up lab research” printed at v0.23**,
the **time-weighted lab gem discount at v0.17**, **Dissonance’s 5×/3× are v0.28 hotfix numbers** (briefly 2×), and the tier
map T10 → v0.4.0 · T11 → v0.8 · T12 → v0.14 · T13 → v0.18 · T14–15 → v0.20 · T16–18 → v0.24 · T19–21 → v0.27; derived slot
cap **19** moves to **H061**.
Rev: 3 (2026-11-02) — the **printed tier ladder** (`wiki/system/tiers`) is added: the Coin Bonus column is exactly
`1 + 0.8 × (tier − 1)` for **Tiers 1–8** (8/8), breaks at T9, and runs to **60 at Tier 21** with every step in the band
**×1.13 … ×1.25** (geometric mean **×1.227/tier**); **Tiers 1–13 need no battle conditions at all** (1 → 14.7 free), the
first bill is **Tier 14 = six perk lines for +19.7 %**, and the condition levels follow four entry/step laws (Ultimates enter
at 20 and step +15; Orb/Death Ray enter at 50, +10, capped 95; Thorns/Plasma +10 from 20; ELS Reduction +5 from 5). The
`More Bosses` line reads as the boss **interval** (`10 − level`), which reproduces Tier 14’s 9-wave lattice ✓.
Rev: 2 (2026-11-02) — the rush gets **printed numbers**: the payoff window is **the first ~100 waves** and the hard cutoff
is **Tier 15** (independently confirmed by T019’s 100/300 gate table); the farming crossover is **Tier 1 W1000 vs Tier 2
W300** for a ~**2×** payout step at ~**20×** difficulty; and the Tier 14 worked example closes on its own lattice —
bosses every **9** waves ⇒ **11** bosses, last at **W99** (✓ the printed count and final wave), and the page’s plan
assigns one tool to each of the 11 (11/11 covered). **Status: Verified (arithmetic)** for the lattice and the gate table;
the per-run wave gain is still a device read.
Value: ★★★★ (the highest-leverage early decision) · Ease: 15 min · Prerequisite: Tier 1

## Why it works

Two mechanics interact:

1. Reaching **wave 100 of a tier** is a Milestone and unlocks the next tier (**wave 300** from Tier 15 up — T019 §4; the
   rushing guide prints the same “the waves needed to unlock the next tier rise from 100 to 300” at Tier 15).
2. Your **daily and weekly coin rewards scale with your maximum tier**, and the farming missions use `max tier − 2`.
   (The in-run scale is the printed **Coin Bonus** column below: **×1 → ×14.7** through Tier 13 and **×60** at Tier 21.)

So a single lucky survival run that clears wave 100 permanently raises the payout of every
subsequent run and every mission, for a one-off cost of one long run. Farming a tier you already
cleared is efficient; farming a tier you are *stuck on* is not.

## The printed crossover rule (which tier to farm)

| Printed fact | Value | Consequence |
|---|---|---|
| Tier 2 vs Tier 1 difficulty | ≈ **20×** | the only such jump in the game (“tiers 3–9 don’t repeat” it) |
| Tier 2 vs Tier 1 payout | **nearly double** the coins | 2× payout for 20× difficulty ⇒ *farm*, don’t camp |
| Start testing Tier 2 | once **W1000 on Tier 1** is reliable | the T1 farm ceiling |
| Tier 2 overtakes Tier 1 | around **W300** on Tier 2 | depth ratio `1000 / 300 = 3.33` for a `2×` coin step |
| Rush payoff window | the **first ~100 waves** of a tier | beyond it the rush “loses nearly all value” |
| Rush hard cutoff | **Tier 15** | 300-wave gate + Plasma Cannon and thorns weakened ⇒ stop rushing |

Because the rush’s whole product is *milestone waves*, and each tier’s gate is a fixed wave (100, then 300 from T15), the
optimal loop is: **one push run** (survival-only, below) → then **many farm runs** on the *highest tier you can hold to
its crossover wave*.

## The printed tier ladder: coin bonus and battle-condition bill (Tier 1 … 21)

`wiki/system/tiers` prints both sides of the rush decision in one table: the **Coin Bonus** each tier is worth, and the
**battle conditions** (with their required perk levels) the tier imposes. Rows 1–13 print `None` for conditions.

| Tier | Coin bonus | Δ | × | BC lines | Tier | Coin bonus | Δ | × | BC lines |
|---|---|---|---|---|---|---|---|---|---|
| 1 | 1 | — | — | 0 | 12 | 12.2 | +1.9 | 1.1845 | 0 |
| 2 | 1.8 | +0.8 | 1.8000 | 0 | 13 | 14.7 | +2.5 | 1.2049 | 0 |
| 3 | 2.6 | +0.8 | 1.4444 | 0 | **14** | **17.6** | +2.9 | 1.1973 | **6** |
| 4 | 3.4 | +0.8 | 1.3077 | 0 | 15 | 21.3 | +3.7 | 1.2102 | 8 |
| 5 | 4.2 | +0.8 | 1.2353 | 0 | 16 | 25.2 | +3.9 | 1.1831 | 9 |
| 6 | 5 | +0.8 | 1.1905 | 0 | 17 | 29.1 | +3.9 | 1.1548 | 10 |
| 7 | 5.8 | +0.8 | 1.1600 | 0 | 18 | 33 | +3.9 | 1.1340 | 13 |
| 8 | 6.6 | +0.8 | 1.1379 | 0 | 19 | 40 | +7.0 | 1.2121 | 14 |
| 9 | 7.5 | +0.9 | 1.1364 | 0 | 20 | 48 | +8.0 | 1.2000 | 15 |
| 10 | 8.7 | +1.2 | 1.1600 | 0 | 21 | 60 | +12.0 | 1.2500 | 17 |
| 11 | 10.3 | +1.6 | 1.1839 | 0 | | | | | |

**Four laws come out of the printed cells:**

1. **Tier 1–8 are exactly `1 + 0.8 × (tier − 1)`** (8/8 printed values, error < 1e-15), so the first eight steps are one
   arithmetic line; **Tier 9 breaks it** (+0.9) and from there the deltas grow: +1.2, +1.9, +2.5, +2.9, +3.7, +3.9, +3.9,
   +3.9, +7, +8, +12.
2. **The marginal ratio sits in a narrow band:** every printed step is **×1.13 … ×1.25**, geometric mean over the 20 steps
   `60^(1/20)` = **×1.227** ⇒ *each tier is worth ≈ +23 % coins, for ever, from one milestone run.* That is the number the
   rush-vs-farm decision trades against.
3. **Tiers 1–13 cost zero perk work** — the condition column is `None` — so through Tier 13 the ladder is pure profit
   (**1 → 14.7 = ×14.7**). The first bill is **Tier 14: six lines** for **+19.7 %** (14.7 → 17.6).
4. **Each later tier adds only a few lines** (new lines: T15 +2, T16 +1, T17 +1, T18 +3, T19 +1, T20 +1, T21 +2), while the
   levels step on fixed ladders: the **`X's Ultimate` family enters at 20 and steps +15** (Protector's 20→95, Tank's
   20→80, Scatter/Ray/Vampire 20→65, Fast's 20→50, Boss's 20→35, Basic's 20), **Orb / Death Ray Resistance** enter at 50 and
   step **+10 to a 95 cap**, **Thorns / Plasma Cannon Resistance** enter at 20 and step **+10** (20 → 90 in seven tiers,
   exact), **Knockback** enters at 40 (+10, 95 at T21), **Armored Enemies** at 10 (+10), **ELS Reduction** enters at **5 and
   steps +5** (5 → 40, exact — the `Enemy Level Skip` line of T024), and **More Bosses** is hand-set (levels
   1, 2, 3, 3, 5, 5, 5, 5). Reading that line as the glossary defines it — “bosses spawn every *x* waves instead of 10”, i.e.
   the value is the **interval**, `interval = 10 − level` — gives intervals **9, 8, 7, 7, 5, 5, 5, 5** waves, and Tier 14’s
   `More Bosses 1` ⇒ **every 9 waves** is exactly the lattice the worked example below re-adds (11 bosses, last at W99 ✓), so
   the two tables on the page are consistent.

**The Tier 14 entry bill, verbatim** (six perk lines — this is the whole price of the first BC tier): `Orb Resistance` **50**,
`Death Ray Resistance` **50**, `Thorns Resistance` **20**, `Plasma Cannon Resistance` **20**, `More Bosses` **1**,
`ELS Reduction` **5**. Tier 15 adds `Knockback Resistance` **40** and `Armored Enemies` **10** and raises the rest one step;
Tier 16 adds `Protector's Ultimate` **20**; Tier 17 adds `Tank's Ultimate` **20**; Tier 18 adds `Scatter` / `Ray` /
`Vampire Ultimate` **20** each.

## The tool values, as printed

Each entry is the **waves** that effect is worth in a rush (the page’s own numbers), plus its mechanical caveat:

| Tool | Waves | Caveat (printed) |
|---|---|---|
| **Second Wind** (near-maxed) | ≈ **+20**, never less than **+10** | once per rush — its cooldown runs for **hundreds** of waves; grants invulnerability, so Plasma Cannon is not needed for that hit |
| **Nuke** (kill lands) | ≈ **+10** | cannot be fired **during** Intro Sprint; underleveled damage is unreliable |
| **Energy Shield** + Plasma Cannon | ≈ **+10** | 1 charge, or **3** once the lab upgrades are in; a Death Defy proc leaves the charge intact |
| **Death Defy** | up to **30 %** | resolves **before** every other death-prevention effect (Demon Mode / Missile Barrage / Nuke excepted) |
| **Missile Barrage** | an early boss kill | best on the **W10 / W20** boss, saves a shield charge; unavailable during Intro Sprint |
| **Wave Skip** | skips the boss entirely | max level **19 %**; does nothing during Intro Sprint |

So the three *named* legs (20 + 10 + 10) are **40 waves** of expected gain — the distance from a mid-60s base to the W100
gate — and the rest comes from repetition: “run the attempt repeatedly until you hit your target wave”, with Intro Sprint
making each retry cheaper.

## Worked example: the Tier 14 rush (printed, re-added)

Tier 14 is the **Heat** tier: Plasma Cannon and thorn damage drop to **80 %**, orbs and Death Ray lose their one-shot and
deal **50 %**, and bosses arrive every **9** waves instead of 10 ⇒ **11** bosses on the way to W100, the last at **W99**
(`9 × 11 = 99` ✓, and the printed plan covers all 11 waves with one tool each ✓). Baseline: **≥ 1.4 B health**, **two**
Energy Shield charges, **every card at level 7**. Cards: Demon Mode, Nuke, Second Wind, Energy Shield, Energy Net, Extra
Orb, Recovery Package Chance, Cash, Plasma Cannon, Extra Defense, Death Ray, Slow Aura, Health, Attack Speed.

| Boss | Tool | Note |
|---|---|---|
| **W9** | both Energy Shield charges | both burn here |
| **W18** | tanked directly | |
| **W27** | one charge (or tanked) | then **swap in Wave Skip** |
| **W36** | Wave Skip | if it is **not** skipped, **restart** — that boss eats your Second Wind |
| **W45** | Nuke | Skip dropped, **Cash** card back in |
| **W54** | both Energy Shields | |
| **W63** | Second Wind | |
| **W72** | Demon Mode | Skip re-equipped **until W81** |
| **W81** | Wave Skip | |
| **W90** | both Energy Shields again | |
| **W99** | Energy Net pins it; survive the trash | the counter ticking to **100** is the win — Tier 15 unlocks |

Any **Death Defy** proc shifts the whole sequence **9 waves later**, so the plan is a template, not a script. The two
timing tools exist to move bosses into a protection window: equip **Slow Aura / Chrono Field** to delay one boss so
Second Wind or Demon Mode covers it, then **remove it** so the next boss arrives sooner, inside the same window.

## Steps

1. Before pushing, check the Workshop: your **Defense** column (Absolute Defense, Defense %, Health, Thorns) is ahead of your Attack column. If not, farm 2–3 runs first ([T003](T003-turtle-build-t1-t2.md)).
2. Start a run on the current tier and switch the in-run bar to **survival only**: Cash/Wave → Cash Bonus, then Absolute Defense / Defense % / Health. **Skip all coin upgrades for the whole run** — coins from a push run are a rounding error compared to the milestone.
3. Keep tapping to hold the enemy line; buy nothing that doesn't extend the run.
4. At wave 100 the tier unlocks; note the new daily/weekly reward value from the **Milestones** panel.
5. On the next run, go back to the farming order ([T002](T002-run-phase-order.md)) on the *previous* tier if the new one kills you before wave ~50 — the higher tier's reward is already banked.
6. Repeat: one push run, then several farm runs.

**The push run’s own order (printed, in this sequence):** tank boss 1 on eHP (Missile Barrage if you cannot) → let
**Energy Shield** take the next one or three → when the shield is spent, **Second Wind** covers one or two bosses
*(this is the point to switch **Intro Sprint** off)* → trigger **Demon Mode** right as the following boss connects so
its duration carries into the next boss wave → close out with **Nuke** for one more kill. For the T14 tier use the
wave-by-wave table above instead, and hold Nuke / Second Wind / Demon Mode / shield charges as long as possible.

**The farm-side rule:** stop raising the farmed tier once it passes the crossover (T1 **W1000**, T2 **W300**) and move
the farming there; the depth you gained from the push is what raises the *mission* payout too (T004 §weekly: coins =
`106 ×` the tier row).

## Reproduction checklist

- [ ] Milestone for wave 100 claimed at the new tier
- [ ] Daily coin reward (Milestones / daily claim) is visibly larger than the previous tier's
- [ ] Next mission set lists tier = new max − 2 and completes faster
- [ ] On Tier 14 the boss waves are **9 / 18 / 27 / 36 / 45 / 54 / 63 / 72 / 81 / 90 / 99** — eleven of them, and the
      wave counter crosses 100 right after the last (`9 × 11 = 99` ✓)
- [ ] One Second Wind + one Nuke + one shield-block kill moves your best wave by roughly **20 / 10 / 10**
- [ ] After a tier unlock, the next tier’s gate reads **W100** (T1–T14) and **W300** at **T15** — the printed 100/300 split
- [ ] **The ladder:** the tier screen’s bonus reads **1 / 1.8 / 2.6 / 3.4 / 4.2 / 5 / 5.8 / 6.6** for Tiers 1–8 (a clean
      **+0.8** each), **14.7** at Tier 13 and **17.6** at Tier 14; the 13 → 14 step is **+19.7 %**.
- [ ] **The Tier-14 bill:** the **Perks** screen requires exactly **six** lines at Tier 14 — `Orb Resistance` 50,
      `Death Ray Resistance` 50, `Thorns Resistance` 20, `Plasma Cannon Resistance` 20, `More Bosses` 1, `ELS Reduction` 5 —
      and Tier 13 shows **none**.
- [ ] **`More Bosses` reads as an interval:** at Tier 14 (`More Bosses 1`) the panel’s value is **9** waves between bosses,
      i.e. `10 − level` ✓ the same 9 the 11-boss lattice uses.

## Falsification

- If daily/weekly rewards do not change after unlocking a tier, the tier→reward link is wrong; record
  the before/after daily claim values and demote this to "unlock content only".
- If Tier 14 bosses arrive every **10** waves (not 9), the Heat condition is not live on your client → the 11-boss table
  becomes 10 bosses ending at W100, and the plan’s rows shift; re-derive from the first boss’s wave.
- If a Tier-2 run at W300 pays *less* than a Tier-1 run at W1000 by the coin counter, the “nearly double” step is not
  2× at your level → record both totals and set the crossover from the two numbers (it is a per-tier ratio, not a law).
- If a tier **below 14** shows *any* battle condition, the `None` column is stale → re-read the condition list on each tier
  row and rebuild the “free through Tier 13” claim (the `+0.8` ladder itself is independent of that column, so keep it).
- If a condition level in the panel is **above** the printed requirement and the tier still will not open, the requirement is
  the *minimum* per line but the tier also gates on something else (e.g. a wave gate) → read the tier row’s gate wave; the
  BC bill is a necessary, not sufficient, condition.
- If Second Wind is available twice in one rush, its cooldown is not “hundreds of waves” → re-time it in waves and
  re-value the table (it is the largest single leg, so everything else is unaffected).

## The content timeline: which version put which printed number in the game

Source: `wiki/patch/version-history` + the **27** per-version pages `wiki/patch/version-history-v0-{2,3,4-0,5…28}` (all
“Last verified **2026-07-29**”; each page is a single intro paragraph — the `Change list` block renders empty in the page
payload, so these are the only recoverable facts). Use it to *date* a number: if your panel disagrees with a value below,
your build is newer than the page (this repo’s APK is **29.1.3**, i.e. two majors after the last documented release).

| Ver | What landed (as printed) | Which of our prints it dates |
|---|---|---|
| v0.2 | **Tournaments** (30 players, 24 h, twice weekly) + `Buy Multiplier` lab + Death Ray / Plasma Cannon / Energy Net cards | T014’s bracket width **30**; T006’s Main cap `Buy multiplier 4`; T012’s card list |
| v0.3 | **Ultimate Upgrades** bought with **power stones** from tournaments; five UWs (Smart Missiles, Land Mines, Chain Lightning, Chrono Field, Death Field) | T008’s stone economy; T022’s stone sources |
| v0.4.0 | Poison Swamp + Golden Tower UWs; **top tier 10**; interest shown after every wave | T001’s interest display; the `Swamp *` / `Golden Tower *` UW caps |
| v0.5 | Enemy Balance / Critical Coin / Super Tower / Second Wind cards; Land Mines + Death Defy | T012’s per-card pages |
| v0.6 | waves past **≈ 60** scale harder; enemies ramp damage on consecutive hits | T002’s wave clock |
| v0.7 | orb-speed / missile / chrono / swamp / GT / land-mine stat pools; **target priorities**; **daily gem gift moved to 08:00** | T006’s `Target Priority` (2 lv) line; T007’s gift timing |
| v0.8 | **Tier 11**; Second Wind Blast, Double Death Ray, Inner Orb upgrades; higher-tier coin bonuses raised | T012’s special-card pages; this doc’s tier ladder |
| v0.9 | Chain Lightning Shock + Shock Chance + Shock Multiplier; Death Wave max-health and coins/kill perks | UW caps `Chain Lightning Shock 1`, `Shock Chance 30`, `Shock Multiplier 14`, `Death Wave Health 30`, `Death Wave Coin Bonus 20` |
| v0.10 | Inner Mine blast radius + rotation, Chrono Field range; **Enemy Balance cash bonus ×1.5 → ×1.3** | UW caps (20 / 20 / 20); T012’s `Enemy Balance` **×1.3** |
| v0.11 | **Demon Mode, Wave Skip, Critical Chance**; Tier-5 lab = card presets; **+1 card slot** | Main cap `Card Presets 1`; T024’s Wave Skip; the slot-cap arithmetic below |
| v0.12 | Recovery Package utility upgrades; **Intro Sprint** card; Tier-4 workshop-respec lab; expanded end-of-round stats | T020’s `Packages` trio; T012’s Intro Sprint; Main caps `Workshop Respec 1`, `More Round Stats 1` |
| v0.13 | **Perk system at Tier 3+** + seven perk labs; ×100 buy option; UW toggle | T011 (9 perk lines, Σ **180**) |
| v0.14 | **Black Hole UW** + Energy Shield card; **Tier 12**; **max card slots 16**; lab bonuses shown on UW/card panels | T014’s league ladder; the derived slot cap (**H061**) |
| v0.15 | **Events** (two-week cycle) + **bots**; Champion league (**Tier 10+**); super-critical upgrades; UW scaling switched linear → **exponential** | T013, T015; T020’s `Super Critical` rows |
| v0.16 | leaderboards (tier beats wave); three cards; **7th card level**; +1 slot; **orbs switched to fixed distances** | T012’s “7 stars” mastery half-gate; the `Orb Speed` / `Orb Size` lines |
| v0.17 | **Spotlight UW** + spotlight coin bonus + spotlight missiles + **advanced target priority** (sorts); UW unlocks offer **3** choices; **lab gem price now discounted by research time** | UW caps `Spotlight Coin Bonus 20`, `Spotlight Missiles 18`; `Target Priority 2`; T006’s cheap-tier bill |
| v0.18 | **Milestone system** (the gate mechanism itself); **Tier 13**; Protector enemy; faster cooldown timer; 120 FPS | every `T# W#` gate in this corpus; T006’s `Protector *` lines |
| v0.19 | **Daily missions with weekly rewards**; four workshop upgrades (The Wall, Render Armor) + eight labs; double-counted amplify/spotlight/shock/protector multipliers removed; T10+ coin bonuses raised | T004, T019 |
| v0.20 | **Tiers 14 & 15 with battle conditions**; **relics**; tower-skin avatars; Ultimate Crit card; **Light Speed Shots**; **4 500 milestone reward per tier**; adjustable Range lab levels | T018; T019’s ladder tail **4 500**; Attack cap `Light Speed Shots 1`; the `Range` line’s **T13 W80** |
| v0.21 | tournament battle conditions for **Silver+**; **PLUS upgrades** (own all UWs); **UW timers synchronized all round**; UW toggle cap | T014 §4.3; T008’s sync rule |
| v0.22 | **Modules at Milestones Tier 2 Wave 90** (Cannon / Armor / Generator / Core, main stat + random sub-stats, Epic uniques); **Def % limit 90 % → 98 %** | T010’s whole layer; the **98 %** hard cap |
| v0.23 | **Elite enemies (Vampire / Scatter / Ray) dropping Elite Cells “used to speed up lab research”**; **workshop enhancements panel unlocked through labs**; **+2 active card slots**; Nuke card; recharge labs; module favorites / unmerge / reroll rollback | T006’s T19 trio + cells table; T020 §6’s lab gate; T012’s Nuke recharge **1 500 → 300**; T010 |
| v0.24 | bot redesign (**UW-style timing + in-run toggles**); **Death Wave rework** (persistent damage pool, Effect Waves); **Tiers 16 / 17 / 18**; T14+ scaling rebalance; new battle conditions | T015; this doc’s Tier-16/17/18 condition rows; T008’s Death Wave matrix |
| v0.25 | **Card Mastery** (stones, gated **T16 W100**); **Legends league + Keys + Vault trees**; lab search / favourites / history / auto-research; Cinematic Mode | T012 §2.1; T014; T017; T006’s queue notes |
| v0.26 | **Guilds** (≤ 30 players, Guild Tokens, weekly challenges, shared chests); **Guardians**; module featured banners, shattering, **level-300 cap**, new sub-stats; expanded vault trees | T016, T023, T010, T017 |
| v0.27 | **Tiers 19–21 + Fleets (T14+)**; **Assist Modules**; Area of Effect card; attack-speed calculation refactored; Guardian chip rework + Om Chip; **ELS battle conditions**; Lab Speed Up auto-queue | T006’s eight assist labs (**T19 W50**); T024 |
| v0.28 | **Dissonance** (one Workshop tab locked per tier); Bot Bot + five Bot+ abilities; Synchronicity pathing; **Overheat conditions**; rotating relic section in the Event Store | T021’s table; T018’s relic rotation |

**Five things the timeline settles.**
① **`Defense %` = 98 % since v0.22** (raised from 90 %) — a second, dated print for the 98-vs-99 skew, and it agrees with
the assist-lab page’s own **98 %** hard cap ⇒ the 99 reading is the outlier.
② **Milestone gates only exist from v0.18** (same release as Tier 13 and the Protector) ⇒ every `T# W#` unlock quoted in
this corpus is a v0.18-or-newer construct; pre-v0.18 accounts had no gates at all.
③ **Elite Cells’ job is printed** (v0.23): “speed up lab research” — the frame for the cells-vs-gems research-speed
question in the open pool; and the **time-weighted gem discount on lab rushing** predates it (v0.17).
④ **Dissonance’s 5× / 3× are hotfix numbers** (v0.28): the bonus “shipped higher than intended”, was briefly capped at
**2×**, then settled at **5× Attack / Defense / Ultimate Weapon** and **3× Utility** — exactly T021’s table.
⑤ **Derived, not printed:** the active card-slot cap should read **19** today (**16** at v0.14, **+1** at v0.16, **+2** at
v0.23 — the earlier `+1` prints of v0.11 are already inside the 16) ⇒ **H061** (one-tap count on the **Cards** screen
settles it).

**Beginner consequence.** A sub-T11 account can only own what landed by **v0.22** (milestones v0.18, daily missions
v0.19, the 4 500 milestone and relics v0.20, modules v0.22): the mastery layer, enhancements, assist modules, guilds,
Guardians and Dissonance are all **v0.23 +** and gated behind **T12 / T16 / T19** anyway — so the pre-T11 loop is
interest + workshop + lab + cards + missions + tournaments, and nothing newer changes that ordering.

## Sources

Tower Hub `wiki/system/gameplay` (2026-07-29) — the two terms the tables hinge on: a **wave** is one segment of enemy
spawns, a **round** is the whole run to death; the `Normal Wave` table prints **length 26.00 s** and **cooldown 9.00 s**.
Tower Hub `wiki/system/tiers` (2026-07-29) — the **Tier / Coin Bonus / Battle Conditions** table (Tiers 1–21, `None` through
Tier 13, the six-line Tier-14 bill, the entry/step ladders) and the condition glossary (`More Bosses`: “bosses spawn every
*x* waves instead of 10”; `Orb`/`Death Ray Resistance`: “instead of destroying enemies, they deal x % of enemy health as
damage”; `Knockback Resistance`: applied force reduced by x %; `More Enemies`: x % more spawn).
Tower Hub `wiki/guide/rushing-tiers` (last verified **2026-07-29**) — the ~100-wave payoff window and Tier-15 cutoff, the
per-tool wave values (Second Wind +20/≥10, Nuke +10, shield+plasma +10), Death Defy’s 30 % and its resolution order, the
Energy Shield 1→3 charges, Wave Skip’s 19 % max, the Tier 14 spec (80 % plasma/thorns, 50 % orbs and Death Ray, bosses
every 9 waves, 11 bosses, final W99, ≥1.4 B health, 2 charges, cards at level 7, the 14-card list and the wave-by-wave
plan), and the printed rush order.
Tower Hub `wiki/guide/beginner-guide` (2026-07-29) — Tier 2 ≈ 20× harder, “pays out nearly double the coins”, test at
T1 W1000, crossover ≈ T2 W300.
Earlier: game-vault `Guide:Beginners_Guide` ("try to beat stage 100, since when you unlock a new tier your daily and
weekly coin rewards increase"), `Guide:Event_Guide` (mission tier = max tier − 2); and this repo’s
[T019](T019-milestone-claim-engine.md) §4 for the 100/300 gate table (an independent second print of the same split).
