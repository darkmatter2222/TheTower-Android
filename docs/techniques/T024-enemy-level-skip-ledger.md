# T024 — Enemy Level Skip: the cheapest percentage points in the game, and the only deterministic one

Rev: 2 (2026-11-02) — the **per-tier bill** is added (§3.①): `ELS Reduction` is the only battle condition printed at every
tier, its required level is exactly **`5 × (tier − 13)`** (8/8 printed values, 5 → 40 for T14 → T21), so the perk is bought in
**blocks of five**; the printed 40 exceeds the lab line's **10**-level cap, which pins the number to the **Perks** screen; and
with T014 §4.2's law the same **62.40 %** panel is worth **×0.95 → ×0.60** (or **0.9645 → 0.716** with the BC labs) as the
staircase climbs, i.e. **0.63–0.74 as much skip at Tier 21 than at Tier 14**.
Rev: 1 (2026-11-02) · Currency: **Coins** (spent) → **Coins** (deeper runs = more waves paid per hour) ·
Sources: Tower Hub `wiki/workshop/enemy-level-skip` (last verified **2026-11-01**, 4 data tables),
`wiki/lab/lab-category-enemy-research`, `wiki/enemy/*` lab pages, `wiki/system/chips` / `wiki/system/relics` (the two +2 %
relics), milestone row **T11 W200** from [T019](T019-milestone-claim-engine.md) §4, and `wiki/system/tiers`
(2026-07-29) for the per-tier condition levels (§3.①).

**Value:** ★★★★ — the layer reaches **62.40 %** skip with only four sources, which turns 1 000 enemy stat level-ups into
**376** ⇒ the same tower clears about **2.66× more waves** than its own stat budget would suggest, and every wave after
that is paid at the run's coin multiplier. Per-point it is the cheapest stack in the game: the first **50** levels of a
workshop line cost **17.6 B coins per percentage point** vs **1.76 T** for one `Common Enemy Health` lab point
([T006](T006-lab-queue-packing.md) §enemy-stat ladders) — a **100×** difference.
**Confidence:** **High** — every number below is a printed row, and the three value laws re-add cell by cell
(§2, 14 + 7 + 20 checks). One open term in the printed formula (the module and Vault addends) is listed in §6.
**Status: Verified (arithmetic)** — `0.05 × (n + 1)` reproduces **14/14** printed workshop checkpoints (including the
cap **35.00 %** = `0.05 × 700`), `1 + 0.01n` reproduces **7/7** enhancement checkpoints (cap **×1.60**), the lab's
`0.10 × n` reproduces its 20 printed values, and the enhancement's printed running total re-adds
(L1–L5 = **5 243.48 B** = the printed **5.24 T**).
**Ease:** 1 tap per level; the whole cheap band (workshop L1–100 on both lines + both labs) is **≈ 600 taps**.
**Prerequisite:** the workshop lines need **1 B** coins to unlock (they sit after `Recovery Packages` in **Utility**); the
labs need the **Tier 11 Wave 200** milestone; the enhancement needs **500 T** coins spent on Utility enhancements.

---

## 1. Why it works (the printed law)

After each completed wave the enemies gain a level of attack and of health. `Enemy Level Skip` is the chance that the
level-up does **not** happen for one of the two stats, and the page prints the whole pipeline:

```
skip = (workshop + lab + module + vault + relic) × enhancement   → clamped to 0…100 %
     → − “Skip Reduction − Subtract”
     → × “Skip Reduction − Multiply”
     → − Skip Decay total                                        → never below 0
```

Three consequences that make it worth more than its percentage looks:

1. **It is deterministic since V26.** The page: “both Enemy Attack Level Skip and Enemy Health Level Skip are fully
   deterministic rather than random. A 50 % chance … skips every other wave exactly, with no variance” ⇒ the number of
   level-ups by wave *w* is exactly `w × (1 − skip)`, no luck involved.
2. **`Wave Skip` rolls it per skipped wave** (“if Wave Skip triggers x3, the skip chance is rolled for each of those
   waves”), so the card and this stat multiply instead of competing.
