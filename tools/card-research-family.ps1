param()
# Iteration 127: the Card Research category priced from the fandom per-line lab pages, plus the mastery-lab block.
# Cells transcribed verbatim from Level | Time | Cost | Value; every column re-added offline.
$U6 = 1e6
$U9 = 1e9
$U12 = 1e12
$U15 = 1e15
$U18 = 1e18

function A([string] $s) { return @(($s -split ' ' | ForEach-Object { [double]$_ })) }
function S([double[]] $a) { $x = 0.0; foreach ($v in $a) { $x += $v }; return $x }
function Show([string] $n, [double] $c, [double] $t, [double] $pp, [string] $unit) {
  Write-Output ($n.PadRight(24) + 'coins=' + ('{0:E6}' -f $c).PadLeft(12) + ' min=' + ('{0:F0}' -f $t).PadLeft(9) +
    ' d=' + ('{0:F2}' -f ($t / 1440.0)).PadLeft(9) + ' pp=' + ('{0:0.###}' -f $pp).PadLeft(8) +
    ' coins/pp=' + ('{0:E5}' -f ($c / $pp)).PadLeft(11) + ' d/pp=' + ('{0:F3}' -f ($t / 1440.0 / $pp)).PadLeft(9) +
    '  [' + $unit + ']')
}
function DiffA([string] $label, [double[]] $a, [double[]] $b) {
  $k = 0; $sum = 0.0
  for ($i = 0; $i -lt [Math]::Min($a.Count, $b.Count); $i++) { if ($a[$i] -ne $b[$i]) { $k++; $sum += $a[$i] - $b[$i] } }
  Write-Output ('  ' + $label + ': differing cells=' + $k + ' total delta=' + ('{0:0.###}' -f $sum))
}

# the 7-level Recharge column, identical on all four pages (Second Wind / Demon Mode / Nuke / Missile Barrage)
$rechargeCost = A '550 1050 1550 2050 2560 3070 3600'
$rechargeTime = A '7499 9501 11574 14350 20278 35969 73451'
# printed value columns (recharge waves) of the four lines
$swVal = A '2000 1500 1250 1000 750 550 400'
$nuVal = A '1500 1250 1000 750 550 400 300'
$mbVal = A '1500 1250 1000 750 500 350 200'
# Double Death Ray (30 levels, value 1n pp)
$ddrCost = A '2500000 2910000 3620000 6130000 14340000 35750000 82660000 173370000 333380000 596590000 1010000000 1620000000 2490000000 3720000000 5380000000 7600000000 10490000000 14210000000 18900000000 24770000000 32010000000 40850000000 51550000000 64370000000 79640000000 97670000000 118820000000 143500000000 172110000000 205120000000'
$ddrTime = A '59 561 1073 1614 2209 2886 3677 4618 5749 7111 8749 10710 13043 15801 19038 22809 27174 32192 37926 44440 51799 60072 69327 79636 91070 103705 117617 132881 149578 167788'
# Energy Shield Extra Hit (2 levels), Extra Extra Orbs (2), Extra Orb Adjuster (1)
$eshCost = A '40 850'
$eshTime = A '16666 46666'
$eeoCost = A '25000000 900000000'
$eeoTime = A '2333 8333'
$eoaCost = 1500000.0
$eoaTime = 2999.0
# Super Tower Bonus (30 levels now printed, value 1 + 0.03n)
$stbCost = A '2000000000 3010000000 4070000000 5330000000 6970000000 9260000000 12530000000 17130000000 23510000000 32140000000 43550000000 58320000000 77080000000 100500000000 129310000000 164270000000 206200000000 255960000000 314450000000 382600000000 461420000000 551940000000 655210000000 772370000000 904560000000 1050000000000 1220000000000 1400000000000 1610000000000 1830000000000'
$stbTime = A '299 801 1313 1854 2449 3126 3917 4858 5989 7351 8989 10950 13283 16041 19278 23049 27414 32432 38166 44680 52039 60312 69567 79876 91310 103945 117857 133121 149818 168028'
# the shared mastery-lab ladder (printed Total 50.00q / 562d 12h), nine levels
$mastCost = A '1.10 1.30 2.00 3.40 5.60 7.70 9.10 9.80 10.00'
$mastTimeH = A '500 750 1000 1250 1500 1750 2000 2250 2500'
# stone prices of the 32 masteries, as printed on Card Masteries
$stone500 = 2; $stone750 = 13; $stone1000 = 14; $stone1250 = 3

