param()
# Appends the session-115 log entry (iteration 124) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 115 (iteration 124: the Attack Research category closes at nine lines and one ladder prices four of them)

## Asked

The Appendix B bill stopped at 72 of 169 census lines and listed `Attack` (9 lines) as unpriced. One item: price the whole
Attack Research category from the fandom per-line lab tables and see whether its ladders are new shapes or repeats of the
Main Research block priced at Rev 27.

## Sources

fandom, raw wikitext through `api.php?action=parse&page=X&prop=wikitext&format=json` (the plain page URLs still sit
behind a Cloudflare challenge for this client). Pages: `Lab Category/Attack Research` (the 9-line name list with caps
100/99/99/80/99/50/40/30/1), `Lab/Damage`, `Lab/Attack Speed`, `Lab/Critical Factor`, `Lab/Range`,
`Lab/Damage Per Meter`, `Lab/Super Crit Chance`, `Lab/Super Crit Mult`, `Lab/Rend Armor Max`,
`Lab/Light Speed Shots`, plus `Damage` (the printed damage product) and `Super Critical` (its gate sentence).
New script: `tools/attack-research-family.ps1` (transcribes every printed cell and re-adds the columns offline).

## What was established

**1. The category totals 9 lines / 598 levels = 25.594 T coins over 124 747.5 d = 341.5 y.** Per line (coins / clock):
`Damage` (100 lv) 116 005 939 / 1 495.22 d; `Attack Speed` (99) 111 695 939 / 1 444.98 d; `Critical Factor` (99)
111 695 939 / 1 444.98 d; `Range` (80) 50 035 939 / 700.13 d; `Damage Per Meter` (99) 111 696 099 / 1 444.98 d;
`Super Crit Chance` (50) 800 429 361 760 / 101 777.2 d; `Super Crit Mult` (40) 221 179 361 760 / 16 070.5 d;
`Max Rend Armor Multiplier` (30) 24.571 81 T / 368.68 d; `Light Speed Shots` (1) 3 000 000 / 19.98 h. The two Super Crit
lines hold **94.47 %** of the category clock.

**2. One 99-level column prices four of the nine lines.** `Damage` 1-99, `Attack Speed`, `Critical Factor` and (as a
prefix) `Range` print the identical cost/time cells seen in the Main Research block: L1 30 / 0 m, L2 71 / 6 m, L99
4 190 000 / 49 d 0 h 57 m. `Damage` adds a printed L100 (4 310 000 / 50d 5h 52m = 72 352 min), which explains its 100th
cell exactly: 111 695 939 + 4 310 000 = 116 005 939 and 2 080 765 + 72 352 = 2 153 117 min.

**3. The 80-level cap is the coin knee of that ladder.** Levels 1-80 cost 50 035 939 = **44.80 %** of the 99-level price
for **80.81 %** of the value (clock 48.45 %); levels 81-99 alone cost 61 660 000 = **55.20 %**. So the shared ladder is
about 1.23x cheaper per percentage point inside its first 80 levels - `Range` is the published target and the 99-level
lines should be stopped near 80 while coins bind.

**4. Value laws close exactly on 597/597 numeric cells.** `Damage` / `Attack Speed` / `Range` / `Damage Per Meter` /
`Super Crit Mult` = 1 + 0.02n; `Critical Factor` = 1 + 0.03n (so 3.97 at L99, the highest multiplier in the category);
`Super Crit Chance` = 0.10n percentage points (5.00 % at L50); `Max Rend Armor Multiplier` = 800 % + 25n (1 550 % at
L30). Practical consequence: `Critical Factor` and `Attack Speed` cost the same 111 695 939 but the first gives 1.5x the
value per coin, so equal-price labs are ranked by their printed step.

**5. `Damage Per Meter` is the same ladder, re-printed.** Cell-by-cell against the shared column it differs in exactly
**16** cost cells, each by **+10** coins, and only within L1-L26 (40 vs 30, 81 vs 71, 188 vs 178, 408 vs 398, 782 vs 772,
... 98 540 vs 98 530), plus **9** time cells each **+1 min** - total delta +160 coins / +9 min. Two wiki tables, one
in-game ladder, differences of the three-significant-figure print.

**6. The Super Crit pair shares the price column but not the clock column.** `Super Crit Mult` 1-40 is cell-identical to
`Super Crit Chance` 1-40 (L1 200 000 / 1d 3h 46m, L40 30 070 000 000) while 38 of 40 time cells differ (L3 3 354 vs
3 351 min, L4 4 284 vs 4 261 min). The ten extra `Super Crit Chance` cells sum to exactly 579 250 000 000 coins. Their
per-level price ratios decay 1.126 -> 1.102 (L41-L50) - the decaying-ratio shape, second tail value.

**7. `Max Rend Armor Multiplier` gives two new shapes at once.** Price is near-arithmetic: consecutive differences are
40 B for the first 19 cells (200, 240, 280.01, 320.03, 360.1, 400.23, 440.45 ...) and 50-60 B in the rounded tail. The
clock is **quadratic**: increments 835 -> 976 min with second differences 3..7 min, so t(n) = 4999 + 835(n-1) +
2.5(n-1)(n-2) fits within 155 min (0.5 %) at L30 - the residual is minute truncation. Per percentage point of its cap it
costs **0.492 d**, the cheapest clock per unit in the category (next best 4.376 d for `Range`).

**8. Which currency binds.** The category's 25.594 T is **0.051 %** of one 500 T income day and **0.0005 %** of the
priced bill, while its clock is 341.5 y: the Attack layer is purely clock-bound, which is where the x1.5 Elite-Cell boost
(30 cells per skipped hour per slot) pays most and where gem rushing is least needed.

**9. Gates laddered straight from the lab pages**: `Attack Speed` and `Critical Factor` T1 W30, `Range` T2 W30,
`Damage Per Meter` T3 W30, `Super Critical` T5 W200, `Light Speed Shots` T7 W10, `Max Rend Armor Multiplier` T13 W10,
`Damage` tier 1 (no wave printed).

**10. Appendix B grows to 96 lines.** Adding `H` (Main Research, 15 lines, 826.445 q / 16 806.0 d, the Labs Speed twin
included) and `I` (Attack Research, 9 lines, 25.594 T / 124 747.5 d) gives coins **4.865 Q** and clock **245 588.8 d**;
coverage **96 / 169 = 56.8 %**, remainder 73 lines (Defense 15, Utility 10, Card 18, Perk 9, Bot 8, Module 6, Enemies 2,
Battle Condition 5). Restated shares: the T19 band is 33.4 % / 28.6 % of the 96-line bill (was 40.29 % / 67.6 % inside
the 72-line bill). Income units for the new bill: 6 950 d = 19.03 y of coins at 700 T/day, 672.4 y of single-slot clock
= 134.5 y on five slots = 36.1 y with the x3.725 stack.

## Next open question

The `Defense` category (15 lines) should price the same way from `Lab/<line>`; if it repeats the shared 99-level column
again, the census has a third one-column-block and the per-pp ranking becomes the whole ordering story. Device list
unchanged: H062, H061, then the gate-cell reads (now eleven printed gate cells to compare against the Milestones screen).

## Verdict

**T006 Rev 28** (new section with the nine-line table and eight findings, three checklist items, two falsification notes,
one Sources bullet; Appendix B rows `H`/`I` + restated coverage and shares). INDEX and README rows bumped, the INDEX row
re-collapsed to one line by `tools/fix-index-row-124.ps1` (25 rows, all five pipes).
'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
