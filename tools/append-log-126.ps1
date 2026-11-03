param()
# Appends the session-117 log entry (iteration 126) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 117 (iteration 126: the Utility category closes and the interest cap gets a printed ladder)

## Asked

Rev 29 left ten unpriced Utility lines, the only category that carries the coin-side multipliers. One item: price all ten
from the same per-line fandom tables and find out (a) whether the 99-level shared column recurs a third time, (b) what
`Max Interest` actually does to the interest cap, and (c) whether the Recovery lines share columns with anything already
priced.

## Sources

fandom, raw wikitext through `api.php?action=parse&page=X&prop=wikitext&format=json`. Pages:
`Lab Category/Utility Research` (12 lines, caps 99/99/99/99/99/15/1/20/20/20/20/20) then `Lab/Cash Bonus`,
`Lab/Cash Per Wave`, `Lab/Coins Per Kill Bonus`, `Lab/Coins Per Wave`, `Lab/Interest`, `Lab/Max Interest`,
`Lab/Package After Boss`, `Lab/Recovery Package Amount`, `Lab/Recovery Package Max`, `Lab/Recovery Package Chance`, plus
`Lab/Fast Enemy Health` for the 30-level comparison ladder. Note the page names drop the slashes (`Cash Per Wave`, not
`Cash / Wave`). New script: `tools/utility-research-family.ps1`.

## What was established

**1. The shared 99-level column recurs, at a second head.** `Cash Bonus`, `Cash / Wave`, `Coins / Kill Bonus` and
`Coins/wave` print byte-identical tables: 111 696 509 coins / 2 080 774 min = 1 444.98 d each, L1 40 coins / 0 m / 1.02,
L99 4 190 000 / 49 d 0 h 58 m / 2.98. Against the head-30 column of Rev 27-29 only 57 of 99 cost cells differ, by +570
coins in total, and 9 of 99 time cells by +9 min - so the two heads are two prints of one ladder and the per-unit price
differs by three coins (564 124 vs `Attack Speed` 564 121 per +0.01). Block of four: 446 786 036 coins / 5 779.93 d = the
Main-category block plus 4 x 570.

**2. `Interest` is the `Labs Coin Discount` ladder at head 50.** Sigma 472 468 836 against that line's 472 509 506, delta
-40 670 over 47 differing cells, same tail 19 360 000, same value law `1 + 0.02n`. It is 4.230x the 40-head line's coins
and 2.357x its clock, so per +0.01 it costs 2 386 206 where the four workshop lines cost 564 124.

**3. The interest cap is a printed 15-level ladder.** `Max Interest` (250 ... 624 680 coins, 41 min ... 28 d 2 h 55 m)
prints caps 100, 200, 300, 500, 700, 1000, 1500, 2000, 2500, 3500, 5000, 7500, 10000, 12500, 15000 against a $50 base:
2 304 140 coins and 101.53 d total = **154.1 coins per dollar of cap** and 0.0068 d per dollar. The cap ladder is not
arithmetic (steps +100 +100 +200 +200 +300 +500 +500 +500 +1000 +1500 +2500 +2500 +2500 +2500), which kills any "cap =
step x n" shortcut for it.

**4. The three Recovery lines are one table printed three times** (20 identical cost cells, 20 identical time cells,
sigma 2.968 19 T / 379 207 min = 263.34 d), differing only in the value column (0.40n / 1.00n / 0.20n pp) => per printed
pp `Max` 1.484 1e11 < `Amount` 3.710 2e11 < `Chance` 7.420 5e11, so `Recovery Package Max` is the buy-first of the three.

**5. First cross-category ladder identity.** The Recovery time column is the exact 20-level prefix of the 30-level
enemy-stat ladder (`Fast Enemy Health` & co.) with 0 differing cells, and their price columns obey
`enemy(n) = Recovery(n) + 10 + 25(n-1)` with 0 of 20 cells mismatching (per-step increments differ by exactly +25 B in 19
of 19 steps). One 20-cell array now prices five census lines in two categories.

**6. A fourth clock shape (humped).** Recovery consecutive-time ratios: 1.1503 -> 1.1909 at step L12->L13 -> 1.1726. Rise
then fall, unlike the exact x1.15 law and unlike the decaying shape of `Wall Fortification`.

**7. The coin-side block is the cheapest multiplier block in the census.** Four workshop lines + `Interest` + `Max
Interest` + `Package After Boss` = 1 921 559 012 coins (0.00004 % of the priced bill) for 9 295.4 d of raw clock = 25.4 y
single-slot, 5.1 y on five slots, 1.37 y with the x3.725 stack. Inside the layer: 0.02 % of coins, 92.2 % of clock. For a
sub-T11 player this is the practical list - four x2.98 workshop increments, the interest x2.98 and the x300 interest cap
for under 2 B coins.

**8. Layer and bill.** Utility (10 new lines) = 8.906 T / 10 085.4 d = 0.0002 % of the bill coins, 3.7 % of its clock;
with the two `* Level Skip` labs the 12-line category = 10.396 T / 10 346.1 d. The Recovery trio holds 99.98 % of the
layer coins for 7.8 % of its clock; the four 40-head lines 0.01 % of coins for 57.3 % of clock. Appendix B now covers 121
/ 169 lines (71.6 %) = 4.866 Q / 270 725.1 d, i.e. 6 951 d = 19.03 y of coin income and 741.2 y of single-slot clock
(148.2 y five-slot, 39.8 y with the x3.725 stack). The T19 band's share is 33.4 % of coins / 26.0 % of clock.

## Next open question

`Card` (18 lines) is the last large unpriced block, then `Perk` (9), `Bot` (8), `Module` (6), the 2 `Boss` lines and
`Battle Condition` (5). Device list unchanged: H062, H061, then the gate-cell reads (the Utility pages print a gate only
on the four workshop lines, so the `Interest` / `Max Interest` / Recovery gates still need the Milestones screen).

## Verdict

**T006 Rev 30** (new section with the 9-row table and nine findings, three checklist items, two falsification notes, one
Sources bullet; Appendix B row `K` + restated coverage, income units, band shares and layer shares). INDEX and README rows
bumped, INDEX row re-collapsed to one line (25 rows, all five pipes).
'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
