# T001 — Idle the Cash bar at the Interest cap

Rev: 4 (2026-11-02) — adds the printed **in-run cash laws** (§2.2): enemy value `$ = 1 + ⌊w/10⌋` to W200 (the 16-row
table re-adds exactly), the **Cash/Wave-before-Interest** payout order, the **`Cash Bonus` enhancement** (free unlock,
L600 = ×7, +1 %/lv on Cash/Wave + Interest % + Max Interest, cumulative ladder to 15.10 q at L90), and the common-card
multipliers (Cash ×1.2→×2.4, Coins ×1.15→×1.45).
Rev: 3 (2026-11-02) — **unit correction:** both interest lab lines are priced in **coins** (only the *rush* is gems);
the **cumulative columns now re-add** (workshop 10/10, `Interest` lab 34 007, `Max Interest` within rounding); the wiki
**Time column is per-level** (proved by its non-monotone series: Σ L1–L4 = **8 h 33 m**, all 15 levels **≈ 44 d 6 h** of a
slot at 1× ⇒ **≈ 12 d** at the ×3.725 stacked bonus); the level-3 cap
disagreement is **settled at $300** by a third source; and the **three extra interest multipliers** are added
(Interest perk ×1.5, Generator sub-stat +2/4/6/8 %, Vault node +100 %/level).
Rev: 2 (2026-11-01) — full ladder data from both wikis, the cap value is now known ($50 base + a 15-level lab
ladder to $15 000), the two-state `$` icon rule replaced by a computable threshold, and the spend order quantified.
Currency: **Cash** (in-run) → **Coins** (end of run) · Status: **Verified (arithmetic, Rev 3)** for the three ladders
(all printed cumulative columns reproduced); the stacking law is still a device read

