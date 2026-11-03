param()
# Iteration 124: the Attack Research category priced from the fandom lab pages (Level | Time | Cost | Value).
# Cells transcribed verbatim from the Lab/<line> pages and re-added here so every sum is reproducible offline.
$U9 = 1e9
$U12 = 1e12
$U15 = 1e15
$U18 = 1e18

function Sum([double[]] $a) { $s = 0.0; foreach ($v in $a) { $s += $v }; return $s }
function D([string] $t) { return [double]$t }

$sharedCost = @(30, 71, 178, 398, 772, 1340, 2120, 3170, 4510, 6170, 8170, 10560, 13350, 16580, 20270, 24440, 29130, 34360, 40160, 46540, 53530, 61160, 69460, 78430, 88120, 98530, 109700, 121650, 134390, 147950, 162350, 177620, 193780, 210830, 228820, 247760, 267660, 288560, 310470, 333400, 357390, 382450, 408600, 435870, 464260, 493810, 524530, 556430, 589550, 623890, 659490, 696340, 734490, 773940, 814710, 856830, 900300, 945160, 991410, 1040000, 1090000, 1140000, 1190000, 1240000, 1300000, 1360000, 1410000, 1470000, 1530000, 1600000, 1660000, 1730000, 1800000, 1870000, 1940000, 2010000, 2080000, 2160000, 2240000, 2320000, 2400000, 2480000, 2570000, 2650000, 2740000, 2830000, 2930000, 3020000, 3120000, 3220000, 3320000, 3420000, 3520000, 3630000, 3740000, 3850000, 3960000, 4070000, 4190000)
$sharedTime = @(0, 6, 16, 31, 52, 80, 116, 159, 211, 272, 343, 423, 514, 615, 727, 850, 985, 1132, 1291, 1462, 1646, 1844, 2054, 2278, 2516, 2767, 3033, 3313, 3608, 3918, 4243, 4583, 4938, 5310, 5697, 6100, 6520, 6955, 7408, 7877, 8364, 8867, 9388, 9926, 10482, 11055, 11647, 12257, 12885, 13531, 14197, 14880, 15583, 16305, 17046, 17806, 18586, 19385, 20204, 21043, 21903, 22782, 23681, 24601, 25542, 26503, 27485, 28488, 29512, 30557, 31624, 32712, 33821, 34952, 36106, 37280, 38478, 39697, 40938, 42202, 43488, 44797, 46129, 47484, 48861, 50262, 51686, 53133, 54603, 56097, 57615, 59156, 60721, 62310, 63923, 65560, 67222, 68907, 70617)
$dpmCost = @(40, 81, 188, 408, 782, 1340, 2130, 3180, 4510, 6170, 8180, 10560, 13360, 16580, 20270, 24450, 29140, 34370, 40160, 46540, 53540, 61170, 69460, 78440, 88120, 98540, 109700, 121650, 134390, 147950, 162350, 177620, 193780, 210830, 228820, 247760, 267660, 288560, 310470, 333400, 357390, 382450, 408600, 435870, 464260, 493810, 524530, 556430, 589550, 623890, 659490, 696340, 734490, 773940, 814710, 856830, 900300, 945160, 991410, 1040000, 1090000, 1140000, 1190000, 1240000, 1300000, 1360000, 1410000, 1470000, 1530000, 1600000, 1660000, 1730000, 1800000, 1870000, 1940000, 2010000, 2080000, 2160000, 2240000, 2320000, 2400000, 2480000, 2570000, 2650000, 2740000, 2830000, 2930000, 3020000, 3120000, 3220000, 3320000, 3420000, 3520000, 3630000, 3740000, 3850000, 3960000, 4070000, 4190000)
$dpmTime = @(0, 6, 16, 31, 52, 80, 116, 159, 211, 272, 343, 423, 514, 615, 727, 850, 985, 1132, 1291, 1462, 1647, 1844, 2054, 2278, 2516, 2767, 3033, 3313, 3608, 3918, 4243, 4583, 4939, 5310, 5697, 6100, 6520, 6955, 7408, 7877, 8364, 8867, 9388, 9926, 10482, 11056, 11647, 12257, 12885, 13532, 14197, 14880, 15583, 16305, 17046, 17806, 18586, 19385, 20205, 21044, 21903, 22782, 23681, 24601, 25542, 26503, 27485, 28488, 29512, 30557, 31624, 32712, 33821, 34953, 36106, 37281, 38478, 39697, 40938, 42202, 43488, 44797, 46129, 47484, 48861, 50262, 51686, 53133, 54603, 56097, 57615, 59156, 60721, 62310, 63923, 65560, 67222, 68907, 70618)
$sccCost = @(200000, 401000, 625990, 974770, 1680000, 3130000, 5940000, 10970000, 19360000, 32540000, 52320000, 80840000, 120670000, 174800000, 246670000, 340200000, 459820000, 610490000, 797730000, 1030000000, 1310000000, 1640000000, 2040000000, 2520000000, 3070000000, 3720000000, 4480000000, 5340000000, 6340000000, 7480000000, 8770000000, 10230000000, 11870000000, 13720000000, 15780000000, 18080000000, 20640000000, 23480000000, 26610000000, 30070000000, 33870000000, 38030000000, 42600000000, 47580000000, 53000000000, 58910000000, 65320000000, 72260000000, 79780000000, 87900000000)
$sccTime = @(1666, 2501, 3354, 4284, 5394, 6839, 8830, 11633, 15576, 21045, 28490, 38426, 51432, 68155, 89310, 115681, 148122, 187557, 234985, 291475, 358171, 436292, 527132, 632061, 752525, 890050, 1046236, 1222766, 1421401, 1643980, 1892426, 2168741, 2475009, 2813396, 3186152, 3595609, 4044184, 4534378, 5068774, 5650046, 6280949, 6964324, 7703102, 8500298, 9359016, 10282446, 11273868, 12336652, 13474252, 14690218)
$scmTime = @(1666, 2501, 3351, 4261, 5298, 6562, 8178, 10301, 13111, 16821, 21666, 27914, 35858, 45821, 58151, 73229, 91458, 113274, 139138, 169541, 204999, 246061, 293298, 347314, 408738, 478229, 556471, 644181, 742098, 850994, 971666, 1104941, 1251671, 1412741, 1589058, 1781562, 1991218, 2219021, 2465991, 2733181)
$rendCost = @(200, 240, 280.01, 320.03, 360.1, 400.23, 440.45, 480.81, 521.35, 562.11, 603.15, 644.53, 686.31, 728.55, 771.33, 814.73, 858.82, 903.7, 949.44, 996.16, 1040, 1090, 1140, 1190, 1250, 1300, 1360, 1420, 1480, 1540)
$rendTime = @(4999, 5834, 6672, 7513, 8357, 9206, 10060, 10917, 11779, 12646, 13518, 14394, 15276, 16162, 17054, 17951, 18853, 19760, 20673, 21592, 22516, 23445, 24381, 25322, 26268, 27221, 28179, 29144, 30114, 31090)

