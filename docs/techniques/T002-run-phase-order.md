# T002 — Fixed phase order for the in-run Cash bar

Rev: 5 (2026-11-02) — the **stats-page attribution law** plus three FAQ prints (`wiki/guide/frequently-asked-questions`):
since **v27** the per-source coin rows are *marginal* credits `P − P / m_i` (the page’s own example: base 100 with
`GT ×20` and `BH ×10` ⇒ true **20 000**, rows **19 000 + 18 000 = 37 000** = **1.85×**, and the closed form
`n − Σ 1/mᵢ` re-adds to **1.85** ✓, ≈ **4.71×** with five overlapping sources) — so never sum the rows against the total;
a **negative `(BH, GB, SL)`** row is a printed display bug; and **heat-up is ×1.04 per surviving hit**
(**1.48** at 10 hits · **2.19** at 20 · **4.80** at 40 · **10.52** at 60 · **50.5** at 100), the printed reason thorns
outrank Defense % below Tier 11.
Rev: 4 (2026-11-02) — the **wave clock** is now printed-reproduced (`wiki/system/gameplay`): a normal wave = **26 s length +
9 s cooldown at ×1 speed** ⇒ **35 s**, and the **tournament halves the cooldown** to 30.5 s, so `waves/h = 3600 × s / 35`
(×1 **102.86**, ×3 **308.57**, ×5 **514.29**, ×6.25 **642.86**) with the tournament worth exactly **×1.1475** more waves. That
turns every per-wave figure into an hourly rate (`coins/h ≈ (CPW + kills×CPK) × waves/h`) and prices the speed leg from the
`Game Speed` ladder: values `1.5 + 0.5n` = **×2.0…×5.0** (7/7), **1 714 800** coins, **65 277 min = 45.33 d** of one slot.
Also banked: `round` ≠ `wave` and a **restart does not refresh** a once-per-round effect; the **Wave Info Menu** (tap the wave
counter) prints each enemy’s spawn frequency. §The wave clock.
Rev: 3 (2026-11-02) — **the per-tier build is now printed** (`wiki/guide/tier-specific-guide`): the Blender/Thorns
tier-push build, the **1.8×** Tier-2 coin multiplier, the **25 → 500 000 000** mission-coin pair for T1/T18, the CPW-early
/ CPK-late split, the Thorns-≥5 % switch trigger, **Plasma 54 % + Thorns** and **Energy Net ×20** as the two boss answers,
the **31**-hit Scatter law (`1+2+4+8+16` ✓), the Lv.9 Extra Orbs **1.4×** mastery bonus, and the top-left counter tap that
switches the HUD to a per-minute read.
Rev: 2 (2026-11-02) — the phase order is now **printed** (`wiki/guide/beginner-guide` gives the in-run sequence *with wave
ranges*, `wiki/guide/coin-guide-basics` the multiplier law): Cash/Wave **W1–9** → Coins/Wave **W10–20** → Cash Bonus +
Coins/Kill → Def Abs → Thorns-to-breakpoint; the `Coins/Wave` **lab** line has a printed ceiling of **level 20**; and the
multiplicative stack closes on the page’s own numbers **11 × 20.75 = 228.25** ✓. **Status: Verified (arithmetic)** for the
stack law and the ceilings; the ordering’s wave gain is still a device read.
Value: ★★★ · Ease: 0 (ordering only, same number of taps) · Prerequisite: Tier 1

## Why it works

In-run upgrades are bought with Cash that itself grows multiplicatively. Buying the *early*
upgrade lines while Cash is small is cheap; buying the *compounding* lines after the interest
engine is warm is where the value is. Following a fixed order removes decision cost and stops
the common beginner mistake of dumping everything into raw Damage.