3. **The tournament's own skip numbers are the same pipeline**: the last three lines of the law are exactly
   [T014](T014-tournament-tickets.md) §4.2's `skip = 1 − 0.01·value·(1 − R)` and the `1 pp × (1 − R)` decay step, so one
   panel value drives both the farm runs and the bracket.

## 2. The three layers, with their laws (printed rows → closed forms)

**Layer 1 — Workshop (both lines, `Utility` tab).** Unlock **1 B** coins, **699** levels per line, and the value column is

```
skip(n) = 0.05 × (n + 1)   [%]      → L1 0.10 · L10 0.55 · L20 1.05 · L50 2.55 · L100 5.05
                                       L200 10.05 · L300 15.05 · L400 20.05 · L650 32.55
                                       L690 34.55 · L699 35.00  ( = 0.05 × 700 ✓ the printed cap)
```

All **14** printed checkpoints re-add ✓ (`n = 1, 10, 20, 30, 40, 50, 100, 200, 300, 410, 500, 650, 690, 699`).
The price ladder is *block-set* (per-level price + running total, exactly as printed):

| Level | Per-level price | Running total | Δ cost ÷ Δ points |
|---|---|---|---|
| 1 | 300.00 M | 300.00 M | 17.6 B / pp (to L50) |
| 10 | 444.01 M | 3.72 B | |
| 50 | 2.17 B | **44.76 B** | 93.8 B / pp (L50→100) |
| 100 | 8.23 B | **279.24 B** | 996 B / pp (L100→200) |
| 200 | 108.26 B | **5.26 T** | 14.5 T / pp (L200→300) |
| 300 | 2.07 T | **77.88 T** | 274 T / pp (L300→400) |
| 400 | 27.77 T | **1.45 q** | 8.16 q / pp (L400→699) |
| 699 | 4.56 Q | **123.43 Q** | — |

The last 299 levels (L400→699) cost **121.98 q** for **14.95** points ⇒ the whole line is **≈ 85×** its own first 400
levels in coins for **1.75×** the points. *Buy the lines to L100–L200 and move on.*

**Layer 2 — the two labs (`Enemy Attack Level Skip`, `Enemy Health Level Skip`).** Gate **Tier 11 Wave 200**
([T019](T019-milestone-claim-engine.md) §4 prints the same milestone row), **20** levels each, value `0.10 × n` ⇒
**+2.00** at L20 ✓ (twenty rows, 0.10 … 2.00 to the printed two decimals), and “the lab levels **add directly** to the
respective workshop upgrade” ⇒ additive, so it is added *before* the × enhancement. Per line: **Σ 0.745 T coins** and
**Σ 11 258 700 s = 130.31 d** of slot (L1 = 900 M / 16 h 40 m, L20 = 152.29 B / 17 d 7 h 20 m) ⇒
**373 B coins per point** — the second-cheapest point in the layer.

**Layer 3 — the `Enemy Level Skips` workshop enhancement.** Gate **500 T** coins spent on Utility enhancements; the
printed value column is `1.01x … 1.60x` ⇒ the law is **`1 + 0.01 × n`** (7 printed checkpoints ✓, cap L60 = **×1.60** ✓
= `1 + 0.01 × 60`), the same “`1 + step × max`” form as the other enhancements. Σ = **1.51 s** coins
(the page's own Total row; the running total re-adds: L1–L5 = 5.00 + 15.50 + 202.98 + 1.13 T + 3.89 T = **5 243.48 B**
= the printed **5.24 T** ✓).

**Layer 4 — relics.** `Light Speedometer` (Epic, event *Faster Than Light II*, Standard) = **+2 %** Attack skip;
`Alien Egg` (Epic, *Invaders II*, Standard) = **+2 %** Health skip (T018 §3 ranks both in the “sub-1-point per relic”
band, so they are *free* points here: +4 pp of the 39 for two relic drops).

## 3. The whole budget, and the buying order it implies

Per stat (`Attack` shown; `Health` is identical):