Write-Output '--- the shared Recharge column (4 census lines) ---'
$cR = (S $rechargeCost) * $U9; $tR = S $rechargeTime
Write-Output ('coins=' + ('{0:F0}' -f $cR) + ' = ' + ('{0:0.000}' -f ($cR / $U12)) + ' T ; min=' + ('{0:F0}' -f $tR) +
  ' = ' + ('{0:F2}' -f ($tR / 1440.0)) + ' d ; L1 550B / 5d 4h 59m ; L7 3.6T / 51d 8h 11m')
Write-Output ('  waves saved L1->L7: Second Wind ' + ($swVal[0] - $swVal[6]) + ' ; Nuke/Demon Mode ' +
  ($nuVal[0] - $nuVal[6]) + ' ; Missile Barrage ' + ($mbVal[0] - $mbVal[6]))
Write-Output ('  coins per 100 waves saved: SW ' + ('{0:E4}' -f ($cR / (($swVal[0] - $swVal[6]) / 100.0))) +
  ' ; Nuke/DM ' + ('{0:E4}' -f ($cR / (($nuVal[0] - $nuVal[6]) / 100.0))) +
  ' ; MB ' + ('{0:E4}' -f ($cR / (($mbVal[0] - $mbVal[6]) / 100.0))))

Write-Output '--- per line: totals and the cost of one printed unit ---'
$cD = S $ddrCost; $tD = S $ddrTime
$cE = (S $eshCost) * $U9; $tE = S $eshTime
$cO = S $eeoCost; $tO = S $eeoTime
$cT = S $stbCost; $tT = S $stbTime
$cM = (S $mastCost) * $U15; $tMh = S $mastTimeH
Show 'Double Death Ray' $cD $tD 30 '1n pp, cap 30%'
Show 'Energy Shield Extra Hit' $cE $tE 2 'extra hits, cap 2'
Show 'Extra Extra Orbs' $cO $tO 2 'orbs, cap +2'
Show 'Extra Orb Adjuster' $eoaCost $eoaTime 1 'Unlocked'
Show 'Recharge x4 (each)' $cR $tR 1600 'waves, Second Wind span'
Show 'Super Tower Bonus' $cT $tT 0.90 '1 + 0.03n, cap 1.90'
Show 'Mastery lab (each of 32)' $cM ($tMh * 60.0) 3.6 'e.g. 1.4 -> 5.0 dmg'

Write-Output '--- ladder detail ---'
Write-Output ('  Extra Extra Orbs: L2 / L1 = ' + ('{0:F1}' -f ($eeoCost[1] / $eeoCost[0])) +
  ' (25 M then 900 M for the 2nd orb)')
$pre10C = 0.0; $pre10T = 0.0
for ($i = 0; $i -lt 10; $i++) { $pre10C += $stbCost[$i]; $pre10T += $stbTime[$i] }
Write-Output ('  Super Tower Bonus 10-level prefix (the Rev 11 print) = ' + ('{0:0.00}' -f ($pre10C / $U9)) +
  ' B / ' + ('{0:F2}' -f ($pre10T / 1440.0)) + ' d ; full 30 levels = ' + ('{0:0.000}' -f ($cT / $U12)) +
  ' T / ' + ('{0:F2}' -f ($tT / 1440.0)) + ' d')
Write-Output ('  Super Tower Bonus per +0.01 = ' + ('{0:E5}' -f ($cT / 90.0)) + ' coins ; per pp = ' +
  ('{0:E5}' -f ($cT / 30.0)))
Write-Output ('  Double Death Ray per pp = ' + ('{0:E5}' -f ($cD / 30.0)) + ' coins, ' +
  ('{0:F2}' -f ($tD / 1440.0 / 30.0)) + ' d')
Write-Output '--- the mastery-lab ladder ---'
Write-Output ('  coins re-add to ' + ('{0:F2}' -f $cM) + ' q (printed Total 50.00q) ; times re-add to ' +
  ('{0:F0}' -f $tMh) + ' h = ' + ('{0:F1}' -f ($tMh / 24.0)) + ' d (printed Total 562d 12h)')
$dt = @(); $dc = @()
for ($i = 1; $i -lt 9; $i++) { $dt += ('{0:F0}' -f ($mastTimeH[$i] - $mastTimeH[$i - 1])); $dc += ('{0:0.00}' -f ($mastCost[$i] - $mastCost[$i - 1])) }
Write-Output ('  time deltas (h) = ' + ($dt -join ' ') + ' ; coin deltas (q) = ' + ($dc -join ' '))
Write-Output ('  32 labs: coins=' + ('{0:0.000}' -f (32 * $cM / $U18)) + ' Q clock=' + ('{0:F0}' -f (32 * $tMh / 24.0)) +
  ' d ; the 12-lab census reading = ' + ('{0:0.000}' -f (12 * $cM / $U18)) + ' Q / ' +
  ('{0:F0}' -f (12 * $tMh / 24.0)) + ' d')
