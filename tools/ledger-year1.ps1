param()
# Iteration 116: T025 Rev 2 - the 27-line stone re-add, the four-slot shard fleet bill, and a 52-week plan.
# 1. the 27 printed line totals of T008 3.1
$lines = @(2291,5392,2040,15710,655,2010,5530,2910,1506,17591,2950,8850,8434,14052,4700,20807,425,1800,28716,3500,
          2010,29661,6966,2550,20071,29690,3725)
Write-Output ('workshop stone lines=' + $lines.Count + ' sum=' + (($lines | Measure-Object -Sum).Sum) +
  '  (printed 244 542)')
Write-Output ('stone bill = ' + (244542 + 179240 + 28500) + ' = 244542 + 179240 + 28500')
# the nine-page subtotal check: the nine pages each hold 3 lines (27/3)
$pages = @(@(2291,5392,2040),@(15710,655,2010),@(5530,2910,1506),@(17591,2950,8850),@(8434,14052,4700),
           @(20807,425,1800),@(28716,3500,2010),@(29661,6966,2550),@(20071,29690,3725))
$i = 0; $s2 = 0
foreach ($p in $pages) { $i++; $t = (($p | Measure-Object -Sum).Sum); $s2 += $t; Write-Output ('  page ' + $i + ' = ' + $t) }
Write-Output ('  page sums re-add = ' + $s2)
# 2. the four-slot shard fleet bill
foreach ($L in @(@(20595,'L50'),@(23595,'L101'),@(91595,'L141'),@(163595,'L161'),@(466095,'L201'),@(3136095,'L300'))) {
  $one = $L[0]
  Write-Output ($L[1] + ' per slot=' + $one + ' x4 slots=' + ($one * 4) +
    ' weeks at 1470/wk=' + [Math]::Round(($one * 4) / 1470.0, 1) +
    ' at 3570/wk=' + [Math]::Round(($one * 4) / 3570.0, 1))
}
# 3. the 52-week plan
$gemsYear = 435 * 365
Write-Output ('gems/year at 435/day = ' + $gemsYear + ' ; minus the 114 500 framework = ' + ($gemsYear - 114500))
Write-Output ('  at 360/day = ' + (360 * 365) + ' ; surplus ' + ((360 * 365) - 114500))
foreach ($w in @(80,154,432,1080,6400,20160)) {
  Write-Output ('stones/52 weeks at ' + $w + '/wk = ' + ($w * 52) + ' -> covers the 910 sync ' +
    [Math]::Round(($w * 52) / 910.0, 1) + ' times, and ' + [Math]::Round(($w * 52) / 452282.0, 3) +
    ' of the full bill')
}
Write-Output ('shards/52 weeks = ' + (1470 * 52) + ' (lab 0) or ' + (3570 * 52) + ' (lab L50)')
Write-Output ('  four slots L50 = 82 380 : covered at 3570/wk? ' + ((3570 * 52) -ge 82380) +
  ' ; leftover ' + ((3570 * 52) - 82380) + ' -> one more slot to L101 (23 595)? ' +
  (((3570 * 52) - 82380) -ge 23595))
Write-Output ('cells: 52 weeks x 7 days x 1000/day = ' + (52 * 7 * 1000) + ' cells ; a 24 h x1.5 boost on one slot = 360')
Write-Output ('  => boosted hours per year, one slot = ' + [Math]::Round((52 * 7 * 1000) / 360.0, 0) +
  ' h ; five slots = ' + [Math]::Round((52 * 7 * 1000) / 1800.0, 0) + ' h of 5-slot time')
# 4. gem vs cell speed levers per hour of research
Write-Output ('lab rush = 7.5 gems/h (T006 H035, first bucket) ; a x1.5 cell boost costs 30 cells/h => per hour the two')
Write-Output ('  are separate currencies, both priced per hour: 7.5 gems or 15 cells per slot-hour (5 slots: 75 cells/h)')
