param()
# Appends the session-99 log entry (iteration 108) to today's log.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-02.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-02 - Session 99 (iteration 108: the enemy-stat table gains its last five lines)

## Asked

Three `wiki/enemy/*` pages were still uncited: `brick-discriptions`, `ranged-enemy-labs`, `tank-enemy-labs`. T006's
enemy-stat table had **15** of the **20** 30-level lines (Common, Fast, Protector, Vampire, Ray, Scatter). Do the Ranged
and Tank pages print the missing five ladders, and do they reuse the known time/cost shapes?

## Sources

Tower Hub (last verified **2026-11-01**): `wiki/enemy/ranged-enemy-labs` (3 tables: Health, Attack, Range),
`wiki/enemy/tank-enemy-labs` (2 tables), `wiki/enemy/brick-discriptions` (prose only, no tables). Fetched with
`tools/fetch-hub.ps1` (cap 9 000), dumped with `tools/dump-tables.ps1` / `tools/page-seg.ps1`; the Range time column was
decoded cell-by-cell with `tools/range-time.ps1` (new).

## What was established

**A. Four lines are pure duplicates.** `Ranged Enemy Health` / `Ranged Enemy Attack` / `Tank Enemy Health` /
`Tank Enemy Attack` print cell-for-cell the same `Level | Time | Cost | Value` ladder as the Fast pair: times
**2d 7h 33m → 161d 9h 28m**, prices **30.00 B → 2.70 T**, value **−0.40 % × n ⇒ −12.00 %**, so each bills **25.768 T**
coins / **1 235.95 d** — **T9 W20** for all four (printed in each page's own prose). Their L30 price also *proves* the
family's cost ratio: **2.70 T = 30 × 1.10²⁹**, so the 30 B family is geometric at **×1.10**/level.

**B. `Ranged Enemy Range` (T13 W80) is a fifth shape-pair with two new constants.** Value step **−0.50 %** ⇒ cap
**−15.00 %** — confirmed twice (the table's L30 cell, and the page's own cap list: “Basic, Fast, Tank and Ranged Health
and Attack each reach −12 %; Fast Enemy Speed −12 %; Ranged Enemy Range −15 %”). Costs are geometric at **×1.4**:
`1.0 T × 1.4^(n−1)`, verified deep in the ladder (L24 = **2 295.9** = 1.4²³, L30 = **17 286.7** = 1.4²⁹) ⇒
Σ = `1.0 T × (1.4³⁰ − 1)/0.4` = **60.50 T**, i.e. **4.03 T per percentage point** — the priciest per point of the
T9–T13 group. Times are *arithmetic*, per-level constant **233 280 s**: the printed first difference L1→L2 is exactly
233 280 s and every subsequent difference is 233 220/233 280 s (minute-truncation of 2d 16h 48m), Σ =
`233 280 × 465` = **107 635 200 s = 1 245.94 d**, which equals the printed L30 cell **80d 23h 54m** × 30 ✓.

**C. The two readings agree on a clean ratio.** 6 998 040 / 106 785 720 = **1.008080** and 80d 23h 54m / 161d 9h 28m =
the same **1.00808** — the Range line is the shared enemy time ladder scaled by exactly ×1.00808, so its queue behaviour
is identical to the T9 pair (the “nineteen of twenty share one ladder” note now carries that scale factor).

**D. One mechanic note worth the panel.** The Ranged page prints that these labs **break the fixed stat ratios** between
enemy types: boss health is normally a fixed multiple of basic-enemy health, and after researching the basic-enemy line
that multiple no longer holds — the reason T024's boss/skip arithmetic must be read per type, not derived.

## Next open question

The 28 `patch/version-history*` pages (per-version changelog) are now the largest uncited pool and are the only way to
*date* mechanics (e.g. when the ELS line, the assist slots, or the enhancement tracks landed); the eight `guide/*` pages
follow. Device reads unchanged: **H060**, **H050** residual, **H058**, **H059**, T010 §8 skews, T024 §6, Light Range past
L14, and the `Swamp Rend - Additional Enemies` 6/9/11 row count.

## Verdict

**T006 Rev 22.** The enemy-stat layer is closed: **20/20** 30-level lines printed, one shared time ladder (plus the
×1.00808 Range variant), one new cost ratio (**×1.4**) and two new constants (**−0.50 %** step, **233 280 s**).
**Next:** the `patch/version-history*` series for dating mechanics.
'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
