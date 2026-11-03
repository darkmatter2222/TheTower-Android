param()
# Iteration 128: the Perk Research category priced from the fandom per-line tables (Perk Labs/<name>).
# Cells transcribed verbatim from Level | Time | Cost | Value; every column re-added offline.
# Time cells with a year use 1 y = 365 d (verified against the smooth ratio sequence, see below).
$U6 = 1e6
$U9 = 1e9
$U12 = 1e12
$U15 = 1e15
$U18 = 1e18

function A([string] $s) { return @(($s -split ' ' | ForEach-Object { [double]$_ })) }
function S([double[]] $a) { $x = 0.0; foreach ($v in $a) { $x += $v }; return $x }
function Show([string] $n, [double] $c, [double] $t, [string] $extra) {
  Write-Output ($n.PadRight(23) + 'lv=' + $extra.PadLeft(4) + ' coins=' + ('{0:E6}' -f $c).PadLeft(12) +
    ' T=' + ('{0:F3}' -f ($c / $U12)).PadLeft(10) + ' q=' + ('{0:F4}' -f ($c / $U15)).PadLeft(9) +
    ' min=' + ('{0:F0}' -f $t).PadLeft(9) + ' d=' + ('{0:F2}' -f ($t / 1440.0)).PadLeft(9))
}
function DiffA([string] $label, [double[]] $a, [double[]] $b) {
  $k = 0; $sum = 0.0
  for ($i = 0; $i -lt [Math]::Min($a.Count, $b.Count); $i++) { if ($a[$i] -ne $b[$i]) { $k++; $sum += $a[$i] - $b[$i] } }
  Write-Output ('  ' + $label + ': differing cells=' + $k + '/' + [Math]::Min($a.Count, $b.Count) +
    ' total delta=' + ('{0:0.####}' -f $sum))
}
function Ratios([string] $label, [double[]] $a, [int] $n) {
  $o = @()
  for ($i = 1; $i -lt [Math]::Min($n, $a.Count); $i++) { $o += ('{0:F4}' -f ($a[$i] / $a[$i - 1])) }
  Write-Output ('  ' + $label + ': ' + ($o -join ' '))
}
function RatiosTail([string] $label, [double[]] $a, [int] $n) {
  $o = @(); $c = $a.Count
  for ($i = $c - $n; $i -lt $c; $i++) { $o += ('{0:F4}' -f ($a[$i] / $a[$i - 1])) }
  Write-Output ('  ' + $label + ': ' + ($o -join ' '))
}

# --- Unlock Perks (1 level) ---
$unlCost = 1.5e6; $unlTime = 4999.0            # 1,500,000 / 3d 11h 19m
# --- Auto Pick Perks (1 level) ---
$apkCost = 100e6; $apkTime = 7166.0             # 100,000,000 / 4d 23h 26m      T4 W50
# --- First Perk Choice (1 level) ---
$fpcCost = 1e9;   $fpcTime = 6666.0             # 1,000,000,000 / 4d 15h 6m     T2 W250
# --- Perk Option Quantity (2 levels) ---
$poqCost = A '2e8 2e9'; $poqTime = A '7166 14666'                                 # T4 W80
# --- Ban Perks (8 levels) --- times 2d 7h 33m ... 333d 8h 0m ---
$banCost = A '1e7 1e8 1e9 1.5e10 1e11 1e12 1e14 1e15'                             # 10 M ... 1 q
$banTime = A '3333 6666 13333 29999 60000 120000 239999 480000'
# --- Improve Trade-Off Perks (10 levels) --- value 1n %, T2 W400 ---
$tosCost = A '600e6 700.03e6 801.18e6 910.14e6 1.05e9 1.25e9 1.6e9 2.2e9 3.23e9 4.92e9'
$tosTime = A '1499 2334 3180 4060 5004 6049 7238 8619 10246 12178'
# --- Standard Perk Bonus (25 levels) --- value 1n %, T2 W250 ---
$spbCost = A ('1e5 2.8e5 1.36e6 7.84e6 31.42e6 94.6e6 234.28e6 505.36e6 984.34e6 1.77e9 3e9 4.83e9 7.47e9 ' +
  '11.14e9 16.14e9 22.78e9 31.46e9 42.6e9 56.69e9 74.29e9 96e9 122.53e9 154.61e9 193.09e9 238.88e9')
