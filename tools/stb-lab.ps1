param()
# `Super Tower Bonus` lab (wiki/system/the-tower, 10 of 30 rows printed): value law, price shape, the two
# readings of the printed Time column, the Sigma10 bill, and the 30-level extrapolations.
$cost = @(2.00, 3.00, 4.07, 5.33, 6.97, 9.26, 12.53, 17.13, 23.51, 32.14)
$mins = @(300, 801, 1313, 1855, 2449, 3126, 3917, 4859, 5990, 7352)
$val = @(1.03, 1.06, 1.09, 1.12, 1.15, 1.18, 1.21, 1.24, 1.27, 1.30)

$bad = 0
for ($k = 0; $k -lt 10; $k++) { if ([math]::Abs($val[$k] - (1 + 0.03 * ($k + 1))) -gt 1e-9) { $bad++ } }
Write-Output ('value law 1 + 0.03*L : ' + (10 - $bad) + '/10   cap at L30 = ' + (1 + 0.03 * 30))

$sumC = ($cost | Measure-Object -Sum).Sum
Write-Output ('cost cells: ' + ($cost -join ' '))
Write-Output ('Sigma10 cost = ' + ('{0:0.00}' -f $sumC) + ' B coins = ' + ('{0:0.00}' -f ($sumC / 1000)) + ' T')
Write-Output ('price/0.03pp  L1 ' + ('{0:0.##}' -f ($cost[0] / 0.03)) + '  L10 ' + ('{0:0.##}' -f ($cost[9] / 0.03)))
Write-Output ('per-level price ratios: ' + ((1..9 | ForEach-Object { '{0:0.000}' -f ($cost[$_] / $cost[$_-1]) }) -join ' '))
Write-Output ('geometric fit L2-L10 = ' + ('{0:0.0000}' -f [math]::Pow($cost[9] / $cost[1], 1.0 / 8)) +
  '   L1-L10 = ' + ('{0:0.0000}' -f [math]::Pow($cost[9] / $cost[0], 1.0 / 9)))
Write-Output ('time cells (min): ' + ($mins -join ' '))
$sumM = ($mins | Measure-Object -Sum).Sum
Write-Output ('per-level reading Sigma10 = ' + $sumM + ' min = ' + ('{0:0.0}' -f ($sumM / 1440)) + ' d')
Write-Output ('cumulative reading L10 = ' + $mins[9] + ' min = ' + ('{0:0.0}' -f ($mins[9] / 1440)) + ' d  ratio ' +
  ('{0:0.00}' -f ($sumM / $mins[9])))
Write-Output ('time ratios (per-level): ' + ((1..9 | ForEach-Object { '{0:0.000}' -f ($mins[$_] / $mins[$_-1]) }) -join ' '))
Write-Output ('time ratios (cumulative deltas): ' + ((2..9 | ForEach-Object { '{0:0.000}' -f (($mins[$_] - $mins[$_-1]) / ($mins[$_-1] - $mins[$_-2])) }) -join ' '))

# 30-level extrapolations from the fitted ratios
$r = [math]::Pow($cost[9] / $cost[1], 1.0 / 8)
$tot = 0.0; $c = $cost[9]
for ($k = 10; $k -lt 30; $k++) { $c = $c * $r; $tot += $c }
Write-Output ('cost Sigma30 (fit r=' + ('{0:0.0000}' -f $r) + ') = ' + ('{0:0.0}' -f ($sumC + $tot)) + ' B = ' +
  ('{0:0.0}' -f (($sumC + $tot) / 1000)) + ' T   last level ' + ('{0:0.0}' -f $c) + ' B')
$rt = [math]::Pow($mins[9] / $mins[8], 1.0)
$t2 = 0.0; $m = [double]$mins[9]
for ($k = 10; $k -lt 30; $k++) { $m = $m * $rt; $t2 += $m }
Write-Output ('time Sigma30 (per-level, r=' + ('{0:0.000}' -f $rt) + ') = ' + ('{0:N0}' -f (($sumM + $t2) / 1440)) + ' d')

# the two 5-level blocks and the card product the multiplier feeds (T012's 270)
$b1 = 0.0; $b2 = 0.0
for ($k = 0; $k -lt 5; $k++) { $b1 += $cost[$k]; $b2 += $cost[$k + 5] }
Write-Output ('block L1-5 = ' + ('{0:0.00}' -f $b1) + ' B for +0.15   block L6-10 = ' + ('{0:0.00}' -f $b2) +
  ' B   ratio ' + ('{0:0.00}' -f ($b2 / $b1)))
Write-Output ('card product: base 5*6*9 = ' + (5 * 6 * 9) + '   at L10 ' + ('{0:0.#}' -f (5 * 6 * 9 * 1.30)) +
  '   at L30 ' + ('{0:0.#}' -f (5 * 6 * 9 * 1.90)))
