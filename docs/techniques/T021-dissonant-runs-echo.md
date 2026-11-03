# T021 — Dissonant Runs: one tap-to-lock run that buys a permanent per-tier multiplier

Rev: 4 (2026-11-02) — **§4.1, the locks enumerated** (`wiki/guide/dissonant-runs-guide`, 2026-11-01): the four exclusion
lists are printed in full — **17 Attack · 17 Defense · 12 Utility · 9 UW = 55** stat lines — with the printed **module
loadouts per variant** (DP on Cannon everywhere; SF+OA or OA+NMP on Armor; GC+SH / PH+SH / PF+PH / PH+PF on Generator;
PCol+HC or MH or PC+DC on Core), the printed run order **Attack → UW → Health → Utility** started from your farming
tier, and four tested numbers: max vs min **Range** is worth **≈ 2 000 waves** in a UW lock, **AD** reads **3.8 / 6.5 /
10.5×** at legendary / mythic / ancestral, the **bounce-target ceiling is 22**, and past ~100 % bounce chance bullets
pass **1 000×** the land-mine output.
Rev: 3 (2026-11-02) — the **per-tier echo law is closed** with a third print (`wiki/lab/echo-lab`, 2026-11-01, a 21-row
`Lab | Percent | 3x | 5x` table): `Percent = 0.5 + 0.5·L` and `echoed = (B − 1) × Percent / 100` per contributing tier
(L0 → **0.01/0.02**, L20 10.5 % → **0.21/0.42**, every cell re-adds), and the page's own prose example is the **10-tier
sum** (`10 × (3−1) × 0.005 = 0.10` ✓, `10 × (5−1) × 0.005 = 0.20` ✓) ⇒ one formula, three prints.
Rev: 2 (2026-11-02) — **both Echo-lab ladders now close in closed form** against two independent prints (fandom `Echo Lab`
per-level rows + Tower Hub's two totals): coins `1q · 2.25^(n−1)` ⇒ Σ = **8.846e21** = the printed **8.85e21**, and time
**arithmetic** `n × 20 d 20 h` ⇒ Σ = **378 000 000 s** to the second; the §2 milestone table is double-sourced and the
**printed overshoots** (`2.001`, `2.501`, `3.501`, `4.001`) reproduce from the closed form at the ceiling waves; the Echo
per-tier term agrees across the two wikis and its worked example re-adds (**3.00 + 0.015 × 4 = 3.06** ✓).
Rev: 1 (2026-11-01) · Currency: **Coins** (Utility path), plus Damage/Health/UW-damage depth (the other three)
**Value:** ★★★★ — the only *free* permanent multiplier in the game: no gems, no coins, no shards — one run per tier
locks one Workshop tab and pays `×3 coins` (Utility) or `×5 damage/health/UW` at wave 5 000, for **every future normal
run on that tier**, plus a small **echo** of that boost onto every other tier.
**Confidence:** **High** — the curve `1 + (max−1)·(wave/5000)^1.75` reproduces all **sixteen** published milestone values
exactly, including their `±0.001` overshoots (§2), the echo formula and lab ladder come from two independent sources
(fandom + Tower Hub, the latter cross-checked against a live account) and now close on both series (§3), and the unlock
wave matches T019's milestone table. Status: **Verified (arithmetic, Rev 3)** — 16 milestone values + 20 coin rows +
20 time rows + the two Σ totals + the **21-row per-tier table (L0 0.01/0.02 … L20 0.21/0.42)** + both prose 10-tier
examples (0.10 / 0.20) all re-add; the one open device read is whether the own tier is counted inside the echo sum
(§3 note).
**Ease:** 1 run + ≈3 taps per tier (start run, pick category, claim) · **Prerequisite:** **Tier 4 Wave 90** milestone
(`Unlock Dissonance`, [T019](T019-milestone-claim-engine.md) §3) — usable on every tier you have unlocked.

---

## 1. What the system is (UI)

* The **Dissonant Run** button sits on the main menu **just below the `Battle` button**.
* Starting a run asks you to lock **one of four upgrade categories** for that run:

| Lock | What is switched off | What the boost multiplies | Max at W5000 |
|---|---|---|---|
| **Attack** | attack = 1, range = 30 m, attack speed = 1 | **Tower damage** | **5×** |
| **Defense** | health = 1, regen = 1.00/s, rest off | **Tower health** | **5×** |
| **Utility** | Cash, Coins, Packages, Free Upgrades, Enemy Level Skips | **Coins** | **3×** |
| **Ultimate Weapons** | all UWs off | **UW damage** | **5×** |

* Locked upgrades print **`DISABLED`** (same visual as the Saboteur Fleet enemy); Workshop, Workshop Enhancements,
  Cards and Modules do nothing (or almost nothing) for the locked category.
* The **best wave** you reach with that lock sets the tier's boost, and the boost then applies to **every normal run on
  that tier** — that is the whole trick: one crippled run buys a permanent multiplier for all later runs.

## 2. The curve (validated) and the one rule it implies

```
own-tier boost = 1 + B · f ,  f = min( (bestWave / 5000)^1.75 , 1 ) ,  B = 4 (Attack/Defense/UW) or 2 (Utility)
```

`f` is exactly `k/8` at eight published wave values, so the ladder is memorisable:

| k | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
|---|---|---|---|---|---|---|---|---|
| **best wave** | 1 524 | 2 265 | 2 855 | 3 365 | 3 823 | 4 243 | 4 633 | **5 000** |
| **Utility (3× path)** | 1.25 | 1.50 | 1.75 | 2.00 | 2.25 | 2.50 | 2.75 | **3.00** |
| **Attack/Defense/UW (5× path)** | 1.50 | 2.00 | 2.50 | 3.00 | 3.50 | 4.00 | 4.50 | **5.00** |
| waves needed for this +0.25 | 1 524 | 741 | 590 | 510 | 458 | 420 | 390 | 367 |

**The two-way check (now the reason this doc is Verified).** Going forward, the closed form reproduces **every printed
cell to three decimals**, including the odd ones: Tower Hub's table (2026-11-01) prints `1.250 / 1.500 / 1.750 / 2.000 /
2.250 / **2.501** / 2.750 / 3.000` and `1.500 / **2.001** / 2.500 / 3.000 / **3.501** / **4.001** / 4.500 / 5.000`, and
`1 + B·(w/5000)^1.75` at those exact waves gives **those same numbers** — the `+0.001` cells are simply the effect of the
`ceil`ed wave. Going backward, the ladder is the ceiling of the closed-form inverse,
`w(k) = ceil( 5000 · (k/8)^(1/1.75) )` → `1523.8 / 2264.3 / 2854.7 / 3364.8 / 3822.3 / 4242.1 / 4632.7 / 5000` ⇒
`1 524 / 2 265 / 2 855 / 3 365 / 3 823 / 4 243 / 4 633 / 5 000` ✓ all seven. So the panel's third decimal is *not* noise:
if your boost at W4 243 prints `2.501`, the model is right.

**The rule the shape gives (derived):** the curve is **convex** — every further +0.25 costs *fewer* waves than the
previous one (1 524 → 741 → … → 367, i.e. the first milestone is **4.1×** more expensive per boost point than the last).
So, unlike the concave Workshop ladders of T020, a Dissonant Run should **never be stopped mid-way**: finish at
1 524 / 2 265 / 2 855 / … Marginal value for reference: at W1 000 each 100 waves is +2.1 % coins (Utility), at W4 000
it is +5.9 % — the deep waves are worth ~3× the shallow ones. Community data point consistent with this: a Tier-12
Utility run stopped “way early” at ≈W2 700 prints f ≈ 0.340 → own boost **1.68× coins** (next rung, W2 855, is only
155 waves away and pays 1.75×).

## 3. Echo — the free multiplier that grows with your tier count

`echo = lab% × B × Σ f(other tiers with a completed run of the same category)`, **added**, not multiplied.

* **Before Tier 17 the echo is 0.5 %** (the four labs are not needed to have an echo at all), so one tier finished to
  W5 000 contributes **+0.01 coins** (2 × 0.5 % × 1) to every other tier — tiny, but free and linear in tier count.
* Totals at 0.5 % (no lab): 10 finished tiers ⇒ **+0.10** coins (Utility) or +0.20 (Attack/Defense/UW); all 24 tiers ⇒
  **+0.24 / +0.48**. At the maxed lab (10.5 %) the echo term alone is **+5.04** for 24 finished Utility tiers
  (`0.105 × 2 × 24`) or **+10.08** damage (`0.105 × 4 × 24`), i.e. a 3× tier would read `3 + 5.04 = 8.04` — the reason
  late accounts run Dissonance on every tier (and the reason the “own tier in or out of the sum” note below matters then).
* The four labs are per category (`Dissonant Echo - Attack` / `- Defense` / `- Utility` / `- Ultimate Weapon`), unlocked
  by the **Tier 17 Wave 60** milestone, **20 levels** each, `0.5 % + 0.5 %/level → 10.5 %` (0.5 + 20 × 0.5 ✓, printed on
  both wikis). **Both of their ladders close in closed form** (fandom's 20 printed rows, entered “with level 0 lab speed
  and lab discount and no relics”, vs Tower Hub's two totals):
  * **coins:** `cost(n) = 1q · 2.25^(n−1)` (1q · 2.25q · 5.06q · 11.39q … 970.74q · 2.18s · **4.91s** — every one of the
    20 printed cells is `2.25^(n−1)`; `q = 10¹⁵`, `s = 10²¹`, so `4.91s = 4.91e21` = the same number), and
    `Σ(20) = 10¹⁵(2.25²⁰ − 1)/1.25 = ` **8.846e21** ⇒ Tower Hub's printed **8.85e21** ✓. (fandom's prose note “the cost of
    each lab level **doubles**” contradicts its own table, ratio **2.25** — the table is the print to use.)
  * **time:** **arithmetic**, not geometric: `time(n) = n × 20 d 20 h` (= `n × 1 800 000 s`; the printed rows 41 d 16 h /
    62 d 12 h / 83 d 8 h … 208 d 8 h … 1 y 51 d 16 h are exactly `2n`…`20 ×` the first), so
    `Σ(20) = 1 800 000 × 210 = ` **378 000 000 s** = **4 375 d ≈ 11.98 y** ✓ Tower Hub's total to the second. This is the
    **third time shape** — the bot lines are ×1.15/level, the Echo labs are `n·t₁` (see T006 §clock laws), so never
    extrapolate one law onto the other family.
  * Practical read: one lab level is **+0.5 pp** of echo for **1q** coins and **20 d 20 h** of slot; the *whole* lab is
    8.85e21 coins ≈ 4 375 d, i.e. **91.2 % of the cost sits in the last 3 levels** (0.97074s + 2.18s + 4.91s = 8.069s of
    8.8459s — the `Σ = c₁(2.25²⁰−1)/1.25` sum in `q` units), so the first 17 levels are nearly free *as a fraction*.
    For a sub-T11 account the labs are far-future: the *own-tier* boost (§2) is 20–140× larger than anything the 0.5 %
    echo adds, so **finish runs, do not chase the labs**.
* **The per-tier law is now a single closed form with three prints.** Tower Hub's own `wiki/lab/echo-lab` (2026-11-01)
  prints a **21-row** table (`Lab | Percent | 3x | 5x`, levels 0…20) whose columns are exactly
  `Percent = 0.5 + 0.5·L` and `echoed = (B − 1) × Percent / 100`: L0 0.5 % → **0.01 / 0.02**, L1 → 0.02 / 0.04,
  L16 8.5 % → 0.17 / 0.34, L19 10.0 % → 0.20 / 0.40, **L20 10.5 % → 0.21 / 0.42** ✓ every cell. The same page's prose
  example (“with the lab at level 0 … a 3x boost echoes a **0.10x** bonus … a 5x boost echoes **0.20x**”) is **not** a
  fourth convention — it is the *sum over ten contributing tiers*: `10 × (3 − 1) × 0.005 = ` **0.10** ✓ and
  `10 × (5 − 1) × 0.005 = ` **0.20** ✓, which is also fandom's “10 tiers at max, lab level 0” example to the digit. So:

  ```
  echo_added_to_a_tier = (B − 1) × (0.5 + 0.5·L)/100 × (number of contributing tiers at boost B)
  ```

  with `B` the **Dissonance Boost** of the contributing tier, `L` the Echo lab level (0…20), and the result **added** to the
  receiving tier's own boost (`5x` running at `5.20` in the page's own words). Practical: the law is linear in *three*
  things at once — lab level, boost, and **how many tiers you have maxed** — so tier count is the cheap lever and the lab
  is the expensive one (1q → 4.91s per level, §above).
* Convention note: the **per-tier term is identical** on both wikis — fandom prints `(Dissonant Boost − 1) × Lab Percentage`
  (= `Echo × B`), Tower Hub `Echo × B × Σ f(others)` — and both worked examples re-add: fandom's “10 tiers at max, lab
  level 0 ⇒ +0.10 on the 3× path, +0.20 on the 5× path” is `10 × 0.5 % × 2` and `10 × 0.5 % × 4` ✓; Tower Hub's “Attack
  tier at 3×, 1.5 % Attack Echo, one other tier maxed at 5× ⇒ **3.06×**” is `3.00 + 0.015 × 4` ✓. The only difference is
  whether the **own tier** is counted inside the sum (fandom's example is ambiguous, Tower Hub says “every other tier”);
  one term = `0.005 × B` ≈ +0.01–0.02 — irrelevant below Tier 17, worth one read later.

## 4. Which lock to take (decision table for a coin-focused account)

The four locks have very different *depth ceilings*, and the boost is a function of the wave you reach, so the
practical ranking for a below-T11 account is:

| Lock | Realistic depth for a sub-T11 account | Boost value | Use it when |
|---|---|---|---|
| **Attack** | deepest if your **UWs carry the damage** (all cash then goes into Health; UW damage is not in the Attack category) | 5× path | your default: biggest boost-per-run for a UW-synced account (T008) |
| **Utility** | shallow-ish: cash is frozen (only the `Starting Cash` lab) so the tower cannot buy upgrades | 3× path (coins) | when the tier is your **farming tier** (T005) — it is the only direct coin multiplier |
| **Defense** | shortest: 1 HP (up to 13 HP with the `Death Wave Health` lab) | 5× path (health) | once your DPS is high enough that the 13 HP survives long enough to pass 1 524 |
| **Ultimate Weapons** | moderate: the plain attack still works | 5× path (UW dmg) | only if the tier's build is UW-heavy *and* you already have the other three |

Surviving exceptions that make each lock cheaper than it looks (all from the wiki):
* **Attack:** `Death Penalty` is the only Attack module that still works.
* **Defense:** `Extra Orbs` card still works (so `Negative Mass Projector` applies), `Orbital Augment` module still
  deals damage, `Death Wave Health` lab → up to **13 HP**, Recovery Packages still heal (minuscule).
* **Utility:** `Starting Cash` is the only cash; **Recovery Packages from boss waves still drop** if
  `Package After Boss` is researched (they still feed `Galaxy Compressor` / `Restorative Bonus`), and
  `Guardian Fetch Chip` + the `Wave Skip` card still pay coins (minuscule).
* **UW:** `Smart Missile Barrage` still fires (0 damage), `Space Displacer` still spawns Inner Land Mines, which still
  **stun** with `Inner Land Mine Stun` — so a stun-and-regen UW-lock run is playable. **Chain Lightning cannot proc at
  all** in this lock (both wikis), so a CL-centric build loses nothing by being locked.

Two more consequences of the numbers: (i) the **5× paths pay exactly double the boost units per wave** of the Utility
path, so a damage/health lock is never the *inefficient* choice per wave — take the Utility lock only when you want
coins specifically on that tier; (ii) because a lock that leaves you with 1 HP reaches only a shallow wave, its boost
is small (§2's `f`), so the *order* Attack → Utility → UW → Defense usually maximises the boost-per-minute.

## 4.1 What each lock strips, stat by stat, and the printed loadouts (`guide/dissonant-runs-guide`, 2026-11-01; new Rev 4)

The page prints the **complete exclusion list** per variant — **Attack 17 · Defense 17 · Utility 12 · UW 9 = 55** stat
lines — which turns §4’s “what you lose” from prose into a checklist you can read against your own Workshop tabs.

| Lock | Printed list, in the page’s own order | n | Cross-read |
|---|---|---|---|
| **Attack** | Damage · Attack Speed · Critical Chance · Critical Factor · Range · Damage Per Meter · Multishot Chance · Multishot Targets · Rapid Fire Chance · Rapid Fire Duration · Bounce Shot Chance · Bounce Shot Targets · Bounce Shot Range · Super Crit Chance · Super Crit Multiplier · Rend Armor Chance · Rend Armor Multiplier | **17** | the *stat* lines of the Attack track in T020 §6.1 (17, where the enhancement census has 18 rows) |
| **Defense / Health** | Health · Health Regen · Defense % · Defense Absolute · Thorn Damage · Lifesteal · Knockback Chance · Knockback Force · Orb Speed · Orbs Max · Shockwave Size · Shockwave Frequency · Land Mine Chance · Land Mine Damage · Land Mine Radius · Death Defy · Wall Health | **17** | the Defense track; **Wall Health** is inside the lock, Wall Regen / Fortification are not listed |
| **Utility** | Cash Bonus · Cash / Wave · Coins / Kill Bonus · Coins Per Wave · Free Attack Upgrade · Free Defense Upgrade · Free Utility Upgrade · Interest / Wave · Recovery Amount · Max Recovery Package Chance · Enemy Attack Level Skip · Enemy Health Level Skip | **12** | same count as the **12** lines of `lab/lab-category-utility-research`, but **different membership**: `Max Interest` and `Package After Boss` are absent from the lock list, the three `Free … Upgrade` lines are in it |
| **UW** | Chain Lightning · Smart Missiles · Death Wave · Chrono Field · Inner Land Mines · Golden Tower · Poison Swamp · Black Hole · Spotlight | **9** | the nine stone UWs of T008; **Multiverse Nexus is not in the printed list** |

**The printed order** differs from §4’s derived one and is worth following on a fresh account: **Attack → Ultimate
Weapon → Health → Utility**, always started **from the tier you normally farm at** (so a short run still pays), and when
you stop progressing, “cycle between the Attack, Health and Utility variants to nudge each one higher”. §4’s ranking is
*boost per wave*; this is *boost per calendar week* — the two agree that Attack is first and that Utility is the coin
lock, and they differ only in whether Defense or Utility comes third.

**The printed per-variant respec** (one line each): Attack and UW → move **all attack coin into defense** and strip the
coin/cell bonuses out of utility; Health → move **every defense point into damage**; Utility → **empty utility** into
damage or health. Before any of it, **write down the `Wall Health`/`Wall Health+` (the page also says `WS/WS+`) base
levels** so the respec is reversible, swap `Summon Guardian` → `Ally`, switch **off auto-pick perks** during the run and
retune **Target Priority**; restore everything afterwards from the notes.

**The module loadouts exactly as printed** (Cannon / Armor / Generator / Core):

| Variant | Cannon | Armor | Generator | Core | Printed notes |
|---|---|---|---|---|---|
| Attack (“Max eHP”) | **DP** (+ Ass’d Mod 2nd) | **SF + OA** | **GC + SH** | **PCol + HC** | Cannon *level* is irrelevant (attack substats do nothing); on Generator **PF, RB and PH don’t help** |
| UW (“Heavy eHP / hybrid”) | **DP** (+ Ass’d Mod) | **SF + OA** | **PH + SH** | **MH** (substats irrelevant) | **GC** on Generator; everything on Core **except MH** is “useless or worse” |
| Health (“Glass Cannon / CC”) | **DP** (+ Ass’d Mod) | **OA + NMP** | **PF + PH** | **PC + DC** | **SR on Cannon is a liability**; on Armor only **OA and NMP** do anything (NMP needs the `Extra Orbs` card) |
| Utility (“eHP / Glass Cannon”) | **DP** (+ Ass’d Mod) | **SF + OA** | **PH + PF** | **PC + DC** | **BHD on Generator is the only real trap**; no Recovery Packages ⇒ **`Galaxy Compressor` is ruled out**; with PF, the `Starting Cash` lab matters |

**Four numbers from the page’s UW-disco deep dive** (the ones that change what you buy):

1. **Range: go max, not min** — maxed range cleared **≈ 2 000 waves more** than min range in the same build (a tested
   figure credited to /u/priesten), with the stated reasons being higher damage with range (their relative figures read
   **×4 vs ×43.5**), range substituting for the missing slows (PS/CF are locked), and bounce shots chaining screen-wide.
   This is the opposite of the Blender advice in T002/T003, and it is variant-specific — in a *UW lock* range is crowd
   control, so set the §“Range lab slider” **4×** for this run only.
2. **Astral Deliverance multiplies bullet damage** (does not add), and **AD primary + Amplifying Strike** (an
   **Epic-only** ass’d-mod slot) was worth **several thousand extra waves**. AD’s 4th-bounce bonus by rarity reads
   **3.8× legendary · 6.5× mythic · 10.5× ancestral** ⇒ below mythic, AD is not worth the slot.
3. The **bounce-target ceiling is 22**; while bounce chance is still low, ordinary **land mines** carry the damage (fund
   `Wall Skip+` for them and **unban** their perk), and once chance approaches 100 % with 22 targets **bullet damage
   passes 1 000× the mine output** — i.e. mines are the *early* damage line of this run, bullets the late one.
4. Under the UW lock, **`Space Displacer` still spawns Inner Land Mines and their stun still works**, and **Magnetic
   Hook also launches ILM** (normally a weak core, one of the few worth running here) — the printed confirmation of §4’s
   stun-and-regen exception, plus its tie-breaker: MH’s substats do not matter.

**Four abbreviations the community pages use** (`guide/common-abbreviations`): **DWEW** = Death Wave Effective Wave,
**SMEW** = Smart Missile Effective Wave (the wave where the SM volley stops killing in S-Max Devo), **WAWSIS** =
`Wave Accelerator` + `Wave Skip` + `Intro Sprint` (a card-mastery farming stack), **CTO** = the Coins-Trade-Off perk
(`x1.80 coins, but Tower Max Health −70 %`), and **eHP** = effective health points (§ T003’s `1 / (1 − Def %)` law).

## 5. Steps (UI only)

1. Claim the **Tier 4 Wave 90** milestone first (the **Milestones** button, T019) — until then the Dissonance tab does
   not exist.
2. Home screen → **`Dissonant Run`** (directly beneath the **`Battle`** button) → tap it → pick the category from the
   four rows in the panel → start.
3. Use your **push preset** for that run (T011/T005): you need the *highest* wave, not coins, and the run pays almost
   no coins with Utility locked. Let the **Autoplayer** run it.
4. When the wave counter passes a §2 rung (**1 524 / 2 265 / 2 855 / 3 365 / 3 823 / 4 243 / 4 633 / 5 000**), decide:
   if the next rung is <500 waves away, push for it (the convexity rule), otherwise end the run.
5. Repeat per tier, **starting with the tier where you do most of your farming** (T005) — the own-tier boost is worth
   20–140× the echo there. Then do the tiers you are pushing for milestone waves (T019 §3).
6. Read the boost in the **Dissonance** panel after each run and write the number down with the wave reached — that is
   the numeric capture that turns this doc **Verified** (§7).
7. Only at Tier 17+: research **`Dissonant Echo - Utility`** first (coins = the currency you farm with), then
   `- Attack`, `- Defense`, `- Ultimate Weapon`; each 20 levels, so the four are a multi-year sink — one level each
   (2 % → 1.0 % echo) beats finishing one lab.

## 6. Cross-system effects worth knowing

* **Tournaments:** the tier's **own** Dissonant Boost does **not** apply in a tournament run, but the **echo does**
  (Tower Hub, cross-checked) — see [T014](T014-tournament-tickets.md). Practical: a Dissonance-boosted tier keeps its
  echo in brackets, but do not expect the ×3/×5 there. (Test: H028.)
* Dissonant Runs are a *second* wave source per tier, so they are the cheapest way to light the milestone cells of
  waves ≥1 500 (2 500 skin, 4 500 relic, T019) **if** special-run waves count at all ([H022](../hypotheses/H022-milestones-from-any-run-type.md)).
* The boosts stop applying from **Tier 25** onwards (Tower Hub) — irrelevant below T11 but it caps the ladder.
* The 5×-path boosts (damage/health) raise your farming depth, which is what makes T005's farm-at-a-stable-wave
  strategy profitable; the 3×-path (coins) raises the payout of whatever depth you already have.

## 7. Reproduction checklist

- [ ] The **Milestones** panel shows a `Unlock Dissonance` row at **Tier 4, wave 90**, and the Dissonance tab appears
      after claiming it.
- [ ] The **Dissonant Run** entry is the button **below `Battle`** on the main menu, and it offers exactly **four**
      category rows.
- [ ] After a run, the panel prints the boost to **three decimals** matching §2 for your best wave (e.g. best wave
      2 265 → **1.500** on the 3× path, **2.001** on the 5× path).
- [ ] A Utility-locked run's coin counter stays ≈ the Starting Cash value (the lock works), while a Defense-locked run
      dies early (1–13 HP).
- [ ] With ≥2 tiers finished, the panel's total boost exceeds the own-tier value by ≈`0.005 × B × f` per extra tier.
- [ ] **§3 law:** with the Echo lab at **L0** and **ten** tiers at max, a 3×-path tier gains **+0.10** and a 5×-path tier
      **+0.20**; at **L20** (10.5 %) the same tiers gain **+0.21** and **+0.42** — i.e. the gain scales linearly in the
      lab level and in the number of contributing tiers.
- [ ] Before Tier 17 W60 the four `Dissonant Echo` labs are **absent** from the Lab list, yet the echo is already
      non-zero (0.5 %).
- [ ] The overshoot cells: at best wave **4 243** a 5×-path category prints **4.001**, and at **2 265** the Utility path
      prints **1.500** while a 5× path prints **2.001** (§2 — the `+0.001` is the `ceil`ed wave, not a rounding bug).
- [ ] `Dissonant Echo - Utility` L1 reads **1q coins / 20 d 20 h** and L10 reads **1.48Q / 208 d 8 h**, and L20 reads
      **4.91s / 1 y 51 d 16 h** (the `n × t₁` time law); the four labs together are **3.54e22 coins** and
      **4 × 378 000 000 s = 17 500 d ≈ 47.9 y** of base slot time.

- [ ] **§4.1 counts:** the four lock panels list **17 / 17 / 12 / 9** `DISABLED` stat lines (Attack / Defense / Utility /
       UW) in the order printed there; the Utility panel lists **12** and does **not** include `Max Interest` or
       `Package After Boss`.
- [ ] **§4.1 UW lock:** the same build reads **≈ 2 000 waves higher** with the **Range** lab at **4×** than at **1×**, and
       `Space Displacer` still drops **Inner Land Mines** that still **stun**.
- [ ] **§4.1 AD rarity:** the 4th-bounce bonus reads **3.8×** at legendary, **6.5×** at mythic, **10.5×** at ancestral.

## 8. Falsification

- If a run's printed boost ≠ §2's value for its best wave, the version changed the exponent (1.75) or the cap wave
  (5 000) → re-read the panel at two waves and rebuild the ladder from the ratio.
- If a second category's run on the same tier **replaces** the first boost instead of being stored separately, the
  plan is “one category per tier, chosen once” ([H027](../hypotheses/H027-dissonance-one-boost-per-tier-vs-four.md));
  if both are listed, run all four per tier and treat the boosts as four separate multipliers.
- If a tournament run at the same tier/wave shows the same multiplier as a normal run, the “own boost does not apply in
  tournaments” line is wrong for this version ([H028](../hypotheses/H028-dissonance-boost-in-tournaments.md)) and the
  push preset can be used in brackets without losing the boost.
- If the echo total does not move when a second tier gets a finished run, the 0.5 % pre-lab echo is a myth (it starts at
  0) → the four labs become the only echo source; rewrite §3's totals.
- If a **single** contributing tier at 3× already adds **0.10** with the lab at L0 (not 0.01), then the printed table's
  `Percent` column is used as `× Percent / 10` and every echo figure here is 10× larger → divide the whole §3 table by 10
  and re-check with a second tier (the two readings differ by exactly a factor of ten, so one panel read decides).
- If `Dissonant Echo - X` level 2 costs **2q** rather than **2.25q**, the coin ladder is `×2` not `×2.25` ⇒
  `Σ(20) = 1q(2²⁰ − 1)/1 = 1.0486e21` (a **thousand-fold** difference from the printed 8.85e21, so the two are easy to
  tell apart); the two sources' totals then no longer agree and the ladder is per-save.
- If an Echo lab's **level 2 time** prints **23 d 23 h** (= `1.15 ×` 20 d 20 h) instead of **41 d 16 h** (= `2 ×`), the
  time shape is the ×1.15 geometric law of T006, not `n · t₁` ⇒ the line's total becomes
  `t₁(1.15²⁰ − 1)/0.15 = 1.844e8 s ≈ 2 134 d ≈ 5.8 y` instead of **4 375 d**.
- If a **Utility-lock** panel still lists Recovery Packages as dropping after boss waves, the two prints disagree (the
  dissonant page says “recovery packages don’t exist in this run”, which also rules `Galaxy Compressor` out; the lab page
  keeps `Package After Boss` at 1 level) → trust the in-run panel and drop the `Package After Boss` term from §4’s
  Utility exceptions.
- If in a **UW lock** the *unlisted* **Multiverse Nexus** still fires (or `Space Displacer`’s ILM stop stunning), the
  printed nine-item UW list is not the full set of locked sources → re-read the panel’s `DISABLED` rows and rebuild the
  §4.1 counts from them.
- If the panel prints **2.500** (not `2.501`) at best wave 4 243, the boost is computed from a *rounded* `f` rather than
  the raw power law → §2's third decimals are display artefacts and only the `k/8` rungs are trustworthy.

## Sources

- fandom `Dissonance` (raw wikitext) — “second difficulty setting”, unlock at **Tier 4 Wave 90**, the four lock
  descriptions, all the per-category **exceptions**, `1+(multiplier-1)*(wave/5000)^1.75`, the max values **5×/5×/5×/3×**
  at W5 000, the milestone table (1 524/2 265/2 855/3 365/3 823/4 243/4 633/5 000), and “Echo … initial value 0.5 %,
  raised by the Echo Lab, unlocked after tier 17 wave 60”.
- fandom `Echo_Lab` (raw wikitext) — the four labs (`Dissonant Echo - Attack/Defense/Utility/Ultimate Weapon`),
  **20 levels**, 0.5 % + 0.5 %/level → **10.5 %**, per-level coin ladder `1q → 4.91s` (×2.25/level) and times
  (`20 d 20 h → 1 y 51 d 16 h`), plus `(Dissonant Boost − 1) × Lab Percentage` and the 10-tier worked example (+0.20).
- Tower Hub `wiki/lab/echo-lab` (last verified **2026-11-01**, 2 data tables) — “There is one lab for each Dissonant
  category … Each of the four labs has **20 levels**. The echo chance starts at **0.5 %** and every level adds another
  **0.5 %**, topping out at **10.5 %**”; the level/Value/Time/Coins ladder (**1.0 %** · **20d 20h** · **1q** … **5.5 %** ·
  **208d 8h** · **1.48Q**) recorded “with level 0 lab speed, no lab discount and no relics”; the **21-row** per-tier table
  (`Lab | Percent | 3x | 5x`) ending **L20 | 10.5 % | 0.21 | 0.42**; and the printed law “*(Dissonance Boost − 1)*
  multiplied by your lab percentage … **additive** with the boost already on the receiving tier”, with the 10-tier example
  “5x would then effectively run at **5.20x**, or **3.10x** if it was at 3x”.
- Tower Hub `wiki/system/dissonance` (last verified **2026-11-01**, 1 data table) — the code-level form
  `1 + B·f(this tier) + Echo·B·Σf(others)`, B = max − 1, `f = (best wave / 5000)^1.75` capped at 1, **each run type has
  its own Echo**, “with Echo the total can pass the 5×/3× cap”, and the “add together rather than multiply, every other
  tier counts” rule with its worked example (**3.00 + 0.015 × 4 = 3.06** ✓); the **boost-milestone table with the
  `±0.001` cells** (`2.501`, `2.001`, `3.501`, `4.001`); the unlock (`Tier 4 Wave 90`) and the four lab unlocks
  (**Tier 17 Wave 60**, 20 levels, up to **10.5 %**); the lab totals **8.85e21 coins / 378 000 000 s** per lab; the
  tournament nuance (own boost off, Echo on); “**no Dissonant Boost from Tier 25 on**”; and the lockout/exception detail
  (`Chain Lightning cannot proc`, `Death Wave Health` → **13 HP**, Utility's only cash = `Starting Cash` lab).
- `tools/gm_strings.txt` — `Assets\Scripts\Dissonance\` classes: `DissonanceManager`, `DissonanceBoost`,
  `DissonanceBonusUI`, `DissonanceInfoUI`, `DissonanceTabButton`, `DissonanceTypeIcon`, `DissonantBoostViewer`,
  `DissonantBoostsTierDataEntry` (per-tier stored boosts), `DissonantRunButton`, `DissonantRunPanelUI`, and
  `DissonanceManager|DissonanceRemoteData` (remote-configurable values → the 1.75/5000 pair is server data, which is
  why the strings are absent from the metadata dump).

- Tower Hub ``wiki/guide/dissonant-runs-guide`` (last verified **2026-11-01**, "6 data tables") - the four printed
  exclusion lists (**17 / 17 / 12 / 9** lines), the per-variant module loadouts and respec rules, the printed run order
  (**Attack -> UW -> Health -> Utility**, started from the farming tier), the UW-disco numbers (max vs min range
  **~+2 000 waves**, damage **x4 vs x43.5**, **AD** at **3.8 / 6.5 / 10.5x** by rarity, **22** bounce targets, bullets
  past **1 000x** the mine output), and the card / module / perk rating matrices. Tower Hub
  ``wiki/guide/common-abbreviations`` - **DWEW**, **SMEW**, **WAWSIS**, **CTO**, **eHP**, and the module names behind the
  abbreviations (Astral Deliverance, Space Displacer, Project Funding, Magnetic Hook, Anti-Cube Portal, ...).