$spbTime = A '99 334 579 854 1182 1592 2117 2792 3656 4751 6122 7816 9883 12374 15344 18849 22947 27699 33166 39413 46506 54512 63500 73542 84710'
# --- Auto Pick Ranking (32 levels) --- value 1n, T6 W10; rows 27-32 printed as years (1 y = 365 d) ---
$aprCost = A ('1e5 1.8e5 878.82e3 4.46e6 15.66e6 42.28e6 95.64e6 191.02e6 348.06e6 591.04e6 949.28e6 1.46e9 ' +
  '2.16e9 3.09e9 4.31e9 5.88e9 7.87e9 10.33e9 13.36e9 17.04e9 21.47e9 26.74e9 32.96e9 40.26e9 48.76e9 ' +
  '58.60e9 69.91e9 82.84e9 97.58e9 114.27e9 133.10e9 154.26e9')
$aprTime = A ('2866 3201 3558 3987 4571 5420 6672 8494 11078 14644 19438 25732 33822 44032 56708 72224 90978 ' +
  '113390 139909 171003 207169 248925 296813 351402 413280 483061 561360 648900 746280 854280 973620 1105020')
# --- Waves Required (100 levels) --- value -1n waves ---
$wrCost = A ('1e5 2.2e5 9.4e5 5.26e6 20.98e6 63.1e6 156.22e6 336.94e6 656.26e6 1.18e9 2e9 3.22e9 4.98e9 7.43e9 ' +
  '10.76e9 15.19e9 20.97e9 28.4e9 37.79e9 49.52e9 64e9 81.68e9 103.07e9 128.72e9 159.25e9 195.32e9 237.63e9 ' +
  '286.98e9 344.21e9 410.23e9 486e9 572.59e9 671.09e9 782.71e9 908.71e9 1.05e12 1.21e12 1.39e12 1.58e12 1.8e12 ' +
  '2.05e12 2.32e12 2.61e12 2.94e12 3.3e12 3.69e12 4.12e12 4.59e12 5.1e12 5.65e12 6.25e12 6.9e12 7.6e12 8.36e12 ' +
  '9.18e12 10.07e12 11.01e12 12.03e12 13.13e12 14.3e12 15.55e12 16.89e12 18.32e12 19.85e12 21.47e12 23.21e12 ' +
  '25.05e12 27e12 29.08e12 31.28e12 33.61e12 36.08e12 38.7e12 41.46e12 44.38e12 47.46e12 50.71e12 54.14e12 ' +
  '57.74e12 61.54e12 65.54e12 69.74e12 74.15e12 78.78e12 83.64e12 88.74e12 94.09e12 99.68e12 105.55e12 ' +
  '111.68e12 118.1e12 124.81e12 131.82e12 139.14e12 146.78e12 154.76e12 163.07e12 171.75e12 180.78e12 190.2e12')
$wrTime = A ('99 301 513 754 1049 1426 1917 2558 3389 4451 5789 7450 9483 11941 14878 18349 22414 27132 32566 ' +
  '38780 45839 53813 62767 72776 83910 96245 109857 124821 141218 159128 178632 199814 222757 247549 274276 ' +
  '303027 333891 366961 402329 440088 480333 523161 568669 616955 668121 722265 779492 839903 903604 970700 ' +
  '1041297 1115503 1193428 1275181 1360872 1450614 1544521 1642705 1745283 1852370 1964083 2080541 2201862 ' +
  '2328167 2459577 2596213 2738199 2885659 3038718 3197500 3362134 3532746 3709466 3892423 4081746 4277568 ' +
  '4480021 4689237 4905351 5128497 5358811 5596430 5841491 6094132 6354492 6622711 6898930 7183291 7475935 ' +
  '7777008 8086650 8405010 8732231 9068460 9413845 9768535 10132675 10506419 10889912 11283313')

