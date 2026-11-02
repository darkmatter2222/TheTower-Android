# T008 — Stone economy: knee-first UW buying + cooldown sync

Rev: 5 (2026-11-02) - the **nine UW+ ledgers close** (`wiki/uw/<name>` §UW+ Cost Table): caps are **not** uniform
(**11** Smite/Cover Fire · **13** Chrono Loop · **14** GT/BH/DW/ILM/PS · **19** Light Range, resolving **H033**), every
value row re-adds from a closed form, the printed `TOTAL` (**12 650 + unlock**, Smite) matches its computed sum, the layer
bills **179 240** stones (fandom's uniform model is high by **5 500**), and the per-unit knees are **L8** for Kill Wall and
**L4** for Charged Mine (§1.④).
Rev: 4 (2026-11-02) - the stone ladders get a **second source** and a **ledger check**: `wiki/guide/which-uw-do-i-select`
prints both §1 tables verbatim, `wiki/guide/uw-tier-list` prints their **9 705** sum, and the account table re-adds as
`43 842 + 9 705 = ` **53 547** (its headline); four `UW+ status = Locked` rows with non-zero stones pin that column to
**basic-stat spend only** (**43 842 / 244 302 = 17.9 %** of the stat bill), which leaves the UW+ ledger unaccounted
(**H056**). Also new: the printed pick order with its two **3x-lab-boost** conditional swaps (§1.②), the per-UW printed
coin/health/cell multipliers, and the **374-run** coin/damage share tables (§1.③, coin shares sum to **155.9 %** by
construction).
Rev: 3 (2026-11-02) — the **sync lattice** gets its step sizes: bot medal upgrade **−3 s**, bot lab upgrade **−1 s**
(the page’s three printed steps `5 s = 1 m + 2 l`, `10 s = 3 m + 1 l`, `20 s = 6 m + 2 l` solve to exactly that, and
`120 − 20 = 100` ✓), base bot cooldown **120 s**, max **50 s** (bots except Flame, BH, DW) and **100 s** (GT); plus the
printed base cooldowns **GT 300 s / BH 200 s**, the 1:1 and 2:1 funding rule, MVN’s “training wheels” verdict and the four
printed footguns (§4, after the ladder table).
Rev: 2 (2026-11-01) — the whole stone ledger is now numeric (per-level columns read and summed; all 9 UW totals and all 9 perk-UW `stone value` entries reproduced exactly), and the sync ladder is rebuilt from those columns.
Currency: **Power Stones** (and the coin rate they buy) · Status: **Verified** — the derived model reproduces 9/9 published stone values exactly (§6).

| | |
|---|---|
| **Value** | ★★★★ — three cooldown blocks on GT/BH/DW (**2 620 stones**) move the triple-coincidence period from **600 s → 200 s**, and the GT first-block (**2 520 stones**) is the cheapest power per stone in the game: ×9 cash+coins per kill with 30 s of uptime. |
| **Confidence** | **High** — every price is the fandom `…/Basic_Upgrades` per-level column, and the sums match those pages' own `Total` rows and the perk table's `stone value` column exactly (§6). **Medium** on the preferred stat order for a given build, and on the UW+ tree totals (§1). |
| **Ease** | 1 tap per level (the `+` on each stat line in the **Ultimate Weapons** panel); the target package is **2 620 stones**. |
| **Prerequisite** | the first UW costs **5** stones, the 9th **3 000**; UW+ needs all 9 UWs. |

---

## 1. The four stone pools — why knee-first buying is forced

| Pool | Total (stones) | Composition |
|---|---|---|
| Unlock all **9 UWs** (price = how many you already own) | **9 705** | 5 + 50 + 150 + 300 + 800 + 1 250 + 1 750 + 2 400 + 3 000 |
| Unlock all **9 UW+ abilities** (needs all 9 UWs first) | **14 650** | 500 + 625 + 750 + 975 + 1 250 + 1 650 + 2 200 + 2 900 + 3 800 |
| Max **every basic UW stat** on all 9 UWs | **244 302** | the per-UW table in §2 |
| Max **all 9 UW+ abilities** — printed per-ability caps (§1.④) | **179 240** | 20 070 (GT) + 16 350 (CF) + 19 050 (BH) + 19 050 (DW) + 37 050 (Spotlight) + 12 650 (CL) + 18 570 (ILM) + 12 650 (SM) + 23 800 (PS) |
| _…as the fandom uniform model had it_ | _184 740_ | _3 × 23 800 + 2 × 18 570 + 4 × 19 050; the **5 500** gap is the three non-14-level caps (11 / 13 / 19) — recorded as a skew_ |
| **UW block total** | **≈ 447 900** | 9 705 + 14 650 + 179 240 + 244 302 = **447 897**; + card masteries 28 500, Bot+ 1 250 × 5, Synchronicity 1 500 + 3 × 1 500, assist slots 1 000 each ⇒ **≈ 493 k stones** |

Against ≈ **10 700 stones/year** free (T022 §1) that is **≈ 47 years**, so the only sane policy is: buy each stat's **first cheap block** and stop, and spend the rest on the sync ladder in §4.

### 1.① The two ladders are double-sourced, and one account's ledger re-adds (Rev 4)

Both tables are now **printed verbatim** on `wiki/guide/which-uw-do-i-select` §Good to know (“Unlock price depends on how
many UWs you already own, not on which one: 5, 50, 150, 300, 800, 1 250, 1 750, 2 400, 3 000 … Price by how many UW+ you
own: 500, 625, 750, 975, 1 250, 1 650, 2 200, 2 900, 3 800”), and `wiki/guide/uw-tier-list` prints the first ladder's sum
in prose (“All nine slots together cost exactly **9 705 stones**”), which re-adds from the nine cells ✓. Both ladders are
**hand-set** (unlock deltas **45 / 100 / 150 / 500 / 450 / 500 / 650 / 600**; UW+ deltas **125 / 125 / 225 / 275 / 400 / 550
/ 700 / 900**) — no closed form, so read the cell you need.

**The account ledger identity (arithmetic ✓).** The tier-list page's headline is "a real Legend account put **53 547**
stones", and its per-UW table sums to **43 842** (13 838 + 10 456 + 5 740 + 5 393 + 4 374 + 3 416 + 625 + 0 + 0). Adding
the nine slot costs:

```
43 842  (per-UW column, 9 rows)  +  9 705  (nine unlock slots)  =  53 547   ✓ the printed headline
```

so the per-UW column is the *stat* ledger and the headline adds the slot costs — two independent cross-checks of §1's
numbers. **Which pool the column is** is settled by the same table: four rows (**Black Hole**, **Death Wave**, **Chain
Lightning**, **Inner Land Mines**) print `UW+ status = Locked` and still carry **5 740 / 5 393 / 3 416 / 625** stones, so
their cells cannot contain any UW+ price ⇒ the column is **basic-stat spend only** (§2's per-level columns), and the
account sits at **43 842 / 244 302 = 17.9 %** of the full stat bill. The three owned UW+ abilities (GT level 7, CF level 4,
Spotlight level 0 ⇒ at least **500 + 625 + 750 = 1 875** by the printed ladder) are therefore *outside* the headline
→ **H056**. The account's spend also descends in the recommended pick order, which is the point of the list.

### 1.② The printed pick order, with its two conditional swaps

| # | UW | Printed numbers | Note |
|---|---|---|---|
| 1 | **Golden Tower** | unlock = immediate **+20 %** cash **and** coins | the **9.0x** in §7 is the maxed Multiplier line |
| 2 | **Black Hole** | weak on unlock; "most of its power comes from labs"; % of enemy HP per second | sync with GT, "the coin bonuses stack multiplicatively" |
| 3 | **Death Wave** | no labs **1.5x** coins / up to **5x** health; with labs **2.5x** / **12.5x**; up to **x3 Elite Cells** | "currently the only way to increase Elite Cell gains within a run" |
| 4 | **Spotlight** | **3x** coin bonus with **constant uptime**; max coverage ~ most of the field | the SLM lab + damage boost carry the mid game |
| 5 | **Chrono Field** | permanent after its **first** activation | **swap:** 5th if you cannot run a **3x lab boost** continuously, else 6th/7th |
| 6 | **Chain Lightning** | buffed in **0.24**; "fairly cheap to upgrade" | **swap:** take it 5th instead if one 3x lab boost is always up |
| 7 | **Inner Land Mines** | **625** stones on the account "bought a real effect" | wide stun for bosses/elites => more SM time |
| 8 | **Poison Swamp** | reworked in **v26**; needs a developed CF (ideally with CF+ levels) | underperforms nearly everything before that |
| 9 | **Smart Missiles** | **0** stones on the account; largest investment before it outperforms CL | v29 **Tactical Barrage** core module does not change the verdict |

**Recorded skew:** the page notes "the classic community order takes Smart Missiles **7th**, ahead of the two situational
picks; I disagree". Both orders own all nine for the same total (**9 705**), so the disagreement only shifts *when* the
stones land — keep the site's order (SM last) while CL is carrying damage, and revisit when a bracket needs raw damage.

### 1.③ Where the currency actually comes from (one Legend account, 374 logged runs)

Printed coin shares (each measured against the same no-bonus baseline, so they are **not** a partition — they sum to
**155.9 %** because several multipliers apply to the same base): **Golden Combo 46.2 %** · **wave skip 35.5 %** ·
**Golden Tower (base) 17.5 %** · **Black Hole 16.4 %** · **Golden Bot 14.4 %** · **Spotlight 11.2 %** · **Death Wave
9.9 %** · **Orbs 4.3 %** · **Critical coin 0.5 %**. The damage ledger *is* a partition (**99.9 %** + "< 0.2 % combined"):
**Chain Lightning 53.5 %** · **Orbs 32.7 %** · **Guardian (electrons) 9.0 %** · **Black Hole 4.2 %** · projectiles
**0.5 %**. Reading for a sub-T11 account: the head of the coin list is the **GT + UW+ + sync** stack
(**46.2 + 17.5 = 63.7 %** of the ledger), then the **wave-skip** layer (T024), then Black Hole — i.e. the order §4's stone
ladder already uses.

### 1.④ The nine UW+ ledgers, level by level (Rev 5, `wiki/uw/<name>` §“UW+ Cost Table”)

Each UW page prints its ability's `Cost` row and a `Value` row, and **the caps are not uniform** (this resolves **H033**:
**11 / 13 / 14 / 19**, not “10 levels each”). Every `Value` row re-adds from a closed form, and the one page that prints its
own `TOTAL` (Chain Lightning) agrees with the computed sum exactly:

| UW+ ability | Levels | Σ stones | Printed value row | Law in `n` (level) | Check |
|---|---|---|---|---|---|
| **Golden Combo** (GT) | **14** | **20 070** | 0.03 % … 0.45 % | `0.03 × (n + 1)` % | 15/15 ✓ |
| **Chrono Loop** (CF) | **13** | **16 350** | 0.10 … 0.75 | `0.10 + 0.05n` | 14/14 ✓ |
| **Consume** (BH) | **14** | **19 050** | 0.05× … 0.75× | `0.05 + 0.05n` | 15/15 ✓ |
| **Kill Wall** (DW) | **14** | **19 050** | 3 … 108 | `3 + n(n + 1) / 2` (triangular) | 15/15 ✓ |
| **Light Range** (Spotlight) | **19** | **37 050** | 0.01× … 0.18× | `0.01 + 0.01n` | ✓ |
| **Smite** (CL) | **11** | **12 650** | 0.05 % … 0.60 % | `0.05 + 0.05n` | 12/12 ✓, page `TOTAL` = **12 650 + unlock** ✓ |
| **Charged Mine** (ILM) | **14** | **18 570** | ×0.5 … ×50.9 | `0.5 + n + 0.2n(n − 1)` | 15/15 ✓ |
| **Cover Fire** (SM) | **11** | **12 650** | 13 s … 2 s | `13 − n` | 12/12 ✓ |
| **Death Creep** (PS) | **14** | **23 800** | 120 % … 1 110 % | `120 + 70n` (last cell prints **1 110**, the law gives 1 100) | 14/15, +10 skew |

Four things this buys the plan:

1. **Σ = 179 240 stones** for the whole UW+ layer (§1's table). The fandom uniform model (**184 740**) is high by exactly
   the three short caps: **Smite** and **Cover Fire** stop at 11 and **Chrono Loop** at 13, while **Light Range** runs to 19
   — so the *fandom tree totals are only right for the 14-level abilities*, and indeed **Consume/Kill Wall = 19 050**,
   **Charged Mine = 18 570** and **Death Creep = 23 800** reproduce the fandom's three tree numbers cell for cell ✓.
2. **The marginal stone is cheapest at the bottom of every tree.** The cost rows grow ≈ **×1.2–1.27 per level** (GT's
   ratios: 1.200 / 1.194 / 1.186 / 1.216 / 1.210 / 1.200 / 1.222 / 1.227 / 1.222 / 1.242 / 1.268 / 1.269 / 1.258) while the
   value rows are **linear** in `n` (except the two quadratic rows, Kill Wall and Charged Mine) — so stones/unit-of-value
   degrades geometrically: for Golden Combo the first
   level costs **300** for +0.03 pp (**10 000 stones/pp**) and the fourteenth costs **4 150** for the same +0.03 pp
   (**138 333 stones/pp**), a **13.8×** worse buy. The knee table (§3) applies to UW+ the same way it applies to the basic
   lines: buy the **first 3–5 levels** of the ability that multiplies your money UW and stop.
3. **Level 0 is already worth something**: the value rows start *above* zero at level 0 (GT 0.03 %, BH 0.05×, CL 0.05 %),
   i.e. the **500 … 3 800** unlock (§1) buys the first increment on its own — which is why the unlock ladder is the better
   buy than deep levels at the same price.
4. **Which ability to level first is decided by the value law, not the tier list**: only **Golden Combo** (multiplicative
   on GT kills) and **Consume** scale with what the rest of the tower does; **Kill Wall**'s triangular row (`3 + n(n+1)/2`)
   means its *later* levels are the only ones whose value keeps pace with the geometric cost, so DW's UW+ is a
   late-game purchase, while **Smite** (+0.05 pp/level) and **Cover Fire** (−1 s/level, capped at 11) are linear and cheap
   to first-3-levels.

5. **The per-unit knee, level by level** (`stones(n) / Δvalue(n)`): seven of the nine rows are monotone from **L1** —
   Golden Combo **10 000 → 138 333** stones/pp (×13.83 by L14), Chrono Loop **8 000 → 49 000** (×6.13), Consume
   **8 000 → 54 000** (×6.75), Light Range **40 000 → 420 000** (×10.5), Smite **6 000 → 53 000** (×8.83), Cover Fire
   **300 → 2 650** (×8.83), Death Creep **4.3 → 61.4** (×14.3) — so for those the answer is always “buy the first 1–3
   levels”. **Two trees have an interior minimum** because their value increments themselves grow: **Kill Wall** bottoms at
   **level 8** (**162.5** stones/unit vs **400** at L1) and is still cheaper per unit at its cap (**192.9**), and
   **Charged Mine** bottoms at **level 4** (**231.8**, vs 300 at L1, 540.3 at L14). Practical rule: for **DW** and **ILM**
   push to the knee (8 and 4) before touching any other ability; for the other seven, the first levels are the best buy
   they will ever have.

## 2. Per-UW max-out cost (the `Total` rows, verified by summing the per-level columns)

| UW | Total | stat 1 | stat 2 | stat 3 |
|---|---|---|---|---|
| Black Hole | **9 723** | Size 2 291 | Duration 5 392 | Cooldown 2 040 |
| Chrono Field | **9 946** | Duration 5 530 | Slow 2 910 | Cooldown 1 506 |
| Chain Lightning | **18 375** | Damage 15 710 | Quantity 655 | Chance 2 010 |
| Inner Land Mines | **23 042** | Damage % 20 817 | Quantity 425 | Cooldown 1 800 |
| Golden Tower | **27 186** | Multiplier 8 434 | Duration 14 052 | Cooldown 4 700 |
| Death Wave | **29 391** | Damage 17 591 | Quantity 2 950 | Cooldown 8 850 |
| Poison Swamp | **34 226** | Damage 28 716 | Duration 3 500 | Cooldown 2 010 |
| Smart Missiles | **39 177** | Damage 29 661 | Quantity 6 966 | Cooldown 2 550 |
| Spotlight | **53 236** | Bonus 20 071 | Angle 29 690 | Quantity 3 725 |
| | | | | **244 302** |

Two structure facts that only the tables show: **the `Stones` column is per level, not cumulative** (the sum of the column equals the page's `Total`), and **cooldown lines have an identical cheap shape** — increments 10/28/46/64/82 … (step +18) for GT and BH, 8/24/40/56/72 … (step +16) for DW, SM, ILM, PS.

## 3. The knee table (stones per unit of stat, by block of levels)

**Cooldown — the three coin UWs** (each block = 10 / 5 / 5 levels):

| UW | 1st block | 2nd block | 3rd block | 4th block |
|---|---|---|---|---|
| Golden Tower | 300→200 s = **910** (9.1 st/s) | →150 s = 1 130 (22.6) | →100 s = 2 660 (53.2) | — (4 700 all) |
| Black Hole | 200→100 s = **910** (9.1) | →50 s = 1 130 (22.6) | — (2 040 all) | |
| Death Wave | 300→200 s = **800** (8.0) | →150 s = 1 000 (20.0) | →100 s = 1 650 (33.0) | →50 s = 5 400 (108) |

**Golden Tower's other two lines** (blocks of 5 levels; the same shape repeats on every UW):

| Line | cheap block | next | then |
|---|---|---|---|
| Multiplier | 5.0→9.0× = **534** (133 st per ×1) | →17.0× = 1 400 (175) | →21.0× = 6 500 (1 625) |
| Duration | 15→30 s = **1 076** (72 st/s) | →35 s = 1 020 (204) / →40 s = 1 544 (309) | →45 s = 2 140 (428) / →50 s = 3 790 (758) / →53 s = 4 482 (1 494) |

Read as a rule: **every stat line is ≈4× cheaper in its first block than in its last** (multiplier 133 → 1 625 st per ×1; GT duration 72 → 1 494 st per s; DW cooldown 8 → 108). So a stat bought to its **first block** is the whole value; the last levels of any line are the worst stones in the game.

**The cooldown lines are a −10 s ladder.** Every block above is 10/5/5 levels and every endpoint is a multiple of 10 s, so
`cooldown = base − 10 × levels` for the three coin UWs: GT 300 → 100 s in **20** levels, BH 200 → 50 s in **15**, DW
300 → 50 s in **25** (`300 − 10×20 = 100` ✓, `200 − 10×15 = 50` ✓, `300 − 10×25 = 50` ✓). Those three maxes — **100 / 50 /
50** — are the same numbers the `footguns` page prints independently for the max lattice, so the sync targets are whole
numbers of levels: **200 s = 10 levels** of GT, **150 s = 5 levels** of BH, never “half a block”.

## 4. The sync ladder (what to actually buy, in order)

All UW timers start at 0 when the run starts and reset on each activation, so two UWs share a window every **LCM(cooldowns)**. Multipliers multiply, so the coincidence period is the coin rate.

| Stage | Buy (cumulative stones) | GT / BH / DW | all three fire every |
|---|---|---|---|
| 0 (base) | — | 300 / 200 / 300 | **600 s** |
| 1 | GT cooldown ×10 → 200 s (**910**) | 200 / 200 / 300 | 600 s, GT+BH every **200 s** |
| 2 | BH cooldown ×10 → 100 s (**1 820**) | 200 / 100 / 300 | 600 s, GT+BH every 200 s, BH twice as often |
| 3 | DW cooldown ×10 → 200 s (**2 620**) | 200 / 100 / 200 | **200 s** ← the target package |
| 4 | GT → 100 s (+3 790), DW → 100 s (+2 650) (**9 060**) | 100 / 100 / 100 | **100 s** |

Then, per line, take the **first block** of the GT money stats: multiplier to 9.0× (534) and duration to 30 s (1 076). **Stage 3 + both = 4 230 stones ≈ 5 months of free stone income**, and it is the whole reason the coin engine works.

**The three sync numbers to hit** (from the coin guide, and consistent with §4’s ladder): `Golden Tower` base **300 s**
(5:00), `Black Hole` base **200 s** (3:20). The two valid targets are **200 s** (GT lowered onto BH ⇒ 1:1 — “it will always
fire alongside BH”) and **150 s** (BH lowered ⇒ fires **twice** per GT = 2:1). Multiverse Nexus can fake this by averaging
the Death Wave / GT / BH cooldowns “with a small penalty”, but the guide’s own verdict (in `footguns`) is that **even up to
mythic MVN adds seconds to your average cooldowns**, so treat it as *training wheels* on the road to natural sync — keep
buying stones while running it and reach at least a **3 : 20** natural sync.

**The funding rule (why partial buying is a loss).** At **1:1** you must be able to pay GT and BH **one block each in the
same sitting**; at **2:1** you need **two** GT blocks and **one** BH block together. Spend earlier than that and the sync
breaks — the combined activations become rarer, not more frequent (the LCM arithmetic is §4’s, and the “do not insert
partial values” note below is the same rule).

**Bots, in the same lattice** (`footguns`, and the arithmetic closes on the printed pairs): the medal and lab cooldown
upgrades are **−3 s** and **−1 s** per level — `1 medal + 2 labs = 5 s` and `3 medals + 1 lab = 10 s` are the page’s two
printed steps, and `6 medals + 2 labs = 20 s` brings a bot from its **120 s** base to the printed **100 s** (✓ all three
rows re-add). Continue in 5 s or 10 s steps until the bot sits at **half** your GT/DW sync cooldown ⇒ a clean **2:1**
against any UW sync that is a multiple of 10 s. At max, **all bots (except Flame Bot) + Black Hole + Death Wave = 50 s**
and **Golden Tower = 100 s**. Because *lab* cooldown levels cannot be respecced (the medal ones can — 300 gems, T009 §1),
take **6 medal + 2 lab** first and only then spend the 3-medal/1-lab steps, and turn a clashing bot off in the **medals
menu** rather than labbing it out of place. The 69 s MVN average is a *third* lattice and is why the page calls an MVN
sync “something a maxed Golden Bot cannot respec down to match”.

**Three footguns that are pure loss, as printed.** (1) Lowering **Black Hole’s** cooldown before GT is synced onto it —
each second makes the 1:1 more expensive; it self-corrects only when BH maxes at 50 s against a maxed GT at 100 s (2:1).
(2) Touching **any** UW cooldown before knowing which strategies need 1:1 (e.g. the devo that leans on Smart Missiles).
(3) Labbing **bot cooldowns** before the UW lattice is fixed. Also printed: the **Chrono Field range** lab zooms the
screen out (enemies spawn further ⇒ lower coins/hour) yet is still **worth maxing** for tournaments — the one lab where
the page says “more upgrades are worse” and still says max it.

**A fourth, cheap multiplier leg:** the `Coin` card, `Enemy Balance`, **tier**, **themes** and **relics** all raise both
CPK and CPW (`coin-guide-basics`), so they enter the same product as the UW bonuses above — the full list is in
[T002](T002-run-phase-order.md) §printed CPK source list.

Do **not** insert partial values: 250 vs 200 s aligns only every 1 000 s, 270/180 every 520 s — i.e. a half-finished
block costs the same 9.1 st/s and can *worsen* the LCM. Finish a block of 5 or 10 levels in one sitting.

## 5. Two free (stone-less) UW sources

1. **`Unlock a Random Ultimate Weapon` perk** (Standard perk pool, quantity 1, needs the Perks lab at T2 W150). It grants a *semi-upgraded* UW for the rest of the run — worth, by the table below, **700–2 426 stones each**, and it costs no stones. It does **not** enable that UW's labs and does not grant its UW+ ability.
2. **The 3-offer purchase screen does not reroll**: the three options stay fixed until one is bought (`Ultimate Weapons` page), and clicking outside the panel closes it. So with 3 offers on screen, **buy the cheapest first** — the other two are still there afterwards.

| UW | stone value | the perk version's stats |
|---|---|---|
| Chain Lightning | 700 | ×46 dmg, 3#, 15.5 % |
| Poison Swamp | 715 | ×43 dmg, 50 s, 90 s |
| Inner Land Mines | 728 | ×43 dmg, 5#, 130 s |
| Smart Missiles | 974 | ×43 dmg, 11#, 110 s |
| Black Hole | 984 | 50 m, 20 s, 130 s |
| Death Wave | 1 009 | ×46 dmg, 2#, 210 s |
| Golden Tower | 1 639 | ×9.0 bonus, 30 s, 230 s |
| Chrono Field | 1 824 | 22 s, 40 % slow, 120 s |
| Spotlight | 2 426 | ×27.6 bonus, 45°, 1# |

## 6. Why the price reading is trustworthy (numeric check, 9/9 exact)

Model: **cost(stat, level n) = Σ of the first n entries of that stat's `Stones` column.** Under it, the stone values of the perk-granted UWs come out exactly as printed:

| UW | printed | Σ of its levels |
|---|---|---|
| Chain Lightning | 700 | 161 + 105 + 434 = **700** |
| Poison Swamp | 715 | 161 + 120 + 434 = **715** |
| Inner Land Mines | 728 | 161 + 175 + 392 = **728** |
| Smart Missiles | 974 | 161 + 421 + 392 = **974** |
| Black Hole | 984 | 421 + 115 + 448 = **984** |
| Death Wave | 1 009 | 161 + 200 + 648 = **1 009** |
| Golden Tower | 1 639 | 115 + 1 076 + 448 = **1 639** |
| Chrono Field | 1 824 | 1 309 + 140 + 375 = **1 824** |
| Spotlight | 2 426 | 1 196 + 1 230 + 0 = **2 426** |

Also: each `Basic_Upgrades` page's `Total` equals the sum of its own column (BH 2 040 = 910 + 1 130; DW 8 850 = 800 + 1 000 + 1 650 + 5 400; GT 27 186 = 8 434 + 14 052 + 4 700), and the pre-existing **910** for GT 300→200 s (game-vault `Guide:Ultimate_Weapons_Sync`) is exactly Σ of the first 10 cooldown levels (10+28+46+64+82+100+118+136+154+172) — three independent sources, one number.

## 7. Steps (UI only)

1. **Ultimate Weapons** panel → tap the **first** UW offer (**5** stones). Repeat whenever the next price is the cheapest thing you can buy (5 → 50 → 150 → 300 …). Unlock **Golden Tower**, **Black Hole** and **Death Wave** first — they are the coin trio.
2. Inside the UW panel, read the three stat lines. For **GT** tap the **Cooldown** line's `+` **ten times** in one sitting (300 → 200 s, 910 stones). Then **Black Hole** cooldown ×10 (→100 s), then **Death Wave** cooldown ×10 (→200 s). This is §4's Stage 3 = 2 620.
3. Read the run's **stats panel** coins-per-hour before and after (§8). The triple-coincidence period should visibly shorten from 600 s to 200 s.
4. Next, GT **Multiplier** ×10 (→9.0×, 534) and GT **Duration** ×15 (→30 s, 1 076). Stop there until the 9 UWs are done.
5. **Finish the 9 UW unlocks before touching UW+**: the UW+ tab only opens after all nine are owned, and its nine abilities can then be bought **in any order** — buy the **300/400-cost** first unlocks (the first level of each tree), not the 3 800 one.
6. Take the **`Unlock a Random Ultimate Weapon`** perk whenever it is offered (it is the only quantity-1 standard perk that hands out a whole UW); rank it high in the **Auto Pick Ranking** (T011).
7. Do **not** buy UW+ levels before the UW+ that multiplies your money UW (GT's **Golden Combo**: bonus = `(1 + 0.0003 × (L+1))^Kills − 1`, so its value scales with **GT duration** — a long-GT build wants Golden Combo levels, a short-GT build does not).

## 8. Reproduction checklist

- [ ] The first UW offer reads **5** stones and the prices follow 5 / 50 / 150 / 300 / 800 / 1 250 / 1 750 / 2 400 / 3 000.
- [ ] GT cooldown line reads **200 s** after 10 taps, and the panel's total for that line at max reads **4 700**.
- [ ] The three coin UWs trigger on the same wave every **200 s** (stop the run and count wave gaps).
- [ ] Coins/hour after Stage 3 is roughly **1.5–3×** the pre-purchase value (the multiplier product is only realised when the windows overlap).
- [ ] The perk table's stone values appear as the in-run UW panel's levels: e.g. the perk GT shows **×9.0 / 30 s / 230 s** and the panel prices it as if 15 + 15 + 7 levels were bought.
- [ ] The UW+ tab is still locked with 8/9 UWs owned, and appears the moment the 9th is bought.
- [ ] **Base cooldowns:** with 0 levels bought, GT reads **300 s (5:00)** and BH **200 s (3:20)**.
- [ ] **The step law:** a bot at **6 medal + 2 lab** cooldown upgrades reads **100 s**; adding **1 medal + 2 labs** makes
      it **95 s** (`3 + 1 + 1 = 5` ✓), and **3 medals + 1 lab** makes it **90 s** (`9 + 1 = 10` ✓).
- [ ] **The UW+ ladder:** the nine UW+ unlock prices appear in order **500 / 625 / 750 / 975 / 1 250 / 1 650 / 2 200 /
      2 900 / 3 800**, and the panel says the price depends on **how many** you own, not which one.
- [ ] **Per-UW printed multipliers:** `Death Wave` reads **1.5x** coins on hit before its labs and **2.5x** after (health
      **5x** -> **12.5x**), its cell line caps at **x3**; `Spotlight` reads **3x** coins; a freshly unlocked `Golden Tower`
      reads **+20 %** cash and **+20 %** coins.
- [ ] **The ledger check (paper):** 13 838 + 10 456 + 5 740 + 5 393 + 4 374 + 3 416 + 625 = **43 842**, and
      `43 842 + 9 705 = ` **53 547** ✓ the page's own headline; your own account's per-UW totals should behave the same way.
- [ ] **UW+ caps (§1.④):** the level counters read **11** on Smite and Cover Fire, **13** on Chrono Loop, **14** on Golden
      Combo / Consume / Kill Wall / Charged Mine / Death Creep and **19** on Light Range.
- [ ] **First-level prices:** the first UW+ level after the unlock costs **300** on Golden Combo, Smite, Cover Fire,
      Charged Mine and Death Creep, and **400** on Chrono Loop, Consume, Kill Wall and Light Range.
- [ ] **The knee:** buying Kill Wall **level 8** costs **1 300** and the value line moves **31 → 39** (Δ 8 ⇒ **162.5**
      stones/unit, the row's minimum; L1 is 400/unit at `3 → 4` for 400). At **Charged Mine level 4** the row moves
      **×4.7 → ×6.9** (Δ 2.2 for **510** stones = **231.8**/unit, that row's minimum).
- [ ] Fully maxed: **Black Hole 50 s**, **Death Wave 50 s**, bots (except Flame) **50 s**, **Golden Tower 100 s**.
- [ ] **The 2:1 check:** BH at 150 s against GT at 300 s ⇒ BH fires **twice** per GT in the same window (count activations
      over one 300 s span: 2 and 1).

## 9. Falsification

- If a bot **medal** level removes something other than **3 s** (or a **lab** level other than **1 s**), the two printed
  steps belong to a different ladder → read the cooldown at 0→1 in each menu separately and set `m` and `l` from those two
  deltas; the lattice targets (half your GT/DW sync, 100 s then 50 s) still apply, only the tap counts change. Record it
  as H053.

- If a cooldown `+` costs something other than the printed per-level column (10, 28, 46, …), the client uses a different price tree → record the whole column and rescale §3–§4 (the *ratios* between blocks are what the plan needs).
- If the UW totals row disagrees (e.g. GT ≠ 27 186), the version changed a ladder — trust the panel, keep the block ratios.
- If the triple-coincidence period does not shorten after §7 step 2, a third timer offsets the phase (Golden Bot, MVN, or a toggle): the UW timers **reset when a UW is toggled off and on again** (40 toggles/run max), so compare with all toggles left in their default state.
- If the nine UW+ prices do **not** follow 500 / 625 / … / 3 800 *in purchase order*, the price is per ability rather than
  per slot → record the nine pairs (ability, price) and rebuild §1's second row; the total bill is what the plan needs.
- If a freshly unlocked Golden Tower reads something other than **+20 %** cash/coins, the "+20 %" is a *lab* value or a
  level-2 value → read the UW panel's Multiplier line at level 1 and level 2 separately and quote those instead (§1.②).
- If a UW+ line's level counter tops out at **10** (or any number other than §1.④'s 11 / 13 / 14 / 19), the ability's cap is
  version-dependent → re-tabulate the nine caps and re-sum the layer (the per-unit knees are unaffected, they use only the
  two printed rows).
- If a first UW+ level costs something other than **300** (GT / CL / SM / ILM / PS) or **400** (CF / BH / DW / Spotlight),
  the cost tree was re-binned → read the first three cells per line and rebuild the ratio column; the *knee* levels of the
  two quadratic rows (8 and 4) still hold as long as the value increments keep stepping by 1 and 0.4.
- If the 374-run coin shares stop summing near **156 %** (e.g. they sum to 100 %), the ledger was normalised differently
  → renormalise by the printed baseline before using §1.③'s ranking.
- If the perk-granted UW is still listed as owned after the run ends, §5.1's “in-run only” note is wrong → see H032.

## Sources

- fandom raw wikitext: `Ultimate Weapons` (the 5 … 3 000 unlock ladder, the 3-random-offer rule, the 40-toggle limit), `Ultimate Weapons/Ultimate Weapon Plus` (500 … 3 800 unlock ladder, 10 levels per ability, `Template:TableUWPCOST` → the three trees 23 800 / 18 570 / 19 050), `Golden Tower/Basic Upgrades`, `Black Hole/Basic_Upgrades`, `Death Wave/Basic_Upgrades`, `Chain Lightning/Basic_Upgrades`, `Smart Missiles/Basic_Upgrades`, `Spotlight/Basic_Upgrades`, `Chrono Field/Basic_Upgrades`, `Inner Land Mines/Basic_Upgrades`, `Poison Swamp/Basic_Upgrades` (per-level columns + `Total` rows), `Perks` (the nine perk-UW `stone value` entries and their exact stats).
- game-vault `Guide:Ultimate_Weapons_Sync` — the independent 910-stone figure for GT 300→200 s and the partial-sync table (250/200 → 1 000 s, 270/180 → 520 s).
- Tower Hub’s nine `wiki/uw/<name>` pages (last verified **2026-11-01**) — §1.④’s per-ability `UW+ Cost Table` (`Cost` and
  `Value` rows, plus Chain Lightning’s own `TOTAL` row **12 650 + unlock**), the basic-stat `Stones (…)` columns (GT starts
  at 5 / 13 / 22 / 32 / 43 … for 5.0 → 9.0×, which is the **115** block already used in §6), the CL damage/quantity/chance
  columns (damage 2× → 3× for 5, 5× for 11, 9× for 17 …; chance +1.5 pp/level at 8 / 26 / 44 / 62 …), the CL lab
  `Rank`/`Community note` table, and the per-UW lab ladders quoted by §4.
- Tower Hub `wiki/guide/which-uw-do-i-select` (last verified **2026-11-01**) — both stone ladders printed as the
  “Good to know” lines (**5 … 3 000** by UWs owned, **500 … 3 800** by UW+ owned, plus the “UW+ can only be unlocked once
  all 9 UWs are owned” rule), the community ranking with the printed per-UW numbers (**+20 %** on GT unlock, DW
  **1.5x/5x -> 2.5x/12.5x** and **x3** cells “currently the only way to increase Elite Cell gains within a run”, Spotlight
  **3x** constant uptime, CF permanent after its first activation) and the two conditional 5th/6th/7th swap notes keyed to
  a continuously-running **3x lab boost**; the **0.24** CL buff, **v26** swamp rework and **v29** Tactical Barrage notes.
- Tower Hub `wiki/guide/uw-tier-list` (last verified **2026-11-01**) — the S–D tier table with its verdicts, the printed
  **9 705** total for the nine slots, the Legend account’s per-UW UW+ ledger (**13 838 / 10 456 / 5 740 / 5 393 / 4 374 /
  3 416 / 625 / 0 / 0**, headline **53 547**), the **374**-run coin-share and damage-share tables, and the Smart-Missiles-7th
  community skew.
- Tower Hub `wiki/guide/coin-guide-basics` (2026-07-29) — GT **300 s** / BH **200 s** base, the 200 s (1:1) and 150 s (2:1)
  sync targets, the “fund both blocks in the same sitting” rule, MVN’s averaging + small penalty, and the **11× / 20.75× /
  228.25×** multiplier product.
- Tower Hub `wiki/guide/footguns` (2026-07-29) — the `1 m + 2 l = 5 s` / `3 m + 1 l = 10 s` / `6 m + 2 l = 20 s` steps and
  the **100 s** waypoint, the max lattice (bots/BH/DW **50 s**, GT **100 s**), “lab upgrades are permanent and, with the
  exception of range, cannot be switched off”, the medal-respec contrast, the **69 s** MVN average and its training-wheels
  verdict, and the Chrono Field range note (lower CPH, still max it).
- Cross-references: [T022](T022-free-currency-census-paid-ladder.md) §1–§2 (stone income and the masteries/Bot+/Synchronicity bills), [T011](T011-perk-engine-tuning.md) (ranking the random-UW perk), [T014](T014-tournament-tickets.md) (the other stone source).
