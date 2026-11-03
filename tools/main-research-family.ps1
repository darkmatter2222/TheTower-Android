param()
# Iteration 123: the Main Research category priced from the fandom lab pages (Level | Time | Cost | Value).
# Fandom prints costs to 3 significant figures; times are transcribed in minutes.
# $shared = the 99-level column used by Starting Cash and by the three Workshop Discount lines.
$sharedCost = @(
  30, 71, 178, 398, 772, 1340, 2120, 3170, 4510, 6170,
  8170, 10560, 13350, 16580, 20270, 24440, 29130, 34360, 40160, 46540,
  53530, 61160, 69460, 78430, 88120, 98530, 109700, 121650, 134390, 147950,
  162350, 177620, 193780, 210830, 228820, 247760, 267660, 288560, 310470, 333400,
  357390, 382450, 408600, 435870, 464260, 493810, 524530, 556430, 589550, 623890,
  659490, 696340, 734490, 773940, 814710, 856830, 900300, 945160, 991410, 1040000,
  1090000, 1140000, 1190000, 1240000, 1300000, 1360000, 1410000, 1470000, 1530000, 1600000,
  1660000, 1730000, 1800000, 1870000, 1940000, 2010000, 2080000, 2160000, 2240000, 2320000,
  2400000, 2480000, 2570000, 2650000, 2740000, 2830000, 2930000, 3020000, 3120000, 3220000,
  3320000, 3420000, 3520000, 3630000, 3740000, 3850000, 3960000, 4070000, 4190000
)
$sharedTime = @(
  0, 6, 16, 31, 52, 80, 116, 159, 211, 272,
  343, 423, 514, 615, 727, 850, 985, 1132, 1291, 1462,
  1646, 1844, 2054, 2278, 2516, 2767, 3033, 3313, 3608, 3918,
  4243, 4583, 4938, 5310, 5697, 6100, 6520, 6955, 7408, 7877,
  8364, 8867, 9388, 9926, 10482, 11055, 11647, 12257, 12885, 13531,
  14197, 14880, 15583, 16305, 17046, 17806, 18586, 19385, 20204, 21043,
  21903, 22782, 23681, 24601, 25542, 26503, 27485, 28488, 29512, 30557,
  31624, 32712, 33821, 34952, 36106, 37280, 38478, 39697, 40938, 42202,
  43488, 44797, 46129, 47484, 48861, 50262, 51686, 53133, 54603, 56097,
  57615, 59156, 60721, 62310, 63923, 65560, 67222, 68907, 70617
)
$lcdCost = @(
  40, 83, 211, 522, 1120, 2100, 3580, 5670, 8470, 12120,
  16700, 22360, 29200, 37340, 46910, 58000, 70780, 85340, 101800, 120310,
  140970, 163910, 189260, 217150, 247700, 281050, 317310, 356620, 399110, 444900,
  494140, 546940, 603400, 663760, 728050, 796430, 869040, 946010, 1027500, 1113600,
  1200000, 1300000, 1400000, 1510000, 1620000, 1730000, 1860000, 1990000, 2120000, 2260000,
  2400000, 2560000, 2720000, 2880000, 3050000, 3230000, 3420000, 3610000, 3810000, 4020000,
  4230000, 4450000, 4680000, 4920000, 5170000, 5420000, 5680000, 5960000, 6240000, 6520000,
  6820000, 7130000, 7440000, 7770000, 8100000, 8450000, 8800000, 9170000, 9540000, 9920000,
  10300000, 10700000, 11100000, 11600000, 12000000, 12500000, 12900000, 13400000, 13900000, 14360000,
  14870000, 15380000, 15910000, 16460000, 17010000, 17580000, 18160000, 18750000, 19360000
)
$lcdTime = @(
  0, 9, 23, 44, 73, 112, 162, 225, 301, 391,
  497, 619, 759, 916, 1093, 1289, 1505, 1743, 2003, 2285,
  2591, 2920, 3274, 3654, 4059, 4491, 4949, 5436, 5951, 6494,
  7067, 7670, 8303, 8968, 9663, 10391, 11152, 11946, 12773, 13634,
  14530, 15461, 16428, 17430, 18470, 19546, 20659, 21810, 23000, 24228,
  25496, 26803, 28151, 29539, 30967, 32438, 33950, 35504, 37101, 38740,
  40424, 42151, 43922, 45738, 47599, 49505, 51458, 53456, 55501, 57593,
  59732, 61919, 64154, 66438, 68770, 71151, 73583, 76063, 78595, 81177,
  83810, 86494, 89230, 92018, 94858, 97751, 100698, 103697, 106751, 109858,
  113020, 116237, 119509, 122836, 126219, 129659, 133154, 136707, 140316
)
$ecdCost = @(
  1.00, 1.30, 1.69, 2.20, 2.86, 3.71, 4.83, 6.27, 8.16, 10.6,
  13.79, 17.92, 23.3, 30.29, 39.37, 51.19, 66.54, 86.5, 112.46, 146.19,
  190.05, 247.06, 321.18, 417.54, 542.8, 705.64, 917.33
)
# the same ladder in units of 1e9 (levels 1-27), 1e12 (28-36), 1e15 (54-63), 1e18 (64-100) - see the doc table
$ecdCostT = @(1.19, 1.55, 2.02, 2.62, 3.41, 4.43, 5.76, 7.48, 9.73)
$ecdCostT2 = @(12.65, 16.44, 21.37, 27.78, 36.12, 46.95, 61.04, 79.35, 103.16, 134.11,
               174.34, 226.64, 294.63, 383.02, 497.93, 647.31, 841.5)