Write-Output '--- sanity: level counts ---'
$lv = @($unlCost, $apkCost, $fpcCost) # scalars, 1 each
$nWr = $wrCost.Count; $nSpb = $spbCost.Count; $nApr = $aprCost.Count; $nBan = $banCost.Count
$nTor = $tosCost.Count; $nPoq = $poqCost.Count
Write-Output ('  counts: WR=' + $nWr + ' SPB=' + $nSpb + ' APR=' + $nApr + ' Ban=' + $nBan + ' Tor=' + $nTor +
  ' Poq=' + $nPoq + ' + three 1-level lines = ' + ($nWr + $nSpb + $nApr + $nBan + $nTor + $nPoq + 3) +
  ' levels over 9 lines (census says 180 / 9)')
Write-Output ('  WR cost cells=' + $wrCost.Count + ' time cells=' + $wrTime.Count + ' ; SPB ' + $spbCost.Count +
  '/' + $spbTime.Count + ' ; APR ' + $aprCost.Count + '/' + $aprTime.Count)

Write-Output '--- per line ---'
$cWr = S $wrCost; $tWr = S $wrTime
$cSpb = S $spbCost; $tSpb = S $spbTime
$cApr = S $aprCost; $tApr = S $aprTime
$cBan = S $banCost; $tBan = S $banTime
$cTor = S $tosCost; $tTor = S $tosTime
$cPoq = S $poqCost; $tPoq = S $poqTime
Show 'Waves Required' $cWr $tWr "$nWr"
Show 'Standard Perk Bonus' $cSpb $tSpb "$nSpb"
Show 'Auto Pick Ranking' $cApr $tApr "$nApr"
Show 'Ban Perks' $cBan $tBan "$nBan"
Show 'Improve Trade-Off' $cTor $tTor "$nTor"
Show 'Perk Option Quantity' $cPoq $tPoq "$nPoq"
Show 'Unlock Perks' $unlCost $unlTime '1'
Show 'Auto Pick Perks' $apkCost $apkTime '1'
Show 'First Perk Choice' $fpcCost $fpcTime '1'

$catC = $cWr + $cSpb + $cApr + $cBan + $cTor + $cPoq + $unlCost + $apkCost + $fpcCost
$catT = $tWr + $tSpb + $tApr + $tBan + $tTor + $tPoq + $unlTime + $apkTime + $fpcTime
Write-Output ('  CATEGORY 9 lines / 180 levels: coins=' + ('{0:F4}' -f ($catC / $U18)) + ' Q = ' +
  ('{0:F3}' -f ($catC / $U12)) + ' T ; clock=' + ('{0:F0}' -f $catT) + ' min = ' + ('{0:F1}' -f ($catT / 1440.0)) +
  ' d = ' + ('{0:F2}' -f ($catT / 1440.0 / 365.25)) + ' y single-slot')
Write-Output ('  share of category: WR ' + ('{0:F1}' -f ($cWr / $catC * 100)) + ' % coins / ' +
  ('{0:F1}' -f ($tWr / $catT * 100)) + ' % clock ; SPB ' + ('{0:F1}' -f ($cSpb / $catC * 100)) + ' % / ' +
  ('{0:F1}' -f ($tSpb / $catT * 100)) + ' % ; APR ' + ('{0:F1}' -f ($cApr / $catC * 100)) + ' % / ' +
  ('{0:F1}' -f ($tApr / $catT * 100)) + ' %')

