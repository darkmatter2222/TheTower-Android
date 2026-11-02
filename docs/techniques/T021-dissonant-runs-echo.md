# T021 — Dissonant Runs: one tap-to-lock run that buys a permanent per-tier multiplier

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
wave matches T019's milestone table. Status: **Verified (arithmetic, Rev 2)** — 16 milestone values + 20 coin rows +
20 time rows + the two Σ totals + the 3.06 example all re-add; the one open device read is whether the own tier is
counted inside the echo sum (§3 note).
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
- [ ] Before Tier 17 W60 the four `Dissonant Echo` labs are **absent** from the Lab list, yet the echo is already
      non-zero (0.5 %).
- [ ] The overshoot cells: at best wave **4 243** a 5×-path category prints **4.001**, and at **2 265** the Utility path
      prints **1.500** while a 5× path prints **2.001** (§2 — the `+0.001` is the `ceil`ed wave, not a rounding bug).
- [ ] `Dissonant Echo - Utility` L1 reads **1q coins / 20 d 20 h** and L10 reads **1.48Q / 208 d 8 h**, and L20 reads
      **4.91s / 1 y 51 d 16 h** (the `n × t₁` time law); the four labs together are **3.54e22 coins** and
      **4 × 378 000 000 s = 17 500 d ≈ 47.9 y** of base slot time.

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
- If `Dissonant Echo - X` level 2 costs **2q** rather than **2.25q**, the coin ladder is `×2` not `×2.25` ⇒
  `Σ(20) = 1q(2²⁰ − 1)/1 = 1.0486e21` (a **thousand-fold** difference from the printed 8.85e21, so the two are easy to
  tell apart); the two sources' totals then no longer agree and the ladder is per-save.
- If an Echo lab's **level 2 time** prints **23 d 23 h** (= `1.15 ×` 20 d 20 h) instead of **41 d 16 h** (= `2 ×`), the
  time shape is the ×1.15 geometric law of T006, not `n · t₁` ⇒ the line's total becomes
  `t₁(1.15²⁰ − 1)/0.15 = 1.844e8 s ≈ 2 134 d ≈ 5.8 y` instead of **4 375 d**.
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