| Source | Points | Notes |
|---|---|---|
| Workshop L699 | **35.00** | `0.05 × 700` |
| Lab L20 | **2.00** | `0.10 × 20` |
| Relic | **2.00** | one Epic relic |
| **Sum before enhancement** | **39.00** | (module + Vault addends not counted — §6) |
| **× 1.60** | **62.40 %** | the enhancement is applied to the sum, so it is worth `39 × 0.6 = ` **23.4 pp** |
| Effective level-ups / wave | **0.376** | `1 − 0.6240` |
| W1000 in enemy-stat terms | **wave 376** | `1 000 × 0.376` ⇒ **×2.66** wave-depth gain |

Sorting every block by **coins per percentage point** gives one clean order, and it is *not* the order the tabs appear in:

```
1. workshop both lines to L50      17.6 B / pp
2. workshop both lines to L100     93.8 B / pp
3. both labs (20 lv each)         373 B / pp
4. workshop to L200              996 B / pp
5. workshop to L300              14.5 T / pp
6. workshop to L400             274 T / pp
7. workshop to L699 (tail)      8.16 q / pp
8. the enhancement (×1.6)      64.5 q / pp   ← last, despite being “the multiplier”
```

The multiplier being last is the non-obvious part: the enhancement multiplies a sum, so its 23.4 points cost 1.51 s
coins, i.e. **7.9× more per point** than the workshop's own tail — but it is a *single* purchase for both stats and it
is the only line whose effect is instant (one tap at L60 = +23.4 pp at once), which is why it is worth keeping on the
list after the workshop tail.

## 3.① The per-tier bill for this line (`ELS Reduction`, `wiki/system/tiers`, 2026-07-29)

The tier table prints one **required level** per battle condition, and `ELS Reduction` is the only condition present at
**every** tier that has conditions at all. Its printed values are one exact line:

| Tier | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 |
|---|---|---|---|---|---|---|---|---|
| `ELS Reduction` required level (printed) | **5** | 10 | 15 | 20 | 25 | 30 | 35 | **40** |
| `5 × (tier − 13)` | 5 ✓ | 10 ✓ | 15 ✓ | 20 ✓ | 25 ✓ | 30 ✓ | 35 ✓ | 40 ✓ |

**Eight for eight.** Four consequences for the buying order:

1. **Buy in blocks of five.** The requirement moves **+5 per tier** and nothing in between, so levels 6–9 of a tier's block
   are the price of the *next* tier — the line is only ever needed at `5, 10, 15, …`, which is the cleanest
   “stop buying” signal in the perk engine. Total distance **T14 → T21 = 40 levels**.
2. **The number is a Perks-screen level, not a lab level** — which the printed ceilings prove: the `Enemy Level Skip`
   **lab** line (Group 4) caps at **10** levels and the **workshop** lines at **699** (both are levels of a *different*
   object, §2), so a printed requirement of **40** can only be the perk line's level. If the Perks screen at Tier 14 shows a
   required level of **5** on `ELS Reduction`, that reading is confirmed.
3. **The reduction lands after the enhancement.** §1's pipeline applies `− Subtract` then `× Multiply` **after** the
   `(workshop + lab + module + vault + relic) × enhancement` product, so a fully built panel (**62.40 %**, §3) is still scaled
   down inside the tier. Using T014 §4.2's own law `skip_mult = 1 − 0.01 · value · (1 − R_total)` with this tier value
   substituted for `value`:

   | `R_total` | Tier 14 (value 5) | Tier 21 (value 40) | T21 ÷ T14 |
   |---|---|---|---|
   | 0 % | ×0.9500 ⇒ **59.28 %** | ×0.6000 ⇒ **37.44 %** | **0.632** |
   | 20 % (generic lab maxed) | ×0.9600 ⇒ 59.90 % | ×0.6800 ⇒ **42.43 %** | 0.708 |
   | 29 % (+ the dedicated line, T014 §4.2's own figure) | ×0.9645 ⇒ 60.18 % | ×0.7160 ⇒ **44.68 %** | 0.742 |

   ⇒ **the same panel is worth ≈ 0.63–0.74 as much skip at Tier 21 as at Tier 14**, and the BC-reduction labs recover only
   about a tenth of that gap. The *panel* number does not move between tiers; only its multiplier does — which is why §6's
   before/after read is the interesting one.
4. **It is the one line that never stops.** Of Tier 14's six conditions (`Orb` 50, `Death Ray` 50, `Thorns` 20,
   `Plasma Cannon` 20, `More Bosses` 1, `ELS Reduction` 5 — T005 §“the Tier-14 bill”), only this one is re-printed at every
   later tier, and it is the only one whose requirement passes **35** by Tier 21 while the two 50-start lines stall at their
   **95** cap. Budget the perk points accordingly: this line is a straight staircase, the others are step arrivals.