**The printed stack law** (`coin-guide-basics`): *every* coin multiplier multiplies every other one — packs, themes, the
CPK workshop upgrades, the Ultimate Weapon coin bonuses — **when they apply to the same enemy**. The page’s worked
example: Black Hole maxes at **×11**, Golden Tower at **×20.75**, and with both active on one kill that enemy drops
**×228.25** the normal coins (`11 × 20.75 = 228.25` ✓). Two consequences the page draws, both used below:

1. **A brand-new multiplier usually beats deepening a developed one** (a new factor enters every product, a deeper
   factor only scales one term) — so buying the *second* UW bonus is worth more than levelling the first.
2. **A multiplier that is not up at the moment of the kill is worth 0**, so *syncing* (below) is not cosmetic — it is
   what makes the product exist at all.

## Steps (farming run — the printed phase order)

1. **Waves 1–5/9:** buy **Cash / Wave** repeatedly (“Boost Cash/Wave for the first 5-9 waves”).
2. **Waves 10–20:** switch to **Coins / Wave** (“for roughly waves 10-20”). Its **lab** line has a printed ceiling:
   **stop at level 20** (“you may not even take it that far, but that level is a safe ceiling”) — CPW is “the weakest coin
   source in the game over the long run, simply because fewer multipliers exist to make it grow”.
3. **Then:** **Cash Bonus** and **Coins / Kill** “until enemies start getting damage through your Def Abs”.
4. **Then: Def Abs.** (Workshop side: start `Cash Bonus` + `Coins/Kill` once you can pass **wave 100**, T003.)
5. **Then: Thorns**, one step at a time, always landing on the next breakpoint (**6 / 11 / 21 / 26 / 34 %**,
   [T003](T003-turtle-build-t1-t2.md)) — “fewer hits per enemy means less damage taken”.
6. Interleave [T001](T001-interest-idle-engine.md) idle windows between purchase bursts.

**Step-2 runs (after Tier 2 unlocks)** shift the end of the sequence: economy first, then — “once Def Abs starts losing
effectiveness and getting pricey” — **Health**, then orbs/lifesteal as needed (orbs when knockback piles enemies up,
lifesteal when incoming damage outpaces healing). `Cash/Wave` is deliberately *not* maxed in the Workshop at this stage:
the page’s rule is to leave it and level it in-run.

## Steps (tier-push run, i.e. you are trying to reach the next tier's wave 100)

1. Skip **all** coin lines. Buy **Cash / Wave**, then survivability only: Absolute Defense, Defense %, Health, Thorns.
2. Do not spend time optimizing income on a push run — the milestone reward is the payout ([T005](T005-tier-rush-then-farm.md)).

## The printed CPK source list (and which ones also raise CPW)

From `coin-guide-basics`, verbatim in structure — the “also CPW” column matters because CPW lines are the ones the page
caps at lab L20, so a source that lifts **both** is worth more per level:

| Source | Needs a lab? | Also raises CPW | Where it is |
|---|---|---|---|
| Packs (starter / epic / disable-ads) | — | **yes** | Store |
| `Coin` card | yes | **yes** | T012 |
| `Enemy Balance` card | yes | indirect (more enemies drop) | T012 |
| **Tier** (higher tier = more coin value) | — | **yes** | T005 |
| Themes (medals) | — | **yes** | T013 |
| Relics (the coin line) | — | **yes** | T018 |
| `Coins/Kill` | **yes** (workshop + lab) | no | T020 / T006 |
| `Golden Tower` | **yes** (+ supporting lab) | no | T008 |
| `Black Hole` | **yes** — its coin bonus *requires* the lab | no | T008 |
| `Spotlight` | **yes** — coin bonus requires the lab | no | T008 |
| `Death Wave` | **yes** — coin bonus requires the lab | no | T008 |
| `Coin Bot` | medals (event shop) | no | T015 |

## The wave clock — the missing time base for every per-wave number (`system/gameplay`, 2026-07-29)

