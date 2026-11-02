# T001 — Idle the Cash bar at the Interest cap

Rev: 2 (2026-11-01) — full ladder data from both wikis, the cap value is now known ($50 base + a 15-level lab
ladder to $15 000), the two-state `$` icon rule replaced by a computable threshold, and the spend order quantified.
Currency: **Cash** (in-run) → **Coins** (end of run) · Status: **Unverified** (printed wiki tables, no device capture)

| | |
|---|---|
| **Value** | ★★★★ — interest is a **flat cash payment every wave**, so its contribution to a run is `cap × waves`: the |
| | 15-level cap ladder turns **$50/wave → $15 000/wave (×300) for 2 304 140 gems**, and the **first 4 levels alone are |
| | ×10 for 8 150 gems in 8 h 31 m of lab time** — the cheapest multiplier available below Tier 5 (whole ladder: |
| | ≈101 d 13 h of one lab slot; the `Interest` lab's 99 levels are 3 406 d, so never try to finish it). |
| **Confidence** | **High** for the numbers: game-vault and fandom print the *same* three tables independently (14 of 15 |
| | cap cells identical, one differs by $50 — noted in §2). **Medium** for how the lab multiplies the workshop line (H025). |
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
| next cost (gems) | 50 | 1 130 | 12 130 | 120 320 | 444 910 | 2 260 000 | 19 360 000 |
| cumulative | 50 | 2 026 | **34 016** | 622 886 | 3 380 966 | 28 158 836 | **≈ 472 468 836** |
| time (this level) | 0 h | 1 h 16 m | 7 h 8 m | 1 d 19 h | 5 d 7 h | 20 d 9 h | **122 d 9 h** |
| **cum. lab time** | 0 h | 3 h | **1 d 0 h** | 11 d | 47 d | 291 d | **3 406 d** |

**C. Lab → `Max Interest`** (Utility research, **T2 W80**, 15 levels; cap **starts at $50**):

| level | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
|---|---|---|---|---|---|---|---|---|
| cap | $100 | $200 | $300 | $500 | $700 | $1 000 | $1 500 | $2 000 |
| gems (cum) | 250 (250) | 910 (1 160) | 2 130 (3 290) | 4 860 (**8 150**) | 10 330 (18 480) | 20 020 (38 500) | 35 600 (74 100) | 58 900 (133 000) |
| ×base | 2× | 4× | 6× | 10× | 14× | 20× | 30× | 40× |
| cum. lab time | 41 m | 1 h 50 m | 4 h | **8 h 31 m** | 18 h 13 m | 1 d 13 h | 3 d | 5 d 11 h |

| level | 9 | 10 | 11 | 12 | 13 | 14 | 15 |
|---|---|---|---|---|---|---|---|
| cap | $2 500 | $3 500 | $5 000 | $7 500 | $10 000 | $12 500 | **$15 000** |
| gems (cum) | 91 940 (224 940) | 136 870 (361 810) | 195 990 (557 800) | 271 720 (829 520) | 366 610 (1 196 130) | 483 330 (1 679 460) | 624 680 (**2 304 140**) |
| ×base | 50× | 70× | 100× | 150× | 200× | 250× | **300×** |
| cum. lab time | 9 d 8 h | 15 d 5 h | 23 d 17 h | 35 d 14 h | 51 d 19 h | 73 d 9 h | **101 d 13 h** |

Marginal efficiency (**$ of cap per 1 000 gems**) by level: **200 · 110 · 47 · 41 · 19 · 15 · 14 · 8.5 · 5.4 · 7.3 ·
7.7 · 9.2 · 6.8 · 5.2 · 4.0**. Read it as: levels 1–4 are in a different class from the rest, and among the deep
levels **level 12 ($7 500 for 271 720) is the most efficient**.
Wiki disagreement to settle on device: level 3 reads **$300** (fandom) / **$350** (game-vault); level 14's time reads
21 d 13 h 39 m / 13 h 59 m. Both immaterial (≤ 1 % of the ladder).

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
   `596 × 2.49 ≈ 1 484` cash/wave ⇒ ≈1.48 M cash. Interest at cap $500 pays **500 K** (8 150 gems), at $3 500 pays
   **3.5 M** (361 810 gems). So the cap ladder is comparable to, then larger than, the entire maxed cash block of the
   Workshop — for a fraction of the coins, and it is the only cash multiplier that does not compete with the coin budget.

## 4. The spend order (the technique proper)

1. **Workshop → Utility → `Interest/Wave`** to **level 30** (136.56 K coins cumulative). This is the cheapest part of
   the whole engine and it is what makes the `$` go green early. Do it before any deep coin line from
   [T020](T020-workshop-coin-order.md) §3.
2. **Lab → Utility → `Max Interest` levels 1–4** = 8 150 gems for **$50 → $500 (×10)**. This is the single best
   gem-for-cash purchase below Tier 5; it sits inside the gem budget of [T009](T009-gem-spend-order.md).
3. Read the `$` icon in a run and use it as the switch:
   * **grey** → the rate is limiting: next gems go to **`Interest`** (level 1 = 50 gems; **levels 1–10 = 34 016 gems in
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
- [ ] The cap value in the `Max Interest` row matches §2 (settle level 3 = $300 vs $350 while you are there).

## 7. Falsification

- If the `$` icon never turns green (or never greys), the two-regime model is wrong → re-read the icon state against
  the cash value in three runs and rewrite §1.
- If the interest paid with `Interest`-lab level 10 is **not** ≈ 1.20/1.02 ≈ 1.18× the level-1 value at the same
  workshop level, the lab *replaces* rather than multiplies the 0.06 %/level increment → fix §3's table
  ([H025](../hypotheses/H025-interest-lab-multiplies-workshop.md)).
- If raising the `Cash Bonus` workshop level changes the interest paid at the same cash holding, the Cash Bonus is
  inside the interest base after all → fill the answer into
  [H026](../hypotheses/H026-cash-bonus-inside-interest-base.md) and re-check the §1 threshold formula.
- If a `Max Interest` level's printed cap differs from §2, trust the panel (the tables are versioned) and correct the
  table — the *shape* (×2, ×4, … ×300 in 15 steps, 2 304 140 gems) is what the technique relies on.

## Sources

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
