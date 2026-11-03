param()
# Iteration 126: the Utility Research category priced from the fandom per-line lab pages.
# Cells transcribed verbatim from Level | Time | Cost | Value; every column re-added offline.
$U9 = 1e9
$U12 = 1e12
$U15 = 1e15
$U18 = 1e18

function A([string] $s) { return @(($s -split ' ' | ForEach-Object { [double]$_ })) }
function S([double[]] $a) { $x = 0.0; foreach ($v in $a) { $x += $v }; return $x }

# the 40-head 99-level column shared by Cash Bonus, Cash / Wave, Coins / Kill Bonus, Coins/wave
$u40Cost = A '40 81 188 408 782 1350 2130 3180 4520 6180 8180 10570 13360 16590 20280 24450 29140 34370 40170 46550 53540 61170 69470 78440 88130 98540 109710 121660 134400 147960 162360 177630 193790 210840 228830 247770 267670 288570 310480 333410 357400 382460 408610 435880 464270 493820 524540 556440 589560 623890 659500 696350 734500 773950 814720 856840 900310 945160 991420 1040000 1090000 1140000 1190000 1240000 1300000 1360000 1410000 1470000 1530000 1600000 1660000 1730000 1800000 1870000 1940000 2010000 2080000 2160000 2240000 2320000 2400000 2480000 2570000 2650000 2740000 2830000 2930000 3020000 3120000 3220000 3320000 3420000 3520000 3630000 3740000 3850000 3960000 4070000 4190000'
$u40Time = A '0 6 16 31 52 80 116 159 211 272 343 423 514 615 727 850 985 1132 1291 1462 1647 1844 2054 2278 2516 2767 3033 3313 3608 3918 4243 4583 4939 5310 5697 6100 6520 6955 7408 7877 8364 8867 9388 9926 10482 11056 11647 12257 12885 13532 14197 14880 15583 16305 17046 17806 18586 19385 20205 21044 21903 22782 23681 24601 25542 26503 27485 28488 29512 30557 31624 32712 33821 34953 36106 37281 38478 39697 40938 42202 43488 44797 46129 47484 48861 50262 51686 53133 54603 56097 57615 59156 60721 62310 63923 65560 67222 68907 70618'
# the 50-head 99-level column of the Interest line
$intCost = A '50 93 221 532 1130 2110 3590 5680 8480 12130 16720 22370 29210 37350 46920 58020 70790 85350 101820 120320 140980 163920 189270 217160 247710 281060 317320 356630 399120 444910 494150 546940 603440 663770 728060 796440 869050 946020 1030000 1110000 1200000 1300000 1400000 1510000 1620000 1730000 1860000 1990000 2120000 2260000 2400000 2560000 2720000 2880000 3050000 3230000 3420000 3610000 3810000 4020000 4230000 4450000 4680000 4920000 5170000 5420000 5680000 5960000 6240000 6520000 6820000 7130000 7440000 7770000 8100000 8450000 8800000 9170000 9540000 9920000 10320000 10720000 11140000 11570000 12000000 12450000 12910000 13380000 13870000 14360000 14870000 15380000 15910000 16460000 17010000 17580000 18160000 18750000 19360000'
$intTime = A '0 9 24 45 76 118 173 242 327 428 548 687 846 1027 1231 1458 1710 1987 2291 2623 2983 3372 3791 4241 4724 5239 5787 6369 6987 7641 8331 9058 9824 10628 11472 12356 13282 14249 15258 16310 17406 18546 19732 20963 22240 23565 24937 26357 27827 29345 30914 32534 34205 35928 37704 39532 41415 43352 45343 47390 49494 51653 53870 56145 58478 60870 63321 65832 68404 71037 73731 76487 79306 82189 85135 88145 91219 94359 97565 100837 104176 107582 111056 114598 118209 121890 125640 129460 133351 137313 141347 145453 149632 153884 158210 162610 167084 171634 176259'
# Max Interest: 15 levels, printed cap 100 ... 15000 dollars (base 50)
$maxIntCost = A '250 910 2130 4860 10330 20020 35600 58900 91940 136870 195990 271720 366610 483330 624680'
$maxIntTime = A '41 69 128 273 582 1151 2090 3523 5590 8439 12234 17148 23365 31079 40495'
# the 20-level column shared by Recovery Package Amount / Max / Chance
$recCost = A '20000000000 25010000000 30070000000 35330000000 40970000000 47260000000 54530000000 63130000000 73510000000 86140000000 101550000000 120320000000 143080000000 170500000000 203310000000 242270000000 288200000000 341960000000 404450000000 476600000000'
$recTime = A '3333 3834 4347 4894 5504 6216 7071 8119 9413 11011 12977 15379 18286 21777 25929 30826 36555 43206 50874 59656'
# reference ladders pulled in earlier iterations
$sharedCost = A '30 71 178 398 772 1340 2120 3170 4510 6170 8170 10560 13350 16580 20270 24440 29130 34360 40160 46540 53530 61160 69460 78430 88120 98530 109700 121650 134390 147950 162350 177620 193780 210830 228820 247760 267660 288560 310470 333400 357390 382450 408600 435870 464260 493810 524530 556430 589550 623890 659490 696340 734490 773940 814710 856830 900300 945160 991410 1040000 1090000 1140000 1190000 1240000 1300000 1360000 1410000 1470000 1530000 1600000 1660000 1730000 1800000 1870000 1940000 2010000 2080000 2160000 2240000 2320000 2400000 2480000 2570000 2650000 2740000 2830000 2930000 3020000 3120000 3220000 3320000 3420000 3520000 3630000 3740000 3850000 3960000 4070000 4190000'
$sharedTime = A '0 6 16 31 52 80 116 159 211 272 343 423 514 615 727 850 985 1132 1291 1462 1646 1844 2054 2278 2516 2767 3033 3313 3608 3918 4243 4583 4938 5310 5697 6100 6520 6955 7408 7877 8364 8867 9388 9926 10482 11055 11647 12257 12885 13531 14197 14880 15583 16305 17046 17806 18586 19385 20204 21043 21903 22782 23681 24601 25542 26503 27485 28488 29512 30557 31624 32712 33821 34952 36106 37280 38478 39697 40938 42202 43488 44797 46129 47484 48861 50262 51686 53133 54603 56097 57615 59156 60721 62310 63923 65560 67222 68907 70617'
$lcdCost = A '40 83 211 522 1120 2100 3580 5670 8470 12120 16700 22360 29200 37340 46910 58000 70780 85340 101800 120310 140970 163910 189260 217150 247700 281050 317310 356620 399110 444900 494140 546940 603400 663760 728050 796430 869040 946010 1027500 1113600 1200000 1300000 1400000 1510000 1620000 1730000 1860000 1990000 2120000 2260000 2400000 2560000 2720000 2880000 3050000 3230000 3420000 3610000 3810000 4020000 4230000 4450000 4680000 4920000 5170000 5420000 5680000 5960000 6240000 6520000 6820000 7130000 7440000 7770000 8100000 8450000 8800000 9170000 9540000 9920000 10300000 10700000 11100000 11600000 12000000 12500000 12900000 13400000 13900000 14360000 14870000 15380000 15910000 16460000 17010000 17580000 18160000 18750000 19360000'
$enemyTime = A '3333 3834 4347 4894 5504 6216 7071 8119 9413 11011 12977 15379 18286 21777 25929 30826 36555 43206 50874 59656 69652 80966 93705 107979 123902 141589 161160 182737 206443 232408'
$enemyCost = A '30 60.01 90.07 120.33 150.97 182.26 214.53 248.13 283.51 321.14 361.55 405.32 453.08 505.5 563.31 627.27 698.2 776.96 864.45 961.6'