The page prints the timers **at ×1 speed**: a normal wave is a **26.00 s length stage** (enemies spawn and are attacked)
followed by a **9.00 s cooldown stage** (nothing spawns), and the next wave starts only when **both** timers have run out.
So one wave costs **35 s** of game time (74.3 % spawning / 25.7 % idle), and **in tournaments the cooldown is halved**
⇒ **30.5 s** per wave. With the speed cap `s` this is a one-line law:

> **waves/hour = 3600 × s / 35** normally, **3600 × s / 30.5** in a tournament — the tournament's halved cooldown is worth
> **×1.1475** waves in the same wall-clock time.

| Speed cap | waves / h | Tournament waves / h | Where the cap comes from |
|---|---|---|---|
| ×1 | **102.86** | 118.03 | no `Game Speed` level bought |
| ×2 | 205.71 | 236.07 | `Game Speed` **L1** (300 coins) |
| ×2.5 | 257.14 | 295.08 | L2 |
| ×3 | **308.57** | 354.10 | **L3** (cumulative 14 800 coins, T020) |
| ×3.5 | 360.00 | 413.11 | L4 |
| ×4 | 411.43 | 472.13 | L5 |
| ×4.5 | 462.86 | 531.15 | L6 |
| ×5 | **514.29** | **590.16** | **L7** — the lab cap (`Game Speed` = 7 levels, T020) |
| ×6.25 | 642.86 | 737.70 | L7 **+** the `Game Speed` perk stack (0.15 × 5 ⇒ +1.25, T011) |

**Why the table is worth having:** every coin figure in this repo is *per wave* or *per kill*, and the two legs of the coin
formula share this clock —

> **coins/hour ≈ CPW × waves/h + (kills per wave × CPK) × waves/h**

so **the same 14 800 coins that buy `Game Speed` L1–L3 triple the waves/hour term of both legs at once** (102.86 → 308.57),
which is exactly why T020 puts that line first. The page also prices the whole line: values follow `1.5 + 0.5 × level`
(**×2.0 … ×5.0**, 7/7 ✓ printed), the seven costs re-add to **1 714 800** coins and the seven times to **65 277 min =
45.33 d** of one lab slot.

**Two mechanical rules from the same page that change what to tap:**

1. **`round` ≠ `wave`.** A round is the whole run to death; anything “once per round” stays spent **until the tower dies —
   restarting or advancing waves does not refresh it** (so `Second Wind`-class effects are worth planning around a *death*,
   and Wave Skip does not give you a fresh charge).
2. **Two free readouts, both taps away:** tap the **top-left currency display** to flip it between totals and
   **per-minute rates** (the instrument for every before/after in these docs), and tap the **wave counter** (right of the
   health bar) to open the **Wave Info Menu**, which lists every enemy type with its stats **including how often it spawns**
   — that is the on-screen source for the “kills per wave” term above.

## The stats page’s coin attribution, and three FAQ laws (`guide/frequently-asked-questions`, 2026-07-29; new Rev 5)

**① Why the per-source rows do not sum to the total — since v27 this is by design.** The page prints the attribution law
and one worked example: base **100** coins on a wave with **Golden Tower ×20** and **Black Hole ×10**, all coins earned
while both are active ⇒ true total `100 × 20 × 10 =` **20 000**. The stats page then credits each source with what it
*added*: GT `20 000 − 100 × 10 =` **19 000**, BH `20 000 − 100 × 20 =` **18 000**, so the rows sum to **37 000** —
**1.85×** the truth. Closed form: `credit(i) = P − P / m_i` with `P` the full product, so the sum is
`P × (n − Σ 1/m_i)`; here `2 − (1/20 + 1/10) =` **1.85** ✓ reproduces the printed 37 000 exactly. With the five sources
the page lists as overlapping (`Golden Tower, Black Hole, Spotlight, Death Wave, Golden Bot`) the factor is
`5 − Σ 1/m_i` ≈ **4.6** at the printed multipliers ⇒ **never** add the rows and compare with the total; each row is still
individually meaningful as `P × (1 − 1/m_i)`.

