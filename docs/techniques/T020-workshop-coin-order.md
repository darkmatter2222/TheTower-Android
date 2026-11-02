# T020 — Workshop coin-spend order: the level-band rule and the knee table

Rev: 1 (2026-11-01) · Currency: **Coins** (spent) — buys permanent **Cash/Coins multipliers** = the run's starting stats
**Value:** ★★★★ — the four currency lines reach **×1.5 Cash Bonus, +200 Cash/Wave, ×1.5 Coins/Kill, +50 Coins/Wave for
≈ 1.6 M coins total** (levels 1–50 on each), while the *same* 1.6 M buys only ~15 levels on any one of them; and every
expensive line has a hard **knee** after which the tail costs 50–600× more per point.
**Confidence:** **High** for the cost tables (game-vault prints every level's price and the cumulative total for each
line; the four currency lines' totals — 14.82 M / 14.82 M / 19.47 M / 19.47 M — are printed values) and **Medium** for
the enhancement ladder (only the unlock thresholds are transcribed here). No device capture → **Unverified**.
**Ease:** 1 tap per level (a `Buy x10`-style repeat) · **Prerequisite:** Workshop from the start; the Utility lines
unlock for **40 / 40 / 100 / 100 coins**, so they are live from minute one.

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

## 6. Enhancements (the late coin sink)

Enhancements are a separate Workshop block with three types (Attack / Defense / Utility) that unlock by **cumulative
coins spent** on that type — the printed thresholds are **50 B**, **500 B** and **500 T** (e.g. Utility's Enemy-Level-Skip
enhancement needs 500 T spent on Utility enhancements; the Attack one needs 500 T spent on enhancements) and each
unlocked enhancement then has its own levels (typically +0.01 per level, 75 levels). Practical order: finish §2 and §3
first — enhancement unlock thresholds are *coin-spend counters*, so **every coin you spend on the cheap lines above
also advances the enhancement unlocks** (this is why the cheap-first order beats hoarding coins).
Check the counter behaviour after a respec: [H024](../hypotheses/H024-enhancement-spend-counter-respec.md).

## 7. Steps (UI only)

1. Home screen → **Workshop** → the **Utility** tab. Tap the four lock icons to unlock **Cash Bonus**, **Cash/Wave**
   (40 coins each) then **Coins/Kill**, **Coins/Wave** (100 each), then **Free Upgrades** (800).
2. Level each of the four to **level 50** in round-robin (10 taps per line per pass). Stop a line when its next 10-level
   band exceeds ~180 K coins while another line is still under 100 K.
3. Same for the Attack tab's capped flat lines of §3 (Attack Speed, Critical Chance, Range, Multishot +Targets,
   Rapid Fire +Duration, Bounce Chance +Targets) — max each; they total ~23 M coins.
4. Only then start the deep lines and stop at the knees: **Damage/Meter 70**, **Critical Factor 100**, **Super Crit
   Chance 20**, **Bounce Shot Range 40**, **Damage 2000–3000**.
5. If the coin budget stalls, do **not** buy more Damage levels: check the discount labs (§4) first — one
   `Workshop Utility Discount` level is cheaper than the 10 levels it discounts.
6. Use the **Workshop Respec** (unlocked T4 W30) to rebalance instead of re-buying blind, and note that the Vault
   sells three respec discounts + 3 presets (T017).
7. Watch the enhancement unlock counters (the coin-spend thresholds) as a by-product — no extra coins needed.

## 8. Reproduction checklist

- [ ] Utility-tab unlock prices read **40 / 40 / 100 / 100** coins and **800** for Free Upgrades.
- [ ] Cash Bonus level 1 costs **30** coins; its cost at level 10 is **674** and its total at level 50 is **355.40 K**.
- [ ] Coins/Kill's total at level 50 is **448.41 K** (its ladder is 26 % dearer than Cash Bonus's).
- [ ] Critical Factor's total at level **100** is **2.50 M** and at 150 it is **259.20 B**.
- [ ] Damage/Meter's total at level 70 is **982.41 K** and at 200 it is **315.60 T**.
- [ ] Bounce Shot Range's total at 40 is **290.60 K** and at 60 is **3.81 T**.
- [ ] A researched `Workshop Utility Discount` level visibly lowers the printed price of the four currency lines (H023).

## 9. Falsification

- If a currency line's level-1 price is not **30** (Cash) / **50** (Coins) coins, the tables are re-versioned → re-read
  the ten cheapest levels of each line and rebuild §2's band table from the panel.
- If the `Workshop Utility Discount` lab does **not** change those four prices, §4's order collapses: then the utility
  lines are effectively undiscounted and the 1→50 band is the whole budget ([H023](../hypotheses/H023-workshop-tab-discount-applies.md)).
- If a knee is wrong (e.g. Damage/Meter's 71st level costs far less than 1.9× the 70th), re-read that line's next-price
  row and shift the knee — the tables print one price per 10 levels, so a mid-band jump is possible.
- If a respec resets an enhancement unlock, the “coin spend advances the counters” shortcut needs re-doing after each
  respec ([H024](../hypotheses/H024-enhancement-spend-counter-respec.md)).

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