function Show([string] $n, [double] $c, [double] $t, [double] $pp, [string] $unit) {
  Write-Output ($n.PadRight(22) + 'coins=' + ('{0:E6}' -f $c).PadLeft(12) + ' min=' + ('{0:F0}' -f $t).PadLeft(9) +
    ' d=' + ('{0:F2}' -f ($t / 1440.0)).PadLeft(9) + ' pp=' + ('{0:0.###}' -f $pp).PadLeft(8) +
    ' coins/pp=' + ('{0:E5}' -f ($c / $pp)).PadLeft(11) + ' d/pp=' + ('{0:F3}' -f ($t / 1440.0 / $pp)).PadLeft(9) +
    '  ' + $n + ' [' + $unit + ']')
}
function DiffA([string] $label, [double[]] $a, [double[]] $b) {
  $k = 0; $sum = 0.0
  for ($i = 0; $i -lt [Math]::Min($a.Count, $b.Count); $i++) { if ($a[$i] -ne $b[$i]) { $k++; $sum += $a[$i] - $b[$i] } }
  Write-Output ('  ' + $label + ': differing cells=' + $k + ' total delta=' + ('{0:0.###}' -f $sum))
}
function Ratios([string] $label, [double[]] $a, [int] $from, [int] $to) {
  $o = @()
  for ($i = $from; $i -lt [Math]::Min($to, $a.Count); $i++) { $o += ('{0:0.0000}' -f ($a[$i + 1] / $a[$i])) }
  Write-Output ('  ' + $label + ': ' + ($o -join ' '))
}

