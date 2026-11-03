param()
# Appends the session-108 log entry (iteration 117) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 108 (iteration 117: the UW lab layer gets its grand totals and a two-tier price law)

## Asked

T006 priced 39 named UW lab tables line by line (Appendix A/A.1) but never summed them, so the ledger (T025) could state
the coin and cell bills for cards, modules, workshop and the Vault but not for the lab layer itself. One item: total the
39 tables, check which currency binds, and hand the result to the ledger.

## Sources

Internal only. T006 Appendix A (39 line bills) with **Appendix A.1's corrections applied** (the three `Swamp` lines at
their 30-level bills **116.24 B / 825.4 d**, `Swamp Rend - Additional Enemies` at **1.01 Q**, `Death Wave Health` at
**15.79 B**), the boost table (x1.5 = **30 cells per skipped hour**), the coin anchor **700 T/day** (T012) and the
x3.725 speed stack (T006: relic 1.25 x `Labs Speed` 2.98). New scripts: `tools/lab-summit2.ps1` (totals + the three
closures) and `tools/lab-summit-d.ps1` (the binding-currency ratios); `tools/lab-summit.ps1` / `-b` / `-c` are the
pre-correction passes.

## What was established

**1. The grand totals (`T006` Appendix A.2).** 39 tables: **Sigma coins = 2.4111 Q** (**2 411.09 q**) and
**Sigma clock = 18 165.95 d** = 49.8 y single-slot = **9.95 y** on five slots = **6.64 y** at the x1.5 boost =
**975.4 d = 2.67 y** with the x3.725 stack. Closed **three ways** (line by line, the nine per-weapon subtotals, and the
cheap/q split), and one printed lock re-adds: the eight one-level unlock rows give **565.255 B / 70.32 d** against the
page's **565.25 B / 70.31 d** (residuals **4.8 M** and **0.01 d**, i.e. print rounding).

| Weapon | Lines | Sigma coins | Sigma clock | y at 5 slots |
|---|---|---|---|---|
| Black Hole | 4 | 657.82 B | 297.2 d | 0.16 |
| Golden Tower | 2 | 159.24 B | 680.7 d | 0.37 |
| Chain Lightning | 5 | 76.68 q | 5 004.5 d | 2.74 |
| Inner Land Mines | 4 | 1.2474 Q | 1 325.4 d | 0.73 |
| Death Wave | 5 | 38.61 q | 2 890.9 d | 1.58 |
| Smart Missiles | 7 | 14.58 T | 924.4 d | 0.51 |
| Chrono Field | 4 | 266.86 B | 1 848.89 d | 1.01 |
| Spotlight | 2 | 114.25 B | 457.7 d | 0.25 |
| Poison Swamp | 6 | 1.0483 Q | 4 736.26 d | 2.60 |
| **Sigma** | **39** | **2.4111 Q** | **18 165.95 d** | **9.95** |

**2. Law A - a two-tier price.** Six lines carry **99.99 %** of the coins (**2.4108 Q**) and 50.7 % of the clock; the
other **33 together cost 289.2 T = 0.41 days** of income at 700 T/day. Inside the six, `Inner Land Mine - Chrono Jump`
alone is **1 247.44 q = 51.74 %** of the layer = **8.134x** the four `L-IV` lines combined (**153.36 q**), then
`Swamp Rend - Additional Enemies` **1.01 Q** (0.81x Chrono Jump). Purchase order: 33 cheap lines -> the four `L-IV` lines
-> the two Q-scale singles, Chrono Jump last.

**3. Law B - the binding currency flips.** Whole layer: coins **3 444 d** vs cells **4 360 d** (cells bind, x1.27). The 33
cheap lines: **0.413 d** of coins vs **2 150 d** of cells (**cells bind by x5 203**) => coins are a rounding error there,
so boost them with cells. The six q-scale lines: **3 444 d** of coins vs **2 210 d** of cells (**coins bind, x1.56**) =>
boosting them buys little; let `Chrono Jump` run overnight.

**4. Ledger integration (`T025` Rev 3).** New section 1.3 plus a §1 row: the UW lab layer = **2.4111 Q** coins or
**4.36 M** cells or **18 165.95 d** of clock, with the same two-tier table. `tools/ledger-*` figures are untouched.

**PowerShell lesson.** In an array literal, the comma binds tighter than `+`: `@('a', 'A' + 'B')` yields three elements
(`'a', 'A', 'B'` joined oddly), which silently truncated the first version of the README patch. Fix: build each string in
its own variable (or wrap the concatenation in parentheses) and assert `count=1` per replacement - now the shape of
`tools/patch-readme-117.ps1`.

## Next open question

The lab census has 169 lines but only the **39 UW** tables are priced end to end; the remaining 130 (Main/Attack/Defense/
Utility/Card/Perk/Bot/Enemies/Module/Battle-Condition) have per-family bills in T006 and per-line cells in T012/T020/T024,
so the **layer-by-layer coin Sigma** is the natural next summation (each family's bill is already printed, the gap is the
grouping and the years conversion). Device reads unchanged (**H061** first).

## Verdict

**T006 Rev 24** (Appendix A.2 + three checklist items + two falsification notes) and **T025 Rev 3** (§1.3), INDEX and both
README rows bumped (25 rows, 0 bad). **Next:** the 130-line non-UW lab coin Sigma, then the last two wiki pages
(`card/nuke`, `enemy/brick-discriptions`).
'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
