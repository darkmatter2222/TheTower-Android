param()
# Appends the session-134 log entry (iteration 143) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 134 (iteration 143: the value side of the cheap lab layers)

## Asked

The Rev 38 ledger ordered the seventeen lab layers by the **calendar** they consume but was cost-side: only layer `O` had a
`Sigma ln`. One item: sum the printed value laws for every layer whose laws are complete, put the `Sigma ln` on the same
day scale, and see whether the resulting density order confirms or contradicts the cost order.

## Sources

No new fetches - all inputs are printed in T006: the per-line value laws of the §Card Research table (Rev 31), the
`0.5n` law of `Garlic Thorns` (the §cap-table row and the Rev 11 line), the `0.10 x n` law of the two `* Level Skip` lines
(papered from `wiki/workshop/enemy-level-skip` into §the enemy-stat layer and T024), the `1 + 0.03n` law of
`Super Tower Bonus` (Rev 31 finding 2), the `1.4 to 5` mastery table (§Card Research finding 6), the Recharge wave counts
`2 000 to 400` and `1 500 to 300`, the `+1`/`+2` two-level lines, and the Rev 37 `Sigma ln = 4.5990` for layer `O`.
New script: `tools/lab-value-layers.ps1`.

## What was established

**1. The `Sigma ln` of seven layers** (convention as in T015 3.2: `ln(value at max / value at level 1)` read off the printed
law; a pure `k x n` law is `ln(N)`): `E` **2.3026** (ln 10) · `D` **2.9957** (ln 5 + ln 4) · `F` **5.9915** (2 x ln 20) ·
`L` **8.0064** (ln 30 + 2 ln 2 + 2 ln 5) · `M` **40.7349** (32 x ln(5/1.4) = 32 x 1.272 966) · `O` **4.5990** ·
`G` **0.6123** (ln(1.90/1.03)).

**2. The density order, and it is not the cost order.** Dividing by the Rev 38 calendar days (5 slots):
`E` **0.452 374** > `D` **0.116 339** > `F` **0.114 946** > **medal sheet 0.050 720** > `L` **0.033 768** >
**par 0.017 957** > `M` **0.011 315** > `O` **0.003 481** > `G` **0.003 412** per day. Two changes against the cost queue:
`L` overtakes `G` (**9.9x**: 8.0064/237.1 vs 0.6123/179.46), so the practical schedule is
**`E -> D -> F -> L`, the medal sheet, then `M`, then `O`, then `G`**; and three lab layers (`E`, `D`, `F`) are worth more
per calendar day than the **whole** medal sheet, which the Rev 37 print had ranked above the lab category as a block. The
four best layers are **1.4 + 6.9 + 14.0 + 63.7 = 86 calendar days** with the x3.725 stack for `Sigma ln` **19.30** - more
than the medal sheet (17.755) for one quarter of its days. `Garlic Thorns` is the densest object found anywhere in this
research: **1.685 094/day** with the stack = **94x** the par, from a 1 350 000-coin line with 25.45 days of raw clock.

**3. Convention sensitivity is harmless.** Reading the `k x n` laws from a level-0 base (`ln((rho+N)/rho)`) instead of the
level-1 base changes `Sigma ln` by **+4.1 %** (`E`), **+1.6 %** (`F`), **+4.8 %** (`G`), **+1.0 %** (Death Ray) and
**+16.1 %** (Second Wind Blast), no rank changes. Only the two-level `+1`/`+2` lines are sensitive (**+58.5 %**, `ln 2` to
`ln 3`): that lifts `L` to **0.037 189** (`Sigma ln 8.8172`), still between the par and the sheet.

**4. Three independent re-adds of the printed figures.** `F`: `0.745 T / 2.00 =` **372.5 B** coins per point = the printed
**373 B** ✓. `M`: `50.00 q / (5 - 1.4) =` **1.388 9e16** = the printed figure ✓. Layer sums: `D` = 14.430 T + 84.3 M =
**14.430 09 T** vs the printed **14.4301 T** ✓; `L` = **30.847 1 T** and **1 185.53 d** vs the printed **30.848 T** and
**1 185.5 d**; `M` clock 32 x 562.5 = **18 000 d** ✓. The layer-`L` coin identification also **confirms the membership** of
the six lines (`Double Death Ray` + `Energy Shield Extra Hit` + `Extra Extra Orbs` + `Extra Orb Adjuster` + `Recharge
Demon Mode` + `Recharge Nuke`), because only that set sums to both columns.

**5. Two skews, both from two-significant-figure prints.** `L` coins **30.847 1** vs printed **30.848** (delta **0.000 9 T**,
3 x 10^-5 per cent, the `890 B` line carries only two figures) and `L` clock **1 185.53** vs **1 185.5** (0.03 d). Neither
moves a rank: `L` is 0.67x the sheet, two orders of magnitude away from any neighbour.

## Verdict

**T006 Rev 39**: new section "The value side of the cheap layers" (the convention, the seven-layer `Sigma ln`/density table
with the stack column, the ranked schedule, the convention-sensitivity list, the three re-adds, the honest statement that
ten layers are still cost-side and why the two ceilings of Rev 38 hold), 3 checklist items, 3 falsification bullets (the
mastery-multiplier bound **12.53 - 64.65**, the Garlic-Thorns cap bound, the `ln 2`/`ln 3` variant), Rev line + Sources
bullet. INDEX T006 row bumped to Rev 39, session-134 anchor; README T006 description + confidence cells.

## Next open question

Device list unchanged: **H063**, **H065**, **H064**, **H014**, **H066**, **H067**, **H068**, **H062**, **H061**, plus the
coin `income/day` counter. The new bound the value side creates: whether **all 32 mastered cards share the printed
`1.4 to 5` table** - one non-matching mastery page is enough to force a per-card sum for layer `M` (the density only moves
outside `12.53 - 64.65` `Sigma ln` if the shared-table reading is badly wrong). Paper candidates: (a) finish the `Sigma ln`
set for `A`, `B`, `B2`, `H`, `J`, `K`, `Q` (their per-line laws are already printed in this doc, unlike `I`/`N` whose laws
were transcribed only as column shapes); (b) the **stone** side of the day scale (Bot+ 6 250 st vs UW sync 910 st, T014 3.3);
(c) the same ledger for the non-lab currencies of T010.

'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