$c40 = S $u40Cost; $t40 = S $u40Time
$ci = S $intCost; $ti = S $intTime
$cm = S $maxIntCost; $tm = S $maxIntTime
$cr = S $recCost; $tr = S $recTime
$cs = S $sharedCost; $ts = S $sharedTime
$cl = S $lcdCost
Write-Output '--- the four 40-head workshop-increment lines (Cash Bonus / Cash per Wave / Coins per Kill / Coins per Wave) ---'
Write-Output ('each: coins=' + ('{0:F0}' -f $c40) + ' min=' + ('{0:F0}' -f $t40) + ' = ' +
  ('{0:F2}' -f ($t40 / 1440.0)) + ' d ; L1 40 / 0m / 1.02 ; L99 4 190 000 / 49d 1h 38m / 2.98')
Write-Output ('  block of four = ' + ('{0:F0}' -f (4 * $c40)) + ' coins / ' + ('{0:F0}' -f (4 * $t40)) + ' min = ' +
  ('{0:F2}' -f (4 * $t40 / 1440.0)) + ' d')
DiffA 'cost vs the 30-head shared column' $u40Cost $sharedCost
DiffA 'time vs the 30-head shared column' $u40Time $sharedTime
Write-Output ('  sum deltas: coins ' + ('{0:F0}' -f ($c40 - $cs)) + ' min ' + ('{0:F0}' -f ($t40 - $ts)) +
  ' ; value law 1 + 0.02n (cap 2.98) is the same law as Attack Speed')
Write-Output ('  interest-vs-lcd: Interest coins=' + ('{0:F0}' -f $ci) + ' min=' + ('{0:F0}' -f $ti) + ' = ' +
  ('{0:F2}' -f ($ti / 1440.0)) + ' d ; Labs Coin Discount sum=' + ('{0:F0}' -f $cl) + ' delta=' +
  ('{0:F0}' -f ($ci - $cl)))
DiffA 'Interest cost vs Labs Coin Discount cost' $intCost $lcdCost
Ratios 'Cash Bonus ladder ratios L90-98' $u40Cost 89 98
Ratios 'Interest ladder ratios L90-98' $intCost 89 98
Ratios 'Interest clock ratios L90-98' $intTime 89 98
Write-Output ('  clock ratio Interest / 40-head = ' + ('{0:F3}' -f ($ti / $t40)) + ' ; coin ratio = ' +
  ('{0:F3}' -f ($ci / $c40)))

Write-Output '--- Max Interest (15 levels) ---'
Write-Output ('coins=' + ('{0:F0}' -f $cm) + ' min=' + ('{0:F0}' -f $tm) + ' = ' + ('{0:F2}' -f ($tm / 1440.0)) +
  ' d ; printed cap ladder 100 200 300 500 700 1000 1500 2000 2500 3500 5000 7500 10000 12500 15000 (base 50)')
