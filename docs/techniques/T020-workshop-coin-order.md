# T020 — Workshop coin-spend order: the level-band rule and the knee table

Rev: 5 (2026-11-02) — adds the **two QoL labs** (`Buy multiplier` T2 W20, 4 lv, Σ **562 500**; `Game Speed` T1 W30, 7 lv,
Σ **1 714 800** — both totals re-add, and `Game Speed`'s seven printed times sum to **45.36 d** = its printed **45.3 d**,
which **resolves H050: the lab `Time` column is per-level**), the **buy-step order ×5 → ×10 → Max → ×100** with **no bulk
discount**, and the resulting tap counts.
Rev: 4 (2026-11-02) — adds the **`Starting Cash` lab** (T1 W30, 99 lv, value = **5 × level**, cheapest curve of the
T1-W30 family: 30 → 6 165, Σ10 = 18 752 coins) and the **three `Free Upgrade` tracks** priced per level (**Attack
75 → 941**, **Utility 100 → 966**; **20/20 cumulative totals reproduce**), their **three-roll mechanic** with the
Wave-Skip double roll and the > 100 % rollover, the printed **90.75 %** ceiling, the `Free Upgrades` enhancement ladder
(×2.5 at L150, 10/10 totals re-add), and the **Black Hole Digestor** per-free-level coin bonus.
Rev: 3 (2026-11-02) — the **two coin ladders** now have a second source and printed checkpoints (Cash pair L1 **30** →
L10 674 → Σ50 **355.40 K**; Coins pair L1 **50** → L10 838 → Σ50 **448.41 K**), the workshop's own **unlock chain**
(Cash Bonus → Cash/Wave → Coins/Kill → Coins/Wave), the **four income labs priced** (99 lv, **+0.02 → ×2.98**, **111 683 349**
coins and ≈**1 445 days** of base time each — a *different*, 1.80× cheaper curve than the meta-labs'), the **`Coin Bonus +`
first-10 ladder (10/10 cumulative sums reproduce)**, and the Vault Power-tree cross-check.
Rev: 2 (2026-11-01) — §6 replaced by the complete **v29 enhancement table** (18 enhancements, per-track unlock gates, caps,
per-level steps, coins-to-max), the shared 600-level price curve with a block knee table, the number-notation key, and the
two-discount stack; the unlock-gate ladder corrected to **50 B → 500 B → 5 T → 50 T → 500 T spent in the same track**.
Rev: 1 (2026-11-01) · Currency: **Coins** (spent) — buys permanent **Cash/Coins multipliers** = the run's starting stats
**Value:** ★★★★ — the four currency lines reach **×1.5 Cash Bonus, +200 Cash/Wave, ×1.5 Coins/Kill, +50 Coins/Wave for
≈ 1.6 M coins total** (levels 1–50 on each), while the *same* 1.6 M buys only ~15 levels on any one of them; and every
expensive line has a hard **knee** after which the tail costs 50–600× more per point.
**Confidence:** **High** for the workshop cost tables (game-vault prints every level's price and the cumulative total for
each line; the four currency lines' totals — 14.82 M / 14.82 M / 19.47 M / 19.47 M — are printed values) and **High** for
the enhancement tables (Tower Hub, “computed for v29.0.5 … from the game's cost code”, last verified 2026-11-01);
**Medium** on the six special curves' per-level step (not printed → [H037](../hypotheses/H037-enhancement-per-level-step.md)).
**No device capture; the printed columns are arithmetic-checked (⇒ Verified for the tables below).**
**Ease:** 1 tap per level (the `Buy x10` / `Max Buy` control) · **Prerequisite:** Workshop from the start; the Utility lines
unlock for **40 / 40 / 100 / 100 coins**; the enhancement layer needs **T12 W60 + the 5 B-coin lab**.

---

## 1. What the Workshop is, in currency terms

* Coin-bought levels are **permanent** and become the **starting stats of every run**; cash-bought upgrades reset
  each round. So a coin spent in the Workshop multiplies *every future run's* cash income, whereas cash upgrades only
  help one run — the reason coins are the slowest but most compounding currency.
* The four currency lines (Utility tab) and their exact ladders (base → max, total coin cost):

| Line (tab: Utility) | Levels | Base → max | Cost at L50 | at L100 | **Total** |
|---|---|---|---|---|---|
| **Cash Bonus** (×all cash; does **not** raise interest) | 149 | ×1.00 → ×2.49 (+0.01/lv) | 355.40 K | 3.55 M | **14.82 M** |
| **Cash/Wave** (× Cash Bonus) | 149 | 0 → 596 (+4/lv) | 355.40 K | 3.55 M | **14.82 M** |
| **Coins/Kill** (multiplicative with all coin bonuses) | 149 | ×1.00 → ×2.49 (+0.01/lv) | 448.41 K | 4.59 M | **19.47 M** |
| **Coins/Wave** | 149 | 1 → 150 (+1/lv) | 448.41 K | 4.59 M | **19.47 M** |

  Their **per-level cost curve is identical in shape** (30 → 674 at L10 → 22.31 K at L50 → 352.36 K at L149), so the
  four lines are a *portfolio*: identical prices, different payoffs.
* Unlock prices are trivial and must be bought immediately: **40** coins (Cash Bonus + Cash/Wave), **100** coins
  (Coins/Kill + Coins/Wave), **800** coins (Free Upgrades, 3 lines × 99 levels at +0.5 %/lv → 49.5 %),
  **1 500 000** coins (Recovery Package: Amount 300 lv 14 %→134 %, Max Recovery, Package Chance).

### 1.1 The unlock chain and the two coin ladders (two independent sources)

The Workshop enforces its own order, so the taps in §7 must follow it: **Cash Bonus → Cash/Wave → Coins/Kill Bonus →
Coins/Wave** (each line appears only after the previous one is bought). Tower Hub's per-line pages (last verified
2026-10-13 / 2026-11-01) print the same ladders game-vault does, at four checkpoints:

| Line | L1 | L10 | Σ to L10 | Σ to L50 | Σ to L90 | Max (L149) |
|---|---|---|---|---|---|---|
| **Cash Bonus** · **Cash/Wave** (the “30” ladder) | **30** | 674 | **2.76 K** | **355.40 K** | **2.50 M** | 14.82 M |
| **Coins/Kill** · **Coins/Wave** (the “50” ladder) | **50** | 838 | **3.52 K** | **448.41 K** | **3.22 M** | 19.47 M |

Both columns are printed by two sources ⇒ the §2 band table is now **two-source**. The pairs are *identical* inside each
ladder (Cash Bonus = Cash/Wave, Coins/Kill = Coins/Wave), and the coin pair is **26 % dearer** per level
(448.41 K ÷ 355.40 K = 1.262 ✓), so the portfolio rule in §2 costs exactly 1.262× as much on the coin side.
Value per level is linear on all four: **+0.01 ×** (both ×-lines, 149 lv ⇒ ×2.49), **+4** Cash/Wave (⇒ 596),
**+1** Coins/Wave (⇒ 150) — all three printed maxima reproduce as `increment × 149 + base` ✓ (0.01·149 + 1 = 2.49;
4·149 = 596; 1 + 149 = 150).

### 1.2 The four income labs (this is what turns the trickle into income)

`Cash Bonus`, `Cash/Wave`, `Coins/Kill Bonus`, `Coins/Wave` are four **separate labs**, all unlocked by the **Tier 1
Wave 30** milestone, **99 levels each, +0.02 per level ⇒ ×2.98** (1 + 0.02·99 ✓), and each one multiplies its workshop
line's value:

| Checkpoint | Printed value | Printed coin price | Cumulative time |
|---|---|---|---|
| L1 | 1.02 | **40** | 0 m |
| L2 | 1.04 | 81 | 0 h 6 m |
| L5 | 1.10 | 782 | 0 h 53 m |
| L10 | 1.20 | 6 175 | **4 h 33 m** |
| **L99** | **2.98** | — | — |

**Σ of the 10 printed prices = 18 852 coins** (40+81+188+408+782+1 345+2 134+3 181+4 518+6 175) — note this is a
**different, cheaper curve** than the two meta-labs of [T006](T006-lab-queue-packing.md) (Σ10 = 33 907): the income labs
are **1.80× cheaper per level** than `Labs Speed` / `Labs Coin Discount`, so they sit *earlier* in the lab queue.

**Full bill (printed):** **111 683 349 coins** and ≈ **1 445 days of base time per lab** ⇒ all four = **446 733 396** coins
and 5 780 days of base time, i.e. with 5 slots ([T009](T009-gem-spend-order.md) §1) and the ×3.725 stacked speed bonus
(T006 §meta-labs) ≈ **310 days of real time**. With `Labs Coin Discount` at L99 (−29.7 %) the coin bill becomes
≈ **314.05 M**. Take them in **10-level blocks** (+20 % per block) interleaved with the workshop bands of §2.

**End-state arithmetic, and which to finish first.** At both caps the line reads `2.49 × 2.98 = 7.42` (Coins/Kill and Cash
Bonus alike). Per multiplier *unit* the two sinks price as: workshop tail (L91–149) = 19.47 M − 3.22 M = **16.25 M** coins
for +0.59 ⇒ **≈ 27.5 M per unit**; the lab = 111.68 M ÷ 1.98 = **≈ 56.4 M per unit**. So the **workshop line is ≈ 2× cheaper
per point** — max the workshop line first, then take the lab in 10-level blocks (+20 % each).

### 1.3 `Starting Cash` — the fifth T1-W30 lab, and the cheapest of the family

| Level | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
|---|---|---|---|---|---|---|---|---|---|---|
| price (coins) | 30 | 71 | 178 | 398 | 772 | 1 335 | 2 124 | 3 171 | 4 508 | 6 165 |
| value | 5 | 10 | 15 | 20 | 25 | 30 | 35 | 40 | 45 | 50 |

**Σ of the ten printed prices = 18 752 coins**, and the value column is exactly **5 × level** (20 at L4, 45 at L9, 50 at
L10 ✓). Its per-level times are identical to the other T1-W30 labs (0 m / 6 m / 16 m / 32 m / 53 m / 1 h 21 m / 1 h 56 m /
2 h 40 m / 3 h 32 m / 4 h 33 m), and **every price sits exactly 10 coins under the income-lab ladder of §1.2** at L1–L10
(30 vs 40, 71 vs 81, 178 vs 188 … 6 165 vs 6 175) — the family shares one curve with a small per-line offset, so the four
income labs + Starting Cash can be levelled in equal 10-level blocks without re-pricing anything.

### 1.4 `Free Upgrades` — the workshop levels itself for coins

Unlock **800 coins** (behind `Coins/Kill Bonus` + `Coins/Wave` in the chain), then **three independent tracks** —
`Free Attack` / `Free Defense` / `Free Utility Upgrade` — **99 levels each, +0.5 % per level ⇒ 49.5 %** per workshop:

| Level | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | **Σ10** |
|---|---|---|---|---|---|---|---|---|---|---|---|
| **Free Attack** price | 75 | 118 | 171 | 236 | 314 | 407 | 515 | 639 | 781 | 941 | **4.20 K** |
| **Free Utility** price | 100 | 143 | 196 | 261 | 339 | 432 | 540 | 664 | 806 | 966 | **4.45 K** |

**20/20 cumulative totals reproduce** (each printed total = the previous total + the printed level price; e.g. Attack
75 + 118 + 171 + 236 = 600 ✓, Utility 100 + 143 + 196 + 261 = 700 ✓). The **Defense** track's ladder is not printed →
device read ([H051](../hypotheses/H051-free-upgrade-chance-90-75-decomposition.md)).

**Three mechanics make these the cheapest power in the tab:** after every wave **each** of the three chances rolls
**independently**; a roll **never** picks an already-maxed stat (so its value *rises* as the tab fills); the **Wave Skip
card adds one extra roll per skipped wave, per workshop**; and chances **above 100 % roll over** (110 % ⇒ 1 guaranteed
level + 10 % for a second).

**The per-coin arithmetic:** one track level costs **75–100 coins** for **+0.5 %**, i.e. **5 free workshop levels per
1 000-wave run per ~100 coins spent**. Practical ladder: workshop 49.5 % ⇒ ≈ 495 free levels per 1 000 waves per workshop;
+ the Vault's `Free *` nodes (5 levels × +5 % = +25 %, **250 keys** each) ⇒ ≈ **745**; the printed ceiling with the **card +
perk** is **90.75 %** ⇒ ≈ **908**. That printed ceiling factors as **60.5 × 1.5** (workshop 49.5 + card 10 + 1 minor point,
× the perk's ×1.5), which is the decomposition [H051](../hypotheses/H051-free-upgrade-chance-90-75-decomposition.md)
settles — and the `Free Upgrades` **enhancement** (×2.5 at L150, §6.2) multiplies the whole chance again, so a maxed
enhancement pushes the roll past 100 % and starts paying the rollover.

**One UW synergy to remember:** `Black Hole Digestor` pays **+3 / 5 / 7 / 10 % Coins/Kill** (Epic → Ancestral) **per free
upgrade on the current wave**, and it triggers even when every stat in that workshop is maxed — so with the three tracks
near 100 % the Digestor's bonus is a per-wave, wave-length-scaled coin multiplier ([T008](T008-uw-sync-with-stones.md)).

### 1.5 The two QoL labs that gate the coin sink (`Buy multiplier`, `Game Speed`)

Both are **coin-priced** lab lines, both are milestone-gated, and neither multiplies anything — they change how fast the
other lines can be bought and how many waves fit into an hour. Prices below are Tower Hub's, “last verified 2026-10-13 /
2026-11-01”.

| Lab | Gate | Levels | Per-level prices (coins) | Σ | Per-level times | Σ times |
|---|---|---|---|---|---|---|
| `Buy multiplier` | **T2 W20** | 4 | 2 500 · 10 000 · 50 000 · 500 000 | **562 500** | 1 h · 5 h 33 m · 1 d 3 h 47 m · 2 d 7 h 33 m | **3 d 11 h 53 m** |
| `Game Speed` | **T1 W30** | 7 | 300 · 2 500 · 12 000 · 50 000 · 150 000 · 500 000 · 1 000 000 | **1 714 800** ✓ | 10 m · 2 h 30 m · 10 h · 1 d 10 h 43 m · 3 d 19 h 40 m · 14 d 1 h 47 m · 25 d 11 h 7 m | **45.3 d** ✓ |

**Both totals re-add.** `Game Speed`: 300 + 2 500 + 12 000 + 50 000 + 150 000 + 500 000 + 1 000 000 = **1 714 800** = the
page's own printed total ✓, and its seven printed times sum to **65 317 min = 45.36 d** = the printed **45.3 d** ✓ — which
also **proves the wiki `Time` column is per-level** (a cumulative column would end at 25 d 11 h = 25.5 d) →
[H050](../hypotheses/H050-lab-time-column-per-level-vs-cumulative.md) is **resolved**. `Buy multiplier`: 2 500 + 10 000 +
50 000 + 500 000 = **562 500** ✓ (its times have only four rows, so the same test is not available there).

**What each level buys.** `Buy multiplier` unlocks the workshop's purchase-quantity steps in the order **×5 → ×10 → Max →
×100** — `Max` is the **3rd** step and `×100` the 4th because `Max` shipped first and `×100` was appended so that accounts
which had already paid for it kept their progress. `Max` buys “as many levels as you can currently afford”. Bulk buying
carries **no discount** (the total is the sum of the individual levels), so §1–§6's coin budget is identical at any step.
`Game Speed` raises the **speed cap**: **×2.0 at L1 → ×5.0 at L7** (+0.5/level); with the `Increase Max Game Speed by
+1.00` perk and a maxed `Standard Perk Bonus` lab the cap is **5.0 + 1 × 1.25 = 6.25**, shown as **6.3** (T011 §5's “max
game speed chain”), and the printed caveat is that the number overstates real throughput (5.0 behaves ≈ 4.0).

**The buy order this implies (all coins, no gem budget):** `Game Speed` **L1–L3** first — **14 800 coins / ≈ 13 h** take
the cap from ×1 to **×3.0**, i.e. every later coin and cell is earned ≈ 3× faster in real time — then `Buy multiplier`
**L1 + L2** (**12 500 coins / 6 h 33 m**) for the ×5/×10 steps so that the four income lines of §1.1 can be filled in
**2 taps instead of 200**, then the rest of `Game Speed` (its last two levels are **1.5 M** of the 1.7148 M total for
+1.0× — ≈ 428 700 coins per multiplier unit overall, the cheapest per-unit line in the coin layer) and `Buy multiplier`'s
**Max / ×100** tail last (550 000 coins for the last two steps).

**Why `Max` matters for the knee rule (§3).** With `Max` selected, one tap spends the entire banked coin pile on the
cheapest remaining levels of that line, which is exactly what the per-unit knee table wants — but it stops at the first
level you cannot afford, so after a `Max` buy the *next* level is still the same one; nothing is skipped.

## 2. The level-band rule (the actual technique)

Marginal coin cost of each **+1 %** (or +40 cash) band on a currency line, from the printed cumulative totals:

| Band (levels) | 1–10 | 11–20 | 21–30 | 31–40 | 41–50 | 51–60 | 61–70 | 71–80 | 81–90 | 91–100 | 101–110 | 111–120 | 121–130 | 131–140 | 141–149 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| band cost | 2.76 K | 17.4 K | 50.1 K | 103.9 K | 181.2 K | 292.4 K | 422.6 K | 610.3 K | 820 K | 1.05 M | 1.43 M | 1.76 M | 2.26 M | 2.84 M | 2.98 M |
| coins per 1 % | **276** | 1 740 | 5 010 | 10 390 | 18 120 | 29 240 | 42 260 | 61 030 | 82 000 | 105 000 | 143 000 | 176 000 | 226 000 | 284 000 | 331 000 |

The first 10 levels are **1 200× cheaper per percentage point** than the last 9. Therefore:

1. **Buy levels 1→50 on all four lines before any line 51.** Cost 355.4 K + 355.4 K + 448.41 K + 448.41 K =
   **1.607 M coins** and it buys **+50 % Cash Bonus, +200 Cash/Wave, +50 % Coins/Kill, +50 Coins/Wave** at once —
   four multiplied stats instead of one deep line. (Same logic as the event trade ladder, T013 §2.)
2. Then repeat the band: **51→100 on all four** costs ≈ 2.4 M more (another +50 %/50 %/+200/+50).
3. **Coins/Wave is the weakest late** (+1 coin per wave per level, flat, and not multiplied by Cash Bonus) — after the
   1→50 band, prefer Cash Bonus → Coins/Kill → Cash/Wave → Coins/Wave. (Cash/Wave *is* multiplied by Cash Bonus, so
   the two work in each other's favour.)
4. Every coin line is also discounted by its **tab discount lab** — see §4.

## 3. The knee table (stop each line here)

“Knee” = the last level whose band is still cheaper than the *whole* first band of the four currency lines. All
numbers are the printed cumulative totals:

| Line | Knee | Cumulative at knee | Value at knee | What the tail costs |
|---|---|---|---|---|
| **Bounce Shot Range** | **L40** | 290.60 K | 6.0 m | L41–60 = **3.81 T** for +2.0 m |
| **Damage/Meter** | **L70** | 982.41 K | ×1.033 (+3.3 %) | L71–200 = **314.6 T** for +2.6 % |
| **Critical Factor** | **L100** | 2.50 M | ×11.2 | L101–150 = **256.7 B** for +5.0 |
| **Super Crit Chance** | **L20** | 169.69 M | 4.0 % | L21–50 = ~60 B for +6 % |
| **Damage** | **L2000–3000** | 68.87 B / 256.14 B | 521 K / 2.34 M | L5001–6000 = **814.75 T** for 29.05 M→71.11 M |

**Cheap lines that are always worth maxing** (flat increments, all ≤ 5 M): Attack Speed 99 lv **3.60 M** (×5.95) ·
Critical Chance 79 lv **1.41 M** (80 %) · Range 79 lv **1.46 M** (69.5 m) · Multishot Chance 99 lv **4.26 M** (49.5 %) ·
Multishot Targets 7 lv **530 K** (9 targets) · Rapid Fire 85 lv **2.79 M** (34 %) · Rapid Fire Duration 99 lv
**4.63 M** (5.55 s) · Bounce Shot Chance 85 lv **3.23 M** (68 %) · Bounce Shot Targets 7 lv **970.7 K** (8 targets).
**All nine capped = 22.88 M coins**, i.e. the whole “flat-increment” attack block costs ~14× the 1→50 band of the four
currency lines — buy the caps first, they are the cheapest power-per-coin in the tab.

## 4. Discount-first rule (why the lab order changes the coin budget)

Three labs discount the Workshop tabs directly, and a discount applies to every later purchase, so level them
**before** the expensive buys:

| Discount | Source | Effect |
|---|---|---|
| **Workshop Utility Discount** | lab, milestone **T2 W60**, 99 levels | cuts the coin cost of the four currency lines (Cash Bonus / Cash per Wave / Coins per Kill / Coins per Wave) |
| Workshop Attack / Defense Discount | labs, **T2 W40 / W50**, 99 levels each | same for the Attack / Defense tabs |
| **Enhancement Coin Discount** ×3 | lab (100 levels, L1 = **1.00 B coins**, 1 d 1 h 55 m) | cuts enhancement prices |
| **Enhancements Discount** ×9 | Vault keys, **2+4+…+18 = 90 keys** for **−22.5 %** | [T017](T017-vault-keys-priority.md) Tier A |
| Workshop Respec | lab, **T4 W30** (Vault respec discount 3 × 33 %) | lets you move coins between lines without loss |

Because the four currency lines all share one price ladder, one level of the Utility discount lab moves four lines at
once — the highest-leverage lab for a coin-heavy account.

## 5. How the coin multipliers combine (so the buys are not wasted)

The wiki's printed Coins-per-Kill formula ([game-vault `Workshop/Coins Per Kill`](https://the-tower-idle-tower-defense.game-vault.net/wiki/Workshop/Coins_Per_Kill)):

```
Coins/Kill = (Workshop × CPK lab + CPK module effect)
           × (1 + coin-bonus enhancement)
           × (1 + 0.15 × All-Coins-perk quantity)
           × (1.8 × (1 + Trade-Off lab))          // = 1 if no trade-off perk
```

Consequences for the tap order: the **Workshop level is multiplied by the CPK lab**, so a CPK lab level is worth as
much as the workshop level it multiplies (T011's lab list); module effects are **added after** the workshop×lab
product, so a shard-spent module effect is a *third* independent stack; and the 1.8 trade-off factor means a trade-off
perk is a fixed ×1.8 on the whole product, which is why T011 ranks it high. “Enhancement is double counted in both the
tier bonus and in CPK” (per the wiki), so enhancement levels are worth ~2× their printed value.

## 6. The enhancement layer (v29 numbers)

**Gate:** **tier 12 wave 60** *and* the `Workshop Enhancement` lab (**5.00 B** coins, 6 d 16 h research). Then the **first
enhancement of each track is free** (Attack `Damage +`, Defense `Health +`, Utility `Cash Bonus`) and the rest open by
**coins spent inside that same track** — 50 B → 500 B → 5 T → 50 T → 500 T. Spending in Attack does nothing for Utility, so
all three tracks need their own 500 T.

**Notation key** (the game's suffixes, needed to read these tables): `K` 10³ · `M` 10⁶ · `B` 10⁹ · `T` 10¹² · `q` 10¹⁵ ·
`Q` 10¹⁸ · `s` 10²¹ · `S` 10²⁴ · `O` 10²⁷.

### 6.1 The 12 standard enhancements — one shared curve

All twelve 600-level enhancements share one price curve; the bonus is linear, **×1 + 0.01 × level** ⇒ **×7 at 600**.

| Level | price of that level | total to here | multiplier | cost of this 50-level block |
|---|---|---|---|---|
| 1 | 5.00 B | 5.00 B | ×1.01 | — |
| 50 | 9.59 T | **73.23 T** | ×1.50 | 73.23 T |
| 100 | 2.63 q | 34.88 q | ×2.00 | ≈ 34.81 q (**475×** block 1) |
| 150 | 32.31 q | 698.20 q | ×2.50 | ≈ 663.32 q |
| 200 | 172.31 q | 5.13 Q | ×3.00 | ≈ 4.43 Q |
| 250 | 6.57 Q | 129.09 Q | ×3.50 | ≈ 123.96 Q |
| 300 | 34.88 Q | 1.03 s | ×4.00 | ≈ 0.90 s |
| 400 | 330.80 Q | 15.29 s | ×5.00 | ≈ 14.26 s |
| 500 | 1.65 s | 100.89 s | ×6.00 | ≈ 85.60 s |
| 600 | 5.83 s | **441.24 s** | ×7.00 | ≈ 340.35 s (**4.6 × 10⁹×** block 1) |

Same rule as every other line in this doc: **the first 50 levels are the whole value** (73.23 T for ×1.50). The blocks
then grow ≈ 475×, and the last block alone (L551–600 = 340.35 s) is **4.6 × 10⁹×** the entire first block, while level 600
by itself is 5.83 s ≈ 8 × 10⁷× the first block. Practically: take each enhancement to **L50 / L100 / L150** and move
on; a single standard enhancement to 600 costs **441.24 s** and all twelve of them together cost **5 294.88 s**
(= 12 × 441.24) ≈ **5.3 S coins**.

### 6.2 The six special curves (steeper, and the two caps that matter)

| Enhancement | Max | L1 | Mid | Last level | **Total** | Note |
|---|---|---|---|---|---|---|
| Attack Speed + | **100** | 5.00 B | 2.05 Q (L50) | 2.50 s | **26.62 s** | cheapest ×2 in the layer |
| Enemy Level Skip + | **60** | 5.00 B | 271.92 q (L30) | 289.53 Q | **1.51 s** | **cheapest full project**, weakens every enemy |
| Free Upgrades + | 150 | 5.00 B | 122.66 Q (L75) | 42.82 s | 734.30 s | |
| Orb Size | 250 | 5.00 B | 18.99 Q (L125) | 17.89 s | 336.82 s | track not printed (H037 step 5) |
| **Coin Bonus +** | **300** | 5.00 B | 64.05 Q (L150) | 106.12 s | **2.99 S** | the economy one — compounds everything |
| **Cells / Kill Bonus** | **300** | 5.00 B | 64.05 Q (L150) | 106.12 s | **2.99 S** | the Elite-Cell multiplier (T006/T015) |

All 18 together ≈ **12.37 S coins** before discounts — and that printed total reproduces arithmetically from these rows:
12 × 441.24 s + 26.62 + 1.51 + 734.30 + 336.82 + 2 990 + 2 990 = **12 374.13 s = 12.37 S** ✓, so the two tables are the
same version. `Land Mine Damage +` is the standard curve but with **+0.06 per level** ⇒ ×37 at 600 (1 + 0.06 × 600), i.e.
the best ×-per-coin of the 600-level group. The source prints the track only for the first ten rows, so the six specials'
track assignment must be read in-game (`Coin Bonus +` and `Cash Bonus` are both economy lines → probably Utility, but the
lab you buy depends on it — see [H037](../hypotheses/H037-enhancement-per-level-step.md) step 5).

### 6.2.1 `Coin Bonus +` — the only economy enhancement, first 10 levels priced

It opens after **50 B** coins spent in the **Utility** track (matching §6's per-track gates) and its whole-project price is
the **2.99 S** of §6.2. Tower Hub's Coins/Kill page prints the first ten levels, and **all ten cumulative totals re-add**
(5.00 → 11.25 → 23.71 → 51.14 → 105.64 → 202.49 → 359.94 → 599.11 B → 943.90 B → 1.42 T ✓, each = the previous total + the
printed level price):

| Level | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
|---|---|---|---|---|---|---|---|---|---|---|
| price | 5.00 B | 6.25 B | 12.46 B | 27.42 B | 54.50 B | 96.85 B | 157.45 B | 239.17 B | 344.79 B | 477.01 B |
| total | 5.00 B | 11.25 B | 23.71 B | 51.14 B | 105.64 B | 202.49 B | 359.94 B | 599.11 B | 943.90 B | **1.42 T** |
| value | ×1.01 | ×1.02 | ×1.03 | ×1.04 | ×1.05 | ×1.06 | ×1.07 | ×1.08 | ×1.09 | ×1.10 |

Cap **300** levels ⇒ **×4** (= 1 + 0.01 × 300 ✓). Because the enhancement enters **both** the tier coin bonus and the
Coins/Kill product, its effect is **squared**: at L10 (1.42 T coins) a nominal ×1.10 is **×1.21** on the run's coins
(1.10² ✓); at L50 (×1.50) it is **×2.25**. Practical: 10 levels ≈ **1.42 T** coins for ×1.21, so stop near **L10–L20**
until the whole 500 T-per-track gate is paid anyway.

**Vault cross-check:** the Power-tree nodes for these lines are **250 keys each** with the ladder **10 / 20 / 40 / 70 /
110** (Σ = 250 ✓), `Cash` and `Coins/Kill` at **+5 %/level (+25 %)** and `Cash/Wave` + `Coins/Wave` at **+100 %/level
(+500 %)** — the same table T017 §2.2 transcribes from fandom, now second-sourced ([T017](T017-vault-keys-priority.md)).

### 6.2.2 `Free Upgrades` enhancement — the 150-level curve is steeper than the standard one

Utility track, opened by **5 T** coins spent in that track (§6's gate ladder ✓). **150 levels, ×1 → ×2.5**
(= 1 + 0.01 × 150 ✓), and it multiplies **all three** free-upgrade chances:

| Level | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
|---|---|---|---|---|---|---|---|---|---|---|
| price | 5.00 B | 6.05 B | 22.25 B | 95.56 B | 299.27 B | 739.39 B | 1.56 T | 2.92 T | 5.05 T | 8.18 T |
| total | 5.00 B | 11.05 B | 33.30 B | 128.85 B | 428.12 B | 1.17 T | 2.72 T | 5.65 T | 10.69 T | **18.87 T** |
| multiplier | ×1.01 | ×1.02 | ×1.03 | ×1.04 | ×1.05 | ×1.06 | ×1.07 | ×1.08 | ×1.09 | ×1.10 |

**10/10 cumulative totals re-add** (within the wikis' rounding). Budget reading: **L10 = 18.87 T coins for ×1.10** ⇒
**188.7 T per multiplier unit**, against the standard 600-level curve's **146.5 T per unit** (73.23 T for ×1.50, §6.1) — so
the 150-level enhancements are **≈ 1.3× dearer per point**, which is why §6.3's order puts them after the ×-per-coin
standards. Its whole-project price stays the **734.30 s** of §6.2.

**v29 cap changes that stale guides miss:** standard 400 → **600** (×5 → ×7), Attack Speed 75 → **100**, Orb Size
200 → **250**, Coin Bonus / Cells per Kill 200 → **300**, Free Upgrades 100 → **150**.

### 6.3 The two discounts stack (buy these before the levels)

| Discount | Source | Value |
|---|---|---|
| `Enhancement Coin Discount` ×3 | labs, **T21 W60**, 100 levels each, L1 = **1.00 B** coins (1 d 1 h 55 m) | **−0.30 % per level** (L10 = −3.00 %), one lab per track |
| Vault enhancement-cost node | keys (**T017** Tier A) | −22.5 % (90 keys, 2+4+…+18) |
| `Max Buy` fix | v29 | the tab's `Max Buy` now includes the lab discount (before v29 it under-discounted) |

**Discount-lab ladder** (printed, one track): L1 **1.00 B** / −0.30 % · L2 1.30 B / −0.60 % · … · L10 **10.60 B** / −3.00 %
⇒ price **×1.3 per level** and time **+1 d 1 h 55 m per level** (L10 = 10 d 19 h cumulative). So 10 levels of one track cost
≈ **42.6 B** coins (1.00 B × (1.3¹⁰ − 1) ÷ 0.3) and ≈ 11 days of one research slot for **−3.00 %** on that track — a poor
rate next to the other labs, so take ~5 levels (−1.50 %, ≈ 9.1 B coins) and move on; the node is worth it only because the
same 100-level ladder repeats three times.

Because both apply multiplicatively, a Utility-heavy account should take the **Utility** lab first (it discounts `Coin
Bonus +`, whose whole project is 2.99 S). Order: 3 free starters → L50–150 on the ×-per-coin standards → `Enemy Level
Skip +` (1.51 s, the cheapest complete project) → then `Coin Bonus +` / `Cells / Kill Bonus`, whose 2.99 S price tags make
them the last coin sink of the game. The spend counters are per-track, so §2/§3's cheap workshop buys do **not** advance
the enhancement gates — track each of the three separately ([H024](../hypotheses/H024-enhancement-spend-counter-respec.md)).

## 7. Steps (UI only)

1. Home screen → **Lab** → research **`Game Speed` L1–L3** (Main Research, unlocked at the **T1 W30** milestone: **14 800
   coins / ≈ 13 h** for the ×3.0 cap), then **`Buy multiplier` L1–L2** (unlocked at **T2 W20**: **12 500 coins / 6 h 33 m**
   for the ×5 and ×10 steps). Both pay back on every later tap (§1.5).
2. Home screen → **Workshop** → the **Utility** tab. Tap the four lock icons to unlock **Cash Bonus**, **Cash/Wave**
   (40 coins each) then **Coins/Kill**, **Coins/Wave** (100 each), then **Free Upgrades** (800).
3. Level each of the four to **level 50** in round-robin (10 levels per pass per line — **one tap** once the ×10/`Max`
   steps exist). Stop a line when its next 10-level band exceeds ~180 K coins while another line is still under 100 K.
4. Same for the Attack tab's capped flat lines of §3 (Attack Speed, Critical Chance, Range, Multishot +Targets,
   Rapid Fire +Duration, Bounce Chance +Targets) — max each; they total ~23 M coins.
5. Only then start the deep lines and stop at the knees: **Damage/Meter 70**, **Critical Factor 100**, **Super Crit
   Chance 20**, **Bounce Shot Range 40**, **Damage 2000–3000**.
6. If the coin budget stalls, do **not** buy more Damage levels: check the discount labs (§4) first — one
   `Workshop Utility Discount` level is cheaper than the 10 levels it discounts.
7. Use the **Workshop Respec** (unlocked T4 W30) to rebalance instead of re-buying blind, and note that the Vault
   sells three respec discounts + 3 presets (T017).
8. Finish the QoL tails when they are cheap relative to the line you are on: `Game Speed` **L4–L7** (1.70 M for ×4.0→×5.0,
   ≈ 428 700 coins per unit) and `Buy multiplier` **L3–L4** (550 000 for `Max` and ×100).
9. Watch the **per-track** enhancement gates (50 B → 500 B → 5 T → 50 T → 500 T spent in that track) once you reach
   T12 W60 — they are separate counters, so finish one track before starting the next (§6.3).

## 8. Reproduction checklist

- [ ] The Utility-tab unlock prices read **40 / 40 / 100 / 100** coins and **800** for Free Upgrades, and the chain is
      enforced (Coins/Kill is not buyable before Cash/Wave).
- [ ] **Cash** ladder checkpoints: L1 = **30**, L10 = **674** (Σ **2.76 K**), L50 Σ = **355.40 K**, L90 Σ = **2.50 M**.
- [ ] **Coins** ladder checkpoints: L1 = **50**, L10 = **838** (Σ **3.52 K**), L50 Σ = **448.41 K**, L90 Σ = **3.22 M**.
- [ ] `Coins/Kill Bonus` **lab**: L1 = **40** coins / **0 m** / value **1.02**; L10 = **6 175** coins / **4 h 33 m**
      cumulative / value **1.20**; its Σ of the first 10 prices is **18 852** coins.
- [ ] `Coin Bonus +` enhancement L1 = **5.00 B** coins at ×1.01 and its L10 total = **1.42 T** at ×1.10.
- [ ] Cash Bonus level 1 costs **30** coins; its cost at level 10 is **674** and its total at level 50 is **355.40 K**.
- [ ] Coins/Kill's total at level 50 is **448.41 K** (its ladder is 26 % dearer than Cash Bonus's).
- [ ] Critical Factor's total at level **100** is **2.50 M** and at 150 it is **259.20 B**.
- [ ] Damage/Meter's total at level 70 is **982.41 K** and at 200 it is **315.60 T**.
- [ ] Bounce Shot Range's total at 40 is **290.60 K** and at 60 is **3.81 T**.
- [ ] A researched `Workshop Utility Discount` level visibly lowers the printed price of the four currency lines (H023).
- [ ] The enhancement menu is locked until **T12 W60** + the lab; after that the first enhancement of each track costs
      **0** and level 1 of any enhancement costs **5.00 B** coins.
- [ ] A standard enhancement's level 50 price reads **9.59 T** with the total **73.23 T**; level 600 reads **5.83 s**
      (total **441.24 s**) and its multiplier reads **×7**.
- [ ] `Enemy Level Skip +` caps at level **60** and `Coin Bonus +` at **300** (the v29 caps, not 200/75/100).
- [ ] `Starting Cash` **lab**: L1 = **30** coins at value **5**, L10 = **6 165** at value **50**, and the ten printed prices
      sum to **18 752** (each is 10 coins under the income labs' ladder).
- [ ] `Free Attack Upgrade` L1 = **75** coins (Σ10 **4.20 K**) and `Free Utility Upgrade` L1 = **100** coins (Σ10
      **4.45 K**), each level reading **+0.5 %**; read and record `Free Defense Upgrade`'s own ladder (unprinted).
- [ ] A wave pays a free level into a not-yet-maxed workshop tab, and **no** level appears once that tab is fully maxed
      (the “never picks a maxed stat” rule).
- [ ] The `Free Upgrades` enhancement's L10 cumulative reads **18.87 T** coins at ×1.10, and its cap is **150** (×2.5).
- [ ] `Game Speed` **lab**: L1 = **300** coins at **×2.0**, L7 = **1 000 000** at **×5.0**, the seven prices sum to
      **1 714 800**, and the panel's total time reads **≈ 45 d** (per-level column) — not 25 d.
- [ ] `Buy multiplier` **lab**: four levels at **2 500 / 10 000 / 50 000 / 500 000** (Σ **562 500**), and the workshop's
      quantity selector cycles **1 → 5 → 10 → Max → 100** as those levels are researched; a `Max` buy spends the whole bank
      and leaves the next level's price unchanged (no bulk discount).
- [ ] One level of `Enhancement Coin Discount` (Utility) changes printed enhancement prices by −0.30 %, and `Max Buy`
      reflects that discount (the v29 fix).

## 9. Falsification

- If `Game Speed`'s seven-level total shows **≈ 25 d** of time rather than **≈ 45 d**, the `Time` column is cumulative after
  all → every slot bill in §1.5 (and T001/T006) must be replaced by the panel total ([H050](../hypotheses/H050-lab-time-column-per-level-vs-cumulative.md)
  would reopen; the 45.36 d = 45.3 d match is what currently decides it).
- If the workshop's quantity selector offers **×100 before Max**, the version ordering in §1.5 is stale → read the selector
  order on the panel and re-derive which lab level is the one worth buying first (the Σ **562 500** is unaffected).
- If the four income labs' L1 price is not **40** coins (value **1.02**), they are re-versioned → re-read L1/L5/L10 and
  rebuild §1.2's checkpoint table; the “1.80× cheaper than the meta-labs” ratio is derived, not printed.
- If a `Cash/Wave` Payout at workshop L50 with the lab at L10 is **200** rather than **240**, the lab multiplies only the
  increment → §1.2's end-state product changes ([H049](../hypotheses/H049-income-lab-multiplies-value-vs-increment.md)).
- If one Vault Power level doubles the line's number instead of adding +100 % to the pool, the stacking law is
  multiplicative → recompute §6.2.1's totals ([H048](../hypotheses/H048-vault-power-node-stacking-with-lab.md)).
  the ten cheapest levels of each line and rebuild §2's band table from the panel.
- If a currency line's level-1 price is not **30** (Cash pair) / **50** (Coins pair) coins, the tables are re-versioned →
  re-read the ten cheapest levels of each line and rebuild §2's band table from the panel.
- If the `Workshop Utility Discount` lab does **not** change those four prices, §4's order collapses: then the utility
  lines are effectively undiscounted and the 1→50 band is the whole budget ([H023](../hypotheses/H023-workshop-tab-discount-applies.md)).
- If a knee is wrong (e.g. Damage/Meter's 71st level costs far less than 1.9× the 70th), re-read that line's next-price
  row and shift the knee — the tables print one price per 10 levels, so a mid-band jump is possible.
- If a respec resets an enhancement unlock, the “coin spend advances the counters” shortcut needs re-doing after each
  respec ([H024](../hypotheses/H024-enhancement-spend-counter-respec.md)).
- If an enhancement's level 1 is not **5.00 B**, or its level-50 price is not **9.59 T**, the tables are for another
  version → re-read three checkpoints (L1 / L50 / cap) and rebuild §6.1's block column.
- If a standard enhancement's cap reads **400** (or Attack Speed 75, Coin Bonus 200), the client is pre-v29 → halve the
  “coins to max” column accordingly (the block ratios are unchanged).
- If `Free Attack Upgrade` L1 is not **75** coins (or Utility not **100**), the three tracks are re-versioned → re-read the
  ten cheapest levels of each of the three tracks and rebuild §1.4's table; the “5 free levels per 1 000 waves per ~100
  coins” figure is derived from those prices.
- If the printed maximum free-upgrade chance in a fully-set-up account is **not 90.75 %**, the decomposition
  (60.5 × 1.5) is wrong → read the four sources' own values and rebuild §1.4's ladder
  ([H051](../hypotheses/H051-free-upgrade-chance-90-75-decomposition.md)).
- If a maxed workshop tab **still** receives free levels, the “never picks a maxed stat” rule is stale → the tracks become
  strictly per-stat investments and their ordering must be re-derived
  ([H051](../hypotheses/H051-free-upgrade-chance-90-75-decomposition.md)).
- If `Coin Bonus +` costs ≈ 2.99 S but its multiplier is not what §6.2 implies, the per-level step differs → read the
  value at level 1 and record it ([H037](../hypotheses/H037-enhancement-per-level-step.md)).

## Sources

- game-vault `Workshop` — tab structure and “coin upgrades are permanent / cash upgrades reset each round”; the full
  per-level cost + cumulative tables for Damage (6000 lv, 816.09 T), Attack Speed (99 lv, 3.60 M), Critical Chance
  (79 lv, 1.41 M), Critical Factor (150 lv, 259.20 B), Range (79 lv, 1.46 M), Damage/Meter (200 lv, 315.60 T),
  Multishot Chance (99 lv, 4.26 M) + Targets (7 lv, 530 K), Rapid Fire (85 lv, 2.79 M) + Duration (99 lv, 4.63 M),
  Bounce Shot Chance (85 lv, 3.23 M) + Targets (7 lv, 970.7 K) + Range (60 lv, 3.81 T), Super Crit Chance (100 lv),
  Cash Bonus (149 lv, 14.82 M), Cash/Wave (149 lv, 14.82 M), Coins/Kill (149 lv, 19.47 M), Coins/Wave (149 lv,
  19.47 M), Free Upgrades (800-coin unlock, 3 × 99 lv), Recovery Package (1.5 M unlock, 300 lv).
- game-vault `Workshop/Coins Per Kill` — the CPK formula (workshop × lab + module effect, enhancement, 0.15 × perk
  quantity, 1.8 trade-off) and the “enhancement double-counted” note.
- fandom `Workshop Utility Discount` / `Workshop Defense Discount` (99 levels; labs at T2 W60 / W50), `Workshop
  Enhancement` pages (unlock thresholds 50 B / 500 B / 500 T coins spent, +0.01 per level, 75 levels), `Lab/Enhancement
  Coin Discount` (100 levels, 1.00 B coins at L1).
- `tools/gm_strings.txt` — panel strings `Workshop Attack` / `Workshop Defense` / `Workshop Utility`,
  `Attack Enhancements` / `Defense Enhancements` / `Utility Enhancements`, `Upgrade Enhancement Panel`,
  `Workshop Presets`, `Lab Enhancement`.
- Tower Hub `wiki/workshop/coins-per-kill-bonus` (last verified **2026-11-01**), `.../cash-per-wave` and `.../coins-per-wave`
  (2026-10-13) — the two coin ladders at L1/L10/L20/L30/L40/L50/L90 with their cumulative columns (the 9 trapezoid checks
  in §1.1 all agree to ≈1 %), the **unlock chain** (Cash Bonus → Cash/Wave → Coins/Kill → Coins/Wave), the exact level
  counts and increments (149 lv; ×2.49 / 596 / 150), the **four income labs** (T1 W30, 99 lv, +0.02 → ×2.98, per-level
  prices 40 … 6 175 with cumulative times to 4 h 33 m, **111 683 349 coins** and ≈**1 445 days** of base time each), the
  **Vault Power** node table (10/20/40/70/110 = 250; Cash +25 %, Coins/Kill +25 %, Cash/Wave +500 %, Coins/Wave +500 %),
  the printed Coins/Kill formula (2-source with game-vault) and the note that only the **All Coin perk** moves the
  displayed Coin/Kill figure, and the `Coin Bonus +` first-10 ladder (5.00 B → 1.42 T, all ten totals re-add).
- Tower Hub `wiki/workshop/buy-multiplier` (2026-10-13) and `wiki/workshop/game-speed` (2026-11-01) — the `Buy multiplier`
  lab (T2 W20 gate, 4 levels, 2 500 → 500 000 coins, values **5 / 10 / Max / 100**, the “×100 was added as the fourth level
  so existing progress was kept” note, “no discount for buying in bulk”) and the `Game Speed` lab (T1 W30 gate, 7 levels,
  300 → 1 000 000 coins with the printed totals **1 714 800 coins / 45.3 days**, values ×2.0 → ×5.0, the 6.25 cap with the
  perk + Standard Perk Bonus and the “displayed multiplier overstates real speed” caveat).
- Tower Hub `wiki/workshop/starting-cash` (2026-10-13) and `wiki/workshop/free-upgrades` (2026-11-01) — the `Starting Cash`
  lab (T1 W30, 99 lv, per-level prices 30 … 6 165, value column 5 × level, the same per-level time series as the income
  labs) and the `Free Upgrades` layer: the **800-coin** unlock behind Coins/Kill + Coins/Wave, three 99-level tracks at
  **+0.5 %/level → 49.5 %**, the two printed track ladders (Attack 75 … 941 / Σ 4.20 K; Utility 100 … 966 / Σ 4.45 K), the
  three-roll + “never picks a maxed stat” + Wave-Skip double-roll + **> 100 % rollover** rules, the **90.75 %** printed
  ceiling, the Vault `Free *` nodes (5 × +5 %, 10/20/40/70/110 = 250 keys each), the `Free Upgrades` enhancement (Utility
  track, 5 T gate, 150 lv × 0.01 → ×2.5, first 10 prices re-adding to **18.87 T**), `Black Hole Digestor`'s
  **+3/5/7/10 %** Coins/Kill per free upgrade, and the Free Upgrades Mastery lab (1 locked stat at L0 → 10 at L9).
- Tower Hub `wiki/workshop/workshop-enhancement` (last verified **2026-11-01**, “computed for v29.0.5 from the game's cost
  code”) — the 18-enhancement table with per-track unlock gates (50 B / 500 B / 5 T / 50 T / 500 T), caps and per-level
  steps; the shared 600-level curve (L1 5.00 B · L50 9.59 T / total 73.23 T · L600 5.83 s / total 441.24 s); the six
  special curves (Attack Speed + 26.62 s · Orb Size 336.82 s · Coin Bonus + and Cells/Kill 2.99 S each · Free Upgrades +
  734.30 s · Enemy Level Skip + 1.51 s); the **12.37 S** total; the `Enhancement Coin Discount` lab (T21 W60, 3 labs,
  100 levels, −0.30 %/level, L1 = 1.00 B coins / 1 d 1 h 55 m); the v29 cap changes; and the `Max Buy` discount fix.