**② Negative rows are cosmetic.** A negative figure for `(BH, GB, SL)` is a printed **display bug** with no effect on
earned coins — do not “fix” a ledger for it.

**③ Heat-up: enemy damage ×1.04 per surviving hit.** “Every time an enemy hits you or your Wall and survives, its damage
is multiplied by **1.04×**” ⇒ after `k` surviving hits the multiplier is `1.04^k` =
**1.48** (10) · **2.19** (20) · **3.24** (30) · **4.80** (40) · **10.52** (60) · **50.5** (100). That single constant is
why the early-build docs push **thorns** first: with low thorns a juggling enemy racks up a double-digit damage
multiplier and “blows through defense % and absolute defense that would normally reduce its damage to zero”, which is the
printed explanation for the classic “I had enough absolute defense, why did I die?” — and why the same enemy dies on its
first or second hit once thorns improve (`k` collapses to 1–2).

## Priority notes

- **Attack Speed** is the one attack stat that matters early: every hit rolls knockback and every on-hit effect, so hits/second ≈ "more of everything" (the page lists it first among the attack stats).
- Keep **Damage** and **Crit Chance** at equal purchase cost; **Crit Factor** is expensive — one level occasionally.
- Leave **Range** and **Damage per Meter** at 0 (fix with Cash mid-run only if needed).
- Start **Multishot** once you can max Attack Speed within a run, then **Rapid Fire**, then **Bounce Shot** — the page
  prints this as a strict “once the previous one maxes in-run” cascade.
- Delay **Super Critical** until 100 M coins “isn’t a stretch” (the printed gate).
- **Syncing** is the third multiplier leg: make UW/bot cooldowns *multiples* of each other (1:1 is the common target),
  and fund the paired upgrades together or the sync breaks — the arithmetic is in
  [T008](T008-uw-sync-with-stones.md) §sync; the two footgun cases (lowering Black Hole before GT is on it; labbing bot
  cooldowns before knowing the target) are there too.

## The printed build per tier (`guide/tier-specific-guide`, 2026-07-29)

| Item | Printed value | Use in a sub-T11 account |
|---|---|---|
| The tier-push build | the **Blender/Thorns** build: Knockback pins normals at the range edge, **Orbs** kill them there, **Plasma Cannon + Thorns** two-shot bosses → run to **W100** | the whole of T003’s Turtle, named |
| Why tiers first | a completed daily mission pays **25** coins at Tier 1 and **500 000 000** at Tier 18 | = the T004 tier column, second source |
| Tier 2 coin multiplier | **1.8×** | the “nearly double” of T003, now numeric |
| CPW vs CPK | **CPW wins early** (“some early waves spawn no bonus enemies at all, so Coins per Kill can literally pay out zero”); CPK wins late | the phase-2/phase-3 split above |
| The DPS→Defense switch | once **Thorns ≥ 5 %**, stack **Defense Absolute** (five tanks can overwhelm a damage build; Def Abs removes the variance) | the step-4 trigger |
| Boss kill pattern | Plasma Cannon strips **54 %** ⇒ Thorns one-shots it (needs MaxHP high enough); **Energy Net** multiplies boss damage up to **20×** | the two boss answers |
| Scatter math | splits into up to 16 children ⇒ `1+2+4+8+16 = ` **31** hits per Scatter ✓ | why Vampires/Scatters gate cell farming |
| Elite tooling | Rays are long-range, Vampires shut off **Lifesteal and Health Regen** while attacking (**Wall Regen still works**) | the T003 survival shift |
| Defensive farm pattern | hold with **Knockback** (or a permanent Black Hole) → wait for **GT + DW + BH** together → let BH drag the wave into Orb range; **Lv.9 Extra Orbs mastery** adds a **1.4×** orb-kill coin multiplier | the §“sync” legs of T008 |
| Display tip | tapping the **cash / coin / gem counter top-left** toggles total ↔ **per-minute** | the fastest way to read this doc’s deltas |
| Range lab | adjustable **1×–4×**, but only **outside battle** (the one non-permanent lab besides Shockwave); Blender wants range ≈ orb reach, BH builds want it small, Devo low | set it before the run, not during |
| Perks | offers every **200** waves, **none in tournaments** ⇒ ≥ **16.1×** more incoming damage in a bracket | T011 §1.⑦ |