$ecdCostQ = @(1.09, 1.42, 1.85, 2.40, 3.12, 4.06, 5.28, 6.86, 8.92, 11.6,
              15.08, 19.61, 25.49, 33.13, 43.07, 55.99, 72.79, 94.63, 123.02, 159.93,
              207.9, 270.28, 351.36, 456.77, 593.8, 771.94)
$ecdCostQ2 = @(1.0, 1.3, 1.7, 2.2, 2.87, 3.73, 4.84, 6.3, 8.19, 10.64,
               13.83, 17.98, 23.38, 30.39, 39.51, 51.37, 66.78, 86.81, 112.85, 146.71, 190.72)
$U9 = 1e9; $U12 = 1e12; $U15 = 1e15; $U18 = 1e18
$sC = ($sharedCost | Measure-Object -Sum).Sum
$sT = ($sharedTime | Measure-Object -Sum).Sum
Write-Output ('shared 99-level ladder: levels=' + $sharedCost.Count + ' coins=' + $sC + ' (expect 111695939) time=' +
  $sT + ' min = ' + [Math]::Round($sT / 60.0, 1) + ' h = ' + [Math]::Round($sT / 1440.0, 2) + ' d')
Write-Output ('  x4 lines (Starting Cash + Attack/Defense/Utility Discount) = coins ' + (4 * $sC) + ' clock ' +
  [Math]::Round(4 * $sT / 1440.0, 1) + ' d = ' + [Math]::Round(4 * $sT / 1440.0 / 365.25, 2) + ' y')
$sr = @(); for ($i = 1; $i -le 9; $i++) { $sr += ('{0:G4}' -f ($sharedCost[$i] / $sharedCost[$i - 1])) }
Write-Output ('  shared cost ratios L1-10: ' + ($sr -join ' '))
$sr2 = @(); for ($i = 89; $i -le 97; $i++) { $sr2 += ('{0:G5}' -f ($sharedCost[$i + 1] / $sharedCost[$i])) }
Write-Output ('  shared cost ratios L90-98: ' + ($sr2 -join ' '))
$lC = ($lcdCost | Measure-Object -Sum).Sum
$lT = ($lcdTime | Measure-Object -Sum).Sum
Write-Output ('Labs Coin Discount: levels=' + $lcdCost.Count + ' coins=' + $lC + ' (expect 472509506) time=' + $lT +
  ' min = ' + [Math]::Round($lT / 1440.0, 2) + ' d')
Write-Output ('  vs Labs Speed printed 472456246 coins / 237689238 s = ' + [Math]::Round(237689238 / 86400.0, 2) +
  ' d ; coin delta ' + ($lC - 472456246) + ' = ' + [Math]::Round(($lC - 472456246) / 472456246 * 100, 3) +
  ' % (the 3-s.f. print)')
$eC = 0.0
foreach ($v in $ecdCost) { $eC += $v * $U9 }
foreach ($v in $ecdCostT) { $eC += $v * $U12 }
foreach ($v in $ecdCostT2) { $eC += $v * $U12 }
foreach ($v in $ecdCostQ) { $eC += $v * $U15 }
foreach ($v in $ecdCostQ2) { $eC += $v * $U18 }
$eTlaw = 0; for ($n = 1; $n -le 100; $n++) { $eTlaw += 1555 * $n }
Write-Output ('Enhancement Coin Discount: levels=' + ($ecdCost.Count + $ecdCostT.Count + $ecdCostT2.Count +
  $ecdCostQ.Count + $ecdCostQ2.Count) + ' coins=' + ('{0:E6}' -f $eC) + ' = ' + [Math]::Round($eC / $U18, 3) + ' q')
