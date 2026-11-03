param()
# Iteration 121: the whole 30-level `Double Death Ray` ladder (wiki/card/death-ray, 1 data table).
# Costs L1-10 in M (as printed), L11-30 in B; times as (d, h, m) triplets in three flat arrays.
$U9 = [Math]::Pow(10, 9)
$costM = @(2.5, 2.91, 3.62, 6.13, 14.34, 35.75, 82.66, 173.37, 333.38, 596.59)
$costB = @(1.01, 1.62, 2.50, 3.72, 5.39, 7.60, 10.49, 14.21, 18.91, 24.77,
          32.01, 40.85, 51.55, 64.38, 79.64, 97.67, 118.83, 143.50, 172.12, 205.13)
$td = @(0, 0, 0, 1, 1, 2, 2, 3, 3, 4, 6, 7, 9, 10, 13, 15, 18, 22, 26, 30, 35, 41, 48, 55, 63, 72, 81, 92, 103, 116)
$th = @(1, 9, 17, 2, 12, 0, 13, 4, 23, 22, 1, 10, 1, 23, 5, 20, 20, 8, 8, 20, 23, 17, 3, 7, 5, 0, 16, 6, 20, 12)
$tmn = @(0, 21, 53, 55, 49, 6, 17, 59, 50, 32, 49, 30, 24, 22, 18, 10, 55, 33, 7, 41, 20, 12, 27, 16, 51, 26, 17, 42, 59, 29)
$min = @()
for ($i = 0; $i -le 29; $i++) { $min += (($td[$i] * 24 + $th[$i]) * 60 + $tmn[$i]) }
$sumM = ($costM | Measure-Object -Sum).Sum
$sumB10 = 0.0; for ($i = 0; $i -le 9; $i++) { $sumB10 += $costB[$i] }
$sumB20 = 0.0; for ($i = 10; $i -le 19; $i++) { $sumB20 += $costB[$i] }
$sumB = $sumB10 + $sumB20
$totB = $sumM / 1000.0 + $sumB
Write-Output ('coins: L1-10 = ' + ('{0:G6}' -f $sumM) + ' M = ' + ('{0:G6}' -f ($sumM / 1000)) + ' B ; L11-20 = ' +
  ('{0:G6}' -f $sumB10) + ' B ; L21-30 = ' + ('{0:G6}' -f $sumB20) + ' B')
Write-Output ('TOTAL coins = ' + ('{0:G6}' -f $totB) + ' B (doc records 1 097.15 B) ; shares ' +
  [Math]::Round(($sumM / 1000) / $totB * 100, 2) + ' % / ' + [Math]::Round($sumB10 / $totB * 100, 2) + ' % / ' +
  [Math]::Round($sumB20 / $totB * 100, 2) + ' %')
$sh = 0; $mh = 0; $th2 = 0
for ($i = 0; $i -le 9; $i++) { $sh += $min[$i] }
for ($i = 10; $i -le 19; $i++) { $mh += $min[$i] }
for ($i = 20; $i -le 29; $i++) { $th2 += $min[$i] }
$sumMin = $sh + $mh + $th2
Write-Output ('TOTAL time = ' + $sumMin + ' min = ' + [Math]::Round($sumMin / 60.0, 1) + ' h = ' +
  [Math]::Round($sumMin / 1440.0, 2) + ' d (doc records 21 415.5 h = 892.3 d)')
Write-Output ('  time by block: L1-10 = ' + [Math]::Round($sh / 60.0, 1) + ' h (' + [Math]::Round($sh / $sumMin * 100, 1) +
  ' %) ; L11-20 = ' + [Math]::Round($mh / 60.0, 1) + ' h (' + [Math]::Round($mh / $sumMin * 100, 1) +
  ' %) ; L21-30 = ' + [Math]::Round($th2 / 60.0, 1) + ' h (' + [Math]::Round($th2 / $sumMin * 100, 1) + ' %)')
Write-Output ('  L21-30 days = ' + [Math]::Round($th2 / 1440.0, 1) + ' ; /5 slots = ' + [Math]::Round($th2 / 7200.0, 1) +
  ' ; /5/3.725 = ' + [Math]::Round($th2 / 7200.0 / 3.725, 1))
$cr = @()
for ($i = 0; $i -le 8; $i++) { $cr += ('{0:G4}' -f ($costM[$i + 1] / $costM[$i])) }
for ($i = 0; $i -le 18; $i++) { $cr += ('{0:G4}' -f ($costB[$i + 1] / $costB[$i])) }
Write-Output ('cost ratios 1->2 .. 29->30: ' + ($cr -join ' '))
$tr = @()
for ($i = 1; $i -le 29; $i++) { $tr += ('{0:G4}' -f ($min[$i] / $min[$i - 1])) }
Write-Output ('time ratios 1->2 .. 29->30: ' + ($tr -join ' '))
Write-Output ('last five time ratios avg = ' + ('{0:G4}' -f (($min[29] / $min[28] + $min[28] / $min[27] +
  $min[27] / $min[26] + $min[26] / $min[25] + $min[25] / $min[24]) / 5.0)) +
  ' ; last five cost ratios avg = ' + ('{0:G4}' -f (($costB[19] / $costB[18] + $costB[18] / $costB[17] +
    $costB[17] / $costB[16] + $costB[16] / $costB[15] + $costB[15] / $costB[14]) / 5.0)))
Write-Output ('coins per pp = ' + ('{0:G5}' -f ($totB / 30.0)) + ' B ; time per pp = ' +
  [Math]::Round($sumMin / 30.0, 0) + ' min = ' + [Math]::Round($sumMin / 30.0 / 1440.0, 2) + ' d')
Write-Output ('L1-10 buy 10 pp for ' + ('{0:G5}' -f ($sumM / 1000)) + ' B = ' +
  [Math]::Round(($sumM / 1000) / $totB * 100, 2) + ' % of the bill and ' + [Math]::Round($sh / 60.0, 1) +
  ' h = ' + [Math]::Round($sh / 1440.0, 1) + ' d')
