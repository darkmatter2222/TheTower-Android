param()
# Appends the session-133 log entry (iteration 142) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 133 (iteration 142: the lab tree on the calendar)

## Asked

Rev 37 ranked one lab category (the ten bot lines) against the medal sheet. The appendix already prints `Sigma coins` and
`Sigma clock` for **seventeen** layers covering all 191 priced lab lines, so the same two divisions should rank the whole lab
tree in the same list. One item: build that ledger, check it against the printed census totals, and read the queue off it.

## Sources

No new fetches - every input is printed in T006: the 17-row Appendix B table (layers `A` to `Q`, the coin column in the
K-M-B-T-q-Q-s units and the clock column in slot-days), the closed census total **191 lines / 3 243.839 3 Q / 497 359.8 d /
272.3 y / 73.1 y**, the incomes **700 T coins/day** and **607.5 medals/day** (T013 2.4), the **445-tap / 212 660-medal** sheet
(T015 3.4) and the **x3.725** lab-speed stack. New script: `tools/lab-tree-day-ledger.ps1` (its layer array is a literal
copy of the appendix table; the unit map needs `-ceq` because the ladder has both `q` = 10^15 and `Q` = 10^18 and
PowerShell switch/hashtable matching is case-insensitive - the first run put 697.5 q at 10^18 and moved layer `B2` by 1000x).

## What was established

**1. The ledger re-adds to the printed census.** `3.2438393e21/700e12` = **4 634 055.8** coin-days (the doc prints
4 634 056, so the Q-unit conversion is exact) and `Sigma clock` = **497 359.6** slot-days against the printed **497 359.8** -
a **0.2-day** skew, 4 x 10^-7 per cent, which is the one-decimal rounding of the per-layer prints (logged as a skew, not an
error). Dividing by 5 slots gives **99 471.9** calendar days = **272.3 y** and by 5 x 3.725 gives **26 703.9 d = 73.1 y**,
both matching the doc exactly; the two-side ratio **x46.6** is the Rev 36 bill number.

**2. Two layers are the entire coin bill.** `C` (the 8 assist labs, 1 328 571.4 coin-days) + `P` (BC + the two `Boss` lines,
3 296 539.3) = 4 625 110.7 of 4 634 055.8 = **99.81 per cent**. At the 700 T anchor those are the only coin-bound layers;
every other layer costs its clock. So the appendix**s** "the binding currency flipped at Rev 34" is, numerically, "two
arrivals" - and the cheapest-first order of the other fifteen layers does not depend on the coin income at all.

**3. The queue.** `E D F G L` (**5.1 / 25.8 / 52.1 / 179.5 / 237.1** days) then the **medal sheet (350.1 d)** then
`Q O K J B H M A B2` (1 068.3 / 1 321.2 / 2 017.1 / 3 010.2 / 3 025.6 / 3 361.2 / 3 600.0 / 3 633.2 / 6 026.0 d) then
`I` (24 949.5) and `N` (36 634.8) and last the two coin-bound layers `C`, `P`. Two derived cuts: the **per-line** cost
(`E` 5.1, `D` 12.9, `F` 26.1, `L` 39.5, `Q` 89.0 ... `N` 4 070.5, `P` 470 934 d) and the **flip income** per layer
(`I` 1.026 B, `K` 4.415 B, `F` 28.59 B, `G` 68.56 B, `J` 62.20 B, `N` 118.4 B, `B` 126.6 B, `L` 130.1 B, `D` 560.4 B,
`O` 2.449 T, `B2` 115.7 T, `H` 245.9 T, `M` 444.4 T, **`A` 663.6 T**, **`Q` 672.4 T**, `C` 115.7 q, `P` 1.007 Q). Below
1e11 coins/day (earliest saves) **twelve of the eighteen rows** are coin-bound (the seventeen lettered layers, `B2` being a
split of `B`), so those saves rank the per-coin column.

**4. The year-one plan falls out.** The first five layers are **12 of 191 lines** and **0.50 per cent** of the clock
(499.6 of 99 471.9 calendar days), and with the x3.725 stack only **134.1 calendar days** of slot time - so they fit
entirely inside the **350.06-day** medal sheet. Run `E -> D -> F -> G -> L` in the five slots with the stack up, buy medals
in every gap, and both are done in about **350 days**; the first layer that does not fit is `Q` (cumulative 420.9 d).

**5. The value ceiling is still cost-side only**, but it is bounded: layer `I` would need `Sigma ln` = 0.050 720 x 24 949.5 =
**1 265.4** (**140.6 per line**) to match the medal sheet**s** density, `N` **1 858.2** (**206.5 per line**), and no lab
line anywhere in the doc exceeds `ln` **1.4** - so the sheet stays ahead of every layer regardless of the missing value laws.

## Verdict

**T006 Rev 38**: new section "The whole lab tree on the calendar - seventeen layers in one queue" (the model recap, the
18-row table with both cost columns and the bind, the five findings above), 3 checklist items, 3 falsification bullets,
Rev line + Sources bullet. INDEX T006 row bumped to Rev 38, session-133 anchor; README T006 description + confidence cells.

## Skews

`Sigma clock` 497 359.6 (script) vs **497 359.8** (printed) - delta **0.2 d**, 4 x 10^-7 per cent, from the one-decimal
per-layer prints; everything else matches to the printed digit count (4 634 055.8 vs 4 634 056; 272.3 y; 73.1 y; x46.6).

## Next open question

Device list unchanged: **H063**, **H065**, **H064**, **H014**, **H066**, **H067**, **H068**, **H062**, **H061**, plus the
printed coin `income/day` counter (it decides the bot-category order, and now also whether layers `A` and `Q` are on the
coin side - the two flips sit at **663.6 T** and **672.4 T**). Paper candidates: (a) fill the missing `Sigma ln` rows -
only layer `O` has one - by summing the printed value laws of `A`, `Q`, `M` (the mastery labs are 32 copies of one line, so
its `ln` is nearly free); (b) the **stone** side of the day scale (Bot+ 6 250 st vs UW sync 910 st per day, T014 3.3);
(c) the same ledger for the non-lab currencies (cards, perks, guardian, vault) where the price tables are already in T010.

'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
