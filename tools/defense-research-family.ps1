param()
# Iteration 125: the Defense Research category priced from the fandom per-line lab pages.
# Cells transcribed verbatim from Level | Time | Cost | Value; every column is re-added offline.
$U9 = 1e9
$U12 = 1e12
$U15 = 1e15
$U18 = 1e18

function A([string] $s) { return @(($s -split ' ' | ForEach-Object { [double]$_ })) }
function S([double[]] $a) { $x = 0.0; foreach ($v in $a) { $x += $v }; return $x }

$sharedCost = A '30 71 178 398 772 1340 2120 3170 4510 6170 8170 10560 13350 16580 20270 24440 29130 34360 40160 46540 53530 61160 69460 78430 88120 98530 109700 121650 134390 147950 162350 177620 193780 210830 228820 247760 267660 288560 310470 333400 357390 382450 408600 435870 464260 493810 524530 556430 589550 623890 659490 696340 734490 773940 814710 856830 900300 945160 991410 1040000 1090000 1140000 1190000 1240000 1300000 1360000 1410000 1470000 1530000 1600000 1660000 1730000 1800000 1870000 1940000 2010000 2080000 2160000 2240000 2320000 2400000 2480000 2570000 2650000 2740000 2830000 2930000 3020000 3120000 3220000 3320000 3420000 3520000 3630000 3740000 3850000 3960000 4070000 4190000'
$sharedTime = A '0 6 16 31 52 80 116 159 211 272 343 423 514 615 727 850 985 1132 1291 1462 1646 1844 2054 2278 2516 2767 3033 3313 3608 3918 4243 4583 4938 5310 5697 6100 6520 6955 7408 7877 8364 8867 9388 9926 10482 11055 11647 12257 12885 13531 14197 14880 15583 16305 17046 17806 18586 19385 20204 21043 21903 22782 23681 24601 25542 26503 27485 28488 29512 30557 31624 32712 33821 34952 36106 37280 38478 39697 40938 42202 43488 44797 46129 47484 48861 50262 51686 53133 54603 56097 57615 59156 60721 62310 63923 65560 67222 68907 70617'