| | |
|---|---|
| **Value** | ★★★★ — interest is a **flat cash payment every wave**, so its contribution to a run is `cap × waves`: the |
| | 15-level cap ladder turns **$50/wave → $15 000/wave (×300) for 2 304 130 coins**, and the **first 4 levels alone are |
| | ×10 for **8 145 coins / 8 h 33 m** of lab time** — the cheapest multiplier available below Tier 5 (whole ladder: |
| | ≈44 d 6 h of one lab slot at 1× ⇒ ≈12 d at the ×3.725 bonus; the `Interest` lab's 99 levels are 3 406 d, so never |
| | try to finish it). All lab prices are **coins**; only the rush is gems. |
| **Confidence** | **High** for the numbers: game-vault, fandom and Tower Hub print the *same* three tables (15 of 15 |
| | cap cells now agree — level 3 resolves to **$300**), every cumulative column re-adds, and the lab prices are |
| | **coins** (Laboratory page). **Medium** for how the lab multiplies the workshop line (H025) and the exact |
| | interest-per-wave bill (§3's stack has four layers, H050 fixes the slot times). |
| **Ease** | 1 tap per level; the whole useful core is **≈ 4 + 30 taps** (4 cap levels + workshop levels 1–30) |
| **Prerequisite** | Workshop `Interest/Wave` (5 000 coins, after `Free Upgrades`); both lab lines unlock from the |
| | **Tier 2 Wave 80** milestone ([T019](T019-milestone-claim-engine.md) §3), so the interest engine is a Tier-2 system. |

---

## 1. The mechanic, exactly as published

Both wikis print the same formula, applied **after** `Cash/Wave`:

```
Interest/wave = ( Current Cash + Cash/Wave × Cash Bonus ) × Interest/Wave %
                └───────────── capped at Max Interest ─────────────┘
```

and the same UI statement: “*$ sign next to the cash will turn green when interest reached its maximum and further
saving of cash will not increase it*”. So there are exactly two regimes:

* **grey `$`** → interest is proportional to what you hold: `income = base × rate`. Raising the **rate** helps.
* **bright-green `$`** → interest is the flat cap value: `income = Max Interest`. Raising the rate helps **nothing**;
  only the **Max Interest** lab line raises your income.

That single in-run indicator *is* the spend decision (see §4). The consequence people miss: above the threshold,
holding 10× more cash pays exactly the same interest, so surplus cash should be spent on upgrades immediately
(the `Cash Bonus` line does not multiply interest either way).

**Computable threshold** — the cash at which the `$` goes green:

```
cash ≥ Max Interest ÷ rate  −  (Cash/Wave × Cash Bonus)
where rate = 0.06 % × (workshop levels) × (1 + 0.02 × Interest-lab levels)
```

## 2. The three ladders (printed values)

**A. Workshop → `Interest/Wave`** (Utility tab, unlocked for **5 000 coins** after `Free Upgrades`, 99 levels,
+0.06 %/level, base 0 % → **5.94 %**). Next-price / cumulative coins:

| level | 1 | 10 | 20 | 30 | 40 | 50 | 60 | 80 | 99 |
|---|---|---|---|---|---|---|---|---|---|
| value | 0.06 % | 0.60 % | 1.20 % | 1.80 % | 2.40 % | 3.00 % | 3.60 % | 4.80 % | **5.94 %** |
| next price | 125 | 1.32 K | 5.53 K | 13.87 K | 27.10 K | 45.85 K | 72.78 K | 151.68 K | 252.47 K |
| cumulative | 125 | 5.85 K | 39.17 K | 136.56 K | 343.67 K | **713.01 K** | 1.32 M | 3.52 M | **7.36 M** |

**B. Lab → `Interest`** (Utility research, **T2 W80**, 99 levels, value = `1 + 0.02 × level` → **2.98**):

| level | 1 | 5 | 10 | 20 | 30 | 50 | 99 |
|---|---|---|---|---|---|---|---|
| value | 1.02 | 1.10 | 1.20 | 1.40 | 1.60 | 2.00 | **2.98** |
| next cost (**coins**) | 50 | 1 130 | 12 126 | 120 320 | 444 910 | 2 260 000 | 19 360 000 |
| cumulative (coins) | 50 | 2 026 | **34 007** | 622 886 | 3 380 966 | 28 158 836 | **≈ 472 468 836** |
| Time (per level, as printed) | 0 h | 1 h 17 m | **7 h 9 m** | 1 d 19 h | 5 d 7 h | 20 d 9 h | **122 d 9 h** |
| **Σ of the printed rows** | 0 h | 3 h | **≈ 24 h** | 11 d | 47 d | 291 d | **≈ 3 406 d** |

The `Interest` lab's first **10** per-level prices are printed by Tower Hub as 50 / 93 / 221 / 532 / 1 126 / 2 109 /
3 589 / 5 677 / 8 484 / 12 126 ⇒ **Σ = 34 007 coins ✓** (fandom's cumulative prints 34 016 — the same table, one level
rounded), and its ten printed per-level times sum to **≈ 24 h 7 m** — so **10 levels ≈ 34 K coins and one day of a slot**,
i.e. this line is *not* the expensive one: `Max Interest` below is 361 800 coins for its first 10 levels.

**C. Lab → `Max Interest`** (Utility research, **T2 W80**, 15 levels; cap **starts at $50**):

| level | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
|---|---|---|---|---|---|---|---|---|
| cap | $100 | $200 | $300 | $500 | $700 | $1 000 | $1 500 | $2 000 |
| coins (per level + cum) | 250 (250) | 910 (1 160) | 2 129 (3 289) | 4 856 (**8 145**) | 10 330 (18 475) | 20 021 (38 496) | 35 595 (74 091) | 58 900 (132 991) |
| ×base | 2× | 4× | 6× | 10× | 14× | 20× | 30× | 40× |
| Time (per level, as printed) | 42 m | 1 h 10 m | 2 h 8 m | **4 h 33 m** | 9 h 43 m | 19 h 12 m | 1 d 10 h 50 m | 2 d 10 h 44 m |

**Unit + arithmetic note (Rev 3).** The price column is **coins** (the Laboratory page: “every lab upgrade costs coins and
takes time”; only the **rush** is priced in gems — [T006](T006-lab-queue-packing.md)). Tower Hub's unrounded per-level
prices re-add exactly (250 + 910 + 2 129 + 4 856 = **8 145**, … , Σ L1–L10 = **361 800**); fandom's are rounded to 10
(8 150 / 361 810), so the two tables agree within ≤ 10 coins over 10 levels.
**Time-column semantics:** the printed `Time` series is monotone (42 m → 1 h 10 m → 2 h 8 m → 4 h 33 m → … → 5 d 20 h 40 m)
and is read as **cumulative**; summed as per-level it gives 15.4 d instead of ≈ 12 d for L1–L10, which does not change any
priority below. The whole 15-level ladder is **≈ 78 d** of one slot at 1× (the last two levels dominate) — Rev 2's
“101 d 13 h” was a double-sum. → [H050](../hypotheses/H050-lab-time-column-per-level-vs-cumulative.md)

| level | 9 | 10 | 11 | 12 | 13 | 14 | 15 |
|---|---|---|---|---|---|---|---|
| cap | $2 500 | $3 500 | $5 000 | $7 500 | $10 000 | $12 500 | **$15 000** |
| coins (per level + cum) | 91 940 (224 930) | 136 870 (361 800) | 195 990 (557 790) | 271 720 (829 510) | 366 610 (1 196 120) | 483 330 (1 679 450) | 624 680 (**2 304 130**) |
| ×base | 50× | 70× | 100× | 150× | 200× | 250× | **300×** |
| Time (per level, as printed) | 3 d 21 h 10 m | 5 d 20 h 40 m | 1 d 4 h 50 m | 2 d 1 h 30 m | 3 d 21 h | 8 d 2 h 30 m | 13 d 19 h 20 m |

**Unit + arithmetic note (Rev 3).** The price column is **coins** (the Laboratory page: “every lab upgrade costs coins and
takes time”; only the **rush** is priced in gems — [T006](T006-lab-queue-packing.md)). Tower Hub's unrounded per-level
prices re-add exactly (250 + 910 + 2 129 + 4 856 = **8 145**, … , Σ L1–L10 = **361 800**); fandom's are rounded to 10
(8 150 / 361 810), so the two tables agree within ≤ 10 coins over 10 levels — the cumulative column above is recomputed
from the per-level prices, which is why it lands 10 coins under the wikis' printed totals.
**The `Time` column is per-level — proven by the series itself:** it is non-monotone (L10 = 5 d 20 h 40 m but L11 =
1 d 4 h 50 m), and a cumulative column cannot go backwards. Summing it gives the real slot bill: **L1–L4 = 8 h 33 m**,
**L1–L10 = 15 d 10 h** (Σ = 22 212 min), **all 15 levels ≈ 44 d 6 h** (Σ = 63 762 min) of one slot at 1× ⇒ with the ×3.725
stacked speed bonus of [T006](T006-lab-queue-packing.md) that is **≈ 12 d** of one slot, or **≈ 2.4 d** spread over five
slots — which is why the ladder is affordable even though its raw bill looks enormous.
→ [H050](../hypotheses/H050-lab-time-column-per-level-vs-cumulative.md)

Marginal efficiency (**$ of cap per 1 000 gems**) by level: **200 · 110 · 47 · 41 · 19 · 15 · 14 · 8.5 · 5.4 · 7.3 ·
7.7 · 9.2 · 6.8 · 5.2 · 4.0**. Read it as: levels 1–4 are in a different class from the rest, and among the deep
levels **level 12 ($7 500 for 271 720) is the most efficient**.
Wiki disagreement to settle on device: level 3 reads **$300** (fandom) / **$350** (game-vault); level 14's time reads
21 d 13 h 39 m / 13 h 59 m. Both immaterial (≤ 1 % of the ladder).

### 2.1 Four more multipliers sit on the rate (all printed), and the $300 settlement

The `rate` in §1's formula is not only workshop × lab:

| Layer | Source | Value |
|---|---|---|
| workshop `Interest/Wave` | 99 levels × 0.06 % | 5.94 % |
| `Interest` lab | 99 levels | ×1.02 → **×2.98** |
| **Generator module sub-stat** `Interest/Wave` | by sub-stat rarity | **+2 %** Epic · **+4 %** Legendary · **+6 %** Mythic · **+8 %** Ancestral |
| **`Interest` perk** (standard perk) | 1 pick | **×1.5** |
| **Vault `Interest Per Wave` node** | 5 levels, keys **10 / 20 / 40 / 70 / 110 = 250** ✓ | **+100 %/level ⇒ +500 %** |

Rate = `(0.06 % × workshop lv × lab bonus + module pts) × perk`, with the Vault node applied as `+100 %` per level:

| Config | Rate | Cash needed to reach the **$500** cap |
|---|---|---|
| workshop 30 only | 1.80 % | 27 778 |
| workshop 30 + Epic sub-stat (+2 %) + perk | **5.70 %** | **8 772** |
| workshop 99 + lab 99 + Ancestral sub-stat (+8 %) + perk | **38.55 %** | **1 297** |
| the same + Vault node at +500 % | **231.3 %** | **216** |

**The two practical consequences.** ① The **module sub-stat is the cheapest rate in the game**: an Ancestral `Interest/Wave`
line (**+8 %**) is worth more than the *entire* maxed workshop line (5.94 %) and it costs module shards, not coins —
so level the **Generator slot** and reroll toward that effect ([T010](T010-module-merge-chain.md) §1) instead of grinding
workshop levels 60→99. ② The **`Interest` perk (×1.5)** belongs in T011's ranking list for capped-cash runs, and the
**250-key** Vault node is a ×6 on the rate ⇒ above it the cap is reached inside one wave, so the *cap* ladder is the only
meaningful purchase.

**Settled disagreement:** level 3's cap is **$300** — fandom and Tower Hub (verified 2026-11-01) both print $300; only
game-vault's older copy prints $350, so the 2-1 split resolves to **$300** (one device read still optional).

### 2.2 Where the Cash itself comes from (printed laws, Rev 4)

Tower Hub's cash page (2026-11-01) prints the in-run income law:

- **Enemy value**: base **$1**, rising **+$1 every 10 waves up to wave 200**, then **+$1 every 20 waves**. As a closed
  form: `$ = 1 + ⌊w/10⌋` for `w ≤ 200` (⇒ **$21 at W200**), `+ ⌊(w−200)/20⌋` after. The printed table (“Showing 10 of
  **16** rows”: waves 1–9, 10, 20 … 150) is *exactly* 16 rows under this law (W150 ⇒ $16 ✓) — a clean cross-check.
- **Payout order per wave-end**: **Cash/Wave is applied first, then Interest** on the resulting balance (“the flat
  payout can push your balance up into a higher Interest payout”) — so spend upgrades *right after* a claim, and let the
  flat payout refill the balance while the `$` sits near the cap. Interest still stops at the printed **Max Interest** cap.
- **`Cash Bonus` enhancement** (unlocks **free** after the Workshop Enhancement Labs): ×1 + **0.01/lv**, cap **L600 = ×7**
  ✓ (`1 + 0.01·600 = 7`), and each level *also* grants **+1 % to Cash/Wave, Interest % and Max Interest** — three extra
  multiplicative lines from one enhancement. Printed cumulative coins: L10 **55.54 B** · L20 **217.10 B** · L30 **1.95 T**
  · L40 **14.48 T** · L50 **73.23 T** · L60 **385.56 T** · L70 **1.72 q** · L80 **5.66 q** · L90 **15.10 q** (the 61-row
  table = level 1, then every 10th to 600 ✓). *Reading note:* game-vault’s “Cash bonus does not increase interest nor
  max interest” refers to the **workshop Cash Bonus upgrade**, a different line from this enhancement.
- **Card multipliers** (both **common**, so early-cheap): `Cash` card **×1.2 → ×2.4** over stars 1–7 (+0.2/star ✓) and
  `Coins` card **×1.15 → ×1.45** (+0.05/star ✓). And four lab lines (`Cash Bonus`, `Cash/Wave`, `Coins/Kill Bonus`,
  `Coins/Wave`) share the meta-lab shape: **1.00 at L0, +0.02/lv, ×2.98 at L99** — the same 0.02-law as `Labs Speed` (T006).

## 3. What the numbers say (derived)

1. **The cap, not the rate, is the binding constraint** for almost everyone below Tier 11. With the $50 base cap and
   workshop level 20 (1.20 %) the cap is already reached with **4 167 cash**, which a Tier-2 run passes by wave ~50.
   From that moment the rate is irrelevant and only the cap ladder moves your income.
2. **Threshold grid** — `cash ≥ cap ÷ rate` (ignoring the small Cash/Wave term, which lowers it a little):

   | config (workshop lv / Interest-lab lv) | rate | $50 | $500 | $1 000 | $15 000 |
   |---|---|---|---|---|---|
   | 20 / 0 | 1.20 % | 4 167 | 41 667 | 83 333 | 1.25 M |
   | 50 / 0 | 3.00 % | 1 667 | 16 667 | 33 333 | 500 K |
   | 99 / 0 | 5.94 % | 842 | 8 418 | 16 835 | 252 525 |
   | 99 / 10 | 7.13 % | 701 | 7 015 | 14 029 | 210 438 |
   | 99 / 50 | 11.88 % | 421 | 4 209 | 8 418 | 126 263 |
   | 99 / 99 | **17.70 %** | 282 | 2 825 | 5 649 | **84 740** |

   (The maximum attainable rate is `0.06 % × 99 × 2.98 = 17.70 %` — see H025 for the multiplication reading.)
3. **The rate's real job is the recovery time after a purchase.** Waves to climb back to the cap from a fraction of it
   (`ln(1/f) ÷ ln(1+rate)`, f = cash/cap when you buy):

   | from | 10 lv (0.60 %) | 20 lv (1.20 %) | 50 lv (3.00 %) | 99 lv (5.94 %) | 99 lv + lab 99 (17.70 %) |
   |---|---|---|---|---|---|
   | 90 % of cap | 18 w | 9 w | 4 w | 2 w | 1 w |
   | 80 % of cap | 38 w | 19 w | 8 w | 4 w | 2 w |
   | 50 % of cap | 116 w | 59 w | 24 w | 13 w | 5 w |

   With a low rate each purchase costs you tens of waves of proportional interest ⇒ **workshop levels 1–30 are the
   high-value part** (136.56 K coins total), and the Interest lab is only worth gems once the cap is already high.
4. **Order-of-magnitude sanity check for a 1 000-wave farming run.** Fully-levelled Workshop cash lines pay
   `596 × 2.49 ≈ 1 484` cash/wave ⇒ ≈1.48 M cash. Interest at cap $500 pays **500 K** (for 8 145 coins), at $3 500 pays
   **3.5 M** (for 361 800 coins). So the cap ladder is comparable to, then larger than, the entire maxed cash block of the
   Workshop — for a fraction of the coins, and it is the only cash multiplier that does not compete with the coin budget.

## 4. The spend order (the technique proper)

1. **Workshop → Utility → `Interest/Wave`** to **level 30** (136.56 K coins cumulative). This is the cheapest part of
   the whole engine and it is what makes the `$` go green early. Do it before any deep coin line from
   [T020](T020-workshop-coin-order.md) §3.
2. **Lab → Utility → `Max Interest` levels 1–4** = **8 145 coins** (8 h 33 m of a slot) for **$50 → $500 (×10)**. This is
   the single best purchase below Tier 5 and it is paid in **coins**, so it does not touch the gem budget of
   [T009](T009-gem-spend-order.md) at all — buy it before any deep Workshop line.
3. Read the `$` icon in a run and use it as the switch:
   * **grey** → the rate is limiting: next coins go to **`Interest`** (level 1 = 50 coins; **levels 1–10 = 34 007 coins in
     24 h of lab time** — a good “fill a short gap in a lab slot” purchase, T006 §queue-packing);
   * **bright green** → the cap is limiting: buy the next **`Max Interest`** level (from level 5 onward, prefer
     **level 12** when you can afford a single big purchase — best $/gems of the deep levels).
4. During a run: keep cash **just above** the §3 threshold and spend the surplus immediately (the `Buy` buttons in the
   in-run upgrade bar). Above the threshold extra cash is dead weight — it earns nothing until the cap is raised.
5. Do **not** max either lab line early: the `Interest` lab's last 49 levels cost ≈ 440 M gems for ×1.5 on a rate that
   is already non-binding, and the `Max Interest` ladder's last 5 levels cost 1.47 M gems for ×2. Level 15 (28 d 2 h
   55 m of lab time) is a late-game purchase; 4,500-wave tiers are where it pays.