$sharedC = Sum $sharedCost
$sharedT = Sum $sharedTime
Write-Output ('shared 99 column: n=' + $sharedCost.Count + ' coins=' + $sharedC + ' time=' + $sharedT + ' min = ' + [Math]::Round($sharedT / 1440.0, 2) + ' d')
$rangeC = Sum ($sharedCost[0..79])
$rangeT = Sum ($sharedTime[0..79])
Write-Output ('Range = shared L1-80: coins=' + $rangeC + ' time=' + $rangeT + ' min = ' + [Math]::Round($rangeT / 1440.0, 2) + ' d')
Write-Output ('  knee: 80 levels = ' + [Math]::Round($rangeC / $sharedC * 100, 2) + ' % of the coins for ' + [Math]::Round(80.0 / 99 * 100, 2) + ' % of the value; clock ' + [Math]::Round($rangeT / $sharedT * 100, 2) + ' %')
Write-Output ('  levels 81-99 cost ' + ($sharedC - $rangeC) + ' coins = ' + [Math]::Round(($sharedC - $rangeC) / $sharedC * 100, 2) + ' % of the line in its last 19 levels')
$dmgC = $sharedC + 4310000
$dmgT = $sharedT + (50 * 1440 + 5 * 60 + 52)
$dpmC = Sum $dpmCost
$dpmT = Sum $dpmTime
Write-Output ('Damage = shared + L100 (4 310 000 / 50d 5h 52m): coins=' + $dmgC + ' time=' + $dmgT + ' min = ' + [Math]::Round($dmgT / 1440.0, 2) + ' d')
Write-Output ('Damage Per Meter: coins=' + $dpmC + ' (delta ' + ($dpmC - $sharedC) + ') time=' + $dpmT + ' min (delta ' + ($dpmT - $sharedT) + ')')
$dc = 0; $dt = 0; $dcells = ''
for ($i = 0; $i -lt 99; $i++) { if ($dpmCost[$i] -ne $sharedCost[$i]) { $dc++; $dcells += ('L' + ($i + 1) + '=' + $dpmCost[$i] + ' ') } ; if ($dpmTime[$i] -ne $sharedTime[$i]) { $dt++ } }
Write-Output ('  differing cells vs shared: cost ' + $dc + ' (' + $dcells.Trim() + ') time ' + $dt)
$sccC = Sum $sccCost
$sccT = Sum $sccTime
$scmC = Sum ($sccCost[0..39])
$scmT = Sum $scmTime
Write-Output ('Super Crit Chance (50): coins=' + ('{0:F0}' -f $sccC) + ' = ' + [Math]::Round($sccC / $U9, 3) + ' B ; time=' + $sccT + ' min = ' + [Math]::Round($sccT / 1440.0, 1) + ' d')
Write-Output ('Super Crit Mult (40) = SCC cost prefix: coins=' + ('{0:F0}' -f $scmC) + ' = ' + [Math]::Round($scmC / $U9, 3) + ' B ; time=' + $scmT + ' min = ' + [Math]::Round($scmT / 1440.0, 1) + ' d')
Write-Output ('  SCC L41-50 tail = ' + ('{0:F0}' -f ($sccC - $scmC)) + ' coins')
$prefix = 0
for ($i = 0; $i -lt 40; $i++) { if ($sccCost[$i] -ne $sccCost[$i]) { $prefix++ } }
$tdiff = 0
for ($i = 0; $i -lt 40; $i++) { if ($sccTime[$i] -ne $scmTime[$i]) { $tdiff++ } }
Write-Output ('  cost column identical on the 40-level overlap (checked ' + $sccCost.Count + ' vs ' + $scmTime.Count + ' rows) ; time cells differing = ' + $tdiff)
$rat = @(); for ($i = 40; $i -le 48; $i++) { $rat += ('{0:G4}' -f ($sccCost[$i + 1] / $sccCost[$i])) }
Write-Output ('  SCC cost ratios L41-50 (3 s.f. print): ' + ($rat -join ' '))
$rendCs = (Sum $rendCost) * $U9
$rendTs = Sum $rendTime
Write-Output ('Rend Armor Max (30): coins=' + ('{0:E6}' -f $rendCs) + ' = ' + [Math]::Round($rendCs / $U12, 5) + ' T ; time=' + $rendTs + ' min = ' + [Math]::Round($rendTs / 1440.0, 2) + ' d')
$d1 = @(); for ($i = 1; $i -lt 30; $i++) { $d1 += [Math]::Round($rendCost[$i] - $rendCost[$i - 1], 2) }
Write-Output ('  rend cost first differences (B): min=' + (($d1 | Measure-Object -Minimum).Minimum) + ' max=' + (($d1 | Measure-Object -Maximum).Maximum) + ' -> near-linear, D(n) = 40(n+4) + eps')
$e1 = @(); for ($i = 1; $i -lt 30; $i++) { $e1 += ($rendTime[$i] - $rendTime[$i - 1]) }
$e2 = @(); for ($i = 1; $i -lt 29; $i++) { $e2 += [Math]::Round($e1[$i] - $e1[$i - 1], 3) }
Write-Output ('  rend time first differences: ' + $e1[0] + ' .. ' + $e1[-1] + ' ; second differences: ' + (($e2 | Measure-Object -Minimum).Minimum) + ' .. ' + (($e2 | Measure-Object -Maximum).Maximum) + ' (quadratic clock)')
$worst = 0
for ($i = 0; $i -lt 30; $i++) {
  $n = $i + 1
  $pred = 4999 + 835 * ($n - 1) + 2.5 * ($n - 1) * ($n - 2)
  $worst = [Math]::Max($worst, [Math]::Abs($pred - $rendTime[$i]))
}
Write-Output ('  rend clock closed form t(n) = 4999 + 835(n-1) + 2.5(n-1)(n-2): worst |error| over 30 cells = ' + [Math]::Round($worst, 1) + ' min ; mean printed = ' + [Math]::Round($rendTs / 30.0, 1) + ' min vs midpoint ' + [Math]::Round((4999 + 31090) / 2.0, 1))