## Steps (UI only, quick list)

1. **Workshop** tab → follow the order in §Steps above.
2. **In-run Cash bar** → the five phases above.
3. Tap the top-left **counter** to switch to the per-minute read before starting the comparison run.
4. Set the **Range** lab slider (1×–4×) *before* pressing `Battle`.

## Reproduction checklist

- [ ] **The wave clock:** at **×1** speed, count the wave counter across a timed **10-minute** span — **≈ 17.1 waves**
      (102.86/h). At the `Game Speed` **L3** cap (×3) the same ten minutes give **≈ 51.4**; inside a tournament multiply each
      figure by **1.1475** (the halved cooldown).
- [ ] **The speed cap ladder:** the `Game Speed` line prints **×2.0 / ×2.5 / ×3.0 / ×3.5 / ×4.0 / ×4.5 / ×5.0** for levels
      1–7 (`1.5 + 0.5 × level` ✓ 7/7), the seven costs re-add to **1 714 800** coins and the seven times to **45.33 d**.
- [ ] **Once per round:** after using a once-per-round ability, press **restart** without dying — the charge is still spent ✓;
      only a tower death refreshes it.
- [ ] **Per-tier build:** a Tier-2 run pays **1.8×** the coins per wave of the Tier-1 run at the same wave (the HUD’s
      per-minute read after tapping the top-left counter makes this a one-line comparison).
- [ ] The Scatter chain costs **31** hits (1+2+4+8+16) and a Plasma-Cannon-stripped boss (54 % gone) dies to one Thorns tick.
- [ ] **Rev 5 attribution:** with **GT and BH both active** the stats page rows sum to **more** than the printed total
       (with `x20 / x10` on a 100-coin wave: 19 000 + 18 000 vs 20 000); the factor is `n - sum(1/m_i)`, and a
       **negative** `(BH, GB, SL)` row leaves the total unchanged.
- [ ] **Rev 5 heat-up:** count the hits one juggling enemy takes before it dies and check its damage against **1.04^k**
       (10 hits = **1.48x**, 20 = **2.19x**); raising thorns so it dies on hit 1-2 collapses the multiplier.

- [ ] Same tier, same time budget: ordered run ends with more Coins than a "buy what looks good" run
- [ ] `Coins/Wave` is **≤ level 20** in the Lab list while `Coins/Kill` is being levelled past it (the printed ceiling).
- [ ] The stack law: with Black Hole and Golden Tower both up on one kill, the coin number is ≈ **228×** the same kill
      with Golden Tower alone (228.25 / 20.75 = **11** ✓ the two printed factors).
- [ ] Range is still 0 in the Workshop at the end of the run
- [ ] You reached a higher wave than your previous control

## Falsification

- If continuous buying of the top-of-list option beats this order over ≥5 paired runs, record the
  wave/coin numbers in this file and demote the technique to Medium confidence.
- If `Coins/Wave` past **level 20** still moves Coins/min measurably at your tier, the “fewer multipliers exist” falloff
  is tier-dependent → record coins/min at L20 vs L25 on one tier and re-table the ceiling per tier band.
- If two UWs that are up *at the same instant* fail to multiply (the kill pays one bonus, not the product), the
  “same enemy” condition is what differs → re-read the two cooldowns; a product only exists when the windows overlap.
