# T014 — Tournament tickets: buy them while the marginal value beats the next card slot

Rev: 10 (2026-11-03) — **§3.3: the band ladder closes on one formula**: `stones/week = 2·t·S = 2·S·(S + ⌊G/10⌋ + 2)` with
`t = 2 + ⌊(G + 10S)/10⌋` — the identity holds on **70/70** band cells and the six ladder cells re-add **6/6**, which also
closes the logged skew (“does not fit `45 + k × 1st place`”): the ladder is ticket-multiplied **band** pay, not the
1st-place column. **Placement is quadratic** (exponents **1.89–2.04**, `Copper 5→20` pay = `80→1 280` = ×16 = 4²), the
clock branch `runs(W) = 8 498 / W` puts a **stop-wave** on every row (**1 062 / 773 / 472 / 315 / 133 / 76**, ⇒ **H066**
for the missing thresholds), and the **total** weekly income is `2·t·S + 45 + 15·a` ⇒ the **452 282**-bill years fall from
**108.7 → 43.5 y** at the Copper bottom (the `+45 + 75` terms are **60 %** of that week but **0.59 %** at Champion 16–24).
`tools/stones-band-closed-form.ps1`.
Rev: 9 (2026-11-02) — **§4.3: a bracket's contents become derivable from the league index**: `r(k) = k − 1` random
conditions, `active(k) = (k − 1) + [k ≥ 3] + [k ≥ 4]` ⇒ the conditions panel should count **0 / 1 / 3 / 5 / 6 / 7** for
Copper → Legend; the enumerable configurations are **C(pool, r) = 1 / 15 / 105 / 455 / 1 820 / 6 188** (Legend **12 376**
with the Death Defy-or-Energy-Shield half); the boss Overheat is `interval = 11 − k`; the league's `Enemy Level Skip` values
**10 / 20 / 30 / 50** inside §4.2's law give **×0.9544 / ×0.9088 / ×0.8632 / ×0.7720** at maxed research (so the BC labs buy
**×1.06 … ×1.544** of effective skip); and heat at a 200-wave bracket is **level ≈ 4 of 19 (≈ 21 %)** —
[H057](../hypotheses/H057-heat-increase-wave-spacing.md) settles the spacing.
Rev: 8 (2026-11-02) — **§3.2, the ten-band ladders in full + the ticket law in closed form** (Tower Hub
`wiki/system/tournaments`, 2026-11-01, double-sourced against the fandom's seven tables): all **130 printed cells** of the six
Hub tables are recorded, **20/20 cells agree with the fandom in each of Copper/Silver/Gold** (6, 1, 0 above) and all seven
tables' widths Σ **30** ✓; the rank-1 columns are separate ladders (gems +100/+100/+100/+200/+200; stones **×2 four times**
then +105 ⇒ the stone share of a rank-1 ticket climbs **67 % → 84 %**), Σ per bracket is banked (**885 / 1 845 / 3 010 /
5 225 / 7 850 / 12 175** gems, **137** Legend keys) and the ticket purchase has one law: **`n* = floor(P / 10)`** bought
tickets at ≥ **×2.00** return, with the bracket clock (**72 h ÷ 30.5 s·W**) as the second ceiling — the two meet at
**8 runs of wave 1 000** for a beginner.
Rev: 7 (2026-11-02) — **the reduction layer's ceiling is derived**: `wiki/lab/lab-category-battle-condition` prints the
five caps **10 / 20 / 20 / 10 / 10** (Σ **70** levels), so with the printed steps **R_max = 54.4 %** ⇒ no condition can
scale below **0.456**, the Overheat decays stop at **16** and **23** removed levels, and a value-55 skip bottoms out at
**×0.7492**; the coins-per-point ranking (Group 3 **11.33 q/pp** < generic **62.37** < Group 4 **204.6**) is added to §4.1.
Rev: 6 (2026-11-02) — **§4.2, the Legend condition table in closed form** (`wiki/guide/legend-battle-conditions`,
2026-11-02): the table is **26** rows = **17 random + 4 Overheats + 5 fixed** (other leagues **21**), heat is a **global**
level (1 → +1 at each of **18** heat waves, done at **wave 1 000**) and **22 of 26** entries carry a **19-value** list;
the four laws that make the numbers derivable are recorded and verified — `interval = max(1, 101 − value)` (**1 → 100**,
**96 → 5** ✓), `removed = ⌈base × (1 − R)⌉` for the 1 500-wave decays (**10/10 cells**, and “28/40” = the law at R = 20 %),
`skip_mult = 1 − 0.01·value·(1 − R_total)` (**×0.45** and **×0.6095** ✓), and the three always-on decay constants
(**0.995/s**, **0.875**, **0.9**) whose stun recursion reproduces the printed ten-row **exactly**; plus the pool sizes
15/16/17 with **Orb Resistance** as entry 1 (Legend **can** draw it — 2026-10-17 bracket), the 17-item grouped list, the
Protector/Fast/Tank/Ranged Black-Hole decision rule, and a fourth confirmation of §4.1's Σ (the same page prints the
generic lab total as **1.25e18 coins** = **1 247.44 q**, plus **79.2M s = 22 000 h ≈ 2.51 y**).
Rev: 5 (2026-11-02) — a **third print** for the ticket rules (`wiki/system/tickets`, 2026-07-29): 1 ticket automatically per
new tournament, more by **ad** or **10 gems**, and **no per-bracket cap printed anywhere** ⇒ §3's marginal-ticket rule is
the only limiter; the `10` vs `10 rising by 10` difference between the two site pages is a first-purchase vs
per-purchase print, reconciled in §3.1.
Rev: 4 (2026-11-02) — the league tables are now **double-sourced** (Tower Hub `wiki/system/seasons`-era pages,
2026-11-01): **four bottom bands re-add identically** (Copper 60 · Silver 160 · Gold 250 · Platinum 300 gem-equiv.), the
ticket ladder and promotion rules confirm; a **top-rank version skew** is recorded (§3.1); and the **four
battle-condition labs** join the ledger (§4.1: gates T18 W1000 / T19 W100 / T19 W500 / T20 W60 / T21 W1000, with two
cost series that close — ×1.5 to **113.33 q** and ×2 to **2046 q**).
Rev: 3 (2026-11-01) — added the Dissonance interaction (§1); Rev 2 added the key ladder cross-check · Currency: **Gems**, **Power Stones**, **Keys** (Legend+, the key ladder itself: [T017](T017-vault-keys-priority.md)), plus medal missions that count tournaments
**Value:** ★★★★ — a bottom-place run in your *current* league is worth 60 → 2 585 gem-equivalents per ticket, and **stones** (the UW sync fuel, T008) come almost entirely from here.
**Confidence:** **High** — the schedule, ticket ladder, promotion rules, tie rule and the **bottom reward bands** are now
printed identically by **two** sources (fandom raw wikitext + Tower Hub 2026-11-01) — **including all twenty cells of the
Copper, Silver and Gold ladders (§3.2)** — and the three lab cost series close
as geometric laws (×2.05 / ×1.5 / ×2) with re-added sums; only the top-rank rows carry a version skew (§3.1).
**Ease:** 2 taps (join, claim) + 1 run per ticket · **Prerequisite:** **Tier 1 Wave 60** milestone.

---

## 1. The schedule and the ticket price ladder

- A tournament starts **every Wednesday and Saturday at 00:00 UTC**; each bracket is **30 players** in one league.
- Leagues, ascending: **Copper → Silver → Gold → Platinum → Champion → Legend → Mythic**.
- **1 ticket = 1 run**; your highest wave in that run is what is scored. You get **1 free ticket** when the tournament starts, plus **1 more from a rewarded ad**, and more from gems: the **n-th extra ticket costs `10 × n` gems** (10, 20, 30, 40 …).
- **Dissonance interaction:** in a bracket the tier's **own** Dissonant Boost is *not* applied, only the **echo** from
  other tiers (`1 + 0.005 × B × Σ f`, i.e. ≈+0.01 per finished tier before the Echo labs) — so the coin multiplier you
  read in a bracket is far below the **Dissonance** panel value for that tier
  ([T021](T021-dissonant-runs-echo.md) §6, test in [H028](../hypotheses/H028-dissonance-boost-in-tournaments.md)). Use
  the push preset for the wave, not for the multiplier.
