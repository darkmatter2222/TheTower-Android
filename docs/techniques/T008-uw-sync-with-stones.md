# T008 — Stone economy: knee-first UW buying + cooldown sync

Rev: 12 (2026-11-03) - **§3.②, stones as the third resource of the day-scale model**: `cost = max(coins/700 T, clock/5,
stones/income)` on the nine §3.① blocks + the nine §1.④ trees, with `income` = T014 §3.3 ÷ 7 (**13.929 … 2 893.929**
st/day) and the value convention “a stone buy grants the **level-0** value ⇒ `ln(v(n)/v(0))`”. The 27 basic lines close
at `Σ ln` **67.468 4** and the UW+ trees at **25.214 6** (fitted caps reproduce every printed cell). Per-stage
densities **0.041 445 / 0.022 090 / 0.012 283 / 0.003 272** — the first three stages are **20.1 %** of the bill for
**62.6 %** of the `ln`; the knee package is **328.0 st/ln** against **611.8** for uniform L5 depth (**1.86×**), and its
`×damage` quintet alone reaches **0.102 515**/day. Merged schedule: the head is now **six** items and invariant in both
pp readings, `E D F quintet knee-pkg sheet` then `L`; from the **Gold** band up the quintet outranks `E`.
`tools/stone-day-ledger.ps1`.
Rev: 11 (2026-11-03) - **§4.①, the orbless acceptance test** (`wiki/guide/orbless-guide`, 2026-11-01): the synced set now
has printed numbers — **uptime > 50 %** with a **second BH** and **GT bonus ≥ 16×**, **BH size 44–48 m at 30 m range**,
`Spotlight` **3 beams / ≥ 40° angle / ≥ 20× bonus** (**≥ 60°** before taking SL4), kills **≥ 20×** faster inside the beam,
`Wall Regen` **10** / `Wall Thorns` **11** with **SPB 25** and **Def % 23**, **CL ≤ 596×** / **SLM ≥ 34×**, the
`Singularity Harness` → `Galaxy Compressor` crossover at **≈ 60 %** uptime, `Anticube Portal` ancestral worth
**+1 000 waves**, and the phase itself starting at **7 000+ waves**.
Rev: 10 (2026-11-02) - the **index page prices the whole UW+ layer in three printed rows** (§1.⑥): the slot ladder's own
`Total 9705` row, the 500 … 3 800 unlock ladder (Σ 14 650), and three consolidated cost rows whose 42 cells are
**cell-for-cell the A / B / C families of §1.④** (Σ 20 070 / 19 050 / 23 800). Its `18570` header sitting over a
20 070 row is the A / A′ gap printed on one page (**1 500** ✓), its rows stop at level 14 (Light Range's 15–19 live only
on its own page), and its prose "ten times" contradicts its own 14-cell rows. Its **effect table double-sources all 27
value rows** (27/27 min/max) and with **`levels = (max − min) ÷ step`** (22/22) two panel reads give any line's depth.
Rev: 9 (2026-11-02) - **all 27 workshop lines priced one by one** (§3.①): parsed column by column, **27/27** re-add to
their own printed `Total` and to §2's **244 542**. Six lines are *pure arithmetic* (`Σ = n/2 × (2c₁ + (n−1)d)`
reproduces BH Cooldown **2 040**, CL Chance = PS Cooldown **2 010** — the same ladder twice — ILM Cooldown **1 800**,
CF Duration **5 530**, CF Cooldown **1 506** from two printed cells each). The five `×damage` lines are **one ladder**
(**85 / 322 / 841** at L5/10/15, 5/5) and are the only lines that get **cheaper** with depth (**×0.24 … ×0.40**); the
other 22 degrade **×2.8 … ×580**. Budgets: first 5 levels of all lines = **11 461** = **4.69 %** of the bill, first 10
= **25 045**, first 15 = **49 194**; the knee-first package across all 27 lines is **8 865** stones and still contains
§4's **2 620** triple-sync package (910 + 910 + 800 ✓). §3.①.
Rev: 8 (2026-11-02) - the **nine UW+ `Cost` rows collapse to four sequences** (A / A' / B / C), each closed at every depth it
is used: A -> GT+ **20 070**; A' (same ten cells then a +50 tail) -> ILM+ **18 570**, and **A - A' = 1 500** cell by cell
(**50 / 200 / 450 / 800**); B -> CF+ **16 350** at 13, BH+/DW+ **19 050** at 14, Spotlight+ **37 050** at 19; C -> SM+/CL+
**12 650** at 11, PS+ **23 800** at 14. The nine re-add to **179 240** = the §1 line exactly, and CL's printed `TOTAL 12,650
+ unlock` matches family C at cap 11. Each family ends in a **constant-increment tail** (+150 / +50 / +300), so the
"x1.2-1.27 per level" rule is a middle-of-tree effect. Spotlight+'s value row is **0.01x ... 0.20x** (was noted 0.18x); PS+
steps are +70 thirteen times with one +80 at the last cell. §1.④.
Rev: 7 (2026-11-02) - the **workshop stone ledger re-verified end to end**: 9/9 pages where prose total = `Total` row =
sum of the three per-level columns, so the bill is **244 542** (was 244 302; ILM 23 042 -> **23 032**, Spotlight
53 236 -> **53 486**, both addition slips) and the UW block total becomes **448 137**. New counting law: **levels =
numeric cells - 2** (a level-0 row plus a `Total` row), which reproduces every printed count (GT 20/38/20, CL 31/4/15,
SM 35/15/16, ILM 35/3/15, Spotlight Quantity 3). Cooldown steps are **+18 after +10** (GT, BH), **+16 after +8** (DW, SM,
ILM) and **+18 after +8** (CL, PS) - not one uniform +16. §2.
Rev: 6 (2026-11-02) - the **Golden Combo income matrix** (`wiki/uw/golden-tower`, 40-80 s x GT+ 1-10, anchored at
GT+10 @ 60 s = 1.000): the page's three prose claims re-add from the cells (**212.4 / 503.3 / 231.0 %**), the grid closes as
`r(D) = exp(0.002399 D - 0.012353)` per GT+ level (27/27 printed ratios within 0.0027) and **x1.0241 -> x1.0464** per extra
second from GT+1 to GT+10, which is why cheap Duration blocks (Σ **467** stones for +10 s) precede deep UW+ levels (§1.⑤).
Rev: 5 (2026-11-02) - the **nine UW+ ledgers close** (`wiki/uw/<name>` §UW+ Cost Table): caps are **not** uniform
(**11** Smite/Cover Fire · **13** Chrono Loop · **14** GT/BH/DW/ILM/PS · **19** Light Range, resolving **H033**), every
value row re-adds from a closed form, the printed `TOTAL` (**12 650 + unlock**, Smite) matches its computed sum, the layer
bills **179 240** stones (fandom's uniform model is high by **5 500**), and the per-unit knees are **L8** for Kill Wall and
**L4** for Charged Mine (§1.④).
Rev: 4 (2026-11-02) - the stone ladders get a **second source** and a **ledger check**: `wiki/guide/which-uw-do-i-select`
prints both §1 tables verbatim, `wiki/guide/uw-tier-list` prints their **9 705** sum, and the account table re-adds as
`43 842 + 9 705 = ` **53 547** (its headline); four `UW+ status = Locked` rows with non-zero stones pin that column to
**basic-stat spend only** (**43 842 / 244 542 = 17.9 %** of the stat bill), which leaves the UW+ ledger unaccounted
(**H056**). Also new: the printed pick order with its two **3x-lab-boost** conditional swaps (§1.②), the per-UW printed
coin/health/cell multipliers, and the **374-run** coin/damage share tables (§1.③, coin shares sum to **155.9 %** by
construction).
Rev: 3 (2026-11-02) — the **sync lattice** gets its step sizes: bot medal upgrade **−3 s**, bot lab upgrade **−1 s**
(the page’s three printed steps `5 s = 1 m + 2 l`, `10 s = 3 m + 1 l`, `20 s = 6 m + 2 l` solve to exactly that, and
`120 − 20 = 100` ✓), base bot cooldown **120 s**, max **50 s** (bots except Flame, BH, DW) and **100 s** (GT); plus the
printed base cooldowns **GT 300 s / BH 200 s**, the 1:1 and 2:1 funding rule, MVN’s “training wheels” verdict and the four
printed footguns (§4, after the ladder table).
Rev: 2 (2026-11-01) — the whole stone ledger is now numeric (per-level columns read and summed; all 9 UW totals and all 9 perk-UW `stone value` entries reproduced exactly), and the sync ladder is rebuilt from those columns.
Currency: **Power Stones** (and the coin rate they buy) · Status: **Verified** — the derived model reproduces 9/9 published stone values exactly (§6) and 27/27 per-line `Total` rows (§3.①).

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
| Max **every basic UW stat** on all 9 UWs | **244 542** | the per-UW table in §2 |
| Max **all 9 UW+ abilities** — printed per-ability caps (§1.④) | **179 240** | 20 070 (GT) + 16 350 (CF) + 19 050 (BH) + 19 050 (DW) + 37 050 (Spotlight) + 12 650 (CL) + 18 570 (ILM) + 12 650 (SM) + 23 800 (PS) |
| _…as the fandom uniform model had it_ | _184 740_ | _3 × 23 800 + 2 × 18 570 + 4 × 19 050; the **5 500** gap is the three non-14-level caps (11 / 13 / 19) — recorded as a skew_ |
| **UW block total** | **≈ 448 100** | 9 705 + 14 650 + 179 240 + 244 542 = **448 137**; + card masteries 28 500, Bot+ 1 250 × 5, Synchronicity 1 500 + 3 × 1 500, assist slots 1 000 each ⇒ **≈ 493 k stones** |

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
account sits at **43 842 / 244 542 = 17.9 %** of the full stat bill. The three owned UW+ abilities (GT level 7, CF level 4,
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

### 1.④ The nine UW+ ledgers, level by level (Rev 8, `wiki/uw/<name>` §“UW+ Cost Table”)

Each UW page prints its ability's `Cost` row and a `Value` row, and **the caps are not uniform** (this resolves **H033**:
**11 / 13 / 14 / 19**, not “10 levels each”). Every `Value` row re-adds from a closed form, and the one page that prints its
own `TOTAL` (Chain Lightning) agrees with the computed sum exactly:

| UW+ ability | Levels | Σ stones | Printed value row | Law in `n` (level) | Check |
|---|---|---|---|---|---|
| **Golden Combo** (GT) | **14** | **20 070** | 0.03 % … 0.45 % | `0.03 × (n + 1)` % | 15/15 ✓ |
| **Chrono Loop** (CF) | **13** | **16 350** | 0.10 … 0.75 | `0.10 + 0.05n` | 14/14 ✓ |
| **Consume** (BH) | **14** | **19 050** | 0.05× … 0.75× | `0.05 + 0.05n` | 15/15 ✓ |
| **Kill Wall** (DW) | **14** | **19 050** | 3 … 108 | `3 + n(n + 1) / 2` (triangular) | 15/15 ✓ |
| **Light Range** (Spotlight) | **19** | **37 050** | 0.01× … **0.20×** | `0.01 + 0.01n` | 20/20 ✓ |
| **Smite** (CL) | **11** | **12 650** | 0.05 % … 0.60 % | `0.05 + 0.05n` | 12/12 ✓, page `TOTAL` = **12 650 + unlock** ✓ |
| **Charged Mine** (ILM) | **14** | **18 570** | ×0.5 … ×50.9 | `0.5 + n + 0.2n(n − 1)` | 15/15 ✓ |
| **Cover Fire** (SM) | **11** | **12 650** | 13 s … 2 s | `13 − n` | 12/12 ✓ |
| **Death Creep** (PS) | **14** | **23 800** | 120 % … 1 110 % | `120 + 70n`, with **one** `+80` at the last step (1 030 → 1 110) | 14/15, +10 skew in the final cell only |

**Four cost families, closed by depth (Rev 8).** The nine `Cost` rows are not nine independent ladders — they are **four**
step sequences (three of them reused at several caps), so any cell mis-read breaks several sums at once. With
`step(n) = cost(n) − cost(n−1)`:

| Family | Step list (levels 1 → cap) | Σ 10 | Σ 11 | Σ 13 | Σ 14 | Σ 19 |
|---|---|---|---|---|---|---|
| **A** | `60 70 80 110 130 150 200 250 300 400 550 700 850` | **7 970** | | | **20 070** → GT+ | |
| **A′** | `60 70 80 110 130 150 200 250 300 350 400 450 500` (identical to A for ten cells, then a **+50** tail) | **7 970** | | | **18 570** → ILM+ | |
| **B** | `100 110 120 130 140 150 150 200 200 250 250 250 250 300 300 300 300 300` | | | **16 350** → CF+ | **19 050** → BH+, DW+ | **37 050** → Spotlight+ |
| **C** | `75 100 125 125 200 225 300 350 400 450 500 550 600` | | **12 650** → SM+, CL+ | | **23 800** → PS+ | |

Three closure checks, all exact:

- **The nine partial sums re-add to the §1 line**: `20 070 + 16 350 + 19 050 + 19 050 + 37 050 + 12 650 + 18 570 + 12 650 +
  23 800 =` **179 240** ✓ — and because **B appears at three depths and C at two**, one of five numbers breaks if a single
  cell is wrong, which is what makes the ledger trustworthy without a printed per-page `TOTAL` (only CL prints one: **12 650**
  for family C at cap 11 ✓).
- **A − A′ = 1 500**, cell by cell **50 / 200 / 450 / 800** (levels 11 … 14): the two 14-level trees are priced *identically*
  for the first ten levels and diverge only in the tail, so the two trees' first-half budget is the same **7 970** stones.
- **Every family ends in a constant-increment tail** — A runs `+150` (`400 → 550 → 700 → 850`), A′ and C share the `+50`
  ladder `300, 350, 400, 450, 500, …`, B runs `+300` flat for its last six levels. Deep levels are therefore **arithmetic**,
  and the “×1.2–1.27 per level” rule in item 2 below is a *middle-of-tree* observation only (A's 13 ratios run **1.186 …
  1.269** and the last three are 1.268 / 1.269 / 1.258).

**Pricing a tree from two taps.** Family is identified by the **level-1 cost** (300 → A/A′/C, 400 → B), and A / A′ / C are
separated by the **level-11 cell** (**2 050** GT+, **2 000** ILM+, **3 150** PS+); the cap then fixes the Σ from the table
above. That reproduces eight of the nine trees from two printed numbers.

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

### 1.⑤ The Golden Combo income matrix (Rev 6, `wiki/uw/golden-tower`)

The page prints a **relative-income matrix**: rows are GT **duration** 40 … 80 s, columns are **GT+ level 1 … 10**, and it is
normalised so that **GT+10 at 60 s = 1.000**. Anchor cells (all printed):

| GT+ level | 1 | 4 | 7 | 10 |
|---|---|---|---|---|
| **40 s** | 0.177 | 0.227 | 0.292 | 0.376 |
| **60 s** | 0.306 | 0.454 | 0.674 | **1.000** |
| **80 s** | 0.459 | 0.787 | 1.348 | 2.310 |

**The page's three prose claims re-add from those cells** (arithmetic ✓): `0.376 / 0.177 = ` **212.4 %** (printed “roughly
213 %”), `2.310 / 0.459 = ` **503.3 %** (printed “about 504 %”), `2.310 / 1.000 = ` **231.0 %** (printed “around 231 %” ✓
exact). Two closed forms reproduce the whole grid:

```
per GT+ level:   r(D) = exp(0.002399 D - 0.012353)   -> x1.0872 at 40 s, x1.1406 at 60 s, x1.1967 at 80 s
                 (all 27 printed consecutive level ratios match within 0.0027)
per +1 s:        x1.0241 at GT+1  ->  x1.0464 at GT+10   (from the 40 s -> 80 s rows, 40 steps)
```

so the two purchases **multiply each other's value**: one extra second of GT duration is worth **×1.0241** of income at GT+1
but **×1.0464** at GT+10 (a ×1.0218 advantage *per GT+ level*), and one GT+ level is worth **×1.0872** at 40 s but
**×1.1967** at 80 s. **Ordering rule that follows:** at the *same* investment stage, finish the cheap
GT **Duration** blocks before paying for deep GT+ levels, because duration is the term that scales every other term —
the printed workshop Duration column costs **5 / 14 / 23 / 32 / 41 / 50 / 59 / 68 / 77 / 98 = Σ 467 stones** for
**+10 s** (15 s → 25 s), which is the cheapest compounding step in the whole UW block (§1.④'s UW+ levels start at 300–400
stones each and multiply by less per level at short durations).

**Recorded skew.** The bare printed formula `((1 + 0.0003 × (L + 1))^Kills) − 1` with `Kills ∝ D` would give `ln r` exactly
proportional to `D` (no intercept) and a **per-second value independent of `L`**; the matrix instead has the −0.0124
intercept and a per-second value that rises with the level, which is what the page's own “100 % uptime” note describes
(activations = run time ÷ duration, so shortening the cooldown also re-enters). Use the **printed cells**, not the formula,
whenever a number matters — the formula is only the shape.

### 1.⑥ The index page prices the whole UW+ layer in three printed rows (Rev 10)

`wiki/uw/ultimate-weapons` (4 data tables, last verified **2026-11-01**, re-pulled **2026-11-02**) carries three things
the nine per-weapon pages do not:

1. **The slot ladder with its own `Total` row**: `5 50 150 300 800 1250 1750 2400 3000 | Total 9705` — the first
   *tabular* print of the **9 705** (previously only prose on `uw-tier-list`) ✓ the nine cells re-add to it.
2. **The UW+ unlock ladder** `500 625 750 975 1250 1650 2200 2900 3800` (Σ **14 650** ✓) plus the rules: the plus layer
   opens only after all nine UWs, its abilities are bought **in any order**, each purchase raises the next price, and
   "newly unlocked abilities start at level 0" (which is why §1.④'s value rows begin above zero).
3. **Three consolidated cost rows**, each under a header that states its own total:

| printed header | its 14 cells | Σ of the cells | §1.④ family |
|---|---|---|---|
| `300 Base Scaling Total Cost: 23800` | 300 375 475 600 725 925 1150 1450 1800 2200 2650 3150 3700 4300 | **23 800** ✓ header agrees | **C** at cap 14 (Death Creep) |
| `300 Base Scaling Total Cost: 18570` | 300 360 430 510 620 750 900 1100 1350 1650 2050 2600 3300 4150 | **20 070** — header says **18 570** | **A** (its two value rows are GT+ *and* ILM+) |
| `400 Base Scaling Total Cost: 19050` | 400 500 610 730 860 1000 1150 1300 1500 1700 1950 2200 2450 2700 | **19 050** ✓ header agrees | **B** at cap 14 (Consume / Kill Wall) |

All three rows are **cell for cell the families of §1.④**: A's cells are `300` plus the running sum of
`60 70 80 110 130 150 200 250 300 400 550 700 850`, C's of `75 100 125 125 200 225 300 350 400 450 500 550 600`, B's of
`100 110 120 130 140 150 150 200 200 250 250 250 250 300 …` ⇒ **42 / 42 cells** reproduced from two independent prints.

Three things to know about this page: **the 18 570 header is not the sum of the row under it** (those 14 cells sum to
**20 070** = GT+'s bill, while 18 570 is ILM+'s — the page merges the two 300-start trees under one header, so the A /
A′ gap is printed on a single page: 20 070 − 18 570 = **1 500** ✓ exactly §1.④'s tail delta); **the rows stop at 14
cells**, so Light Range's levels 15–19 exist only on `wiki/uw/spotlight` (five more `+300` steps — 3 000 / 3 300 /
3 600 / 3 900 / 4 200 = 18 000 — carrying 19 050 → **37 050** ✓); and the prose's "each ability can be upgraded **ten
times**" contradicts its own 14-cell rows and the nine caps **11 / 13 / 14 / 19** (H033) — trust the tables.

**The effect table double-sources §3.①.** Its nine rows print each line's name plus `Min` and `Max`; parsed min→max vs
the index min→max agree **27 / 27**, and the names are the in-game panel's (`Bonus` on GT rather than "Multiplier",
`Speed Reduction` on CF, GT's max cooldown as **1m 40s** = 100 s). Because 22 of the 27 value rows are arithmetic, one
law recovers every depth from two panel reads: **`levels = (max − min) ÷ step`** — 22/22 ✓ (GT `Bonus`
(21.0 − 5.0)/0.8 = **20**, GT `Duration` (53 − 15)/1 = **38**, SM `Cooldown` (180 − 20)/10 = **16**, PS `Cooldown`
(125 − 50)/5 = **15**, CL `Chance` (27.5 − 5.0)/1.5 = **15**); only the five `×damage` rows are geometric and need
their printed cells. Two reads therefore give a line's depth, and §3.① then gives its block prices.

Printed on the same page and used elsewhere here: the **UW damage formula** (the basis of §1.③'s shares), **40 toggles
per run**, the 3-offer persistence rule (§5.2), "Chain Lightning has no cooldown and rolls on every projectile hit" ✓
consistent with its three workshop lines (`Damage / Quantity / Chance` — no Cooldown line, §3.①), the **Ultimate Crit**
card adding crit to damage-dealing UWs "but not to percentage-based damage", and **Smite's `Max hits: 100/enemy`** cap.

## 2. Per-UW max-out cost (the `Total` rows, verified by summing the per-level columns)

| UW | Total | stat 1 | stat 2 | stat 3 |
|---|---|---|---|---|
| Black Hole | **9 723** | Size 2 291 | Duration 5 392 | Cooldown 2 040 |
| Chrono Field | **9 946** | Duration 5 530 | Slow 2 910 | Cooldown 1 506 |
| Chain Lightning | **18 375** | Damage 15 710 | Quantity 655 | Chance 2 010 |
| Inner Land Mines | **23 032** | Damage % 20 807 | Quantity 425 | Cooldown 1 800 |
| Golden Tower | **27 186** | Multiplier 8 434 | Duration 14 052 | Cooldown 4 700 |
| Death Wave | **29 391** | Damage 17 591 | Quantity 2 950 | Cooldown 8 850 |
| Poison Swamp | **34 226** | Damage 28 716 | Duration 3 500 | Cooldown 2 010 |
| Smart Missiles | **39 177** | Damage 29 661 | Quantity 6 966 | Cooldown 2 550 |
| Spotlight | **53 486** | Bonus 20 071 | Angle 29 690 | Quantity 3 725 |
| | | | | **244 542** |

**Nine-way verification (Rev 7).** Re-pulled all nine pages on 2026-11-02 and parsed the `Stones` columns programmatically:
for **9 / 9** pages the page’s prose total, the table’s own `Total` row and the sum of the three per-level columns agree
exactly — `2 291 + 5 392 + 2 040 = 9 723` (BH), `5 530 + 2 910 + 1 506 = 9 946` (CF), `15 710 + 655 + 2 010 = 18 375` (CL),
`20 807 + 425 + 1 800 = 23 032` (ILM), `8 434 + 14 052 + 4 700 = 27 186` (GT), `17 591 + 2 950 + 8 850 = 29 391` (DW),
`28 716 + 3 500 + 2 010 = 34 226` (PS), `29 661 + 6 966 + 2 550 = 39 177` (SM), `20 071 + 29 690 + 3 725 = 53 486`
(Spotlight). Σ = **244 542**. Two rows were re-cut from that pass: ILM **23 042 → 23 032** (Damage % 20 817 → 20 807) and
Spotlight **53 236 → 53 486** (the three columns are unchanged, their sum is 53 486) — the earlier figures were addition
slips, and the UW block total moves 447 897 → **448 137** (+240).

**Counting and shape laws from the same pass.** Each table has a **level-0** row (cost 0) and a trailing `Total` row, so
**levels = numeric cells − 2**, and that reproduces every printed level count: GT **20 / 38 / 20** ✓, Chain Lightning
**31 / 4 / 15** ✓ (`Quantity has 4 levels and Chance has 15 levels`), Smart Missiles **35 / 15 / 16** ✓, Inner Land Mines
**35 / 3 / 15** ✓, Spotlight’s `Quantity` **3** ✓. The `Stones` columns are **per level**, not cumulative (the column sum
equals the page total, 9/9). Cooldown columns: GT and BH run `0, 10, 28, 46, …` (**+18** after the first +10), DW / SM / ILM
run `0, 8, 24, 40, …` (**+16** after +8), CL and PS run `0, 8, 26, …` (**+18** after +8) — i.e. the arithmetic step is the
same within a family but **not** across all nine pages, so read the printed second cell rather than assuming +16. Beyond the
first ten levels the columns stop being arithmetic (SM’s Damage column prints `+6` for ten levels but totals 29 661 over 35),
so deeper sums must come from the `Total` row.

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

### 3.① All 27 workshop lines, block by block (Rev 9)

The nine basic-stat tables were re-pulled and parsed column by column with `tools/uw-track-knees.ps1` (it reads every
`(value, cost)` pair to its last numeric cell and re-adds it against the page's own `Total` row). **27 / 27 columns
agree** with their printed `Total`, and the 27 line totals re-add to §2's **244 542**, so the ledger is now closed at
*line* level, not just page level. `st/unit` = marginal cost ÷ marginal value printed by the same row. The `value row`
column is double-sourced by the index page's `Min`/`Max` table (§1.⑥, **27/27** agree), and for the 22 arithmetic rows
`levels = (max − min) ÷ step` re-adds the printed depth 22/22 ✓.

| UW | line | levels | value row | line Σ | Σ L1–5 | Σ L1–10 | Σ L1–15 | st/unit L1 | st/unit at cap | × |
|---|---|---|---|---|---|---|---|---|---|---|
| Black Hole | Size | 20 | 30 → 70 m (+2) | 2 291 | 96 | 421 | 1 096 | 2.5 | 147.5 | ×59 |
| Black Hole | Duration | 23 | 15 → 38 s (+1) | 5 392 | 115 | 455 | 1 020 | 5 | 1 103 | ×221 |
| Black Hole | Cooldown | 15 | 200 → 50 s (−10) | 2 040 | 230 | 910 | 2 040 | 1 | 26.2 | ×26 |
| Chain Lightning | Damage | 31 | 2× → 7 961× | 15 710 | 85 | 322 | **841** | 5 | 1.98 | **×0.40** |
| Chain Lightning | Quantity | 4 | 1# → 5# (+1) | 655 | 655 | 655 | 655 | 30 | 400 | ×13 |
| Chain Lightning | Chance | 15 | 5.0 → 27.5 % (+1.5) | 2 010 | 220 | 890 | 2 010 | 5.33 | 173.3 | ×33 |
| Chrono Field | Duration | 35 | 5 → 40 s (+1) | 5 530 | 115 | 455 | 1 020 | 5 | 311 | ×62 |
| Chrono Field | Slow | 11 | 20 → 75 % (+5) | 2 910 | 260 | 2 010 | 2 910 | 3 | 180 | ×60 |
| Chrono Field | Cooldown | 12 | 180 → 60 s (−10) | 1 506 | 260 | 1 045 | 1 506 | 1 | 24.1 | ×24 |
| Death Wave | Damage | 30 | 2× → 9 119× | 17 591 | 85 | 322 | **841** | 5 | 1.67 | **×0.33** |
| Death Wave | Effect Wave Quantity | 4 | 1 → 5 (+1) | 2 950 | 2 950 | 2 950 | 2 950 | 200 | 1 400 | ×7 |
| Death Wave | Cooldown | 25 | 300 → 50 s (−10) | 8 850 | 200 | 800 | 1 800 | 0.8 | 149.2 | ×187 |
| Golden Tower | Multiplier | 20 | 5.0× → 21.0× (+0.8) | 8 434 | 115 | 534 | 1 934 | 6.25 | 2 500 | ×400 |
| Golden Tower | Duration | 38 | 15 → 53 s (+1) | 14 052 | 115 | 456 | **1 076** | 5 | 1 748 | ×350 |
| Golden Tower | Cooldown | 20 | 300 → 100 s (−10) | 4 700 | 230 | 910 | 2 040 | 1 | 87.2 | ×87 |
| Inner Land Mines | Damage % | 35 | 10× → 9 219× | 20 807 | 85 | 322 | **841** | 5 | 1.21 | **×0.24** |
| Inner Land Mines | Quantity | 3 | 3# → 6# (+1) | 425 | 425 | 425 | 425 | 50 | 250 | ×5 |
| Inner Land Mines | Cooldown | 15 | 200 → 50 s (−10) | 1 800 | 200 | 800 | 1 800 | 0.8 | 23.2 | ×29 |
| Poison Swamp | Damage | 35 | 10× → 9 219× | 28 716 | 85 | 322 | **841** | 5 | 1.85 | **×0.37** |
| Poison Swamp | Duration | 14 | 30 → 100 s (+5) | 3 500 | 220 | 1 280 | 3 500 | 2 | 142 | ×71 |
| Poison Swamp | Cooldown | 15 | 125 → 50 s (−5) | 2 010 | 220 | 890 | 2 010 | 1.6 | 52 | ×33 |
| Smart Missiles | Damage | 35 | 10× → 9 219× | 29 661 | 85 | 322 | **841** | 5 | 1.72 | **×0.34** |
| Smart Missiles | Quantity | 15 | 5# → 20# (+1) | 6 966 | 241 | 1 966 | 6 966 | 4 | 1 500 | ×375 |
| Smart Missiles | Cooldown | 16 | 180 → 20 s (−10) | 2 550 | 200 | 800 | 1 800 | 0.8 | 75 | ×94 |
| Spotlight | Bonus | 30 | 8× → 50× (+1.4) | 20 071 | 109 | 513 | 1 476 | 3.57 | 2 071 | ×580 |
| Spotlight | Angle | 60 | 30° → 90° (+1) | 29 690 | 135 | 545 | 1 230 | 5 | 1 584 | ×317 |
| Spotlight | Quantity | 3 | 1 → 4 (+1) | 3 725 | 3 725 | 3 725 | 3 725 | 375 | 2 500 | ×6.7 |
| | | | | **244 542** | **11 461** | **25 045** | **49 194** | | | |

Four laws come out of the parsed columns:

1. **Six lines are one pure arithmetic progression** — `cost(n) = c₁ + (n − 1)·d`, `Σ = n/2 · (2c₁ + (n − 1)d)` — with
   no tail at all: Black Hole Cooldown (`10, 18·…` ⇒ c₁ 10, d **18**, n 15 ⇒ 7.5 × (20 + 252) = **2 040** ✓), Chain
   Lightning Chance and Poison Swamp Cooldown (both c₁ **8**, d **18**, n 15 ⇒ 7.5 × (16 + 252) = **2 010** ✓ — the
   *same* ladder twice), Inner Land Mines Cooldown (c₁ 8, d **16**, n 15 ⇒ 7.5 × (16 + 224) = **1 800** ✓), Chrono
   Field Duration (c₁ 5, d **9**, n 35 ⇒ 17.5 × (10 + 306) = **5 530** ✓) and Chrono Field Cooldown (c₁ 10, d **21**,
   n 12 ⇒ 6 × (20 + 231) = **1 506** ✓). Six lines, two printed cells each, and the whole line is priced.
2. **The five `×damage` lines are one ladder** — Chain Lightning, Death Wave, Inner Land Mines, Poison Swamp and Smart
   Missiles agree cell for cell for at least their first **17** levels (`5 11 17 23 29 35 41 47 53 61 71 84 100 120
   144 174 210`, i.e. **+6 arithmetic for nine levels**, Σ 261), so each of them costs exactly **85 / 322 / 841**
   stones at level **5 / 10 / 15** (5/5 ✓). Their *value* rows are shared too — ILM, PS and SM print an identical
   36-cell row `10.00× … 9 219.00×` — which is why these are the only lines whose price **improves** with depth
   (×0.24 … ×0.40): the value row is itself geometric (ratio ≈ 1.19, matching the cost row's ≈ 1.2), so deep levels
   stay ≈ 2 stones per ×1.
3. **The other 22 lines all degrade** (arithmetic head, geometric tail): ×2.8 (ILM Quantity) up to **×580** (Spotlight
   Bonus), with **GT Multiplier ×400, SM Quantity ×375, GT Duration ×350, Spotlight Angle ×317** next. The head is
   almost nothing: GT Multiplier's arithmetic head (`5, 13` at +8) is **18** stones of its 8 434, Spotlight Bonus's
   (`5, 13, 21` at +8) is **39** of 20 071 — i.e. the price of a line is its tail, and the first five levels are where
   the value is.
4. **Three budget rows** (Σ over the 27 lines): the first **5** levels of every line = **11 461** stones =
   **4.69 %** of the maxed bill; the first **10** = **25 045** (10.2 %); the first **15** = **49 194** (20.1 %). Per
   page the first-5 bill is BH 441 · CL 960 · CF 635 · DW 3 235 · GT 460 · ILM 710 · PS 525 · SM 526 · Spotlight 3 969.
   Five *quantity* lines (DW 2 950 + Spotlight 3 725 + CL 655 + ILM 425 + SM 241) take **7 996** of the 11 461 =
   **70 %** of that budget for 3–5 levels each, so they are the lines to leave at level 1.

**The 8 865-stone package** (the knee-first reading of the table, 3.63 % of the maxed bill, 27 lines covered): the
five ×damage lines to **L15** (5 × 841 = **4 205**) + the five `−10 s` cooldowns to **L5** (**1 060**) + CL Chance and
PS Cooldown L5 (**440**) + CF Slow / Duration / Cooldown L5 (**635**) + GT Multiplier L5 and GT Duration **L15**
(**1 191**) + BH Size and Duration L5 (**211**) + PS Duration L5 (**220**) + the five quantity lines at **L1**
(**659**) + Spotlight Bonus and Angle L5 (**244**) = **8 865**. It contains §4's Stage-3 triple-sync package, because
GT 910 + BH 910 + DW 800 = **2 620** ✓ — the parser's L10 column reproduces §3's hand-read blocks exactly (910 / 910
/ 800 / 534 / 1 076), which is the cross-check between the two readings.

### 3.② The stone layer on the day scale — stones as the third resource (new, Rev 12)

The lab ledger's model (`tools/lab-tree-day-ledger.ps1`) divides each layer by two resources. Stones are the third, and
they do not substitute for the other two: **`cost_days = max(Σ coins / 700 T , Σ clock / 5 , Σ stones / income_st)`**.
`income_st` is T014 §3.3's total-week row ÷ 7 — **13.929** st/day with no tournaments (45 + 52.5), **25.357** F2P /
**28.571** boosted at Copper 23–30, **35.929 / 75.643 / 168.214 / 928.214 / 2 893.929** at the five higher bands. The
model reproduces T014 §3.3's own answers: 452 282 st ÷ 25.357 = 17 836 d = **48.9 y** (doc **49.0**) and ÷ 28.571 =
**43.4 y** (doc **43.5**) ✓. `tools/stone-day-ledger.ps1`.

**Convention.** A stone purchase grants the printed **level-0** value (§1.④ item 3, and T012's 10 % law for the
masteries), so a block of `n` levels is worth **`ln( v(n) / v(0) )`**; `v(n) = min + step·n` for the 22 arithmetic rows
(§3.①), and for the five geometric `×damage` rows `v(n) = v0 · rⁿ` with `r = (max ÷ min)^(1/levels)` fitted from the two
printed cells. Σ `ln` at cap: **67.468 4** for the 27 basic lines, **25.214 6** for the nine UW+ trees (92.683 for the
layer). The four §3.① budget columns re-add exactly (**11 461 / 25 045 / 49 194 / 244 542**) and the nine trees to
**179 240**, with every fitted cap value equal to its printed cell (only `Death Creep` differs, 1 100 vs **1 110**, the
known last-cell `+80`).

**1. The four-stage ladder, priced by stage** (marginal, so the densities are the buy order):

| stage | stones | % of the 244 542 | stage `ln` | % of 67.468 4 | st / `ln` | days @ 25.357 | **/day** |
|---|---|---|---|---|---|---|---|
| all 27 lines → **L5** | 11 461 | 4.7 % | 18.732 3 | 27.8 % | **611.8** | 452.0 | **0.041 445** |
| L5 → **L10** | 13 584 | 5.6 % | 11.833 8 | 17.5 % | 1 147.9 | 535.7 | 0.022 090 |
| L10 → **L15** | 24 149 | 9.9 % | 11.697 6 | 17.3 % | 2 064.4 | 952.4 | 0.012 283 |
| L15 → **cap** | 195 348 | 79.9 % | 25.204 7 | 37.4 % | 7 750.4 | 7 703.9 | 0.003 272 |

The layer is front-loaded on both sides: the first three stages are **20.1 %** of the bill for **62.6 %** of its `ln`,
and the last stage is **12.7× dearer per `ln`** than the first. Knee-first (§3) is now a measured number, not a heuristic.

**2. Knee-first selection beats uniform depth, by 1.86×.** The §3.① **8 865**-stone package carries `ln` **27.028 1** =
**40.1 %** of the layer at **328.0 st/ln**; the same idea bought uniformly (every line to L5) is 11 461 st for `ln`
18.732 3 = **611.8 st/ln**. Its nine sub-blocks, ranked:

| block | stones | `ln` | st / `ln` | /day @ 25.357 |
|---|---|---|---|---|
| the five `×damage` lines to **L15** | 4 205 | 17.000 2 | **247.4** | **0.102 515** |
| the five `quantity` lines at **L1** | 659 | 2.548 5 | 258.6 | 0.098 062 |
| `Spotlight` Bonus + Angle **L5** | 244 | 0.782 8 | 311.7 | 0.081 351 |
| `Chrono Field` trio **L5** | 635 | 1.829 4 | 347.1 | 0.073 053 |
| `Poison Swamp` Duration **L5** | 220 | 0.606 1 | 363.0 | 0.069 859 |
| `Black Hole` Size + Duration **L5** | 211 | 0.575 4 | 366.7 | 0.069 149 |
| `CL Chance` + `PS Cooldown` **L5** | 440 | 1.139 4 | 386.2 | 0.065 663 |
| the five `−10 s` cooldowns **L5** | 1 060 | 1.265 4 | 837.7 | 0.030 271 |
| `GT Bonus` L5 + `GT Duration` L15 | 1 191 | 1.280 9 | 929.8 | 0.027 271 |

The nine re-add to **8 865 / 27.028 1** ✓. The five `×damage` lines alone are the densest stones in the game — **85 st**
per line for `ln` 0.98–1.40 (60–87 st/ln at L5) — and, uniquely, they barely degrade (195–288 st/ln at L15) because their
value row is geometric with the same ratio as their cost row (§3.① finding 2). The dearest cells at cap are `Spotlight
Angle` **27 025** st/`ln`, `GT Duration` 11 133, `Spotlight Bonus` 10 952, `SM Quantity` 5 025.

**3. UW+, the unlocks, and where each lands.** The nine trees' first-5 block = **24 265** st for `ln` 14.601 3
(1 661.8 st/ln, **0.015 258**/day), their tail (L5 → cap) 154 975 st for 10.613 3 (**0.001 737**). Inside the block the
densest trees are `Charged Mine` **754** st/`ln` and `Golden Combo` 1 239, the dearest `Cover Fire` 5 098. The unlock
rows: Bot+ (5 × 1 250 = **6 250** st, level-0 multipliers 1.25 / 1.25 / 3 / 1.5 / 0.95 ⇒ `ln` 2.001 7, **0.008 121**/day),
the eight currency mastery unlocks (**7 000** st, `ln` 0.325 7 in the `ln(1+pp)` form, 1.018 8 counting `Free Upgrades`
as one step ⇒ 0.001 180 … **0.003 691**), and **32 855** st of pure unlock rows (`UW` slots 9 705 + `UW+` unlocks
14 650 + four assist slots 4 000 + Synchronicity 4 500), which are `ln 0` by the ledger's convention. The whole stone
census is **491 387** st (T008 §1's ≈493 k with the 6 000-stone Synchronicity print) = **19 378.6 d = 53.1 y** at the
Copper-bottom F2P income, and the 8 865 package is **1.8 %** of it for **29.2 %** of its `ln`.

**4. The merged 27-item schedule** (18 lab rows + 9 stone rows, each priced by its own binding resource at the
Copper-bottom income). Reading R: `E 0.452374 > D 0.116339 > F 0.114946 > ×damage quintet 0.102515 > knee pkg 0.077310 >
sheet 0.050720 > L 0.033768 > Q 0.025603 > S1b 0.022090 > A 0.018143 > par 0.017957 > UW+ first-5 0.015258 > B 0.014480
> J 0.014128 > S1c 0.012283 > H 0.011422 > M 0.011315 > K 0.009941 > Bot+ 0.008121 > masteries 0.003691 > O 0.003481 >
G 0.003412 > B2 0.003387 > S1d 0.003272 > S2b 0.001737 > C 0.000020 > P 0.000006 > unlock rows 0`. Reading P keeps the
same head and moves `B`/`B2` to the tail as before (T006 Rev 42). **The head is now six items and invariant in both
readings: `E → D → F → the ×damage quintet → the knee package → the medal sheet`, then `L`.**

**5. The stone rows scale linearly with the band** (their density is `income × ln ÷ stones`), so one table gives every
league; the lab rows do not move. `×damage quintet`: **0.056 3 / 0.102 5 / 0.145 3 / 0.305 8 / 0.680 1 / 3.752 6 /
11.699 7** per day at the seven incomes above, and the knee package **0.042 5 / 0.077 3 / 0.109 5 / 0.230 6 / 0.512 9 /
2.830 0 / 8.823 2**. Two consequences: with **no tournaments** the whole stone layer drops below `L` and the medal sheet
stays the densest non-lab item, while from the **Gold band up** the `×damage` quintet outranks `E` and becomes the first
purchase of the entire ledger. Below Gold, buy the stones *between* lab research, not instead of it — the stone flow is
the slowest of the three resources (19 379 d vs 99 472 d of clock and 4 634 056 d of coins for the whole census).

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

### 4.① The orbless package — the sync target with its numbers printed (Rev 11)

`wiki/guide/orbless-guide` (2026-11-01) is the cleanest printed **acceptance test** for a synced set: every line is a
number you can read off a panel, and the build is “kills only inside the Spotlight beam while GT and BH are active” —
i.e. the 1:1 lattice of §4, expressed as a build.

| Line (exact stat name) | Printed requirement | Why it is a sync quantity |
|---|---|---|
| `Golden Tower` / `Black Hole` | **synchronised**, a **second** Black Hole, **uptime > 50 %**; permanent GT/BH “highly desirable”; **GT bonus ≥ 16×**; **`BH Coins` lab maxed** | uptime is the fraction of the LCM cycle in which all three bonuses are live |
| `Black Hole` size | fully covers tower range ⇒ **44–48 m at 30 m range**; bigger is better | the clump must sit inside both the beam and the range |
| `Spotlight` | **3 beams**, **≥ 40°** stone-invested **angle**, **≥ 20× bonus**, **`SL Coins` lab maxed**; with **SL4** go to **≥ 60°** (a 4th beam leaves gaps with no BH inside the beam) | the beam is the kill zone; angle sets its coverage |
| kills inside the beam | “at least **20×** faster” than outside, with the SL bonus | the spillage law: every kill outside the overlap is a lost multiplier |
| kill method | bullets with restricted **Bounce Shot Range** + `Astral Deliverance` (mythic+; T021 §4.1 has the rarity ladder), or **Chain Lightning** (Shock unlocked, multiplier maxed, **chance ≥ 10**, **CL damage ≤ 596×**), or **Spotlight Missiles** (SLM lab maxed, SM unlocked, **≥ 34×** damage, **Missile Amp** and **Radius** maxed) | each is confined to the beam, so the multiplier product is never diluted |
| survival | Wall build: **`Wall Regen` 10**, **`Wall Thorns` 11**, Health / Health Regen / Wall Health / Wall Fortification as needed, plus **`SPB` 25** and **`Def %` 23** and the `Disable Ranged Enemies` card (permanent-BH variant: **absolutely required**); or permanent Black Hole; or glass-cannon juggling with **`Crowd Control` maxed** | the three answers are mixable; the orbless phase itself runs at **7 000+ waves** |
| `Death Wave` | synced to **GT**, `DW Coins` lab maxed, **Quantity** is the most important stone stat, DW **damage** upgrades limited (it kills outside SL) | a third coin multiplier on the same lattice |
| support | `Singularity Harness` (mythic+) while uptime is low, `Galaxy Compressor` once uptime is **≈ 60 %** — test both for your crossover; `Anticube Portal` at **ancestral extends the phase by 1 000 waves**; `Land Mine Radius` **minimised**, LM **damage maxed**; **`Target Priority 2` = “In Spotlight”** (Closest “costs a significant chunk of CPM”) | the SH→GComp crossover is the same 50→60 % uptime axis as the first row |

Three of those numbers are the cheapest diagnostics in the whole catalog: **uptime** (50 % / 60 %), **SL angle**
(40° / 60° around SL4) and **`AD` rarity** (3.8 / 6.5 / 10.5×) each decide one purchase without any spreadsheet.

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
- [ ] **The A / A′ pair:** GT+ reads **2 050 / 2 600 / 3 300 / 4 150** at levels 11 … 14 while ILM+ reads
      **2 000 / 2 400 / 2 850 / 3 350** — levels 1–10 are identical (**Σ 7 970** each) and the whole difference is **1 500**
      stones (**50 / 200 / 450 / 800**), so **20 070 − 18 570** is the one check that needs no arithmetic beyond addition.
- [ ] **Family C at two depths:** CL+ and SM+ stop at **2 650** on level 11 (**Σ 12 650** each) and PS+ carries on
      **3 150 / 3 700 / 4 300** (**Σ 23 800**); Spotlight+ adds **+300 flat** five times (**3 000 3 300 3 600 3 900 4 200**)
      to reach **Σ 37 050** against Consume / Kill Wall’s **Σ 19 050** on the same row.
- [ ] **The knee:** buying Kill Wall **level 8** costs **1 300** and the value line moves **31 → 39** (Δ 8 ⇒ **162.5**
      stones/unit, the row's minimum; L1 is 400/unit at `3 → 4` for 400). At **Charged Mine level 4** the row moves
      **×4.7 → ×6.9** (Δ 2.2 for **510** stones = **231.8**/unit, that row's minimum).
- [ ] **The matrix (§1.⑤):** the GT page’s income table reads **0.177** (GT+1, 40 s), **1.000** (GT+10, 60 s) and
      **2.310** (GT+10, 80 s); the three printed claims are then 212.4 %, 503.3 % and 231.0 % — a 3-cell spot check of the
      whole grid.
- [ ] **Duration block:** the GT **Duration** workshop line prices its first ten levels **5 / 14 / 23 / 32 / 41 / 50 / 59 /
      68 / 77 / 98** (Σ **467**) and the value column steps **15 s → 25 s**; buy it before GT+ level 4+.
- [ ] **The index page's three UW+ rows (§1.⑥):** the `300 … 4300` row's 14 cells sum to **23 800**, the `400 … 2700`
      row's to **19 050**, and the `300 … 4150` row's to **20 070** while its header prints **18 570** (that is ILM+'s
      total — the difference is exactly **1 500** = A − A′). The slot table's own `Total` cell reads **9 705**.
- [ ] **The depth law (§1.⑥):** two reads per line give its depth — GT `Bonus` (21.0 − 5.0) ÷ 0.8 = **20** levels,
      GT `Cooldown` (300 − 100) ÷ 10 = **20**, PS `Cooldown` (125 − 50) ÷ 5 = **15**, CL `Chance` (27.5 − 5.0) ÷ 1.5 =
      **15** — and the panel shows GT's maxed cooldown as **1m 40s** (= 100 s).
- [ ] **Smite's printed cap:** the ability text carries `Max hits: 100/enemy`.
- [ ] Fully maxed: **Black Hole 50 s**, **Death Wave 50 s**, bots (except Flame) **50 s**, **Golden Tower 100 s**.
- [ ] **The 2:1 check:** BH at 150 s against GT at 300 s ⇒ BH fires **twice** per GT in the same window (count activations
      over one 300 s span: 2 and 1).
- [ ] **The orbless gate (§4.①):** the panel reads **GT bonus ≥ 16×** and **BH size 44–48 m** with the Range workshop at
      **30 m**, the `Spotlight` **angle ≥ 40°** on **3 beams**, and **uptime above 50 %**; after moving
      `Singularity Harness` → `Galaxy Compressor` at **≈ 60 %** uptime the cooldown cycle gets shorter, not longer.
- [ ] **The nine workshop totals (9 / 9):** each page’s prose total equals its table’s `Total` row equals the sum of its
      three per-level columns — BH **9 723**, CF **9 946**, CL **18 375**, ILM **23 032**, GT **27 186**, DW **29 391**,
      PS **34 226**, SM **39 177**, Spotlight **53 486** ⇒ **244 542** stones for all basic UW stats.
- [ ] **The 27-line ledger (§3.①):** each `Cost` column sums to its own page's `Total` cell. Six spot checks that need
      no adding: BH Cooldown **2 040** (`10 28 46 …`, +18 flat), CL Chance **2 010** and PS Cooldown **2 010** (`8 26
      44 …`, +18 flat, the same ladder twice), ILM Cooldown **1 800** (`8 24 40 …`, +16 flat), CF Duration **5 530**
      (`5 14 23 …`, +9 flat, 35 levels), CF Cooldown **1 506** (`10 31 52 …`, +21 flat, 12 levels).
- [ ] **The shared ×damage ladder:** the first 15 levels of the Damage line read **85 / 322 / 841** stones on Chain
      Lightning, Death Wave, Inner Land Mines, Poison Swamp *and* Smart Missiles (the same five cells
      `5 11 17 23 29 35 41 47 53 61 71 84 100 120 144 174 210`, so **841** five times).
- [ ] **The improvement test:** on those five lines the *last* level is cheaper per ×1 than the first (Chain Lightning
      **1.98** vs **5**, ILM **1.21** vs **5**), while GT's `Multiplier` runs the other way (**2 500** vs **6.25**) —
      one tap on the last level of each shows the two price shapes.
- [ ] **The budget rows:** first 5 levels of all 27 lines = **11 461**, first 10 = **25 045**, first 15 = **49 194**
      (percentages of 244 542: **4.69 / 10.2 / 20.1 %**) — re-add from the table in §3.① with a calculator.
- [ ] **The counting law:** every workshop table starts at **level 0** (cost 0) and ends with a `Total` row, so
      **levels = numeric cells − 2**; on `Smart Missiles` that gives **35 / 15 / 16**, the same numbers the page prints.
- [ ] **§3.② the two arithmetic anchors:** on `Chain Lightning` the first five cells of the `Damage` column are
      `5 11 17 23 29` and sum to **85** (the L5 bill used in the density table), and the fifth cell of the `Golden Combo`
      UW+ row is **620** with the five summing to **2 220** (family A); family B starts `400 500 610 730 860` = **3 100**
      and family C `300 375 475 600 725` = **2 475** ⇒ the nine-tree first-5 block is **24 265** stones.
- [ ] **§3.② your own income:** read the four stone sources for one week — your band's ticket pay `2·t·S`, the **45**
      box stones, the **15 × a** Event-Shop trades, plus any Milestone cells — divide by 7 and use that number in place
      of **25.357**; every stone row's density scales by your income ÷ 25.357 and their order does not move.
- [ ] **§3.② the package check:** the nine sub-blocks are 4 205 + 1 060 + 440 + 635 + 1 191 + 211 + 220 + 659 + 244 =
      **8 865** stones, exactly §3.①'s knee-first package, so the two readings of the ledger agree to the stone.

## 9. Falsification

- If a bot **medal** level removes something other than **3 s** (or a **lab** level other than **1 s**), the two printed
  steps belong to a different ladder → read the cooldown at 0→1 in each menu separately and set `m` and `l` from those two
  deltas; the lattice targets (half your GT/DW sync, 100 s then 50 s) still apply, only the tap counts change. Record it
  as H053.
- If a page’s **prose total** no longer equals the sum of its three `Total` columns, those tables are mid-update → trust the
  `Total` rows, re-derive §2, and stamp the date (the whole §2 ledger rests on that three-way agreement; the Rev-7 pass found
  and fixed two addition slips worth **240** stones there).
- If the five `×damage` lines no longer all read **841** at level 15 (§3.①), the shared ladder was re-binned per weapon
  → re-read the 17-cell prefix on each page; the six arithmetic lines are unaffected (they are closed by their own two
  cells), and only the three budget rows (11 461 / 25 045 / 49 194) move — by exactly the summed delta.
- If a `Cost` column stops summing to its page's `Total` cell, the tables are mid-update → trust the `Total` cells,
  re-run `tools/uw-track-knees.ps1`, and shift the budget rows by the delta; the four laws in §3.① are per-cell and
  survive a re-binning.
- If the **level-11 cell** of a 300-start tree is neither **2 050** (GT+) nor **2 000** (ILM+) nor **3 150** (PS+), the family
  map in §1.④ is stale for that tree → re-read its `Cost` row end to end and add the delta to **179 240** (the nine-tree Σ
  moves by exactly that delta, nothing else in the table changes).

- If a cooldown `+` costs something other than the printed per-level column (10, 28, 46, …), the client uses a different price tree → record the whole column and rescale §3–§4 (the *ratios* between blocks are what the plan needs).
- If the UW totals row disagrees (e.g. GT ≠ 27 186), the version changed a ladder — trust the panel, keep the block ratios.
- If the triple-coincidence period does not shorten after §7 step 2, a third timer offsets the phase (Golden Bot, MVN, or a toggle): the UW timers **reset when a UW is toggled off and on again** (40 toggles/run max), so compare with all toggles left in their default state.
- If the orbless acceptance numbers (§4.①) do not reproduce — e.g. **3 SL beams** already cover every Black Hole at an
  angle below **40°**, or the **BH size** at a 30 m Range is not **44–48 m** — the page's build target moved with a patch
  → record the three panel values (angle, BH size, uptime) and treat the table as a checklist of *what to read*, not as
  fixed constants.
- If the nine UW+ prices do **not** follow 500 / 625 / … / 3 800 *in purchase order*, the price is per ability rather than
  per slot → record the nine pairs (ability, price) and rebuild §1's second row; the total bill is what the plan needs.
- If a freshly unlocked Golden Tower reads something other than **+20 %** cash/coins, the "+20 %" is a *lab* value or a
  level-2 value → read the UW panel's Multiplier line at level 1 and level 2 separately and quote those instead (§1.②).
- If a UW+ line's level counter tops out at **10** (or any number other than §1.④'s 11 / 13 / 14 / 19), the ability's cap is
  version-dependent → re-tabulate the nine caps and re-sum the layer (the per-unit knees are unaffected, they use only the
  two printed rows).
- If the GT income table’s anchor cell (GT+10 at 60 s) is not **1.000**, the matrix is normalised differently → divide
  every cell by that anchor before using the two laws; the ratio laws themselves are anchor-free.
- If the index page's three `Base Scaling` rows stop matching §1.④'s A / B / C families cell for cell, the trees were
  re-binned → the nine per-ability tables are the primary source (Chain Lightning's own `TOTAL` row is the anchor), so
  rebuild §1.⑥'s table from those and keep the family step lists.
- If a line's `(max − min) ÷ step` disagrees with its level counter, that line's value row is not arithmetic — the five
  `×damage` rows are geometric ⇒ use their printed cells (§3.① lists all 27 counts).
- If a first UW+ level costs something other than **300** (GT / CL / SM / ILM / PS) or **400** (CF / BH / DW / Spotlight),
  the cost tree was re-binned → read the first three cells per line and rebuild the ratio column; the *knee* levels of the
  two quadratic rows (8 and 4) still hold as long as the value increments keep stepping by 1 and 0.4.
- If the 374-run coin shares stop summing near **156 %** (e.g. they sum to 100 %), the ledger was normalised differently
  → renormalise by the printed baseline before using §1.③'s ranking.
- If the perk-granted UW is still listed as owned after the run ends, §5.1's “in-run only” note is wrong → see H032.
- **§3.②:** if a `Value` row's first printed cell is the **level-1** value rather than the level-0 value, every block's
  `ln` loses one step — the `×damage` quintet becomes **15.867** (`−6.7 %`) and its density **0.095 7**, the knee package
  **25.2** and **0.072 1**. The order inside §3.② is unchanged because all 27 rows shift the same way.
- **§3.②:** if the panel shows **0** (not `0.03 %`, `0.05×`, `13 s`) beside a freshly unlocked UW+ ability, then the
  unlock is not a level-0 purchase and the **25** unlock rows become one-step items: `Σ ln` **17.328 7**, density
  **0.013 374**/day, which lifts them from last place to between `J` and `H`.
- **§3.②:** if a `×damage` value row is *not* geometric (its per-cell ratios wander), the fitted `r` is wrong → re-add
  that line's `ln` from its printed cells; the quintet keeps rank as long as it still carries ≥ 15 of its 17.00 `ln`.
- **§3.②:** if the stone counter does **not** rise by **15** per Event-Shop stone trade (T013's 150-identity), the income
  side is mis-printed → the whole stone column rescales by measured income ÷ 25.357/day; the lab rows and the `max()`
  model are unaffected because they divide by coins and slots.

## Sources

- `tools/stone-day-ledger.ps1` (new, Rev 12) — the three-resource day model: the seven band incomes (T014 §3.3 ÷ 7), the
  27 basic lines with their block `ln` and st/`ln` in four stages (re-adding **11 461 / 25 045 / 49 194 / 244 542**), the
  nine UW+ trees from the four family step-lists (re-adding **24 265 + 154 975 = 179 240** and every printed cap), the
  nine knee sub-blocks (re-adding **8 865**), the unlock rows, and the merged 27-item schedule in both pp readings.
- fandom raw wikitext: `Ultimate Weapons` (the 5 … 3 000 unlock ladder, the 3-random-offer rule, the 40-toggle limit), `Ultimate Weapons/Ultimate Weapon Plus` (500 … 3 800 unlock ladder, 10 levels per ability, `Template:TableUWPCOST` → the three trees 23 800 / 18 570 / 19 050), `Golden Tower/Basic Upgrades`, `Black Hole/Basic_Upgrades`, `Death Wave/Basic_Upgrades`, `Chain Lightning/Basic_Upgrades`, `Smart Missiles/Basic_Upgrades`, `Spotlight/Basic_Upgrades`, `Chrono Field/Basic_Upgrades`, `Inner Land Mines/Basic_Upgrades`, `Poison Swamp/Basic_Upgrades` (per-level columns + `Total` rows), `Perks` (the nine perk-UW `stone value` entries and their exact stats).
- game-vault `Guide:Ultimate_Weapons_Sync` — the independent 910-stone figure for GT 300→200 s and the partial-sync table (250/200 → 1 000 s, 270/180 → 520 s).
- Tower Hub `wiki/uw/golden-tower` (last verified **2026-11-01**, 6 data tables) — §1.⑤’s **41 × 10** relative-income
  matrix (durations 40–80 s × GT+ levels 1–10, anchored at 1.000), the three prose ratios, the printed level counts
  (**Multiplier 20 · Duration 38 · Cooldown 20** for a **27 186**-stone total, matching §2 independently), the printed
  Golden Combo formula `((1 + 0.0003 × (L + 1))^Kills) - 1` with “only enemies that spawned during the activation count”, and
  the 100 %-uptime caveat (activations = run time ÷ duration).
- Tower Hub’s nine `wiki/uw/<name>` pages (last verified **2026-11-01**) — §1.④’s per-ability `UW+ Cost Table` (`Cost` and
  `Value` rows, plus Chain Lightning’s own `TOTAL` row **12 650 + unlock**), the basic-stat `Stones (…)` columns (GT starts
  at 5 / 13 / 22 / 32 / 43 … for 5.0 → 9.0×, which is the **115** block already used in §6), the CL damage/quantity/chance
  columns (damage 2× → 3× for 5, 5× for 11, 9× for 17 …; chance +1.5 pp/level at 8 / 26 / 44 / 62 …), the CL lab
  `Rank`/`Community note` table, and the per-UW lab ladders quoted by §4. Re-pulled **2026-11-02** for §3.①, where all
  **27** per-line `Cost` columns are read with `tools/uw-track-knees.ps1` (each column re-added against the page's own
  `Total` cell — 27/27, and the 27 totals re-add to §2's 244 542).
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
- Tower Hub `wiki/uw/ultimate-weapons` (last verified **2026-11-01**, re-pulled **2026-11-02**) — §1.⑥'s three
  consolidated `Base Scaling` cost rows with their header totals (**23 800 / 18 570 / 19 050**, 42 cells that reproduce
  §1.④'s A / B / C families), the slot ladder's printed `Total` **9705**, the UW+ `Unlock 500 … 3800` row, the nine-row
  effect table (line names + `Min`/`Max` ⇒ §3.①'s value rows and the `levels = (max − min) ÷ step` law), the
  “abilities start at level 0 / buy in any order / each purchase raises the next price” rules, the full **UW damage
  formula**, the **40 toggles per run**, the 3-offer persistence rule, “Chain Lightning has no cooldown and rolls on
  every projectile hit”, the Ultimate Crit card note, and Smite's `Max hits: 100/enemy`.
- Tower Hub `wiki/guide/coin-guide-basics` (2026-07-29) — GT **300 s** / BH **200 s** base, the 200 s (1:1) and 150 s (2:1)
  sync targets, the “fund both blocks in the same sitting” rule, MVN’s averaging + small penalty, and the **11× / 20.75× /
  228.25×** multiplier product.
- Tower Hub `wiki/guide/footguns` (2026-07-29) — the `1 m + 2 l = 5 s` / `3 m + 1 l = 10 s` / `6 m + 2 l = 20 s` steps and
  the **100 s** waypoint, the max lattice (bots/BH/DW **50 s**, GT **100 s**), “lab upgrades are permanent and, with the
  exception of range, cannot be switched off”, the medal-respec contrast, the **69 s** MVN average and its training-wheels
  verdict, and the Chrono Field range note (lower CPH, still max it).
- Cross-references: [T022](T022-free-currency-census-paid-ladder.md) §1–§2 (stone income and the masteries/Bot+/Synchronicity bills), [T011](T011-perk-engine-tuning.md) (ranking the random-UW perk), [T014](T014-tournament-tickets.md) (the other stone source).

- Tower Hub ``wiki/guide/orbless-guide`` (last verified **2026-11-01**) - the acceptance numbers of the synced set used in
  Â§4.1: uptime **> 50 %** with a second Black Hole, **GT bonus >= 16x**, maxed ``BH Coins``, **BH size 44-48 m at 30 m
  range**, Spotlight **3 beams / >= 40 degrees / >= 20x** (**>= 60 degrees** for SL4), maxed ``SL Coins``, kills **>= 20x**
  faster inside the beam, ``Wall Regen`` **10** and ``Wall Thorns`` **11** with **SPB 25** and **Def % 23**, the
  ``Disable Ranged Enemies`` card, **CL <= 596x** with shock chance **>= 10**, **SLM >= 34x** with maxed Missile Amp and
  Radius, the **SH -> GComp** crossover near **60 %** uptime, ``Anticube Portal`` **+1 000 waves** at ancestral, and
  ``Target Priority 2`` = "In Spotlight".