- If the measured wave rate at **×1** comes out nearer **138.5/h** (`3600 / 26`) than **102.86/h**, the wave counter advances
  at the *end of the length stage*, so the cooldown is not inside the cycle → set the divisor to **26 s** (which also makes the
  tournament boost exactly **×1.0**, since a halved cooldown would then be free) and rebuild the table from the two counts.
- If the tournament rate is **not** ≈ **×1.1475** of the non-tournament rate at the same speed cap, the halving applies to a
  different timer → record both rates and take the divisor from `3600 × s / rate`.

## Sources

Tower Hub `wiki/system/gameplay` (2026-07-29) — **the wave clock** (`Normal Wave`: length **26.00 s**, cooldown **9.00 s** at
×1 speed; the cooldown is **halved in tournaments**), the `wave` vs `round` definitions and the rule that restarting or
advancing waves does **not** refresh a once-per-round effect, the two HUD readouts (tap the **top-left** currency display for
per-minute rates; tap the **wave counter** for the **Wave Info Menu** with each enemy’s stats and spawn frequency), the tower
layout (workshop along the bottom, stat summary above it, ability buttons and the wall bar above the main health bar, speed
control over the wave counter), and the currency census (**7** main currencies + **5** shard varieties, Energy Shield charges
shown under the gem count).
Tower Hub `wiki/workshop/game-speed` (2026-11-01) — the `Game Speed` 7-level ladder: values **×2.0 … ×5.0**
(`1.5 + 0.5 × level`, 7/7 ✓), costs **300 / 2 500 / 12 000 / 50 000 / 150 000 / 500 000 / 1 000 000** = **1 714 800** coins,
times **10 m … 25 d 11 h 7 m** = **65 277 min = 45.33 d** of one lab slot.

Tower Hub `wiki/guide/beginner-guide` (2026-07-29) — the in-run phase order **with wave ranges** (Cash/Wave 5–9 →
Coins/Wave 10–20 → Cash Bonus + Coins/Kill → Def Abs → Thorns at the next breakpoint), the step-2 shift to Health, the
Multishot → Rapid Fire → Bounce Shot cascade, the 100 M Super Crit gate.
Tower Hub `wiki/guide/coin-guide-basics` (2026-07-29) — CPW is the weakest long-run source with a printed **lab L20**
ceiling; the multiplicative-stack law with **11× / 20.75× / 228.25×**; “adding a brand new multiplier usually gains more
than pushing an already well-developed one”; the GT/BH cooldown numbers (300 s / 200 s, targets 200 s and 150 s); the
CPK source list and which entries also raise CPW; daily missions “cap out in the tens of millions”.
Tower Hub `wiki/guide/tier-specific-guide` (2026-07-29) — the per-tier build table: the Blender/Thorns tier-push build,
the **1.8×** Tier-2 coin multiplier, daily-mission coins **25** (T1) → **500 000 000** (T18), the CPW-early / CPK-late
split with its reason, the **Thorns ≥ 5 %** → Def Abs trigger, the two boss answers (**Plasma 54 %** then one Thorns tick,
**Energy Net ×20**), the **31**-hit Scatter chain, Vampire/Lifesteal behaviour, the GT+DW+BH hold-and-release pattern with
the **Lv.9 Extra Orbs 1.4×** mastery, the top-left counter tap for the per-minute read, the **1×–4×** Range lab set outside
battle, and the perk rows shared with T011 §1.⑦.
Earlier: game-vault `Guide:Beginners_Guide` §In Run Upgrade Order / §Workshop Upgrades; strategygame.org tier-10
write-up (Attack Speed priority).

- Tower Hub `wiki/guide/frequently-asked-questions` (last verified **2026-07-29**, fandom cross-check 2025-11-19) â€” the
  v27 coin-attribution rule with its worked example (100 base, GT x20, BH x10 => 20 000 true; rows 19 000 + 18 000 =
  37 000), the negative `(BH, GB, SL)` display bug, and the **heat-up** law (**x1.04** per surviving hit).
