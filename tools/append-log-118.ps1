param()
# Appends the session-109 log entry (iteration 118) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 109 (iteration 118: the lab system gets a running bill and a coverage census)

## Asked

Appendix A.2 totalled the 39 UW lab tables; the remaining lab categories had per-line bills scattered across T006, T010,
T012 and T024 with no sum and no statement of how much of the 169-line census is actually priced. One item: sum every layer
whose lines are all priced, and census the gap.

## Sources

Internal only, all from printed `Total` cells: the 39 UW tables (Appendix A.2), the T9-T13 enemy-stat band (13 lines), the
T19 trio (6 lines at **116.25 q / 5 021.68 d**), the 8 assist module labs (**116.25 q / 5 021.8 d**), the Second Wind pair
(**84.3 M / 750 000 s** and **14.43 T / 120 d**), `Garlic Thorns` (**1 350 000 / 25.45 d**), the two `* Level Skip` labs
(**0.745 T / 130.31 d** each) and `Super Tower Bonus` L1-10 (**115.94 B / 22.2 d**). Income anchors 700 T coins/day and
1 000 cells/day, boost price 30 cells per skipped hour, stack x3.725. New script: `tools/lab-summit-e.ps1`.

## What was established

**1. The running bill (`T006` Appendix B).** Eight layers, **72 lines**, **Sigma coins = 4.039 Q**,
**Sigma clock = 104 035.3 d** = 285 y single-slot = **57.01 y** on five slots = **15.3 y** with the x3.725 stack. In income
units: coins **5 770 d = 15.80 years**; the x1.5 boost on all of it is **2.4968 x 10^7 cells = 24 968 d = 68.4 y** at
1 000/day => **cells bind over coins by x4.33** for the lab system as a whole.

**2. The coverage census: 72 / 169 = 42.6 %.** Priced: UW 39/39, Enemies 19/21 (the two `Boss` lines have no printed
`Total`), Module 8/14 (the assist labs), Defense 1/16 (`Garlic Thorns`), Utility 2/12 (the level-skip pair), Card 3/21
(second-wind pair + `Super Tower Bonus`, the latter only to L10). Unpriced 97 lines sit in Main (15), Attack (9),
Defense (15), Utility (10), Card (18), Perk (9), Bot (8), Module (6), Enemies (2), Battle Condition (5) - those pages print
ladders without totals, so they are device-read or per-level-product work.

**3. One band dominates the bill.** The **fourteen T19-band lines** (`Vampire`/`Ray`/`Scatter` Health+Attack plus the eight
assist labs, every one `0.25 q x n` over 30 levels and `n x 933 078 s`) = **1 627.5 q = 40.29 %** of the covered coins and
**67.6 %** of the covered clock. Because cost and time are both arithmetic there, their clock scales *with* their coins,
which makes them the best x1.5-boost value in the lab system; the geometric families (`L-I`..`L-VI`) front-load coins
instead, so they are coin-bound (Appendix A.2's Law B).

**4. Everything below the T19 band is a rounding error.** The 19 covered non-T19/non-UW lines cost **399.15 T = 0.57 days**
of income (0.01 % of the bill) while consuming **15 564 d** of clock - the same knee as A.2's 33 cheap lines, now visible
across layers. Ledger integration: `T025` Rev 4 adds section 1.4 and a §1 row.

**PowerShell lesson.** Variable names are case-insensitive, so `$Q = 1e18; $q = 1e15` is one variable and the first sum
came out 1000x low. The suffix ladder now uses `$U6 / $U9 / $U12 / $U15 / $U18`.

## Next open question

The 97 unpriced census lines are the biggest remaining evidence gap in the lab system. Cheapest way in, in order:
(i) `Main Research` (15 lines) - the family law is known (cost x1.5, time x1.15), so **one** printed level-1 price per line
fixes the whole line; (ii) `Bot` (8) and `Perk` (9) research, same family; (iii) the two `Boss` lines. Each is a short
screen read, so this is device work rather than wiki work.

## Verdict

**T006 Rev 25** (Appendix B + one checklist item + two falsification notes) and **T025 Rev 4** (§1.4, one §1 row),
INDEX and both README rows bumped (25 rows, 0 bad). **Next:** the last two cheap wiki pages (`card/nuke`,
`enemy/brick-discriptions`), then the device pass (H061 first, then the Main-research level-1 prices).
'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