- Joining is impossible **while a run is in progress** — finish or quit the run first.
- Promotion: **top 4 move up** a league; from **Platinum** downward the **bottom 6** are demoted. **Copper, Silver and Gold are protected** — once you leave them you never fall back, which makes early promotion a one-way ratchet you should always chase.

## 2. The gem-equivalent unit (used by every technique here)

The Event Shop prices three lines at the same 40 medals in trade 1 ([T013](T013-event-medal-economy.md)): **150 gems = 15 stones = 250 shards**. That fixes the internal exchange rates:

| 1 … | equals |
|---|---|
| **Power Stone** | **10 gems** |
| **Module Shard** | **0.6 gems** |
| **Medal** | **0.267 gems** (1 gem = 3.75 medals) |

Every reward below is restated in “gem-equivalents” so it can be compared directly against a **card slot** (50–10 000 gems) or a **lab slot** (100–3 000).

## 3. What one ticket is worth, by league

Bottom band (rank 23–30 — the realistic case for a new account), and the marginal value of the **n-th extra** ticket = `reward − 10n`:

| League (bottom band) | Gems | Stones | Keys | **Gem-equiv./ticket** | marginal 1st → 6th extra ticket |
|---|---|---|---|---|---|
| Copper | 10 | 5 | – | **60** | +50 / +40 / +30 / +20 / +10 / 0 |
| Silver | 40 | 12 | – | **160** | +150 … +100 |
| Gold | 50 | 20 | – | **250** | +240 … +190 |
| Platinum | 100 | 20 | – | **300** | +290 … +240 |
| Champion | 175 | 20 | – | **375** | +365 … +315 |
| Legend | 250 | 100 | 0–25 | **1 250** | +1 240 … +1 190 |
| Mythic | 335 | 225 | 8–50 | **2 585** | +2 575 … +2 525 |

Rank 1 for reference: Copper 100 gems/20 stones; Gold 300/80; Platinum 425/180; Champion 550/300; Legend 675/375/25 keys; Mythic 900/475/50 keys.

**Reading the table:**
1. **Buying 3–5 extra tickets is profitable from Gold upward** (marginal value ≥ 190 gems vs a ticket cost of 30–50). In **Copper** the marginal value hits 0 at the 6th ticket, so 1–3 extras is the right number there.
2. **Promotion is the biggest lever, and it is one-way below Platinum**: Copper → Gold more than quadruples a bottom-place ticket (60 → 250) with no demotion risk.
3. **Stones are why you play**: the GT+DW+BH sync costs **910 stones** ([T008](T008-uw-sync-with-stones.md)) = 45 stone-trades in the event shop but only ~9 bottom-place Gold tournaments.
4. **Keys have a floor, so promotion beats placement above Platinum**: Legend pays **0** at rank 25–30 and **1** at
   16–24, while bottom-band Mythic already pays **8** — i.e. a last-place Mythic finish earns as many keys as 7–8th
   in Legend. Chase the promotion, then spend the keys per [T017](T017-vault-keys-priority.md).

### 3.1 Second copy + the version skew (§3 table vs Tower Hub 2026-11-01)

The second source prints ten rank-bands per league. **Bottom bands re-add identically in four of six leagues** — Copper
10/5, Silver 40/12, Gold 50/20, Platinum 100/20 (⇒ 60 / 160 / 250 / 300 gem-equiv exactly as §3) — while three rows
carry a top-rank skew (the two wikis are weeks apart; the server may also scale brackets):

| Row | fandom (§3) | Tower Hub (2026-11-01) | note |
|---|---|---|---|
| Platinum rank 1 | 425 g / 180 st | **400 g / 160 st** | |
| Champion rank 1 | 550 g / 300 st | **600 g / 320 st** | |
| Champion bottom | 175 g / 20 st | **150 g / 20 st** (350 ge) | |
| Legend rank 1 | 675 g / 375 st / 25 keys | **800 g / 425 st / 25 keys** | |
| Legend bottom | 250 g / 100 st / 0 keys | **200 g / 120 st / 0 keys** (1 400 ge) | |
| Legend keys ladder | 1 at 16–24 | **2 / 4 / 6 / 8 / … stopping at rank 13–15, 0 from 16** | keys start at rank 1 from the top |

The decisions are unaffected (bottom bands 1–4 identical; the marginal-ticket arithmetic in §3 uses them). Record your
panel's rank-1 row if it matters; the skew is the version marker. Second source also prints: **1 ticket per bracket
entry**, extra tickets “**from watching an ad or paying gems — 10 gems for the first, rising by 10 each**” ✓ (both the
ad-ticket and the `10 × n` ladder now double-sourced — and the **third** print (`wiki/system/tickets`, 2026-07-29) confirms
“one Ticket automatically every time a new Tournament begins” plus “watch a video advertisement, or purchase a Ticket
directly for **10 Gems**”, stating the *first* price; **no per-bracket ticket cap is printed on any of the three pages**, so
the price ladder itself is the limiter); promotion “**top 4** move up, **bottom 6** from Platinum, Copper/
Silver/Gold **protected**” ✓; ties pay the **lower** rank ✓; and each league sits **between two normal tiers** in raw
enemy stats (Copper between T1–T2 … Champion between T11–T12).

### 3.2 The ten-band ladders in full, and the ticket law in closed form (new, Rev 8)

Two independent prints of the **same ten-band tables**: Tower Hub `wiki/system/tournaments` (last verified **2026-11-01**,
six leagues, from a live Legend account) and the fandom `Tournaments` page (seven tables, Mythic added — the page dates
Mythic to **v29, 2026-08-26**). Cells **20/20 identical for Copper, Silver and Gold**, 6/20 Platinum, 1/20 Champion,
0/20 Legend (⇒ §3.1's skew rows; use your panel, the *structure* is the part both agree on). `gems / stones` (`/ keys`
from Legend):

| Band (players) | Copper | Silver | Gold | Platinum | Champion | Legend | Mythic (fandom) |
|---|---|---|---|---|---|---|---|
| 1 | 100/20 | 200/40 | 300/80 | 400/160 | 600/320 | 800/425/25 | 900/475/50 |
| 2 | 80/18 | 150/35 | 250/70 | 350/140 | 500/300 | 700/400/20 | 800/450/45 |
| 3–4 (2) | 65/16 | 100/30 | 200/60 | 300/120 | 400/280 | 600/375/15 | 700/425/40 |
| 5–6 (2) | 50/12 | 75/20 | 150/40 | 250/70 | 350/200 | 500/350/10 | 650/400/37 |
| 7–8 (2) | 45/10 | 65/19 | 125/30 | 225/65 | 325/175 | 475/325/8 | 600/385/34 |
| 9–10 (2) | 40/9 | 60/18 | 100/28 | 200/60 | 300/150 | 450/300/6 | 575/370/31 |
| 11–12 (2) | 30/8 | 55/17 | 90/26 | 175/56 | 275/125 | 425/275/4 | 550/355/28 |
| 13–15 (3) | 20/7 | 50/16 | 80/24 | 150/53 | 250/100 | 400/250/2 | 525/340/25 |
| 16–22 (7) / **16–24 (9)** | 15/6 | 45/14 | 70/22 | 125/50 | 200/90 | 375/225/0 | 500/325/20 |
| 23–30 (8) / **25–30 (6)** | 10/5 | 40/12 | 50/20 | 100/20 | 150/20 | 200/120/0 | 335/225/8 |

**Four structural laws (all re-add).**