Write-Output '--- shapes ---'
Ratios 'WR cost head' $wrCost 12
RatiosTail 'WR cost tail' $wrCost 5
Ratios 'WR time head' $wrTime 12
RatiosTail 'WR time tail' $wrTime 5
Ratios 'SPB cost head' $spbCost 10
Ratios 'SPB time head' $spbTime 10
Ratios 'APR cost head' $aprCost 10
RatiosTail 'APR cost tail' $aprCost 6
Ratios 'APR time head' $aprTime 12
RatiosTail 'APR time tail' $aprTime 6
Ratios 'Ban time (doubling)' $banTime 8
Ratios 'Ban cost (decimal ladder)' $banCost 8
Ratios 'Tor cost' $tosCost 10
Ratios 'Tor time' $tosTime 10

Write-Output '--- shared-column checks ---'
DiffA 'SPB(1..25) vs 1.5 x WR(1..25)' $spbCost @(($wrCost[0..24] | ForEach-Object { $_ * 1.5 }))
$spbScaled = @(); for ($i = 0; $i -lt 25; $i++) { $spbScaled += [Math]::Round($wrCost[$i] * 1.5, 0) }
DiffA 'SPB vs round(1.5 x WR)' $spbCost $spbScaled
DiffA 'WR time vs SPB time' $wrTime $spbTime
DiffA 'Poq L1 time vs Auto Perk Pick' ([double[]]@($poqTime[0])) ([double[]]@($apkTime))
DiffA 'FPC time vs Ban L2 time' ([double[]]@($fpcTime)) ([double[]]@($banTime[1]))
DiffA 'Poq L2 time vs 2 x Poq L1' ([double[]]@($poqTime[1])) ([double[]]@(2 * $poqTime[0]))
$aprToSpb = @(); for ($i = 0; $i -lt 25; $i++) { $aprToSpb += $aprCost[$i] }
DiffA 'APR(1..25) vs SPB(1..25)' $aprToSpb $spbCost
$wrPrefix = @(); for ($i = 0; $i -lt 25; $i++) { $wrPrefix += $wrCost[$i] }
$torPad = @(); for ($i = 0; $i -lt 10; $i++) { $torPad += $tosCost[$i] }
DiffA 'Tor(1..10) vs SPB(1..10)' $torPad ( @(for ($i = 0; $i -lt 10; $i++) { $spbCost[$i] }) )

Write-Output '--- unit prices (coins per printed unit of value) ---'
Write-Output ('  Waves Required: ' + ('{0:E5}' -f ($cWr / 100.0)) + ' coins per -1 wave ; ' +
  ('{0:F3}' -f ($tWr / 1440.0 / 100.0)) + ' d per -1 wave')
Write-Output ('  Standard Perk Bonus: ' + ('{0:E5}' -f ($cSpb / 25.0)) + ' coins per +1 % ; ' +
  ('{0:F2}' -f ($tSpb / 1440.0 / 25.0)) + ' d per +1 %')
Write-Output ('  Auto Pick Ranking: ' + ('{0:E5}' -f ($cApr / 32.0)) + ' coins per ranked perk ; ' +
  ('{0:F2}' -f ($tApr / 1440.0 / 32.0)) + ' d per ranked perk')
Write-Output ('  Improve Trade-Off: ' + ('{0:E5}' -f ($cTor / 10.0)) + ' coins per +1 % ; ' +
  ('{0:F2}' -f ($tTor / 1440.0 / 10.0)) + ' d per +1 %')
Write-Output ('  Ban Perks: ' + ('{0:E5}' -f ($cBan / 8.0)) + ' coins per ban slot ; ' +
  ('{0:F2}' -f ($tBan / 1440.0 / 8.0)) + ' d per ban slot')

Write-Output '--- Appendix B restatement (layer N added to the Rev 31 bill) ---'
$billC = 6.466 * $U18 + $catC
$billT = 290785.7 + ($catT / 1440.0)
Write-Output ('  168/189 lines = ' + ('{0:F1}' -f (168.0 / 189 * 100)) + ' % coverage ; coins=' +
  ('{0:F4}' -f ($billC / $U18)) + ' Q ; clock=' + ('{0:F1}' -f $billT) + ' d')