Write-Output ('  cap gain = ' + ('{0:F0}' -f (15000 - 50)) + ' dollars for ' + ('{0:F0}' -f $cm) + ' coins = ' +
  ('{0:F1}' -f ($cm / 14950.0)) + ' coins per dollar of cap ; clock per dollar = ' +
  ('{0:F4}' -f ($tm / 1440.0 / 14950.0)) + ' d')
Write-Output '--- the three Recovery Package lines (20 levels, one column) ---'
Write-Output ('each: coins=' + ('{0:E6}' -f $cr) + ' min=' + ('{0:F0}' -f $tr) + ' = ' + ('{0:F2}' -f ($tr / 1440.0)) + ' d')
$pre = @($enemyTime[0..19])
DiffA 'Recovery time vs enemy-stat shared ladder L1-20' $recTime $pre
Write-Output ('  enemy ladder L21-30 tail = ' + ('{0:F0}' -f ((S $enemyTime) - $tr)) + ' min ; full 30-level sum=' +
  ('{0:F0}' -f (S $enemyTime)) + ' min')
Ratios 'Recovery clock ratios L1-19' $recTime 0 19
$recD = @()
for ($i = 1; $i -lt $recCost.Count; $i++) { $recD += ('{0:0.###}' -f ($recCost[$i] - $recCost[$i - 1])) }
Write-Output ('  Recovery price increments (B) = ' + ($recD -join ' '))

Write-Output '--- per line: totals and the cost of one printed unit ---'
Show 'Cash Bonus x4 (each)' $c40 $t40 1.98 '1 + 0.02n, cap 2.98'
Show 'Interest' $ci $ti 1.98 '1 + 0.02n, cap 2.98'
Show 'Max Interest' $cm $tm 14950 'cap 50 -> 15000 USD'
Show 'Package After Boss' 1000000000 11666 1 'Unlocked'
Show 'Recovery Pkg Amount' $cr $tr 8.00 '0.40n pp, cap 8.00%'
Show 'Recovery Pkg Max' $cr $tr 20 '1.00n pp, cap 20%'
Show 'Recovery Pkg Chance' $cr $tr 4.00 '0.20n pp, cap 4.00%'

Write-Output '--- category total ---'
$new10 = 4 * $c40 + $ci + $cm + 1000000000 + 3 * $cr
$new10T = 4 * $t40 + $ti + $tm + 11666 + 3 * $tr
Write-Output ('Utility Research, 10 newly priced lines: coins=' + ('{0:E6}' -f $new10) + ' = ' +
  ('{0:0.000}' -f ($new10 / $U12)) + ' T ; clock=' + ('{0:F0}' -f $new10T) + ' min = ' +
  ('{0:0.0}' -f ($new10T / 1440.0)) + ' d = ' + ('{0:0.0}' -f ($new10T / 1440.0 / 365.25)) + ' y')
$cat12 = $new10 + 1.49 * $U12
$cat12T = $new10T / 1440.0 + 260.62
Write-Output ('  with the two * Level Skip labs (layer F) the 12-line category = ' + ('{0:0.000}' -f ($cat12 / $U12)) +
  ' T / ' + ('{0:0.0}' -f $cat12T) + ' d')
Write-Output ('  coin share of the three Recovery lines = ' + ('{0:0.00}' -f (3 * $cr / $new10 * 100)) +
  ' % ; clock share = ' + ('{0:0.0}' -f (3 * $tr / $new10T * 100)) + ' %')
Write-Output ('  coin share of the four 40-head lines = ' + ('{0:0.00}' -f (4 * $c40 / $new10 * 100)) +
  ' % ; clock share = ' + ('{0:0.0}' -f (4 * $t40 / $new10T * 100)) + ' %')

Write-Output '--- Appendix B after this pass ---'
$billC = 4.039 * $U18 + 826.445 * $U15 + 472456246 + 472509506 + 25.594 * $U12 + 187.228 * $U12 + $new10
$billT = 104035.3 + 16806.0 + 124747.5 + 15050.9 + ($new10T / 1440.0)
Write-Output ('  121 lines: coins=' + ('{0:0.000}' -f ($billC / $U18)) + ' Q, clock=' + ('{0:0.0}' -f $billT) +
  ' d ; coverage 121 / 169 = ' + ('{0:0.0}' -f (121.0 / 169 * 100)) + ' %')
