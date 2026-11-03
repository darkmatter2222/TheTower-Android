param()
# Appends the session-121 log entry (iteration 130) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 121 (iteration 130: the BC labs close the census and coins become the binding currency)

## Asked

Rev 33 left 13 unpriced lines. One item: price the **Battle Condition** category (5 lines) and the two `Boss` lines from
their `Lab/<name>` tables, test the shared-column / law hypotheses against them, and restate the Appendix B bill.

## Sources

fandom, raw wikitext through `api.php?action=parse&page=X&prop=wikitext&format=json`. Seven pages under `Lab/`:
`Battle Condition Reduction` (10 rows, per-cell `q` suffix), `Battle Conditions Group 1` (20 rows), `Group 2` (20),
`Group 3` (10), `Group 4` (10) - the four group pages carry the header `Cost(Q)` = 10^18 coins and their prose names the
covered conditions (Group 1 resistances, Group 2 enemy/spawn buffs, Group 3 enemy ultimates, Group 4 durations) - plus
`Boss Attack` and `Boss Health` (30 rows each). None prints a `Total` row. `Lab Category/Battle Condition` and
`Lab Category/Module Research` give the name lists. New script: `tools/battle-condition-boss-family.ps1`.

## What was established

**1. Level counts re-add to the census.** 10 + 20 + 20 + 10 + 10 = **70** for the five BC lines (census row 70 / 5) and
2 x 30 = **60** for the Boss pair inside the 21-line Enemies row.

**2. The BC category is the most expensive thing in the census: 2 307.577 5 Q for 11 453.0 d** (with the Boss pair), of
which the five BC labs alone are **2 307.577 5 Q / 8 981.2 d** and the Boss pair **60.824 T / 2 471.9 d**. Per line:
BCR **1.2475 Q / 916.67 d**, Group 1 **42 Q / 2 834.85 d**, Group 2 **105 Q / 3 401.84 d**, Group 3 **113.33 Q /
755.96 d**, Group 4 **2 046 Q / 1 071.85 d**, Boss (each) **30.412 T / 1 235.94 d**. Shares: **99.72 %** of the priced
coins for **1.83 %** of the clock, Group 4 alone **88.42 %**. The 32 mastery labs (1.600 Q) are **x1 442** smaller.

**3. One time unit covers four of the five columns.** The assist-lab unit `933 078 s = 15 551.3 min` (layer `C`) times
**1.2500** (Group 1, step 19 439 min), **1.5000** (Group 2, 23 327), **1.0000** (Group 3, 15 551), **1.6500** (Group 4,
25 660) - all four exact to four decimals. `Battle Condition Reduction` is the exception: arithmetic **24 000 min =
exactly 400 h** per level (1.5433 x the unit), the round-hour unit.

**4. Three cost shapes in one category.** Arithmetic: Group 1 **+0.2 Q** and Group 2 **+0.5 Q** per level (exact, 7/7
steps each). Geometric: Group 3 = the **x1.5** family law (nine ratios 1.4970-1.5022 = 3-s.f. wobble); BCR **x2.05**
(2.0452-2.0581). Exact doubling: Group 4, ratio **2.0000 on all nine steps**, `2 Q -> 1024 Q`.

**5. `Boss Attack` = `Boss Health` cell for cell** (0 differing cells in costs, times and values), **and their time
column is the bot `* Cooldown` column + 1000 min** on all 25 shared levels (0 differing cells; L25 123 902 vs 122 902),
then five extra levels to 232 408 min = 161.39 d. One printed ladder now prices nine census lines with two offsets.
Boss cost ratios decay 2.0003 -> 1.0949 (head) and 1.0994 -> 1.0949 (tail).

**6. Unit prices.** BCR **6.237 25 x 10^16** coins per +1 pp of condition reduction, 91.67 d/level; Group 1 **2.10e18**,
Group 2 **5.25e18**, Group 3 **1.133 30e19**, Group 4 **2.046e20** coins per level; Boss **1.013 74 x 10^12** coins and
**41.20 d** per -0.30 % (30.412 T / 1 235.94 d for -9.00 %). Per queue-day the BC labs cost **2.569 3e17** coins against
the Boss pair's **2.460 7e10**, i.e. **x10^7** dearer. Gates: BCR T18 W1000, Group 1 T19 W100, Group 3 T19 W500, Group 2
T20 W60, Group 4 T21 W1000, Boss pair **T9 W50** (the doc's older print said T9 W20 - skew logged).

**7. The bill and the binding-currency flip.** Appendix B gains row `P`; the rows sum to **185 distinct** priced lines of
the 191-line census = **96.9 %** (`Garlic Thorns` is the Defense category's 16th line, layer `E`, so layer `J` carries 15 -
no double count), the last six being the `Module` named labs. Bill **2 314.051 Q / 492 018.4 d** = **3 305 787 d =
9 050.75 y** of coin income at 700 T/day vs **1 347.1 y** single-slot clock (269.4 y five slots, 72.3 y with the x3.725
stack). Up to layer `O` coins were a rounding error (25.32 y vs 1 315.7 y); now **coins bind by x6.72** on the single-slot
clock and **x33.6** on five slots. On the 12-mastery-lab reading: census **171** lines, **165** priced (96.5 %),
**2 313.051 Q / 474 018.4 d**.

## Verdict

**T006 Rev 34** (new "The Battle Condition category and the two Boss lines" section: 6-row table + 7 findings + 3
checklist items + 2 falsification notes + 1 Sources bullet; Appendix B row `P`, Sigma row 185 priced / 96.9 %, the
income paragraph rewritten for the coin-binding flip, fact 1 coverage 96.9 %, fact 3 shares restated; Boss-pair gate skew
added to finding 4) + new **H064** (three candidate ceilings: the pages' additive **80 pp** / multiplicative **58.5 %** vs
the model's **54.4 %**, which is what the value-55 skip `x0.7492` and the `removed = 16 / 23` floor are built from). INDEX
and README rows bumped; validator clean after the log anchor.

## Next open question

Six lines left: the `Module` named labs (`Module Labs/<name>`: Common/Rare Drop Chance **10**, Shatter Shards **5**,
Unmerge Module **1**, two ban lines). Then the device list: H063 (also settles the 191 vs 189 denominator), H064, H062,
H061, the Bot Bot and Boss gate prints, then the gate-cell reads.

'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