## 4. Steps (UI)

1. **Workshop → `Utility` tab**, spend **1 B** coins to unlock the `Enemy Level Skip` pair (it comes after
   `Recovery Packages`). Tap `Enemy Attack Level Skip`, then `+` until the panel reads **0.10 %, 0.15 %, 0.20 %** —
   the 0.05 step confirms you are on the right line.
2. Repeat for `Enemy Health Level Skip`. Both lines are **independent**, and the game's own wording is “you need both if
   you want to slow overall enemy scaling” — alternate 10 levels each rather than maxing one.
3. Claim the **Tier 11 Wave 200** milestone cell in **Milestones** (both labs appear in the Lab list right after the
   claim), then research both `Enemy Attack Level Skip` / `Enemy Health Level Skip` labs in the **Laboratory** — each is
   **20** levels, first level **900 M** coins / **16 h 40 m**, so slot them as a pair with a cheap third line.
4. In the **Workshop Enhancements** screen, after **500 T** coins spent on Utility enhancements, unlock
   `Enemy Level Skips` and take it to **level 60** (×1.60). Leave it until the workshop tail is reached (§3).
5. Farm the two Epic relics when their events are live (`Light Speedometer`, `Alien Egg`) and **equip** them; their +2 %
   each is inside the sum that the enhancement multiplies ([T018](T018-relic-economy.md) step order).
6. Read the resulting value on the run's **stats panel** (the skip lines appear there as percentages) and check it
   against §3's table — with both lines at L100, both labs at L20 and no relic/enhancement it should read **7.05 %** per
   stat (`5.05 + 2.00`), **9.05 %** with the relic, and **14.48 %** after the ×1.60 enhancement (`9.05 × 1.6`).

## 5. Reproduction checklist

- [ ] The workshop line's first three levels print **0.10 % / 0.15 % / 0.20 %** (+0.05 step) and its level **50** prints
      **2.55 %** with a running total of **44.76 B** coins.
- [ ] Level **100** prints **5.05 %** / total **279.24 B**; level **699** prints **35.00 %** / total **123.43 Q**.
- [ ] After the **T11 W200** milestone both labs exist in the Lab list with **20** levels, L1 **900 M / 16 h 40 m**,
      L20 **152.29 B / 17 d 7 h 20 m**, and the value column reaching **2.00**.
- [ ] The `Enemy Level Skips` enhancement prints **1.01x** at level 1, **1.10x** at level 10 and **1.60x** at level 60,
      and its total bill is **1.51 s** coins.
- [ ] With both lines at **L100**, both labs at **L20** and no enhancement, the panel reads **7.05 %** per stat
      (5.05 + 2.00); after the enhancement it reads **11.28 %** (`7.05 × 1.6`).
- [ ] Fully maxed (§3) the panel reads **62.40 %** per stat; inside a Legend bracket whose skip condition sits at value 55
      with the BC labs maxed the effective value is `62.40 × 0.7492 = ` **46.75 %** before the decay steps
      ([T014](T014-tournament-tickets.md) §4.2 uses the same two legs of the law).
- [ ] Wave-by-wave check of determinism: with the panel at **50.00 %**, enemy health stops changing on every second wave
      (read the enemy HP line in the run's stats, or the `Enemy Stats` calculator's values for two adjacent waves).