$defPctCost = A '5000 7500 24000 90500 267000 637500 1310000 2420000 4110000 6580000 10020000 14660000 20760000 28590000 38440000 50650000 65570000 83550000 105010000 130350000 160040000 194520000 234290000 279880000 331820000 390670000 457020000 531490000 614700000 707330000 810050000 923570000 1050000000 1190000000 1340000000 1500000000 1680000000 1870000000 2090000000 2310000000 2560000000 2830000000 3110000000 3420000000 3750000000 4100000000 4480000000 4880000000 5310000000 5760000000'
$defPctTime = A '59 111 171 253 373 546 791 1127 1574 2154 2887 3798 4908 6242 7825 9682 11838 14319 17153 20366 23986 28042 32560 37572 43105 49189 55855 63133 71053 79647 88947 98983 109788 121395 133836 147145 161354 176497 192608 209721 227870 247091 267418 288886 311531 335389 360495 386886 414598 443667'
$orbSpdCost = A '15000 22500 105740 474530 1500000 3700000 7780000 14620000 25250000 40900000 62990000 93080000 132970000 184610000 250140000 331900000 432430000 554440000 700850000 874760000'
$orbSpdTime = A '79 181 292 428 610 857 1196 1651 2252 3028 4010 5232 6727 8530 10679 13212 16166 19582 23500 27964'
$lmDamCost = A '25000 40000 231980 1170000 3930000 10180000 22240000 43100000 76500000 126910000 199600000 300680000 437080000 616620000 848010000 1140000000 1510000000 1950000000 2500000000 3150000000'
$lmDamTime = A '99 301 513 754 1049 1426 1917 2558 3389 4451 5789 7450 9483 11941 14878 18349 22414 27132 32566 38780'
$lmDecayCost = A '25000 40000 231980 1170000 3930000 10180000 22240000 43100000 76500000 126910000 199600000 300680000 437080000 616620000 848010000 1140000000 1510000000 1950000000 2500000000 3150000000 3930000000 4850000000 5920000000 7170000000 8610000000 10260000000 12140000000 14280000000 16700000000 19420000000 22470000000 25870000000 29660000000 33850000000 38490000000'
$lmDecayTime = A '99 301 513 754 1049 1426 1917 2558 3389 4451 5789 7450 9483 11941 14878 18349 22414 27132 32566 38780 45839 53812 62767 72776 83910 96245 109857 124821 141218 159128 178632 199814 222757 247549 274276'
$shockCost = A '100000 119000 314980 1250000 4020000 10270000 22340000 43210000 76610000 127020000 199720000 300800000 437210000 616750000 848140000 1140000000 1510000000 1950000000 2500000000 3150000000'
$shockTime = A '166 401 647 931 1283 1748 2374 3217 4341 5814 7711 10112 13104 16778 21228 26558 32872 40281 48900 58849'
$orbBossCost = A '800000000 1210000000 1670000000 2330000000 3370000000 5060000000 7730000000 11730000000 17510000000 25540000000'
$orbBossTime = A '1666 2167 2680 3227 3838 4549 5405 6452 7746 9345'
$wallHpCost = A '1 1.2 1.4 1.6 1.81 2.02 2.24 2.46 2.7 2.94 3.2 3.47 3.76 4.07 4.41 4.76 5.14 5.55 5.99 6.46 6.97 7.51 8.09 8.72 9.39 10.1 10.87 11.69 12.57 13.5 14.49 15.55 16.67 17.86 19.12 20.46 21.87 23.36 24.94 26.6 28.36 30.2 32.14 34.17 36.31 38.55 40.9 43.36 45.93 48.61'
$wallHpTime = A '333 337 346 359 379 405 439 481 531 590 659 738 827 926 1037 1158 1292 1437 1594 1764 1946 2142 2350 2573 2809 3059 3323 3601 3895 4203 4526 4864 5218 5588 5973 6375 6793 7227 7678 8145 8630 9132 9651 10187 10742 11314 11904 12512 13138 13783'
$wallRebCost = A '1.6 1.91 2.23 2.61 3.04 3.55 4.15 4.86 5.69 6.65 7.75 9.02 10.46 12.08 13.89 15.92 18.16 20.64 23.36 26.33'
$wallRebTime = A '833 1501 2180 2894 3671 4549 5571 6786 8246 10011 12144 14712 17786 21443 25762 30826 36721 43540 51374 60323'
$wallRegCost = A '30 35.1 40.35 45.72 51.21 56.81 62.52 68.32 74.22 80.22 86.31 92.49 98.76 105.12 111.56 118.09 124.7 131.4 138.18 145.03 151.97 158.99 166.08 173.26 180.51 187.83 195.23 202.71 210.26 217.89'
$wallRegTime = A '1666 2001 2356 2798 3452 4515 6254 9021 13250 19464 28278 32519 37397 43007 49458 56877 65408 75220 86503 99478 114400 131560 151294 173988 200087 230100 264615 304307 349953 402446'
$wallThrCost = A '30 38.1 46.35 54.72 63.21 71.81 80.52 89.32 98.22 107.22 116.31 125.49 134.76 144.12 153.56 163.09 172.7 182 192.18 202.03'
$wallThrTime = A '1666 2167 2689 3298 4119 5348 7254 10188 14583 20964 29944 42236 58649 80095 107589 142254 185322 238136 302153 378946'
$wallInvCost = A '300 351 403.03 455.8 509.19 563.13 617.58 672.5 727.86 783.63'
$wallInvTime = A '4999 5834 6689 7631 8786 10348 12588 15855 20583 27297'
$wallForCost = A '300 300.07 300.44 301.41 303.28 306.35 310.92 317.29 325.76 336.62 350.2 366.77 386.64 410.11 437.48 469.05 505.12 545.99 591.96 643.33 700.4 763.47 832.84 908.81 991.68 1080 1180 1280 1400 1520 1650 1790 1940 2100 2270 2440 2630 2830 3040 3270 3500 3750 4010 4280 4560 4860 5170 5490 5830 6180 6550 6930 7330 7740 8170 8620 9080 9560 10060 10570'
$wallForTime = A '3333 3484 3640 3805 3982 4173 4380 4606 4853 5123 5418 5739 6089 6470 6883 7330 7813 8333 8892 9491 10132 10817 11547 12324 13149 14023 14949 15926 16958 18044 19187 20389 21649 22970 24353 25799 27309 28886 30529 32241 34022 35874 37798 39796 41868 44016 46240 48543 50925 53388 55932 58559 61270 64066 66948 69917 72976 76123 79362 82692'

