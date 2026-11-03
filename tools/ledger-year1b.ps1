param()
# Iteration 116 (part b): the leftover allocations for the 52-week plan.
$wk = 52
$shard0 = 1470 * $wk
$shard50 = 3570 * $wk
Write-Output ('shards/year = ' + $shard0 + ' (no lab) / ' + $shard50 + ' (lab L50)')
Write-Output ('  four slots to L50 = 82380: no-lab shortfall = ' + (82380 - $shard0) +
  ' ; lab leftover = ' + ($shard50 - 82380) + ' -> extra L101 slots = ' +
  [Math]::Floor(($shard50 - 82380) / 23595.0))
Write-Output ('  whole-ladder check: L101 fleet 94380 fits in ' + $shard50 + '? ' + ($shard50 -ge 94380))
$cells = 364 * 1000
Write-Output ('cells/year = ' + $cells + ' ; one-slot hours = ' + [Math]::Round($cells / 360.0, 0) +
  ' (' + [Math]::Round(($cells / 360.0) / 8760.0 * 100, 1) + '% of the year) ; five-slot hours = ' +
  [Math]::Round($cells / 1800.0, 0) + ' (' + [Math]::Round(($cells / 1800.0) / 8760.0 * 100, 1) + '%)')
Write-Output ('  half-year (436 800 h? no) : 8760 h/yr, so 1011 h = ' + [Math]::Round(1011.0 / 24.0, 0) + ' days')
# gem surplus allocation, at 435/day
Write-Output ('gem surplus after framework = 44275 ; lab-rush bucket 7.5 gems/h -> ' +
  [Math]::Round(44275 / 7.5, 0) + ' h of 1-hour rushes (T006 prices)')
Write-Output ('  ticket-equivalent: 20 gems/pull -> ' + [Math]::Floor(44275 / 20.0) + ' pulls')
# stones 52-week coverage table, exact
foreach ($w in @(80, 154, 432, 1080, 6400, 20160)) {
  $y = $w * 52
  Write-Output ($w.ToString() + '/wk -> ' + $y + '/yr = ' + [Math]::Round($y / 910.0, 1) +
    ' syncs ; fraction of 452282 = ' + [Math]::Round($y / 452282.0, 3) +
    ' ; years-to-full = ' + [Math]::Round(452282.0 / $y, 2))
}