Write-Output ('  income units: coins ' + ('{0:F0}' -f ($billC / 700e12)) + ' d = ' +
  ('{0:F2}' -f ($billC / 700e12 / 365.25)) + ' y at 700 T/day ; clock ' + ('{0:F1}' -f $billT) + ' d = ' +
  ('{0:F1}' -f ($billT / 365.25)) + ' y single-slot = ' + ('{0:F1}' -f ($billT / 5 / 365.25)) +
  ' y five slots = ' + ('{0:F1}' -f ($billT / 5 / 3.725 / 365.25)) + ' y stacked')
Write-Output ('  perk-category share of the new bill: ' + ('{0:F2}' -f ($catC / $billC * 100)) + ' % coins / ' +
  ('{0:F2}' -f (($catT / 1440.0) / $billT * 100)) + ' % clock')
Write-Output ('  T19 band (1 627.5 q coins / 70 304.48 d) share: ' +
  ('{0:F1}' -f (1627.5 * $U15 / $billC * 100)) + ' % coins ; ' + ('{0:F1}' -f (70304.48 / $billT * 100)) + ' % clock')
Write-Output ('  12-lab reading: 148/169 = ' + ('{0:F1}' -f (148.0 / 169 * 100)) + ' % ; coins ' +
  ('{0:F4}' -f ((5.466 * $U18 + $catC) / $U18)) + ' Q / ' + ('{0:F1}' -f (272785.7 + ($catT / 1440.0))) + ' d')

Write-Output '--- stop-level prefixes (for a sub-T11 queue) ---'
function Pfx([string] $n, [double[]] $c, [double[]] $t, [int[]] $ks) {
  $o = @()
  foreach ($k in $ks) {
    $cc = 0.0; $tt = 0.0
    for ($i = 0; $i -lt $k; $i++) { $cc += $c[$i]; $tt += $t[$i] }
    $o += ('k=' + $k + ' ' + ('{0:F2}' -f ($cc / $U9)) + ' B / ' + ('{0:F2}' -f ($tt / 1440.0)) + ' d')
  }
  Write-Output ('  ' + $n + ': ' + ($o -join '  |  '))
}
Pfx 'Waves Required' $wrCost $wrTime @(3, 5, 10, 25, 50, 100)
Pfx 'Standard Perk Bonus' $spbCost $spbTime @(3, 5, 10, 25)
Pfx 'Auto Pick Ranking' $aprCost $aprTime @(3, 10, 20, 32)
Pfx 'Improve Trade-Off' $tosCost $tosTime @(3, 5, 10)
Write-Output ('  level-1-only block (Unlock Perks + Auto Pick Perks + First Perk Choice + Poq L1 + WR L1 + SPB L1 +' +
  ' APR L1 + Tor L1): coins=' + [string](($unlCost + $apkCost + $fpcCost + $poqCost[0] + $wrCost[0] + $spbCost[0] +
  $aprCost[0] + $tosCost[0])) + ' ; min=' + [string](($unlTime + $apkTime + $fpcTime + $poqTime[0] + $wrTime[0] +
  $spbTime[0] + $aprTime[0] + $tosTime[0])) + ' = ' +
  ('{0:F2}' -f (($unlTime + $apkTime + $fpcTime + $poqTime[0] + $wrTime[0] + $spbTime[0] + $aprTime[0] +
  $tosTime[0]) / 1440.0)) + ' d')
Write-Output ('  WR alone vs the whole rest of the census bill: WR clock 176 708.27 d = ' +
  ('{0:F1}' -f (176708.27 / 473959.6 * 100)) + ' % of the new 168-line bill clock')
Write-Output ('  WR boosted: 176 708.27 d / 5 slots = ' + ('{0:F1}' -f (176708.27 / 5)) +
  ' d ; with the x3.725 stack = ' + ('{0:F1}' -f (176708.27 / 5 / 3.725)) + ' d')
