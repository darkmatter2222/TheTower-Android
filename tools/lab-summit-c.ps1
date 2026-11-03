param()
# Iteration 117 (part c): the nine per-weapon subtotals and the third closure.
$g = [ordered]@{}
$g['Golden Tower'] = @(@(124.85e9, 466.6), @(34.39e9, 214.1))
$g['Death Wave'] = @(@(4.40e9, 165.7), @(34.38e9, 197.4), @(6.65e12, 233.5), @(38.34e15, 2011.1), @(265.93e12, 283.2))
$g['Black Hole'] = @(@(820.53e6, 36.8), @(92.00e9, 214.1), @(15.00e9, 17.36), @(550.00e9, 28.94))
$g['Chrono Field'] = @(@(116.24e9, 825.4), @(750000, 0.69), @(116.24e9, 825.4), @(34.38e9, 197.4))
$g['Chain Lightning'] = @(@(950000, 1.0), @(356.52e9, 916.1), @(4.32e9, 65.2), @(38.34e15, 2011.1), @(38.34e15, 2011.1))
$g['Inner Land Mines'] = @(@(34.38e9, 197.4), @(34.38e9, 197.4), @(250.00e6, 13.90), @(1247.44e15, 916.7))
$g['Smart Missiles'] = @(@(12.94e9, 157.8), @(124.86e9, 445.7), @(900000, 0.93), @(12.95e9, 173.5), @(1500000, 6.67),
                          @(59.01e6, 19.8), @(14.43e12, 120.0))
$g['Poison Swamp'] = @(@(12.94e9, 157.8), @(700000, 0.83), @(12.94e9, 157.8), @(12.94e9, 157.8),
                       @(38.34e15, 2011.1), @(7.49e12, 123.1))
$g['Spotlight'] = @(@(22.25e9, 243.6), @(92.00e9, 214.1))
$tc = 0.0; $td = 0.0; $tl = 0
foreach ($k in $g.Keys) {
  $c = 0.0; $d = 0.0; $n = 0
  foreach ($r in $g[$k]) { $c += $r[0]; $d += $r[1]; $n++ }
  $tc += $c; $td += $d; $tl += $n
  Write-Output ($k + ' | lines ' + $n + ' | coins ' + ('{0:G6}' -f $c) + ' | clock ' + [Math]::Round($d, 2) +
    ' d | y at 5 slots ' + [Math]::Round($d / 5.0 / 365.0, 2))
}
Write-Output ('TOTAL lines=' + $tl + ' coins=' + ('{0:G6}' -f $tc) + ' clock=' + [Math]::Round($td, 1) +
  ' -> vs part a (1.4011E+18 / 16038.1)')
Write-Output ('clock share of the two heaviest weapons (CL + DW) = ' +
  [Math]::Round(((5004.4 + 2890.9) / $td) * 100, 1) + ' %')