Write-Output ('  time law t(n) = 1555 n min => sum ' + $eTlaw + ' min = ' + [Math]::Round($eTlaw / 1440.0, 1) +
  ' d = ' + [Math]::Round($eTlaw / 1440.0 / 365.25, 1) + ' y')
Write-Output ('  geometric check: 1.3^0..1.3^3 = ' + (1..3 | ForEach-Object { '{0:G4}' -f [Math]::Pow(1.3, $_) }) +
  ' against printed 1.30 / 1.69 / 2.20')
# the cheap fixed-price lines
$buyCost = @(2500, 10000, 50000, 500000)
$buyTime = @(59, 333, 1666, 3333)
$gsCost = @(300, 2500, 12000, 50000, 150000, 500000, 1000000)
$gsTime = @(9, 150, 600, 2083, 5499, 20266, 36666)
$preCost = @(350000, 3.5e7, 3.5e9, 3.5e11, 3.5e13)
Write-Output ('Buy Multiplier: ' + ($buyCost -join '+') + ' = ' + ($buyCost | Measure-Object -Sum).Sum +
  ' coins ; times ' + ($buyTime -join '+') + ' = ' + ($buyTime | Measure-Object -Sum).Sum + ' min = ' +
  [Math]::Round(($buyTime | Measure-Object -Sum).Sum / 60.0, 1) + ' h')
Write-Output ('Game Speed: coins ' + ($gsCost | Measure-Object -Sum).Sum + ' ; time ' + ($gsTime | Measure-Object -Sum).Sum +
  ' min = ' + [Math]::Round(($gsTime | Measure-Object -Sum).Sum / 1440.0, 2) + ' d (the Tower Hub print was 65317 min, delta ' +
  (65317 - ($gsTime | Measure-Object -Sum).Sum) + ')')
Write-Output ('Presets: ' + ('{0:E6}' -f (($preCost | Measure-Object -Sum).Sum)) + ' = x100 per level (3.5e5 .. 3.5e13)')
$single = @(250000, 3000000, 20000000, 5000000000, 1001000000)
$singleT = @(719, 3666, 2399, 9599, 14399)
Write-Output ('single/short lines: More Round Stats 250000/719 , Workshop Respec 3e6/3666 , Reroll 2e7/2399 ,' +
  ' Workshop Enhancements 5e9/9599 , Target Priority 1.001e9/14399')
$catSum = 4 * $sC + $lC + $eC + (($buyCost | Measure-Object -Sum).Sum) + (($gsCost | Measure-Object -Sum).Sum) +
  (($preCost | Measure-Object -Sum).Sum) + (($single | Measure-Object -Sum).Sum)
$catTime = 4 * $sT + $lT + $eTlaw + (($buyTime | Measure-Object -Sum).Sum) + (($gsTime | Measure-Object -Sum).Sum) +
  833 + (($singleT | Measure-Object -Sum).Sum)
Write-Output ('Main Research category (13 priced lines): coins = ' + ('{0:E6}' -f $catSum) + ' = ' +
  [Math]::Round($catSum / $U18, 2) + ' q ; clock = ' + [Math]::Round($catTime / 1440.0, 0) + ' d = ' +
  [Math]::Round($catTime / 1440.0 / 365.25, 1) + ' y')
Write-Output ('  share of the 4039 q priced census = ' + [Math]::Round($catSum / (4039.0 * $U18) * 100, 2) +
  ' % ; the one Enhancement Coin Discount line alone = ' + [Math]::Round($eC / (4039.0 * $U18) * 100, 2) + ' %')
Write-Output ('  ECD coins per pp of discount = ' + ('{0:E4}' -f ($eC / 30.0)) + ' ; ECD days per pp = ' +
  [Math]::Round($eTlaw / 1440.0 / 30.0, 1))
Write-Output ('  Labs Coin Discount coins per pp = ' + [Math]::Round($lC / 29.7, 0) + ' ; per day of clock = ' +
  [Math]::Round($lC / ($lT / 1440.0), 0))
Write-Output ('  shared ladder coins per pp of discount = ' + [Math]::Round($sC / 49.5, 0) +
  ' ; Starting Cash coins per unit = ' + [Math]::Round($sC / 495.0, 0))