# coins and days per +0.01 of printed value (one percentage point of the multiplier ladder)
$pp = @(
  @('Damage', $dmgC, $dmgT, 200),
  @('Attack Speed', $sharedC, $sharedT, 198),
  @('Critical Factor', $sharedC, $sharedT, 297),
  @('Range', $rangeC, $rangeT, 160),
  @('Damage Per Meter', $dpmC, $dpmT, 198),
  @('Super Crit Chance', $sccC, $sccT, 5),
  @('Super Crit Mult', $scmC, $scmT, 80),
  @('Max Rend Armor Multiplier', $rendCs, $rendTs, 750)
)
foreach ($l in $pp) {
  $coinsPer = $l[1] / $l[3]
  $daysPer = ($l[2] / 1440.0) / $l[3]
  Write-Output ('  pp ' + $l[0] + ': coins per +0.01 = ' + ('{0:F0}' -f $coinsPer) + ' ; days per +0.01 = ' + ('{0:F3}' -f $daysPer))
}
$lines = @()
$lines += , @('Damage', $dmgC, $dmgT, 200)
$lines += , @('Attack Speed', $sharedC, $sharedT, 198)
$lines += , @('Critical Factor', $sharedC, $sharedT, 297)
$lines += , @('Range', $rangeC, $rangeT, 160)
$lines += , @('Damage Per Meter', $dpmC, $dpmT, 198)
$lines += , @('Super Crit Chance', $sccC, $sccT, 5)
$lines += , @('Super Crit Mult', $scmC, $scmT, 80)
$lines += , @('Max Rend Armor Multiplier', $rendCs, $rendTs, 750)
$lines += , @('Light Speed Shots', 3000000, 1199, 1)
$catC = 0.0; $catT = 0.0; $lv = 0
$lvc = @(100, 99, 99, 80, 99, 50, 40, 30, 1)
foreach ($l in $lines) { $catC += $l[1]; $catT += $l[2] }
foreach ($n in $lvc) { $lv += $n }
Write-Output ('Attack Research category (9 lines, ' + $lv + ' levels): coins = ' + ('{0:E6}' -f $catC) + ' = ' + [Math]::Round($catC / $U12, 3) + ' T ; clock = ' + [Math]::Round($catT / 1440.0, 1) + ' d = ' + [Math]::Round($catT / 1440.0 / 365.25, 1) + ' y')
Write-Output ('  the five cheap shared-column lines together = ' + ('{0:0.###}' -f (($dmgC + 2 * $sharedC + $rangeC + $dpmC) / $U9)) + ' B ; the four big lines = ' + ('{0:E5}' -f ($sccC + $scmC + $rendCs + 3000000)))
Write-Output ('  share of the 4.865 Q priced census = ' + ('{0:0.####}' -f ($catC / (4.865 * $U18) * 100)) + ' %')
Write-Output ('  share of the category clock held by the two Super Crit lines = ' + ('{0:0.##}' -f (($sccT + $scmT) / $catT * 100)) + ' %')