6. Batch claims: the green `$` also completes the daily/weekly **“keep max interest for N consecutive waves”** mission
   ([T004](T004-mission-farming-low-tier.md)), so a long idle window at the cap is double-counted income.

## 5. Steps (UI only)

1. Home screen → **Workshop** → **Utility** tab → tap the lock on **`Interest/Wave`** (5 000 coins, it appears right
   after `Free Upgrades`), then buy levels up to **30** (10-tap repeats).
2. Home screen → **Lab** → the **Utility** research list → tap **`Max Interest`** → **Buy** four levels (41 m, 1 h 9 m,
   2 h 8 m, 4 h 33 m ⇒ 8 150 gems total). Put **`Interest`** levels 1–10 in the *other* slot (7 h 8 m total).
3. Start a run (**Play** / `Autoplayer`): watch the **`$` icon immediately left of the Cash counter**.
4. Buy your opening upgrades until the `$` turns **bright green**, then stop buying and let waves run.
5. When you want the next upgrade, buy it (the icon goes grey), wait the §3 recovery rows (2–4 waves at level 30–50 of
   `Interest/Wave`), then stop again. One purchase per 10+ waves is the target rhythm.
6. After each tier push, re-read the two lab lines: `Max Interest` shows the cap in its `Value` column, `Interest`
   shows the multiplier — those two numbers plus §3's formula are all you need, no spreadsheet required.