- [ ] **The tier staircase (§3.①):** the **Perks** screen requires `ELS Reduction` level **5** at Tier 14 and **25** at
      Tier 18 (`5 × (tier − 13)` ✓), with **no** change to that requirement inside a tier.
- [ ] **Panel vs tier:** with the workshop lines at **L100** and both labs at **L20**, the run's stats panel prints the same
      **7.05 %** per stat in Tier 14 and in Tier 21 (the panel value is tier-independent) — only the wave-to-wave scaling of
      enemy health/damage differs.

## 6. Still open (one term of the printed law)

The law's `module` and `vault` addends are printed as terms but their values are not on this page. If a module substat or
a Vault node carries “Enemy Level Skip”, the §3 totals rise and the cap (100 %) can be approached — the one read that
settles it is the run's stats panel with the module set equipped, before/after removing the module.

**A second open term (§3.①):** whether the printed tier number is the **perk level** or that line's **percentage value**. The
table above treats it as the level (that is what the Perks screen prints beside each condition). One read separates them: at
Tier 15 note the required level shown for `ELS Reduction`, then read the line’s **value** — if they are **10** and **10 %**
the two coincide (as here), and if the value line shows something else, substitute that value into
`skip_mult = 1 − 0.01 · value · (1 − R_total)` and keep the level list for the buying plan.

## 7. Falsification

- If a workshop level prints something other than **+0.05 %** (e.g. 0.10 → 0.20), the step was re-versioned → rebuild the
  table from `step × (n + k)` using levels 1 and 10; the rest of the doc is unaffected except the point totals.
- If level **699** prints something other than **35.00 %**, the cap moved → recompute `0.05 × (cap + 1)` and re-sort §3's
  buying order (only the last block's numbers change).
- If the enhancement caps below **×1.60**, H037's “+0.01/level” reading for this line is wrong → read levels 1 and the cap
  and set `step = (cap − 1)/60`; the 62.40 % figure becomes `39 × cap`.
- If the skip *is* random in your client (a 50 % panel giving 47/53-style variance instead of exact alternation), the V26
  determinism note predates your version → keep the arithmetic but treat the wave-depth gain as an expectation, not a
  guarantee, and the “2.66× depth” becomes “≈ 2.66× on average”.
- If the panel's total is **not** the sum of the sources × 1.6 (e.g. the enhancement applies only to the workshop part),
  the clamp/additivity model in §1 is wrong → re-read with exactly one source at a time, in the order workshop → lab →
  relic → enhancement, and record the four deltas; that is the sequence that pins where the multiplier applies.
- If the **Perks** screen's required level for `ELS Reduction` is not `5 × (tier − 13)` at two tiers, the staircase was
  re-versioned → take the block size from those two reads (only the buy-again cadence changes; §3's totals are untouched).
  If the panel instead prints a *percentage* beside the condition, the two tables are misaligned → re-read the condition list
  per tier and rebuild §3.① from that list.
- If the run's stats panel prints **different** skip percentages inside Tier 14 and inside Tier 21 with identical
  investments, the tier value is folded into the panel number rather than applied afterwards → use the panel numbers directly
  and drop the `skip_mult` column of §3.①'s table.

## Sources

- Tower Hub `wiki/workshop/enemy-level-skip` (last verified **2026-11-01**, 4 data tables) — the order-of-calculation
  law, the 1 B unlock, 699 levels with the 35.00 % cap, the printed per-level/total price rows, the enhancement's
  `1.01x … 1.60x` column with **1.51 s** total and its **500 T** Utility gate, the “20 levels / adds directly” lab
  wording, the two relic rows, and the V26 determinism + per-skipped-wave roll notes.
- Tower Hub `wiki/lab/lab-category-enemy-research` (2026-11-02) — the two `* Level Skip` lines at **20** levels each
  (the `0.10 × n` column above is from the page's own lab table).
- Tower Hub `wiki/system/relics` + `wiki/system/chips` — `Light Speedometer` (+2 % Attack) and `Alien Egg` (+2 % Health).