function Show([string] $n, [double] $c, [double] $t, [double] $pp, [string] $unit) {
  Write-Output ($n.PadRight(23) + 'coins=' + ('{0:E6}' -f $c).PadLeft(12) + ' min=' + ('{0:F0}' -f $t).PadLeft(10) +
    ' d=' + ('{0:F2}' -f ($t / 1440.0)).PadLeft(9) + ' pp=' + ('{0:0.###}' -f $pp).PadLeft(8) +
    ' coins/pp=' + ('{0:E4}' -f ($c / $pp)).PadLeft(11) + ' d/pp=' + ('{0:F3}' -f ($t / 1440.0 / $pp)).PadLeft(9) + '  ' + $n + ' [' + $unit + ']')
}
function DiffA([string] $label, [double[]] $a, [double[]] $b) {
  $k = 0; $sum = 0.0
  for ($i = 0; $i -lt [Math]::Min($a.Count, $b.Count); $i++) { if ($a[$i] -ne $b[$i]) { $k++; $sum += $a[$i] - $b[$i] } }
  Write-Output ('  ' + $label + ': differing cells=' + $k + ' total delta=' + ('{0:0.###}' -f $sum))
}
function Diffs([string] $label, [double[]] $a) {
  $f = $a[1] - $a[0]; $l = $a[$a.Count - 1] - $a[$a.Count - 2]
  $mn = $f; $mx = $f
  for ($i = 1; $i -lt $a.Count; $i++) { $d = $a[$i] - $a[$i - 1]; if ($d -lt $mn) { $mn = $d }; if ($d -gt $mx) { $mx = $d } }
  Write-Output ('  ' + $label + ': first delta=' + ('{0:0.###}' -f $f) + ' last delta=' + ('{0:0.###}' -f $l) +
    ' min=' + ('{0:0.###}' -f $mn) + ' max=' + ('{0:0.###}' -f $mx))
}

$sharedC = S $sharedCost
$sharedT = S $sharedTime
Write-Output ('shared 99 column: coins=' + ('{0:F0}' -f $sharedC) + ' min=' + ('{0:F0}' -f $sharedT) + ' (expect 111695939 / 2080765)')
$triC = $sharedC + 4310000
$triT = $sharedT + 72352
Write-Output ('the three 100-level lines (Health, Health Regen, Defense Absolute): coins=' + ('{0:F0}' -f $triC) +
  ' min=' + ('{0:F0}' -f $triT) + ' = ' + ('{0:F2}' -f ($triT / 1440.0)) + ' d ; value 1 + 0.03n -> 4.00 at L100')
$d100 = 4310000 / 72352
Write-Output ('  level-100 cell 4 310 000 coins / 72 352 min (50d 5h 52m) ; the 100th cell alone = ' +
  ('{0:0.00}' -f (4310000 / $triC * 100)) + ' % of the line')

$c1 = $defPctCost | ForEach-Object { $_ }
$dpC = S $defPctCost; $dpT = S $defPctTime
$osC = S $orbSpdCost; $osT = S $orbSpdTime
$ldC = S $lmDamCost; $ldT = S $lmDamTime
$lcC = S $lmDecayCost; $lcT = S $lmDecayTime
$swC = S $shockCost; $swT = S $shockTime
$obC = S $orbBossCost; $obT = S $orbBossTime
$whC = (S $wallHpCost) * $U9; $whT = S $wallHpTime
$wrC = (S $wallRebCost) * $U9; $wrT = S $wallRebTime
$wgC = (S $wallRegCost) * $U9; $wgT = S $wallRegTime
$wtC = (S $wallThrCost) * $U9; $wtT = S $wallThrTime
$wiC = (S $wallInvCost) * $U9; $wiT = S $wallInvTime
$wfC = (S $wallForCost) * $U9; $wfT = S $wallForTime

Write-Output '--- per line: totals and the cost of one printed percentage point ---'
Show 'Health/Reg/DefAbs' $triC $triT 300 '1+0.03n, cap 4.00'
Show 'Defense Percent' $dpC $dpT 10 '0.20n pp, cap 10.00'
Show 'Orb Speed' $osC $osT 2 '0.10n, cap 2.00'
Show 'Land Mine Damage' $ldC $ldT 200 '10n pp, cap 200%'
Show 'Land Mine Decay' $lcC $lcT 17.5 '0.5n, cap 17.5'
Show 'Shockwave Size' $swC $swT 1.00 '0.05n, cap 1.00'
Show 'Orb Boss Hit' $obC $obT 2 '0.20n pp, cap 2.00%'
Show 'Wall Health' $whC $whT 100 '+2n pp, cap +100%'
Show 'Wall Rebuild' $wrC $wrT 200 '-10n s, cap -200s'
Show 'Wall Regen' $wgC $wgT 300 '10n pp, cap 300%'
Show 'Wall Thorns' $wtC $wtT 20 '1n pp, cap 20%'
Show 'Wall Invincibility' $wiC $wiT 10 '1n s, cap 10.0s'
Show 'Wall Fortification' $wfC $wfT 1200 '20n pp, cap 1200%'
Show 'Garlic Thorns' 1350000 36648 10 'Rev 11 print'