## 6. Reproduction checklist

- [ ] `Interest/Wave` is the Utility-tab line that costs **5 000 coins** to unlock and **125** coins at level 1, and
      its level-10 cumulative price is **5.85 K**.
- [ ] The `Max Interest` lab line has exactly **15 levels** and its level 1 costs **250 gems** for a **$100** cap.
- [ ] Both lab lines appear only after the **Tier 2 Wave 80** milestone is claimed (they are absent before it).
- [ ] With cash below the threshold the `$` is grey and the Cash counter rises geometrically; above it the counter
      rises by a **constant** per wave (that constant = your cap, e.g. 100 per wave after level 1).
- [ ] Buying an upgrade drops the icon to grey and it returns to green in 2–4 waves at `Interest/Wave` level ≥ 30.
- [ ] The cap value in the `Max Interest` row matches §2 (level 3 should read **$300**).
- [ ] An enemy killed at **W100** pays **$11** and at W150 **$16** (the `$` law `1 + ⌊w/10⌋`).
- [ ] The `Cash Bonus` enhancement’s panel reads **×1.01** at L1 and its L10 **Total** reads **55.54 B** coins; buying one
      level lifts the printed Cash/Wave, Interest and Max Interest values by ~1 % each.
- [ ] The **Cash card** at 7★ reads **×2.4** and the **Coins card** at 7★ reads **×1.45**.
- [ ] The Lab panel shows a **coin** icon on the `Max Interest` / `Interest` prices and a **gem** icon only on the rush
      button; `Interest` level 10 reads **12 126** coins and the ten printed prices sum to **34 007**.
