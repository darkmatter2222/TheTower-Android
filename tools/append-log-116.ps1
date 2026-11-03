param()
# Appends the session-107 log entry (iteration 116) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 107 (iteration 116: the stone bill closes at line level and the shard fleet bill gets a lab law)

## Asked

T025 Rev 1 priced each currency from the *page-level* prints. Two gaps remained inside that sheet: the stone bill still
rested on nine page totals while T008 already carries 27 line totals, and the shard rows quoted single-slot costs although
a player runs four equipped slots. One item: close both and add the year-one view.

## Sources

Internal only. T008 section 3.1 (the 27 `(value, cost)` line totals plus the printed running columns
`Sum L1-5 = 11 461`, `L1-10 = 25 045`, `L1-15 = 49 194`), T010 section 1 (single-slot shard/coin ladder),
T004 section 1 (shard law `42 x (base(n) + L)`, so 1 470 -> 3 570 at lab L50; gate **T4 W70**),
T016 Rev 3 (tokens **185/week**, full shop **1 225**), T006 (15 cells/h per slot at x1.5, 7.5 gems/h gem rush),
T014 section 3.2 (stones/week by band). New scripts: `tools/ledger-year1.ps1`, `tools/ledger-year1b.ps1`,
`tools/ledger-year1c.ps1` (pure summation over already-parsed tables).

## What was established

**1. The stone bill closes at line level (T025 section 1.1).** The 27 printed line totals re-add to **244 542**; grouped
by page the nine sums are **9 723 / 18 375 / 9 946 / 29 391 / 27 186 / 23 032 / 34 226 / 39 177 / 53 486**, which re-add
to **244 542** a second time - so the 452 282 figure is now supported at three levels (line, page, ledger).

**2. The workshop bill is one-legged (new law).** Using the printed running columns as stages, the marginal stones per
stage are `11 461` (L1-5), `13 584` (L6-10), `24 149` (L11-15), **195 348** (L16-cap) = **244 542**: the last leg carries
**79.9 %** of the bill and is **17x** the first five levels. Practical rule for sub-T11: take *every* UW line to **L10**
(25 045 stones; 58 weeks at the 432/wk band) before pushing any single line past L15.

**3. The four-slot shard fleet bill (section 1.2).** `4 x` the single-slot ladder: L50 **82 380** (56.0 weeks at 1 470/wk,
**23.1** at 3 570), L101 94 380, L141 366 380, L161 654 380, L201 1 864 380, L300 **12 544 380** (164 y / 67.6 y).
A 52-week income is **76 440** (no lab) or **185 640** (`Daily Mission Shards` L50), so the unlabbed account ends year one
**5 940** shards short of four slots at L50 while the labbed one finishes in 23.1 weeks with **103 260** left (4 further
slots to L101). That makes the **T4 W70** lab a **x2.43** income multiplier - the largest single multiplier in the sheet.

**4. Year-one ledger (section 2.1).** Gems: `435 x 365 = 158 775` minus the 114 500 framework = **+44 275** (16 900 at
360/day), i.e. 2 213 banner pulls or 5 903 h of 1-hour gem rushes. Cells: 364 000/year = **1 011 h** of x1.5 on one slot
(**11.5 %** of the year) or **202 h** on all five (2.3 %) => boost one slot at a time. Tokens/bits: **9 620** each per
year, a full shop (1 225) every **6.6 weeks**. Stones per band: **4 160 / 8 008 / 22 464 / 56 160 / 332 800 / 1 048 320**,
= **4.6 / 8.8 / 24.7 / 61.7 / 365.7 / 1 152** copies of the 910-stone sync and **0.009 -> 2.318** of the full bill, so only
Platinum+ closes the stone side inside one calendar year.

**Label fix.** The 3 570-shard week is `Daily Mission Shards` (**T4 W70**, 50 levels, +1 shard/level), not
`Shatter Shards` (**T16 W40**, 5 levels, +20 %/level), which multiplies only *shatter* yields. Both the header
prerequisite line and the shard row now say so.

## Next open question

The ledger is still missing two grand totals that are pure summations: the **lab census in coins** (T006's 169 lines have
per-family bills but no Σ) and the **module slot coin ladder per level band** (129.45 M / 16.3 B / 1.31 T / 20.81 q /
41.91 q / 14.46 Q / 18.07 s are printed as milestones - turning those into years needs the coin/day curve, which needs a
device read). Last cheap wiki pages: `card/nuke`, `enemy/brick-discriptions`. Device reads unchanged (**H061** first).

## Verdict

**T025 Rev 2**, INDEX and README rows bumped (25 rows, 0 bad). Every new number is a sum or a division over printed
cells; the three scripts print them in doc order. **Next:** the 169-line lab coin Σ, then the last two wiki pages.
'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
