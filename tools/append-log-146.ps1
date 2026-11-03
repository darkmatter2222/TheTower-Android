param()
# Appends the session-137 log entry (iteration 146) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 137 (iteration 146: the four single-law blocks on value)

## Asked

Four rows of the lab ledger are single-law blocks, so their `Sigma ln` should come straight from the printed `v1`/step
pairs: **B** (the enemy-stat T9-T13 band, 13 lines), **B2** (the T19 trio, 6), **C** (the 8 assist labs) and **P** (BC
Reduction + the four Groups + the two `Boss` twins, 7). One item: price them, re-issue the merged schedule, and say how much
of it survives the two ways of reading a percentage-point law.

## Sources

No new fetches. Inputs: §the enemy-stat layer (the shared ladder, `−0.40 % x n` to `−12.00 %`, the `−0.30 %` Protector lines
to `−9.00 %` / `−6.00 %` at 20 levels, `Ranged Enemy Range` `−0.50n` to `−15.00 %`), §The Assist Module Labs (`+1 pp/level`,
30 levels, one slot efficiency `1 % -> 70 %` stone + `30` lab = 100 %), §BC/Boss finding 6 (the pages print `2n` for
`Battle Condition Reduction` and `1n` for the four Groups, 20/20/10/10 %) and the `Boss` twins `−0.30n` to `−9.00 %`; the
Appendix B column for the two resources. New script: `tools/lab-value-blocks.ps1`.

## What was established

**1. `Sigma ln` under reading R (printed values) / P (physical 1 - pp):**
`B` **43.8101 / 1.5134** ; `B2` **20.4072 / 0.7430** ; `C` **27.2096 / 21.9267** ; `P` **19.7016 / 1.0024**.
Densities (R): **0.014480**, **0.003387**, **0.000020**, **0.000006** per calendar day; the two coin-bound layers use their
coin-days (**1 328 571.4** and **3 296 539.3**), which is why they are 4 digits under the sheet.

**2. A new identity: `ln = ln(cap / step)`**, and every shared-ladder line satisfies `cap = step x levels` exactly, so each
is `ln 30 = 3.401197`: `−12.00/0.40`, `−9.00/0.30`, `−15.00/0.50`, `30 pp/1 pp` all give 30. Hence the per-line averages
**3.401** for `B`, `B2` and `C` (and 2.815 for `P`, pulled down by its two 10-level Group lines). The value column alone now
predicts the layer totals with no re-adding.

**3. The reading fork is 29x for `B` - the largest in the ledger** (0.014480 vs 0.000500 per day), because a pp reduction
leaves the physical multiplier near 1 (`0.996 -> 0.88`). The multiplier-law layers move by only +0 to +16 % between the two
readings. So: use R for the multiplier-law layers, and the P form when the question is what the run actually gains from a
reduction line. **The head is invariant: `E > D > F > medal sheet > L` in both readings.** Rows 6-15 lie in one 8x band
(0.003-0.026 per day), so in that band finishing beats ordering; `C` and `P` are last in both readings, which agrees with
the cost ledger and with their T18-T21 gates.

**4. Coverage now 16 of 18 rows, 179 of 197 lines, `Sigma ln` 370.610** (mean 2.07 per line). Only `I` (Attack, 9 lines)
and `N` (Perk, 9 lines) remain; their pages print the laws as shape families (`L-I ... L-VI`, the doubling columns) rather
than `v1`/step pairs, so they need a re-transcription pass.

## Verdict

**T006 Rev 42**: new section "The four single-law blocks (`B`, `B2`, `C`, `P`) - sixteen rows value-complete" (the two-reading
table with the bind column, the `ln(cap/step)` identity, the 29x fork note, the both-readings schedule with the invariant
head, the coverage line), 2 checklist items, 3 falsification bullets, Rev line + Sources bullet. INDEX T006 row to Rev 42 +
session-137 anchor; README: both 14-row order strings extended to 18 items and the confidence cell to Rev 42.

## Skews

None new: the four layers' coin and clock columns were taken from Appendix B unchanged (`B` 383.113 T / 15 127.87 d, `B2`
697.5 q / 30 130.08 d, `C` 930.00 Q / 40 174.2 d, `P` 2 307.577 5 Q / 11 453.0 d), so the densities move only with the
`Sigma ln` numerators, which are closed forms.

## Next open question

Device list unchanged: **H069** first (the presets row, one tap), then **H063**, **H065**, **H064**, **H014**, **H066**,
**H067**, **H068**, **H062**, **H061**, plus the coin `income/day` counter. Paper: (a) re-transcribe the `I` and `N` value
columns from their fandom pages to close the last 18 lines; (b) the **stone** side of the day scale (Bot+ 6 250 st vs UW sync
910 st, T014 3.3) as a third resource in the same `max()` model; (c) the same ledger for the non-lab currencies of T010.

'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