- [ ] `Max Interest`'s Time column is **not** monotone (L10 = 5 d 20 h 40 m, L11 = 1 d 4 h 50 m) ⇒ per-level, so
      L1–L4 really is 8 h 33 m of cumulative slot time ([H050](../hypotheses/H050-lab-time-column-per-level-vs-cumulative.md)).
- [ ] The Generator slot's `Interest/Wave` sub-stat reads **+2 %** at Epic rarity and **+8 %** at Ancestral.

## 7. Falsification

- If the `$` icon never turns green (or never greys), the two-regime model is wrong → re-read the icon state against
  the cash value in three runs and rewrite §1.
- If the interest paid with `Interest`-lab level 10 is **not** ≈ 1.20/1.02 ≈ 1.18× the level-1 value at the same
  workshop level, the lab *replaces* rather than multiplies the 0.06 %/level increment → fix §3's table
  ([H025](../hypotheses/H025-interest-lab-multiplies-workshop.md)).
- If raising the `Cash Bonus` workshop level changes the interest paid at the same cash holding, the Cash Bonus is
  inside the interest base after all → fill the answer into
  [H026](../hypotheses/H026-cash-bonus-inside-interest-base.md) and re-check the §1 threshold formula.
- If the Lab panel shows a **gem** icon on `Max Interest`'s own price (not only on the rush button), the unit correction in
  §2 is wrong → restore the gem units and re-derive §3.4's comparison.
