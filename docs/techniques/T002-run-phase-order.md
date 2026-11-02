# T002 — Fixed phase order for the in-run Cash bar

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

- [ ] **Per-tier build:** a Tier-2 run pays **1.8×** the coins per wave of the Tier-1 run at the same wave (the HUD’s
      per-minute read after tapping the top-left counter makes this a one-line comparison).
- [ ] The Scatter chain costs **31** hits (1+2+4+8+16) and a Plasma-Cannon-stripped boss (54 % gone) dies to one Thorns tick.

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

## Sources

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
