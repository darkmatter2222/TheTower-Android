param()
# Iteration 117 (part d): the two binding-constraint ratios for the UW lab layer.
$grand = 2.41109e18; $cheap = 2.89188e14; $qSix = 2.4108e18
$cellWhole = 4.3598e6; $cellCheap = 2.1496e6; $cellQ = 2.2102e6
$rate = 700e12; $cellRate = 1000.0
$dCoinWhole = $grand / $rate; $dCoinCheap = $cheap / $rate; $dCoinQ = $qSix / $rate
$dCellWhole = $cellWhole / $cellRate; $dCellCheap = $cellCheap / $cellRate; $dCellQ = $cellQ / $cellRate
$sets = @(, @('whole layer', $dCoinWhole, $dCellWhole)
         , @('33 cheap lines', $dCoinCheap, $dCellCheap)
         , @('six q-scale lines', $dCoinQ, $dCellQ))
foreach ($p in $sets) {
  Write-Output ($p[0] + ': coins ' + ('{0:G5}' -f $p[1]) + ' d (' + ('{0:G4}' -f ($p[1] / 365.25)) +
    ' y) vs cells ' + ('{0:G5}' -f $p[2]) + ' d (' + ('{0:G4}' -f ($p[2] / 365.25)) +
    ' y) -> binding = ' + $(if ($p[2] -gt $p[1]) { 'CELLS' } else { 'COINS' }) +
    ' by x' + [Math]::Round(([Math]::Max($p[1], $p[2]) / [Math]::Min($p[1], $p[2])), 2))
}
Write-Output ('the four L-IV lines together = ' + (4 * 38.34) + ' q ; Chrono Jump = 1 247.44 q ; ' +
  'Swamp Rend Additional = 1.01 Q = ' + [Math]::Round(1010.0 / 1247.44, 3) + 'x Chrono Jump')
Write-Output ('six-line coin bill in Q = ' + ('{0:G5}' -f ($qSix / 1e18)) + ' Q ; whole layer = ' +
  ('{0:G5}' -f ($grand / 1e18)) + ' Q')
Write-Output ('clock stack check: 18 165.95 / 5 = ' + [Math]::Round(18165.95 / 5.0, 2) + ' d ; / 3.725 = ' +
  [Math]::Round(18165.95 / 5.0 / 3.725, 1) + ' d = ' + [Math]::Round(18165.95 / 5.0 / 3.725 / 365.25, 2) + ' y')