- If the Max Interest Time column **is** monotone on the panel (e.g. L11 shows ≈ 6 d), then it is cumulative → the ladder's
  slot bill is the ~5.9 d / 78 d reading instead, and §2's sums must be replaced by the panel's own total
  ([H050](../hypotheses/H050-lab-time-column-per-level-vs-cumulative.md)).
- If the Generator slot's `Interest/Wave` sub-stat shows a value other than 2 / 4 / 6 / 8 %, the rarity steps are
  re-versioned → re-read the four tiers and rebuild §2.1's rate table (the ordering conclusion is unaffected: the sub-stat
  still outranks the 5.94 % workshop line).
- If a `Max Interest` level's printed cap differs from §2, trust the panel (the tables are versioned) and correct the  table — the *shape* (×2, ×4, … ×300 in 15 steps, 2 304 130 coins) is what the technique relies on.
- If a W100 kill pays something other than **$11**, the enemy-value law was re-versioned (`1 + ⌊w/10⌋` to W200, then
  +1/20) → read three printed rows (10 / 100 / 210) and restate §2.2's law; nothing else in the technique depends on it.
- If buying one `Cash Bonus` **enhancement** level moves the printed Interest % value by ≠ +1 %, the "+1 % to three
  lines" note belongs to a different enhancement → re-read the enhancement's `Value` tooltip; the ×7 cap itself is
  self-checking (`1 + 0.01 × 600`).