$stones = $stone500 * 500 + $stone750 * 750 + $stone1000 * 1000 + $stone1250 * 1250
$rows = $stone500 + $stone750 + $stone1000 + $stone1250
Write-Output ('  stones: ' + $stone500 + 'x500 + ' + $stone750 + 'x750 + ' + $stone1000 + 'x1000 + ' + $stone1250 +
  'x1250 = ' + $stones + ' over ' + $rows + ' rows (printed 28,500 for 32 cards) ; with 13 in the 1000-bucket: ' +
  (($stone500 * 500 + $stone750 * 750 + 13 * 1000 + $stone1250 * 1250)) + ' over ' + ($rows - 1) + ' rows')

Write-Output '--- category and bill ---'
$namedC = $cD + $cE + $cO + $eoaCost + 3 * $cR + $cT + 84.3e6
$namedT = $tD + $tE + $tO + $eoaTime + 3 * $tR + $tT + 750000.0 / 60.0
Write-Output ('  the 9 named Card lines (Blast + Recharge Second Wind + Super Tower Bonus included once) = ' +
  ('{0:0.000}' -f ($namedC / $U12)) + ' T / ' + ('{0:0.0}' -f ($namedT / 1440.0)) + ' d')
$catC = $namedC + 32 * $cM; $catT = ($namedT / 1440.0) + 32 * $tMh / 24.0
Write-Output ('  Card Research, 41 lines (9 named + 32 mastery labs): coins=' + ('{0:0.000}' -f ($catC / $U18)) +
  ' Q clock=' + ('{0:0.0}' -f $catT) + ' d ; mastery share of coins = ' +
  ('{0:0.00}' -f (32 * $cM / $catC * 100)) + ' %')
$newLayerC = $cD + $cE + $cO + $eoaCost + 2 * $cR
$newLayerT = ($tD + $tE + $tO + $eoaTime + 2 * $tR) / 1440.0
Write-Output ('  layer L (6 newly priced lines) = ' + ('{0:0.000}' -f ($newLayerC / $U12)) + ' T / ' +
  ('{0:0.0}' -f $newLayerT) + ' d ; layer G restated delta = +' + ('{0:0.000}' -f (($cT - 115.94e9) / $U12)) +
  ' T / +' + ('{0:0.0}' -f (($tT - 31968.0) / 1440.0)) + ' d')
$billC = 4.039 * $U18 + 826.445 * $U15 + 472456246 + 472509506 + 25.594 * $U12 + 187.228 * $U12 + 8.906492 * $U12 +
  $newLayerC + ($cT - 115.94e9) + 32 * $cM
$billT = 104035.3 + 16806.0 + 124747.5 + 15050.9 + 10085.4 + $newLayerT + (($tT - 31968.0) / 1440.0) + 32 * $tMh / 24.0
Write-Output ('  Appendix B, 159 lines (189-line census): coins=' + ('{0:0.000}' -f ($billC / $U18)) + ' Q clock=' +
  ('{0:0.0}' -f $billT) + ' d ; coverage 159 / 189 = ' + ('{0:0.0}' -f (159.0 / 189 * 100)) + ' %')
Write-Output ('  income units: coins ' + ('{0:F0}' -f ($billC / 700e12)) + ' d = ' + ('{0:0.00}' -f ($billC / 700e12 / 365.25)) +
  ' y at 700 T/day ; clock ' + ('{0:0.0}' -f $billT) + ' d = ' + ('{0:0.0}' -f ($billT / 365.25)) + ' y single-slot = ' +
  ('{0:0.0}' -f ($billT / 5 / 365.25)) + ' y five slots = ' + ('{0:0.0}' -f ($billT / 5 / 3.725 / 365.25)) + ' y stacked')
Write-Output ('  T19 band share = ' + ('{0:0.0}' -f (1627.5 * $U15 / $billC * 100)) + ' % coins ; ' +
  ('{0:0.0}' -f (70304.48 / $billT * 100)) + ' % clock ; mastery block share = ' +
  ('{0:0.0}' -f (32 * $cM / $billC * 100)) + ' % coins / ' + ('{0:0.0}' -f ((32 * $tMh / 24.0) / $billT * 100)) + ' % clock')
