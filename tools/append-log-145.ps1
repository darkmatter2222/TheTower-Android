param()
# Appends the session-136 log entry (iteration 145) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 136 (iteration 145: layer A on value, the 39 UW lab tables)

## Asked

Two rows of the lab ledger were still missing a value column while their laws were already printed: layer **A** (the 39 UW
lab tables, laws in Appendix A.1) and the rest. One item: price layer **A** on value, confirm its line count closes, and
re-issue the merged schedule with it in.

## Sources

No new fetches. Inputs: **Appendix A.1** (the 31 leveled tables with `v1`, `step`, the value at cap, and the L1-10 bills),
the eight one-level unlock rows totalling **565.255 B / 70.32 d** (Appendix A.2 finding), Appendix A.2**s** layer totals
(**2.4111 Q / 18 165.95 d**), and the Rev 39/40 layers plus the medal sheet and the par as references. New script:
`tools/lab-value-layer-A.ps1`.

## What was established

**1. The layer closes without a new fetch**: 31 leveled tables + 8 one-level unlock rows = **39** lines, exactly the
Appendix B row **A**. One table (`Swamp Rend - Additional Enemies`) is text-valued and stays at `ln 0` in every reading.

**2. `Sigma ln` = 65.9162 (reading R, the printed value columns) / 63.4826 (reading P, pp lines as 1 + pp)**, per line
**1.690**, over **3 633.2** calendar days at five slots ⇒ density **0.018143** / **0.017473** per day, **0.067582** with the
x3.725 stack. Against the par **0.017957** that is **1.010x** (R) and **0.973x** (P): **layer A straddles the par**, and it
is the only layer whose position relative to the cosmetic line depends on the pp convention. The medal sheet is **2.796x**
the layer.

**3. The schedule with A in it.** Reading R: `E 0.452374 > D 0.116339 > F 0.114946 > sheet 0.050720 > L 0.033768 >
Q 0.025603 > A 0.018143 > par 0.017957 > J 0.014128 > H 0.011422 > M 0.011315 > K 0.009941 > O 0.003481 > G 0.003412`.
Reading P puts the par above A: `... L > par > A 0.017473 > Q 0.014562 > M 0.011315 > J 0.008155 > K 0.005625 > H 0.004099 >
O > G`. The head (`E D F sheet L`) and the tail (`O > G`) are identical in both, as in Rev 40.

**4. Internal structure of the layer.** Five lines print a value column that runs to exactly thirty times its first level -
`Chrono Field Duration` (1.00 -> 30.00), `Chain Thunder` (3 -> 90 %), `Lightning Amplifier-Scatter` (x1.25 -> x37.5),
`Swamp Radius` (0.04 -> 1.20), `Swamp Rend - Basic Enemies` (3 -> 90 %) - each `ln 30 = 3.401197`; then `Golden Tower
Bonus` `ln 25 = 3.2189`, five lines at `ln 20`, `Missile Amplifier` 2.7344. The cheap block is also the dense one: the six
L-I/L-III lines that cost **287-608 M** for their first ten levels carry **19.1908** of 65.9162 = **29.1 %** of the layer.

**5. Sensitivities.** Treating the eight unlock rows as one step each (`ln 2`) gives `Sigma ln` **71.4614** and density
**0.019669** - above the par in both readings, still below `Q`, so no other rank moves. Using the rho-form for the five
`ln 30` lines (`ln(31/1) = 3.43398`) is +0.96 % on the layer. The rank-stability band for layer A is `Sigma ln`
**65.24 ... 93.02** (R) and **52.91 ... 65.24** (P).

**6. Coverage after the pass: 12 of 18 rows, 145 of 197 lines, `Sigma ln` 259.481, 18 510.6 calendar days** at five slots.
Remaining: `B`, `B2`, `C`, `I`, `N`, `P` (52 lines) - `I` (Attack) and `N` (Perk) need their per-line value columns
re-transcribed from the pages, `B`/`B2` (enemy stats) and `C`/`P` are single-law blocks.

## Verdict

**T006 Rev 41**: new section "Layer `A` on the value side - the 39 UW lab tables, and the schedule with it" (the closure,
the two-reading table, the straddle finding, the internal top list, the unlock sensitivity, the coverage line), 2 checklist
items + 1 updated, 3 falsification bullets, Rev line + Sources bullet; the Rev-40 checklist item now lists `A` in the
schedule. INDEX T006 row to Rev 41, session-136 anchor; README T006 description + confidence cells.

## Next open question

Device list unchanged (**H069** first, then **H063**, **H065**, **H064**, **H014**, **H066**, **H067**, **H068**, **H062**,
**H061**) plus the coin `income/day` counter. Paper: (a) `B`/`B2` and `C`/`P` are single-law blocks and can be closed from
the printed laws in this doc (12 + 15 lines), which would take the ledger to 16 of 18 rows; (b) re-transcribe the `I` and
`N` value columns (18 lines) from the fandom pages; (c) the **stone** side of the day scale (Bot+ 6 250 st vs UW sync
910 st, T014 3.3).

'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