## Sources

- Tower Hub `wiki/currency/currency-cash` (last verified **2026-11-01**) — the $1 enemy-value law with the 16-row table,
  the **Cash/Wave-before-Interest** order, the **`Cash Bonus` enhancement** (free unlock after the Workshop Enhancement
  Labs, ×1 + 0.01/lv → **×7 at L600**, +1 %/lv on Cash/Wave · Interest % · Max Interest, printed cumulatives
  55.54 B → 15.10 q), and the *Good to know* card values (**Cash ×1.2→×2.4, Coins ×1.15→×1.45**) + the four
  **×2.98-at-L99** cash/coin lab lines. `wiki/currency/currency-shards` (2026-11-01) corroborates T010’s prints
  (T2 W90 gate, shatter 5/10, Shatter-Shards +100 %, Shard-Cost −30 %, “merged returns everything”).
- Tower Hub `wiki/workshop/interest` (last verified **2026-11-01**) — third copy of all three ladders with unrounded
  per-level prices (workshop 125 / 179 / 245 / 328 / 431 / 556 / 705 / 881 / 1.08 K / 1.32 K, whose ten cumulative totals
  re-add exactly; `Interest` lab Σ10 = **34 007** coins; `Max Interest` Σ to **8 145** at L4 and **361 800** at L10), the
  level-3 cap **$300**, the four extra multipliers (**Interest perk ×1.5**, Generator sub-stat **+2/4/6/8 %**, Vault node
  **+100 %/level** at keys 10/20/40/70/110 = 250), and the interest base formula printed identically to fandom's.
- fandom `Interest` (raw wikitext) — the formula (`(Current Cash + Cash/Wave × Cash Bonus) × Interest/Wave %`,
  “Interest is calculated after Cash/Wave”), the 5 000-coin unlock after `Free Upgrades`, 99 levels at +0.06 % →
  5.94 %, “labs unlocked in Milestones at tier 2 wave 80”, “Max Interest is indicated by the $ by Cash turning bright
  green”, and the 15-level cap ladder + 99-level `Interest` lab tables.
- game-vault `Interest` — independent copy of all three tables (cross-check: identical except level 3 = **$350**), the
  green-`$` statement, and the community note (“invest a bit into its Max Interest Labs while it's cheap and fast”).
- fandom/game-vault `Interest Per Wave/Cost`, `Lab/Interest`, `Lab/Max_Interest` — per-level prices and times.
- game-vault `Workshop` → `Cash Bonus` — “Cash bonus does not increase interest nor will it increase max interest”
  (the basis of H026), and `Free Upgrades` / `Recovery Package` unlock context used by T020.
- `tools/gm_strings.txt` — panel strings for the Workshop tabs (`Workshop Utility`) and `Lab` classes; note the word
  `Interest` does **not** appear in the dumped metadata string table (the lab rows are data-driven), so the numeric
  ladders can only come from the wikis or the in-game panels.