Write-Output '--- ladder relations ---'
DiffA 'Land Mine Decay L1-20 cost vs Land Mine Damage' $lmDecayCost $lmDamCost
DiffA 'Land Mine Decay L1-20 time vs Land Mine Damage' $lmDecayTime $lmDamTime
Write-Output ('  Land Mine Decay tail L21-35 = ' + ('{0:E5}' -f ($lcC - $ldC)) + ' coins / ' + ('{0:F0}' -f ($lcT - $ldT)) + ' min')
DiffA 'Shockwave Size cost vs Land Mine Damage' $shockCost $lmDamCost
DiffA 'Shockwave Size time vs Land Mine Damage' $shockTime $lmDamTime
Write-Output ('  Shockwave / Land Mine Damage clock ratio = ' + ('{0:0.000}' -f ($swT / $ldT)))
$tri = @($wallRegCost)
Diffs 'Wall Regen price' $wallRegCost
Diffs 'Wall Thorns price' $wallThrCost
Diffs 'Wall Invincibility price' $wallInvCost
Diffs 'Wall Fortification price (B)' $wallForCost
Diffs 'Wall Health price (B)' $wallHpCost
Diffs 'Wall Rebuild price (B)' $wallRebCost
$seg = @()
for ($i = 11; $i -lt 29; $i++) { $seg += ('{0:0.0000}' -f ($wallRegTime[$i + 1] / $wallRegTime[$i])) }
Write-Output ('  Wall Regen clock ratios L12-30: ' + ($seg -join ' '))
$seg2 = @()
for ($i = 40; $i -lt 59; $i++) { $seg2 += ('{0:0.000}' -f ($wallForTime[$i + 1] / $wallForTime[$i])) }
Write-Output ('  Wall Fortification clock ratios L41-60: ' + ($seg2 -join ' '))

Write-Output '--- category total ---'
$catC = 3 * $triC + $dpC + $osC + $ldC + $lcC + $swC + $obC + $whC + $wrC + $wgC + $wtC + $wiC + $wfC + 1350000
$catT = 3 * $triT + $dpT + $osT + $ldT + $lcT + $swT + $obT + $whT + $wrT + $wgT + $wtT + $wiT + $wfT + 36648
$lv = 100 * 3 + 50 + 20 + 35 + 20 + 10 + 50 + 20 + 30 + 20 + 10 + 60 + 10
Write-Output ('Defense Research category (16 lines, ' + $lv + ' levels): coins=' + ('{0:E6}' -f $catC) + ' = ' +
  ('{0:0.000}' -f ($catC / $U12)) + ' T ; clock=' + ('{0:F0}' -f $catT) + ' min = ' + ('{0:0.0}' -f ($catT / 1440.0)) +
  ' d = ' + ('{0:0.0}' -f ($catT / 1440.0 / 365.25)) + ' y')
Write-Output ('  share of the clock in the four biggest lines (Wall Regen + Wall Thorns + Wall Fortification + Land Mine Decay) = ' +
  ('{0:0.0}' -f (($wgT + $wtT + $wfT + $lcT) / $catT * 100)) + ' %')
Write-Output ('  coin share of those four lines = ' + ('{0:0.0}' -f (($wgC + $wtC + $wfC + $lcC) / $catC * 100)) + ' %')

$billC = 4.039 * $U18 + 826.445 * $U15 + 472456246 + 472509506 + 25.594 * $U12 + $catC
$billT = 104035.3 + 16806.0 + 124747.5 + $catT / 1440.0
Write-Output ('Appendix B after this pass: 112 lines, coins=' + ('{0:0.###}' -f ($billC / $U18)) + ' Q, clock=' +
  ('{0:0.0}' -f $billT) + ' d ; coverage 112 / 169 = ' + ('{0:0.0}' -f (112.0 / 169 * 100)) + ' %')
Write-Output ('  the Defense layer alone is ' + ('{0:0.000}' -f ($catC / $U12)) + ' T = ' +
  ('{0:0.0000}' -f ($catC / $billC * 100)) + ' % of the bill but ' + ('{0:0.0}' -f ($catT / 1440.0 / $billT * 100)) + ' % of its clock')
