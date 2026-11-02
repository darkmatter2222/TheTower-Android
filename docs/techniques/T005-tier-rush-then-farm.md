# T005 — Tier-rush with a survival build, then farm the new tier

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

## Falsification

- If daily/weekly rewards do not change after unlocking a tier, the tier→reward link is wrong; record
  the before/after daily claim values and demote this to "unlock content only".
- If Tier 14 bosses arrive every **10** waves (not 9), the Heat condition is not live on your client → the 11-boss table
  becomes 10 bosses ending at W100, and the plan’s rows shift; re-derive from the first boss’s wave.
- If a Tier-2 run at W300 pays *less* than a Tier-1 run at W1000 by the coin counter, the “nearly double” step is not
  2× at your level → record both totals and set the crossover from the two numbers (it is a per-tier ratio, not a law).
- If Second Wind is available twice in one rush, its cooldown is not “hundreds of waves” → re-time it in waves and
  re-value the table (it is the largest single leg, so everything else is unaffected).

## Sources

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