Write-Output ('  the Utility layer alone is ' + ('{0:0.000}' -f ($new10 / $U12)) + ' T = ' + ('{0:0.0000}' -f ($new10 / $billC * 100)) +
  ' % of the bill coins and ' + ('{0:0.0}' -f ($new10T / 1440.0 / $billT * 100)) + ' % of its clock')
Write-Output ('  income units: coins ' + ('{0:F0}' -f ($billC / 700e12)) + ' d = ' +
  ('{0:0.00}' -f ($billC / 700e12 / 365.25)) + ' y at 700 T/day ; clock ' + ('{0:0.0}' -f $billT) + ' d = ' +
  ('{0:0.0}' -f ($billT / 365.25)) + ' y single-slot = ' + ('{0:0.0}' -f ($billT / 5 / 365.25)) + ' y five slots = ' +
  ('{0:0.0}' -f ($billT / 5 / 3.725 / 365.25)) + ' y with the x3.725 stack')
Write-Output ('  T19 band (1 627.5 q) share = ' + ('{0:0.0}' -f (1627.5 * $U15 / $billC * 100)) + ' % of coins ; ' +
  ('{0:0.0}' -f (70304.48 / $billT * 100)) + ' % of clock')

Write-Output '--- the Recovery price column as an offset copy of the enemy-stat column ---'
$bad = 0; $worst = 0.0
for ($i = 1; $i -lt 20; $i++) {
  $de = $enemyCost[$i] - $enemyCost[$i - 1]; $dr = $recCost[$i] / $U9 - $recCost[$i - 1] / $U9
  $gap = $de - $dr
  if ([Math]::Abs($gap - 25.0) -gt 0.0001) { $bad++; if ([Math]::Abs($gap - 25.0) -gt $worst) { $worst = [Math]::Abs($gap - 25.0) } }
}
Write-Output ('  increments 2..20: enemy minus Recovery minus 25 B is nonzero in ' + $bad + ' of 19 steps (worst |delta| = ' +
  ('{0:0.####}' -f $worst) + ') ; heads: enemy 30 B, Recovery 20 B')
$bad2 = 0
for ($i = 0; $i -lt 20; $i++) {
  $pred = $recCost[$i] / $U9 + 10.0 + 25.0 * $i
  if ([Math]::Abs($enemyCost[$i] - $pred) -gt 0.0001) { $bad2++ }
}
Write-Output ('  closed form enemy(n) = Recovery(n) + 10 + 25(n-1): mismatching cells = ' + $bad2 + ' of 20')
Write-Output ('  20-level enemy coin sum = ' + ('{0:0.000}' -f ((S $enemyCost) * $U9 / $U12)) +
  ' T ; Recovery 20-level = ' + ('{0:0.000}' -f ($cr / $U12)) + ' T')

Write-Output '--- the coin-side multiplier block (the six cheap Utility lines) ---'
$blockC = 4 * $c40 + $ci + $cm + 1000000000
$blockT = (4 * $t40 + $ti + $tm + 11666) / 1440.0
Write-Output ('  four workshop-increment lines + Interest + Max Interest + Package After Boss = ' +
  ('{0:F0}' -f $blockC) + ' coins = ' + ('{0:0.0000}' -f ($blockC / $U9)) + ' B ; clock ' + ('{0:0.0}' -f $blockT) +
  ' d = ' + ('{0:0.0}' -f ($blockT / 365.25)) + ' y single-slot = ' + ('{0:0.0}' -f ($blockT / 5 / 365.25)) +
  ' y five slots = ' + ('{0:0.00}' -f ($blockT / 5 / 3.725 / 365.25)) + ' y with the x3.725 stack')
Write-Output ('  block share of the layer: coins ' + ('{0:0.00}' -f ($blockC / $new10 * 100)) +
  ' % clock ' + ('{0:0.0}' -f ($blockT / ($new10T / 1440.0) * 100)) + ' % ; share of the 121-line bill coins = ' +
  ('{0:0.0000}' -f ($blockC / $billC * 100)) + ' %')