1. **The bands partition 30 players in both prints.** Widths `1,1,2,2,2,2,2,3,7,8` for Copper–Gold and
   `1,1,2,2,2,2,2,3,9,6` from Platinum up — Σ = **30** both times ✓ (7 tables × 30, `tools/fandom-rewards-parse.ps1`).
   Above Gold the tail is re-cut into two wider bands (9 + 6 instead of 7 + 8): the same 30 players, **fewer pay steps**, so
   one extra place in the tail is worth less and one *better* place at a band edge is worth a whole step (§4's tie rule).
2. **The rank-1 columns are their own ladders.** Gems `100, 200, 300, 400, 600, 800` (Δ +100, +100, +100, **+200**, +200 —
   the Platinum→Champion step doubles) and stones `20, 40, 80, 160, 320, 425` (**×2 four times**, then +105). Consequence:
   the stones column doubles per league while the gem column does not, so the **stone share of a rank-1 ticket climbs
   67 % → 84 %** (Copper → Legend) and the gems-per-stone ratio collapses **5.00 → 3.75 → 1.88**.
3. **The ladder flattens as you promote**: rank 1 ÷ bottom band = **10×** (Copper), **5×** (Silver), **6×** (Gold), then
   exactly **4×** in all three of Platinum / Champion / Legend (2.69× Mythic). So in the top leagues *league* dominates
   *placement*; in Copper, placement dominates — **rank 1 in Copper (300 gem-equiv) is worth exactly a bottom-band
   Platinum finish (300)**, and rank 1 in Gold (1 100) equals the Champion 16–24 band (1 100).
4. **Σ per bracket, per player (÷30)** — the two sources agree **cell-for-cell** in the first three leagues:

   | League | Σ gems | Σ stones | Σ keys | mean gems | mean stones | median band's pay | mean ÷ median |
   |---|---|---|---|---|---|---|---|
   | Copper | 885 | 251 | – | **29.50** | 8.37 | 20 (13–15) | 1.48 |
   | Silver | 1 845 | 525 | – | 61.50 | 17.50 | 50 | 1.23 |
   | Gold | 3 010 | 904 | – | 100.33 | 30.13 | 80 | 1.25 |
   | Platinum | 5 225 | 1 771 | – | 174.17 | 59.03 | 150 | 1.16 |
   | Champion | 7 850 | 3 710 | – | 261.67 | 123.67 | 250 | 1.05 |
   | Legend | 12 175 | 7 570 | **137** | 405.83 | 252.33 | 400 | 1.01 |
   | Mythic (fandom) | 15 935 | 10 090 | 738 | 531.17 | 336.33 | 525 | 1.01 |

   ⇒ the **mean sits above the median band in every league** (the top bands are loaded), so a “halfway” finish pays
   *below* the bracket average, and `mean ÷ your pay` is a free read of where you sit in the field. Keys are the most
   top-heavy column: `25, 20, 15, 10, 8, 6, 4, 2, 0, 0` (the fandom copy prints **1** at 16–24) ⇒ **4.57 per player** with
   rank 1 on **5.5×** the mean, which is why §3's “promotion beats placement” note holds above Platinum.
   **Stones floor:** the bottom band's stones are `5, 12, 20, 20, 20, 120` ⇒ **flat at 20 from Gold to Champion**, so in the
   bottom band Gold → Platinum → Champion promotion adds *gems only*; the stone jump comes from reaching **16–24** (50 /
   90 / 225).

**The ticket law in closed form.** Let `P = gems + 10 × stones` (the §2 rate; keys excluded) be your band's gem-equivalent.
The printed price ladder is `10, 20, 30 …` ⇒ `n` bought tickets cost `5n(n + 1)` and, with the **per-ticket** payout model
([H014](../hypotheses/H014-per-ticket-payout.md)), `t = 2 + n` tickets (free + ad + bought) return `P × t`:

```
net(n) = P(2 + n) − 5n(n + 1)      maximised at  n* = floor(P / 10)
```

| Your band | `P` | `n*` | gems in | gems+stones out | net | ratio |
|---|---|---|---|---|---|---|
| Copper 23–30 (10/5) | 60 | **6** | 210 | 480 | 270 | **×2.29** |
| Copper 1 (100/20) | 300 | 30 | 4 650 | 9 600 | 4 950 | ×2.07 |
| Silver 23–30 (40/12) | 160 | 16 | 1 360 | 2 880 | 1 520 | ×2.12 |
| Gold 23–30 (50/20) | 250 | 25 | 3 250 | 6 750 | 3 500 | ×2.08 |
| Platinum 25–30 (100/20) | 300 | 30 | 4 650 | 9 600 | 4 950 | ×2.07 |
| Champion 25–30 (150/20) | 350 | 35 | 6 300 | 12 950 | 6 650 | ×2.06 |
| Legend 25–30 (200/120) | 1 400 | 140 | 98 700 | 198 800 | 100 100 | ×2.01 |
| Legend 1 (800/425/25) | 5 050 | 505 | 1 277 650 | 2 560 350 | 1 282 700 | ×2.01 |

⇒ **the optimal ticket count is `P/10`, the top of the curve is nearly flat** (`net(n) − net(n − 1) = P mod 10` gems, so
**0** whenever `P` is a multiple of 10 — buy `n*` or `n* − 1`), and the return is **≥ ×2.00 on the gems sunk into tickets**
— a law that does not depend on which league you are in, only on your band's `P`. The **stones** side is the compounding
one, because each extra ticket pays its own stones too (`t × band stones` per bracket, 2 brackets/week):

| League, band | `t` | stones/bracket | stones/week | weeks to fund the **910-stone** GT+DW+BH sync ([T008](T008-uw-sync-with-stones.md)) |
|---|---|---|---|---|
| Copper 23–30 | 8 | 40 | 80 | **11.4** |
| Copper 13–15 | 11 | 77 | 154 | 5.9 |
| Silver 23–30 | 18 | 216 | 432 | 2.1 |
| Gold 23–30 | 27 | 540 | 1 080 | 0.84 |
| Platinum 16–24 | 64 | 3 200 | 6 400 | 0.14 |
| Champion 16–24 | 112 | 10 080 | 20 160 | 0.05 |

(the `t` values come from `n* = floor(P/10)` for that band; e.g. Copper 13–15 has `P = 90` ⇒ `n* = 9`, `t = 11`.)

**Two ceilings, and which one binds.** `n*` is the *gem* optimum; the other is the bracket clock. A bracket lasts **72 h**
(Wed 00:00 → Sat 00:00 UTC) and, with T002's tournament clock of **30.5 s per wave at ×1**, a run that ends at wave *W*
occupies `30.5 W / 3 600` hours ⇒ `runs ≤ 72 ÷ that`. Concretely: **W = 500 ⇒ 4.24 h/run ⇒ ≈ 17 runs**, **W = 1 000 ⇒
8.47 h/run ⇒ 8 runs**, **W = 2 000 ⇒ 16.9 h/run ⇒ 4 runs**. For the sub-T11 reader the two caps **meet**: an 8.47 h run
allows 8 bracket runs, and 8 is exactly the gem optimum (`t = 2 + 6`) of a bottom-band Copper pay — so “**6 bought tickets
per bracket, wave ≈ 1 000 each**” is simultaneously the gem-optimal and the clock-optimal plan. Above that, spend on the
run count only while `10n < P`.

**Also printed on the same page (2026-11-01), and now banked:** the random-condition pool sizes are **15** (Silver, Gold,
Platinum), **16** (Champion), **17** (Legend *and* Mythic) — the per-league version of §4.2's `17` for Legend, whose
decomposition `17 + 4 + 5 = 26` closes; the lower leagues' 21-row tables are **not** decomposed on the page. The BC-strength
law is printed as `M = 1 − Battle Condition Reduction − that condition's own lab`, “the two add up” ✓ = §4.1/§4.2's `R_total`.

### 3.3 The band ladder in one formula, and the total weekly stone income (new, Rev 10)

The six-cell ladder of §3.2 (`80 / 154 / 432 / 1 080 / 6 400 / 20 160`, the numbers [T025](T025-years-to-max-ledger.md)
§1–§2 divides the whole stone bill by) is **not** a printed table — it is this doc's own ticket model, and it now has a
one-line closed form. With `S` = your band's stone pay and `G` = its gem pay:

```
P = G + 10·S        n* = floor(P / 10)        t = 2 + n*        (tickets per bracket)
stones/week = 2 · t · S  =  2 · S · (S + floor(G/10) + 2)       (two brackets a week)
```

The two right-hand forms are **identical**, because `floor((G + 10·S)/10) = S + floor(G/10)` exactly (`10S/10 = S`) — so
the model is a pure quadratic in your band's stone pay. `tools/stones-band-closed-form.ps1` checks it against the §3.2
tables: the identity holds on **70/70** band cells (7 leagues × 10 bands) and the six ladder cells re-add **6/6** —
`Copper 23–30` (10/5 ⇒ `t = 8` ⇒ 80), `Copper 13–15` (20/7 ⇒ `t = 11` ⇒ 154), `Silver 23–30` (40/12 ⇒ 18 ⇒ 432),
`Gold 23–30` (50/20 ⇒ 27 ⇒ 1 080), `Platinum 16–24` (125/50 ⇒ 64 ⇒ 6 400), `Champion 16–24` (200/90 ⇒ 112 ⇒ 20 160).
The logged oddity is now closed: the ladder never contained the **45**-stone box row or the **1st-place** column, which is
why it did not fit `45 + k × (1st place)`; the non-multiple-of-5 cell (**154**) is `2 × 11 × 7`, the ticket product itself.

**1. Full weekly grid** (`2·t·S`, tickets only, from the same script):

| League | band 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
|---|---|---|---|---|---|---|---|---|---|---|
| Copper | 1 280 | 1 008 | 768 | 456 | 320 | 270 | 208 | **154** | 108 | **80** |
| Silver | 4 960 | 3 640 | 2 520 | 1 160 | 1 026 | 936 | 816 | 736 | 560 | **432** |
| Gold | 17 920 | 13 580 | 9 840 | 4 560 | 2 640 | 2 240 | 1 924 | 1 632 | 1 364 | **1 080** |
| Platinum | 64 640 | 49 560 | 36 480 | 13 580 | 11 570 | 9 840 | 8 400 | 7 420 | **6 400** | 1 280 |
| Champion | 244 480 | 211 200 | 180 320 | 94 800 | 73 150 | 54 600 | 38 500 | 25 400 | **20 160** | 1 480 |
| Legend | 430 950 | 377 600 | 327 750 | 281 400 | 243 100 | 208 200 | 175 450 | 146 000 | 118 800 | 34 080 |
| Mythic | 538 650 | 478 800 | 422 450 | 373 600 | 344 190 | 317 460 | 292 520 | 267 920 | 245 050 | 117 000 |

**Print note:** the six leagues are the Tower Hub copy (§3.2) and Mythic is the fandom copy. The closed form is
print-independent — feed it the pair your own panel shows. On the **fandom** copy the two skewed middle rows come out
**7 200** (Platinum 16–24: 200/50 ⇒ `t = 72`) and **26 400** (Champion 16–24: 300/100 ⇒ `t = 132`) instead of 6 400 /
20 160, and `Copper / Silver / Gold` are identical in both prints (20/20 cells).

**2. Placement is quadratic** — the exponent of `weekly stones` on `band pay` is **2.00 / 2.03 / 2.03 / 1.89 / 2.01 /
2.04** (Copper → Mythic, bottom band vs rank 1), because `2S(S + ⌊G/10⌋ + 2)` is `~2S²` and `⌊G/10⌋` tracks `S`
proportionally inside a league. Worked: Copper `5 → 20` stones of pay (×4.00) is `80 → 1 280` per week (**×16.00 = 4²**);
Platinum `20 → 160` (×8.00) is `1 280 → 64 640` (**×50.50**, the one league whose tail re-cut breaks the square). Hence the
whole ladder's **×252** (= 20 160 / 80) is a squared pay ratio.

**3. The clock version — what a human actually gets.** Each ticket is one attempt, so `t` is capped by the 72-h bracket:
`runs(W) = 72 × 3 600 / 30.5·W = 8 498 / W` (T002's 30.5 s per wave at ×1) ⇒

```
stones/week = 2 · S · min( 2 + floor(P/10) , floor(8 498 / W) )
```

The six ladder rows each sit exactly where the two branches meet, so each encodes a **stop-wave**: `t = 8 → W ≈ 1 062`,
`11 → 773`, `18 → 472`, `27 → 315`, `64 → 133`, `112 → 76`. Running past the stop-wave buys nothing (the extra attempts
pay the same band), and stopping short costs a whole band. The `wave → band` thresholds themselves are **not printed**
⇒ [H066](../hypotheses/H066-score-to-band-thresholds.md).

**4. Total weekly stone income — tickets are not the whole ledger.** Add the two printed flow rows:

```
stones/week = 2 · t · S   +   45   +   15·a        (a = event-shop stone trades)
```

`45` is the daily-mission weekly boxes (needs **T1 W60**, T004 §finding 5) and `15·a` the Event Shop line — a
full-2-week event pays ≈ **607** medals/week (945 event medals ÷ 2 + 135 box medals), and the stone line's own ladder
`40 + 65 + 90 + 130 + 175 = 500` buys **5** trades = **75** stones ⇒ `a = 5` for an all-in-on-stones week (the line is
one of the three 150-gem-equivalent options, T013 §2, so `a` trades only when stones bind).

| Band | `G`/`S` | `n*` | `t` | tickets only | **total (+45 +75)** | stop-wave `W` | years to **452 282** (tickets → total) |
|---|---|---|---|---|---|---|---|
| Copper 23–30 | 10/5 | 6 | 8 | 80 | **200** | ≈ 1 062 | 108.7 → **43.5** |
| Copper 13–15 | 20/7 | 9 | 11 | 154 | **274** | ≈ 773 | 56.5 → **31.7** |
| Silver 23–30 | 40/12 | 16 | 18 | 432 | **552** | ≈ 472 | 20.1 → **15.8** |
| Gold 23–30 | 50/20 | 25 | 27 | 1 080 | **1 200** | ≈ 315 | 8.05 → **7.25** |
| Platinum 16–24 | 125/50 | 62 | 64 | 6 400 | **6 520** | ≈ 133 | 1.36 → **1.33** |
| Champion 16–24 | 200/90 | 110 | 112 | 20 160 | **20 280** | ≈ 76 | 0.43 → **0.43** |

⇒ **the `45 + 15a` terms are 60 % of the Copper-bottom week and 0.59 % at Champion 16–24**: below **Gold** the boxes and
the medal trades are the main lever (claim all seven boxes, dump medals into the stone line), above it the ticket count is.

**5. If H014 fails** (the bracket pays once, best wave only), the whole grid collapses to `2·S + 45 + 15a`: the six bands
become **130 / 134 / 144 / 160 / 220 / 300** per week and `n*` stops mattering — the box + trade terms then dominate every
band up to Platinum. That single panel read ([H014](../hypotheses/H014-per-ticket-payout.md)) sets the scale of the entire
stone ledger.

## 4. Tournament-specific build facts (they change the card preset)

- **Perks do not exist in tournaments** (T011) — so the perk-driven coin engine is off; tournaments are a *wave*-score contest, optimise for **wave count**, not coins/min.
- Every league above Copper adds **Heat** (battle conditions) that ramps with waves, reaching full strength at **wave 1 000**. Copper has none.
- **“More bosses” (Overheat) is static per league**: a boss every **10** waves in Copper, **9** Silver, **8** Gold, **7** Platinum, **6** Champion, **5** Legend. (This is also the cleanest evidence that the *normal* interval is 10 — see [H012](../hypotheses/H012-boss-interval-reroll-rate.md).)
- **Enemy Level Skip** is always present at **10 % (Gold) / 20 % (Platinum) / 30 % (Champion) / 50 % (Legend)**, and from **Platinum** up **Death Defy or Energy Shield** is active as a battle condition; Silver adds 1 extra random condition, Gold 2, … Legend 5.
- Tie rule: **everyone in a tie gets the lowest rank's reward** of the tied group — so beating the player above you by a **single wave** is worth a full step, and the last minute of the run matters most.
- Card swaps between tickets are cheap when no boss/fleet enemy is alive; use a **push preset** (Energy Net, Second Wind, Demon Mode, Nuke, Plasma Cannon) instead of the farming preset ([T012] step 5). **Slow Aura** is S-tier in tournaments only.

### 4.1 The battle-condition lab layer (printed 2026-11-01, closes in two cost series)

The “Heat” you fight is reduced by **five** lab lines (all costs in **q** = quadrillion coins):

| Lab | Gate | Levels | Per level | Cost series (first → last) | Σ printed |
|---|---|---|---|---|---|
| `Battle Condition Reduction` (all conditions) | **T18 W1000** | 10 | **+2 %** (L1 = 2 %, L10 = 20 %) | 1 q → 639.42 q (**×2.05/lv**, all 9 ratios ✓) | **1 247.44 q** |
| Group 1 (Knockback/Thorns/Orb/Plasma/Death-Ray Res.) | **T19 W100** | 20 | **+0.21 %** | per panel | — |
| Group 2 (Armored/Enemy Speed/More Enemies/Atk Speed) | **T20 W60** | 20 | **+0.51 %** | per panel | — |
| Group 3 (enemy-type ultimates) | **T19 W500** | 10 | **+1 %** | 1 q → 38.44 q (**×1.5/lv** ✓) | **113.33 q** |
| Group 4 (UW Durations, Death Defy/Energy Shield Down, Enemy Level Skip) | **T21 W1000** | 10 | **+1 %** | 2 q → 1024 q (**×2/lv**, Σ = 2(2¹⁰−1) ✓) | **2046 q** |

The site prints the strength law as “**M = 1 − Battle Condition Reduction − the condition's own lab; the two add
up**” — i.e. generic + own-lab percentages sum *before* scaling the condition (additive inside, multiplicative on the
condition). The random-pool sizes are printed per league: **15** (Silver–Platinum) / **16** (Champion) / **17**
(Legend & Mythic), always including **Orb Resistance**, plus Death-Defy-Down *or* Energy-Shields-Down from Platinum;
the full condition list is a 30-row table (“Showing 10 of 30 rows”). The reduction labs exclude the **Ultimate Weapon
Duration** condition (only Group 4 touches it).

**The layer's ceiling is R = 54.4 % (derived, Rev 7).** `wiki/lab/lab-category-battle-condition` (2026-11-02) prints the
same five caps (**10 / 20 / 20 / 10 / 10** = Σ **70** levels), so with the printed per-level steps the maximum total
reduction is

```
R_max = 10×2 % + 20×0.21 % + 20×0.51 % + 10×1 % + 10×1 % = 20 + 4.2 + 10.2 + 10 + 10 = 54.4 %
```

and no Legend bracket can scale a condition below `1 − 0.544 = ` **0.456**. Concretely: the two Overheat decays stop at
`⌈35 × 0.456⌉ = ` **16** and `⌈50 × 0.456⌉ = ` **23** removed levels, and the skip multiplier bottoms out at
`1 − 0.01·value·0.456` ⇒ **×0.7492** at value 55, **×0.5622** at value 96, while the interval law is untouched
(`max(1, 101 − value)` does not contain R). Practical read, by **coins per percentage point** on the three lines whose series is printed: Group 3
`113.33 q / 10 pp = ` **11.33 q/pp**, generic `1 247.44 q / 20 pp = ` **62.37 q/pp**, Group 4
`2 046 q / 10 pp = ` **204.6 q/pp** ⇒ **Group 3 is 5.5× cheaper than the generic line and 18× cheaper than Group 4 per
point**, so in a bracket whose conditions are all in Group 3 the group line is the buy, while the generic line is what
you need when the bracket mixes groups (it is the only one that touches every condition).

### 4.2 The Legend condition table in closed form (new, Rev 6)

Source: Tower Hub `wiki/guide/legend-battle-conditions` (last verified **2026-11-02**). Everything below is printed with
numbers, and the four laws re-add from the printed tables.

**Structure.** Legend's condition table holds exactly **26** entries = **17** random-pool + **4** Overheats + **5** fixed
(three always-on + *both* halves of the `Death Defy Down / Energy Shields Down` pair, one of which is active per
tournament) ✓ `17 + 4 + 5 = 26`; every other league's table holds **21**. Each entry is *condition + activation wave +
value list*, and **22 of the 26** carry a full **19-value** list (one per heat level) while only the **4 Overheats** are
flat — which is why only those four are ever quotable as a single figure. **Heat is global**: it starts at **1** and steps
up at each of the tournament's **18** heat-increase waves, a schedule that “appears to finish at wave 1 000” ✓ the same
wave 1 000 cap §3 already uses; a condition contributes **exactly zero** below its activation wave, so all conditions share
**one** ramp and differ only in their numbers (that is why the Overheats “appear out of nowhere” — their activation wave
is deep in the run).

**The four Legend Overheats** (Legend-only, one block; two strip the Workshop, two add enemies):

| Overheat | From wave | Interval | Effect per step | Printed `value` |
|---|---|---|---|---|
| **More Fleets** | 1 000 | every **100** waves | one extra Fleet | **1** |
| **Damage Decay** | 1 500 | every **10** waves | Attack Workshop levels removed | base **35** |
| **Health Decay** | 1 500 | every **10** waves | Defense Workshop levels removed | base **50** |
| **More Elites** | 2 000 | every **5** waves | one extra Elite | **96** |

Both “more” conditions follow the printed interval law `interval = max(1, 101 − value)`: value **1** ⇒ `101 − 1 = ` **100** ✓
and value **96** ⇒ `101 − 96 = ` **5** ✓. They run on **their own counters** and do not replace the normal Fleet/Elite
cycles (§1's H012 evidence still stands).

**The two Workshop-stripping decays are one law:** `levels removed = ⌈base × (1 − R)⌉`, `base = 35` (Damage/Attack) and
`50` (Health/Defense), both **every 10 waves from wave 1 500**. All **10** printed cells re-add:

| R (`Battle Condition Reduction`) | 0 % | 10 % | 20 % | 30 % | 40 % |
|---|---|---|---|---|---|
| Damage Decay (35) | 35 | 32 | **28** | 25 | 21 |
| Health Decay (50) | 50 | 45 | **40** | 35 | 30 |

⇒ `35 × 0.8 = 28`, `50 × 0.8 = 40`, so **the widely quoted “28 and 40” are this law at R = 20 %** — one account's research
level, not a constant. Note the 30 %/40 % rows are **not** reachable from the generic lab alone (it caps at **+20 %** over
**10** levels, §4.1) — they need the dedicated per-condition lines added into R. Ordering consequence, printed: Health
collapses before Damage simply because 50 > 35 on the same clock.

**Skip Reduction *scales*, it does not remove:** `skip_mult = 1 − 0.01·value·(1 − R_total)`, where **R_total adds** the
generic lab and the dedicated `Enemy Level Skip` line (the “two add up” law of §4.1). Both printed numbers reproduce:
value **55**, no research ⇒ `1 − 0.55 = ` **×0.45** ✓; at **R_total = 29 %** ⇒ `1 − 0.55 × 0.71 = ` **×0.6095** ✓.
**Skip Decay** then eats what is left, `1 pp` per step **scaled by R only** — it shrinks the *step*, **never** the
**interval**, which is `100 − value` waves ⇒ `100 − 80 = ` **20** ✓.

**The three always-on per-enemy decay counters** (not battle conditions; invisible, on tournaments *and* normal tiers; a
fresh enemy restarts at full effectiveness, so they only punish builds that keep one enemy alive for a long time):

| Mechanic | Constant | Advances on | Printed check → reproduced |
|---|---|---|---|
| **Stun Decay** | **×0.995** | each **cumulative** stunned second | 10 s stun → **9.07 s** at application 3 ✓ |
| **Miss Decay** | **×0.875** | each successful **miss** | `30 × 0.875³ = ` **20.1** ✓ |
| **Death Defy Decay** | **×0.9** | each successful **Death Defy** | `42 × 0.9³ = ` **30.6** ✓ |

Stun's is the one with a non-obvious shape (seconds, not application count):
`L₁ = raw`, `Lₙ = raw × 0.995^(Σᵢ<ₙ Lᵢ)` — and that recursion reproduces the page's ten-value row **exactly**, to two
decimals on all ten entries: **10.00 / 9.51 / 9.07 / 8.67 / 8.30 / 7.96 / 7.65 / 7.36 / 7.09 / 6.85**. The two quoted
side results also close: a **2.5 s** stun is **2.25 s** at application 10 and **2.02 s** at 20 ✓. Practical: at
application **10** a 10 s stun is **6.85 s < 7 s**, the Shockwave interval ⇒ that is the wave-count where a stun lock stops
holding, and no stun research moves it; short stuns (2.5 s Inner Land Mines) burn the budget far more slowly per
application than a 10 s Poison Swamp, which is why “stun” behaves differently on the two. Stuns do **not** stack — the
enemy keeps the **longer** of current/new timer (T015's rule, now with its constant).

**Pool sizes and the correction.** **15** (Silver/Gold/Platinum) → **16** (Champion, +`Ultimate Weapon Durations`) →
**17** (Legend, +`Mass Enforcement`) ✓ the same numbers §4.1 prints, and the pool's **first** entry is **Orb Resistance**,
which Legend **can** draw (the Legend tournament of **2026-10-17** drew it) — this corrects the site's earlier “16 / no Orb
Resistance in Legend”. Legend shows **6** random conditions = one of `Death Defy Down`/`Energy Shields Down` + **5** of the
17 ✓ §4's “Legend 5 extra”. The 17 grouped as printed: **Resistances (6)** Orb · Death Ray · Thorns · Knockback · Armored
Enemies · Plasma Cannon; **Enhancements (4)** Enemy Speed · Enemy Attack Speed · More Enemies · Mass Enforcement;
**Ultimate enemies (6)** Protector · Tank · Boss · Basic · Fast · Ranged; **Other (1)** Ultimate Weapon Durations.

**Cross-check on §4.1's bill.** The same page's “Good to know” prints the generic reduction lab as “**10 levels, 0 to
20 %, 1.25e18 coins, 79.2M s** base time total” ⇒ `1 247.44 q = 1.24744 × 10¹⁸` ✓ the *same* Σ as §4.1 in scientific
notation (a fourth confirmation of the **×2.05** series), and `79.2e6 s = 22 000 h = ` **916 d 16 h ≈ 2.51 y** of raw slot
time for those ten levels (≈ **45.1 d** first level if the line follows the ×1.15 time law).

**The reading order before a run** (the page's, worth keeping): active **Ultimate-enemy** conditions → which of them
ignore your CC → only then the **Black Hole** config and the module split. Concretely: **Ultimate Fast / Tank / Ranged are
not attracted by Black Hole and take no damage from it** ⇒ with none of the three active, permanent BH uptime traps most
regular enemies, while with **Ranged** active your projectiles concentrate on the trapped packs as the Ultimate Ranged
walks in. **Ultimate Protector** ignores Chrono Field slow/rotation, knockback, Shockwave and every stun source and needs
a **damage** answer, not a control one.

### 4.3 What a bracket contains, in closed form (per league) (new, Rev 9)

Let **k** be the league index (**Copper 1, Silver 2, Gold 3, Platinum 4, Champion 5, Legend 6**, Mythic 7). Three printed
facts turn into four laws:

1. **Random draw count** `r(k) = k − 1` — printed as “Silver adds one random battle condition, Gold adds two, and the count
   rises by one per league until Legend, which runs five at once” ⇒ `0, 1, 2, 3, 4, 5` ✓ (Copper has **no** Heat at all).
2. **Always-on entries** ⇒ `active(k) = (k − 1) + [k ≥ 3] + [k ≥ 4]`: the **Enemy Level Skip** condition arrives at **Gold**
   and the **Death Defy Down / Energy Shields Down** pair at **Platinum**, so the conditions panel should count
   **0, 1, 3, 5, 6, 7** for Copper → Legend — a free self-check that your panel matches this document.
3. **Distinct brackets are enumerable below Champion.** With the printed pool sizes **15** (Silver–Platinum) / **16**
   (Champion, +`Ultimate Weapon Durations`) / **17** (Legend, +`Mass Enforcement`), the number of possible random sets is
   `C(pool, r)`: **1 / 15 / 105 / 455 / 1 820 / 6 188**, and **12 376** for Legend once the Death Defy-or-Energy-Shield
   half-pair is counted (×2). ⇒ **study burden is finite and tiny where you play**: a Gold bracket can only ever be one of
   **105** configurations, and a Copper one is a single configuration with zero conditions.
4. **The Overheat boss ladder is `interval = 11 − k`** ⇒ `10, 9, 8, 7, 6, 5` ✓ the printed boss intervals, i.e. exactly
   **−1 wave per promotion**, and it is the one Heat modifier that never scales with the wave count (§4).

**The league's `Enemy Level Skip` value in the §4.2 law.** The printed values are **10 / 20 / 30 / 50** for Gold → Legend:
that is `value(k) = 10·(k − 2)` for **k = 3, 4, 5** and then **Legend jumps to 50** (the +10 ladder breaks exactly once, at the
top), so keep it as a four-row constant rather than a formula. Inside §4.2's law
`skip_mult = 1 − 0.01·value·(1 − R)`, with §4.1's ceiling **R = 54.4 %**:

| | Gold | Platinum | Champion | Legend |
|---|---|---|---|---|
| value | 10 | 20 | 30 | **50** |
| `R = 0` | ×0.9000 | ×0.8000 | ×0.7000 | ×0.5000 |
| `R = 20 %` (generic lab maxed) | ×0.9200 | ×0.8400 | ×0.7600 | ×0.6000 |
| `R = 54.4 %` (all five lines maxed) | **×0.9544** | ×0.9088 | ×0.8632 | **×0.7720** |

⇒ **maxing the five BC-reduction labs multiplies the skip a bracket actually applies by ×1.06 (Gold), ×1.14 (Platinum),
×1.23 (Champion), ×1.544 (Legend)** relative to no research (`0.9544/0.9000`, `0.9088/0.8000`, `0.8632/0.7000`,
`0.7720/0.5000` ✓), and even fully maxed the Legend bracket keeps only **0.772 of the panel number** (Copper keeps 1.000,
it has no skip condition). §4.2’s **×0.7492** is the same law on the *tier* list’s value **55**, not the bracket’s 50 — keep
the two prints apart.

**Heat barely touches a beginner’s bracket.** Heat is a **global level 1 → 19** whose **18** increases “finish at wave 1 000”
(§4.2), so on even spacing `level ≈ 1 + ⌊W ÷ 55.6⌋`: **W = 200 ⇒ level ≈ 4 of 19 (≈ 0.21 of full strength)**, W = 500 ⇒ 10,
W = 1 000 ⇒ 19. Consequences for the sub-T11 reader: **your bracket is decided while Heat is at roughly a fifth of full
strength**, so the difference from the normal tier is mostly the faster raw stat ramp (the “tier +” of §4), not the
modifiers; and any condition whose activation wave is above your finishing wave contributes **exactly zero** (§4.2's rule),
which is why the four Legend Overheats “appear out of nowhere” at 1 000 / 1 500 / 1 500 / 2 000. The even-spacing assumption
is [H057](../hypotheses/H057-heat-increase-wave-spacing.md) — one panel read settles it.

## 5. Steps (UI only)

1. Before 00:00 UTC on **Wednesday / Saturday**, end any active run. On the home screen tap the **Tournament icon** → the **Tournament Start Panel**.
2. Tap the **ad** icon for the free extra ticket, then spend **1–3** gem tickets (the panel shows the rising 10 / 20 / 30 price). Stop when the next ticket's price exceeds the league value in §3.
3. Read the **Tournament Conditions Panel** (and the **Heat** bar at the top during the run) once per league — it lists this bracket's Heat modifiers, so you know whether to expect extra bosses or level-skip.
4. Run the push preset, then let the run end naturally; the **Tournament Progress Panel** shows your current placement while you play.
5. After the tournament closes, claim on the **Tournament End / Finished Panel** — rewards (gems, stones, keys from Legend up) sit there until claimed.
6. Check the **leaderboard** (same panel) for the wave you need to overtake the player directly above you next time; that gap is your target wave for the next bracket.
7. Also claim the **“Participate in xx tournaments”** event mission (1/2/3) — see [T013] §3.
8. In **Legend**, do §4.2's order instead of memorising conditions: read the active **Ultimate-enemy** rows first, mark
   which ignore your CC (**Protector** ignores Chrono Field / knockback / Shockwave / all stuns; **Fast / Tank / Ranged**
   are not attracted by Black Hole and take no damage from it), and only then set the **Black Hole** config and the module
   split. Buy `Battle Condition Reduction` before the per-condition labs — its step is **+2 %/level** vs +1 % (§4.1).

## 6. Reproduction checklist

- [ ] The join panel prices the 1st extra ticket at **10** gems, the 2nd at **20**, the 3rd at **30**.
- [ ] One finished run consumes exactly **1** ticket and posts its best wave.
- [ ] A bottom-place Copper finish pays **10 gems + 5 stones**; after 2 promotions a bottom-place finish pays **50 gems + 20 stones** (Gold).
- [ ] Bosses appear every **10** waves in Copper and every **8** in Gold (count the wave counter between boss spawns).
- [ ] Two players with the **same** wave both receive the lower of the two reward rows.
- [ ] Leaving **Gold** for Platinum never drops you back to Copper/Silver/Gold.
- [ ] Keys appear only from **Legend** (0 at rank 25–30, up to 25 at rank 1), and from **Mythic** (floor **8** at rank 25–30, **50** at rank 1) — full table in [T017 §1](T017-vault-keys-priority.md).
- [ ] A Platinum bottom-band finish reads **100 gems / 20 stones** in **both** wiki copies (§3.1).
- [ ] One **Group 4** lab level (e.g. `Enemy Level Skip Reduction`) costs **2 q** at level 1 and **1024 q** at level 10
      (the ×2 series), the generic `Battle Condition Reduction` L1 = **1 q / +2 %**,
      and a new bracket grants exactly **1** ticket before the panel offers an **ad** and a **10-gem** purchase that rises
      by 10 per purchase in the same bracket (§3.1; no cap is printed anywhere).
- [ ] **§4.2 interval law:** in Legend the extra **Fleet** wave comes every **100** waves from wave 1 000 and the extra
      **Elite** every **5** waves from wave 2 000 (`max(1, 101 − value)` on the panel's own values **1** and **96**).
- [ ] **§4.2 decay law:** at `Battle Condition Reduction` = **20 %** the Workshop really loses **28** Attack and **40**
      Defense levels per step (and **35/50** with the lab at 0), every **10** waves from **1 500**.
- [ ] **§4.2 skip law:** with the skip condition at value 55 and both reduction lines at 0 the panel's effective skip is
      **×0.45**; banking **29 %** of reduction moves it to **×0.6095**.
- [ ] **§4.2 table size:** the conditions panel for Legend counts **26** rows (other leagues **21**), and the four Overheat
      rows are the only ones with a single value.
- [ ] **§4.2 stun decay:** on one long-lived enemy, the 10th stun of a 10-second source lasts **6.85 s** (below the 7-second
      Shockwave interval) while a 2.5-second source is still at **2.25 s**.
- [ ] **§4.1 R ceiling:** with all five reduction labs maxed (**10 / 20 / 20 / 10 / 10** levels = **70** total, R = **54.4 %**)
      an Overheat removes **16** and **23** levels, and a value-55 skip reads **×0.7492** — the interval column does not
      move at all.
- [ ] **§3.2 ladder:** the Tournament screen’s **Rewards** list for your league shows **10** rows and reads Copper
      100/20 · 80/18 · 65/16 · 50/12 · 45/10 · 40/9 · 30/8 · 20/7 · 15/6 · 10/5 (Silver 200/40 … 40/12, Gold 300/80 … 50/20).
- [ ] **§3.2 band re-cut:** the 9th row reads **16 – 22** in Copper/Silver/Gold but **16 – 24** from Platinum up (and the
      10th 23 – 30 vs 25 – 30) — the widths that make Σ 30 in both sets.
- [ ] **§3.2 ticket law:** with `P = gems + 10 × stones` for your own band, the ticket button prints **10, 20, 30 …**; buy
      `floor(P/10)` tickets and the gem counter should drop by `5n(n + 1)` (e.g. bottom-band Copper: **210** for 6 tickets,
      80 gems + 40 stones paid back), at **Copper 13–15** it is **9**, at Gold bottom **25**.
- [ ] **§3.2 stones/week:** count the stones credited by one bracket (`t × band stones`) and compare with §3.2’s table —
      **40** for 8 tickets at the Copper bottom band, **540** for 27 at Gold bottom.
- [ ] **§3.3 identity:** with your own band's printed `G`/`S`, the two forms agree — e.g. `Gold 23–30` (50/20):
      `2 · 27 · 20 = 1 080 = 2 · 20 · (20 + 5 + 2)`; do the arithmetic for your league and check it against the grid.
- [ ] **§3.3 total income:** in one week record (a) the **Tournament End Panel**'s stone total, (b) the **Weekly Rewards**
      box row (**45** once all seven are claimed, from T1 W60), (c) the Event Shop stone trades (**15** each) — the sum
      should sit near the §3.3 table for your band (**200** at the Copper bottom, **1 200** at Gold bottom).
- [ ] **§3.3 stop-wave:** at the Copper bottom band, `t = 8` meets the clock at **W ≈ 1 062**; if you stop at **W ≈ 1 500**
      instead, the extra attempts should be **fewer** while the band pay stays the same (the product drops).
- [ ] **§3.3 quadratic placement:** moving up one band multiplies the week by something **between** the pay ratio and its
      square (Copper `10/5 → 15/6`: pay **×1.20**, week **108/80 = ×1.35**, the square being 1.44 — the gap is the
      `⌊G/10⌋` term moving with the gems); over a whole league the fitted exponent is **2.00**.
- [ ] **§4.3 condition count:** the **Tournament Conditions Panel** counts exactly **1** condition in **Silver**, **3** in
      **Gold**, **5** in **Platinum** (`active(k) = (k−1) + [k≥3] + [k≥4]`), and **none** in Copper.
- [ ] **§4.3 skip values:** the panel prints `Enemy Level Skip` at value **10** in Gold and **50** in Legend; with all five
      BC-reduction labs maxed the run applies **0.9544 ×** and **0.7720 ×** your skip panel, respectively.
- [ ] **§4.3 heat:** read the **Heat** level on the run screen at three checkpoints — the first tick should land near wave
      **56** (H057), and the level at wave 200 should be ≈ **4** of 19.

## 7. Falsification

- If the ticket price does not increase by 10 each purchase, the linear ladder is stale → re-derive the “how many tickets” rule from the panel.
- If a second ticket's run **does not** pay its own reward (only your best wave counts), then the marginal-value column in §3 over-counts — see [H014](../hypotheses/H014-per-ticket-payout.md) and buy exactly **one** extra ticket.
- If a bottom-place Gold finish pays something other than 50 gems / 20 stones, record the actual table and correct §3 (the tables are versioned; Mythic only exists since v29).
- If Heat conditions do not ramp to a cap at wave 1 000, note the real cap — it changes whether long tournament runs are worth it.
- If the two §3.1 copies disagree on the **bottom band** (not just top ranks), the server re-scaled the brackets → trust
  the in-game panel and re-derive §3's gem-equiv column; the marginal-ticket rule itself is ratio-based and survives.
- If a Group-4 lab level 10 costs something other than **1024 q**, the ×2 series changed → re-read the ten printed costs
  and rebuild §4.1's Σ column; the +1 %/level values are independent of the series.
- If the Legend conditions panel is **not 26 rows** (other leagues **21**), §4.2's `17 + 4 + 5` structure changed → recount
  and re-derive which entries carry 19-value lists; the interval/decay/skip laws are per-entry and survive a re-count.
- If the Workshop loses **35/50** levels at 20 % reduction (rather than 28/40), the decay law is **unscaled** by the
  reduction lab → then `Battle Condition Reduction` does not apply to the two Overheat decays, and §4.1's priority order
  (generic first) flips for these two conditions only.
- **Rev 10:** if the bracket's stone total is **not** `t × S` (say it equals `S` for any `t`), the per-ticket model fails
  with **H014** → use the `2·S + 45 + 15a` column (**130 / 134 / 144 / 160 / 220 / 300**) and re-derive the ticket count
  from the gem side only.
- **Rev 10:** if a **6th** stone trade is available for fewer than the ladder's **380** medals, `a` is larger than 5 →
  recount the ladder from the **Event Shop** and re-scale the `+15a` term (the grid itself is unaffected — it is tickets
  only).
- **Rev 10:** if the identity check in the checklist disagrees for your own band, the printed `G`/`S` you read belongs to a
  **different league table** (the seven are near-duplicates) → re-read the panel header; the closed form itself is
  arithmetic and cannot drift.
- If extra Fleet/Elite waves come every **101 − value** (no `max(1, …)` floor) or the intervals ignore the panel's
  `value` column, re-derive the interval law from two measured gaps (100 and 5 are what the printed values 1 and 96 give).
- If a repeatedly-stunned enemy keeps the **full** 10 s after ten applications, the per-enemy stun counter is not shared
  across sources (or the constant is not 0.995/s) → re-derive §4.2's recursion with `Σ Lᵢ` replaced by the number of
  applications; the 0.875 miss and 0.9 Death Defy constants are independent of it.
- If maxing all five reduction labs leaves the Overheat decays at **15/22** or **17/24** instead of 16/23, the caps or the
  printed steps changed → re-read each of the five lines' final level and its value, then recompute
  `R_max = Σ step × cap` (the two floor values are pure arithmetic from that sum).
- **§3.2:** if your league's **Rewards** list shows a band whose two bounds do not fit `1,1,2,2,2,2,2,3,7,8` (or the
  `…,9,6` set above Gold), the band structure was re-versioned → re-read all ten rows from the panel and recompute the Σ /
  mean ledger; the `n* = floor(P/10)` rule is unaffected (it uses only your own band's `P`).
- **§3.2:** if the ticket button prints **10, 15, 22** (a geometric ladder) rather than **10, 20, 30**, the cost of `n`
  tickets is no longer `5n(n + 1)` → re-solve `next price > P` from two printed prices; the ≥ ×2.00 shape of the curve
  survives while the linear ladder holds.
- **§3.2:** if a **25–30** finish in Platinum or Champion pays stones other than **20** (the “flat floor” claim), read the
  panel's last row per league and rebuild the stones/week table from those three numbers.
- **§3.2:** if the conditions panel of a lower league shows a row count inconsistent with a **15**-entry pool, the pool
  sizes changed → take the pool count from the panel per league; §4.2's `17 + 4 + 5 = 26` Legend closure is independent.
- **§3.3:** if the two forms of the closed form disagree for one band of your league, the printed `G`/`S` pair is from
  another league's table (they are near-duplicates) → re-read the panel header and re-run
  `tools/stones-band-closed-form.ps1`; the identity itself is algebra.
- **§3.3:** if the observed stone total per bracket is closer to `runs` than to `2 + floor(P/10)`, the clock (not the gem
  optimum) is already binding → read `W` from the run screen and use `floor(8 498 / W)` as `t`; the grid becomes the
  clock-capped column.
- **§4.3:** if the panel counts something other than `active(k)` (e.g. **4** in Gold rather than 3), the always-on set moved →
  rebuild the two indicator terms `[k ≥ 3]`, `[k ≥ 4]` from the panel, then recompute the `C(pool, r)` row; the printed
  per-league skip values are independent of the count.
- **§4.3:** if the Legend bracket prints an `Enemy Level Skip` value other than **50**, that ladder was re-versioned →
  substitute the panel's value into `skip_mult = 1 − 0.01·value·(1 − R)`; the law itself is unaffected.
- **§4.3:** if the **Heat** level at wave 200 is not ≈ **4**, take the spacing from the observed tick waves (H057's branch 2
  or 3) — the per-condition value lists are indexed by **level**, so they stay valid either way.

## Sources

- Tower Hub `wiki/system/tournaments` (last verified **2026-11-01**, 12 data tables) — the second copy of all six league
  tables (bottom bands identical, top-rank skew per §3.1), the ticket rule “1 free + ad or gems, **10 rising by 10**”,
  “top 4 promote / bottom 6 from Platinum / Copper–Gold protected”, tie → lower rank, the between-two-tiers enemy-stat
  rule, Heat full strength at **W1000** and the static boss ladder **10/9/8/7/6/5**, the 30-row condition list, pool
  sizes 15/15/15/16/17 with forced Orb Resistance, the **M = 1 − BC-Reduction − own-lab** law, and the four
  battle-condition labs with gates (T18 W1000, T19 W100, T19 W500, T20 W60, T21 W1000) and the three closing cost series
  (**×2.05** Σ 1 247.44 q · **×1.5** Σ 113.33 q · **×2** Σ **2046 q** = 2(2¹⁰−1) ✓). `wiki/system/seasons` (2026-07-29)
  confirms T016: **8-week** season, tokens auto-cash at season end, **bits carry over**.
- Tower Hub `wiki/system/tickets` (last verified **2026-07-29**) — the third print of the ticket rules: “Tickets function as
  the entry fee for Tournament Battles… you must spend **one Ticket** per Battle”, “You receive **one Ticket automatically**
  every time a new Tournament begins”, and for more: “watch a **video advertisement**, or purchase a Ticket directly for
  **10 Gems**”; the page lists **no ticket cap**, so the rising price is the only limiter (§3.1).
- Tower Hub `wiki/system/tournaments`, **2026-11-02 re-read** — the **complete ten-band tables** for all six leagues
  (Copper 100/20 → 10/5 … Legend 800/425/25 → 200/120/0), the two band-width sets (`…,7,8` and `…,9,6`, both Σ **30**), the
  rank-1 gem/stone ladders (+100/+100/+100/+200/+200 and ×2 four times then +105), the Σ-per-bracket figures of §3.2 and the
  pool-size prints **15 / 16 / 17**; parsed cell-by-cell with `tools/fandom-rewards-parse.ps1`. The same page's prose is the
  source of §4.3's inputs: “Silver adds one random battle condition, Gold adds two, and the count rises by one per league
  until Legend, which runs five at once”, ELS at **10 % / 20 % / 30 % / 50 %** from Gold, **Death Defy or Energy Shield** from
  Platinum, bosses every **10 → 5** waves across the six leagues, and Heat at **full strength at wave 1 000**.
- fandom `Tournaments` (raw page text) — the **seventh** table (**Mythic**, introduced **v29, 2026-08-26**: 900/475/50 →
  335/225/8, Σ 15 935 gems / 10 090 stones / **738** keys) and the copy against which Copper, Silver and Gold re-add
  **20/20 cells**; its Legend copy differs in the gem column and pays **1** key at 16–24 (§3.1's skew rows).
- fandom `Tournaments` (**raw wikitext, 2026-11-03** — all seven tables re-fetched for §3.3): Platinum `425/180 → 100/20`,
  Champion `550/300 → 175/20`, Legend `675/375/25 → 250/100/0`, Mythic as above — the numbers behind the print note in
  §3.3. fandom `Currency/Power Stones` (2026-11-03) prints the **1st-place** stone row **20 / 40 / 80 / 180 / 300 / 375 /
  475** and the four spend lines; its Platinum/Champion/Legend cells (180/300/375) are the fandom version of the same
  skew. New script: `tools/stones-band-closed-form.ps1` (§3.3's identity, the 70-cell grid, the stop-waves and the
  total-income column).
- Tower Hub `wiki/lab/lab-category-battle-condition` (last verified **2026-11-02**) — the five reduction lines with their
  caps in one table: `Battle Condition Reduction` **10**, `… Group 1` **20**, `… Group 2` **20**, `… Group 3` **10**,
  `… Group 4` **10** (Σ **70** levels), which is what turns §4.1's steps into the derived ceiling **R = 54.4 %**.
- fandom `Tournaments` (raw wikitext) — 30-player brackets, 7 leagues, Wed/Sat 00:00 UTC, ticket pricing (10 × n gems + ad), promotion top-4 / demotion bottom-6 with protected Copper–Gold, tie rule, Heat ramp to wave 1 000, boss-interval per league (10→5), Enemy Level Skip 10/20/30/50 %, Death Defy/Energy Shield from Platinum, and the complete per-league gem/stone/key reward tables (Mythic added in v29, 26 Aug 2026).
- fandom `Currency/Keys` (raw wikitext) — the per-rank key table for Legend and Mythic and the “fewer than 9 players pay less” caveat.
- `tools/gm_strings.txt` — `TournamentManager`, `TournamentAttempt`, `TournamentPrizeEntry`, `TournamentLeaderboardEntry`, `HeatDefinition`, and the exact panel names `Tournament Start Panel`, `Tournament Progress Panel`, `Tournament End Panel`, `Tournament Finished Panel`, `Tournament Conditions Panel`, `Tournament Heat Main Bar`.
- Remote-config keys seen in the binary: `haveTournamentVersion`, `joinTournamentV5`, `tournamentRegisterLoggingEnabled`, `banFromTournamentInternalV2` (a server-side join version + a ban list ⇒ joining is a server call, so an offline join will fail).
- Tower Hub `wiki/guide/legend-battle-conditions` (last verified **2026-11-02**, 6 data tables; their own numbers credited
  to *hiro29's Legend Battle Conditions guide*, last edited 2026-08-02) — the **26-entry** Legend table (`17 + 4 + 5`) with
  **19-value** per-heat lists and **18** heat-increase waves ending at **W1000**; the four Overheats with waves
  **1000/1500/1500/2000**, intervals **100/10/10/5** and the `max(1, 101 − value)` law plus the panel values **1** and
  **96**; `Damage Decay` **35** / `Health Decay` **50** with the **5-row × (1 − R)** table; the `1 − value × 0.01`
  skip-scaling law with the worked **×0.45** and **×0.6095** at **29 %**; Skip Decay's `100 − value` interval; the
  **17**-item Legend draw list in four categories and the per-league pool sizes (and their own two corrections: pool is
  **17** not 16, and **Orb Resistance** is entry 1 — drawn by the 2026-10-17 Legend bracket); the three decay constants
  **0.995 / 0.875 / 0.9** with the ten-row stun ladder; and the “Good to know” print **BCR lab: 10 lv, 0–20 %,
  1.25e18 coins, 79.2M s**.