# Appendix B ledger after this pass: the 72 lines of Rev 25 + Main Research (15) + Attack (9)
$mainC = 826.445 * $U15 + 472456246 + 472509506
$mainT = 14055.0 + 2751.0
$billC = 4.039 * $U18 + $mainC + $catC
$billT = 104035.3 + $mainT + $catT / 1440.0
Write-Output ('Appendix B after this pass: 96 lines, coins = ' + ('{0:0.###}' -f ($billC / $U18)) + ' Q, clock = ' + ('{0:0.0}' -f $billT) + ' d')
Write-Output ('  layer H Main Research 15 lines = ' + ('{0:0.###}' -f ($mainC / $U15)) + ' q / ' + ('{0:0.0}' -f $mainT) + ' d')
Write-Output ('  layer I Attack Research 9 lines = ' + ('{0:0.###}' -f ($catC / $U12)) + ' T / ' + ('{0:0.0}' -f ($catT / 1440.0)) + ' d')
Write-Output ('  coverage 96 / 169 = ' + ('{0:0.0}' -f (96.0 / 169 * 100)) + ' % ; remainder unpriced = ' + (169 - 96) + ' lines')
Write-Output ('  coin-binding check: the Attack layer is ' + ('{0:0.###}' -f ($catC / $U12)) + ' T = ' + ('{0:0.000}' -f ($catC / (500 * $U12))) + ' % of one 500 T income day')
