param()
# Iteration 131: the twelve named Module labs (`Module Labs/<name>` + `Lab/Shatter Shards`), from the fandom tables.
# Units: K M B T q Q = 10^3 .. 10^18 coins. Comma decimals (128,57B) are normalized.
$U12 = 1e12; $U15 = 1e15; $U18 = 1e18

function Num([string] $s) {
  $t = $s.Trim()
  $m = [regex]::Match($t, '^([\d.,]+)([KMBTqQ])?$')
  if (-not $m.Success) { return 0.0 }
  $n = $m.Groups[1].Value; $f = $m.Groups[2].Value
  $scale = 1.0
  if ($f) {
    switch -CaseSensitive ($f) {
      'K' { $scale = 1e3 }
      'M' { $scale = 1e6 }
      'B' { $scale = 1e9 }
      'T' { $scale = 1e12 }
      'q' { $scale = 1e15 }
      'Q' { $scale = 1e18 }
    }
  }
  if ($n.Contains(',')) {
    $p = $n.Split(',')
    if ($p.Count -gt 1 -and $p[$p.Count - 1].Length -ne 3) { $n = $p[0] + '.' + ($p[1..($p.Count - 1)] -join '') }
    else { $n = $n.Replace(',', '') }
  }
  return [double]$n * $scale
}
function C([string] $s) { return @(($s -split ' ' | ForEach-Object { Num $_ })) }
function One([string] $s) {
  $tot = 0.0
  $yy = [regex]::Match($s, '(\d+)y'); $dd = [regex]::Match($s, '(\d+)d')
  $hh = [regex]::Match($s, '(\d+)h'); $mm = [regex]::Match($s, '(\d+)m')
  if ($yy.Success) { $tot += 525600.0 * [double]$yy.Groups[1].Value }
  if ($dd.Success) { $tot += 1440.0 * [double]$dd.Groups[1].Value }
  if ($hh.Success) { $tot += 60.0 * [double]$hh.Groups[1].Value }
  if ($mm.Success) { $tot += [double]$mm.Groups[1].Value }
  return $tot
}
function Tm([string] $s) { return @(($s -split ';' | ForEach-Object { One $_ })) }
function Sum([double[]] $a) { $x = 0.0; foreach ($v in $a) { $x += $v }; return $x }
function Rat([string] $label, [double[]] $a, [int] $n) {
  $o = @(); for ($i = 1; $i -lt [Math]::Min($n, $a.Count); $i++) { $o += ('{0:F4}' -f ($a[$i] / $a[$i - 1])) }
  Write-Output ('  ' + $label + ': ' + ($o -join ' '))
}
function Df([string] $label, [double[]] $a, [double[]] $b) {
  $k = 0; $d = 0.0
  $m = [Math]::Min($a.Count, $b.Count)
  for ($i = 0; $i -lt $m; $i++) { if ($a[$i] -ne $b[$i]) { $k++; $d += ($a[$i] - $b[$i]) } }
  Write-Output ('  ' + $label + ': differing=' + $k + '/' + $m + ' total delta=' + ('{0:0.###}' -f $d))
}
function Show([string] $n, [double[]] $c, [double[]] $t) {
  $sc = Sum $c; $st = Sum $t
  Write-Output ('  ' + $n.PadRight(21) + 'lv=' + ('{0,4}' -f $c.Count) +
    '  coins=' + ('{0:E5}' -f $sc).PadLeft(10) + '  min=' + ('{0:F0}' -f $st).PadLeft(8) + '  d=' +
    ('{0:F2}' -f ($st / 1440.0)).PadLeft(8))
}

$cCD = C '5M 40M 114.25M 282.7M 610.03M 1.17B 2.03B 3.29B 5.02B 7.32B'
$tCD = Tm '4d 4h;4d 12h 21m;4d 20h 50m;5d 5h 39m;5d 14h 58m;6d 1h 1m;6d 12h 0m;7d 0h 10m;7d 13h 45m;8d 5h 0m'
$cRD = C '70B 76B 128,57B 306,83B 714B 1,47T 2,72T 4,61T 7,32T 11,01T'
$tRD = Tm '8d 16h 20m;9d 3h 27m;9d 14h 44m;10d 2h 19m;10d 14h 25m;11d 3h 14m;11d 17h 0m;12d 7h 57m;13d 0h 18m;13d 18h 19m'
$cUM = C '10,000,000'
$tUM = Tm '2d'
$cSH = C '10.00T 87.00T 229.20T 547.36T 1.19q'
$tSH = Tm '142d 14h 13m;191d 4h 53m;256d 10h 58m;359d 8h 9m;1y 158d 6h 15m'
$cCN = C '500.00B 50.00T 5.00q 50.00q'
$tCN = Tm '37d 12h 0m 0s;91d 16h 0m 0s;162d 12h 0m 0s;204d 4h 0m 0s'
$cAR = C '500.00B 50.00T 5.0q 50.00q'
$tAR = $tCN
$cGN = C '5.00T 500T 50.00q'
$tGN = Tm '62d 12h 0m 0s;162d 12h 0m 0s;204d 4h 0m 0s'
$cCR = C '50.00B 5.00T 50.00T 500.00T 5.00q 50.00q 500.00q'
$tCR = Tm '16d 16h 0m 0s;62d 12h 0m 0s;91d 16h 0m 0s;125d 0h 0m 0s;162d 12h 0m 0s;204d 4h 0m 0s;250d 0h m 0s'
$cMSC = C '5B 5.12B 5.96B 8.42B 13.52B 22.35B 36.03B 55.76B 82.76B 118.31B 163.69B 220.23B 289.28B 372.22B 470.45B 585.39B 718.48B 871.18B 1.04T 1.24T 1.46T 1.71T 1.98T 2.28T 2.62T 2.98T 3.38T 3.81T 4.28T 4.79T'
$cMCC = C '5B 5.13B 5.98B 8.45B 13.56B 22.4B 36.09B 55.83B 82.84B 118.4B 163.79B 220.34B 289.4B 372.35B 470.59B 585.54B 718.64B 871.35B 1.05T 1.24T 1.46T 1.71T 1.98T 2.28T 2.62T 2.98T 3.38T 3.81T 4.28T 4.79T'
$tMC = Tm '5d 4h 59m;5d 9h 11m;5d 13h 28m;5d 17h 55m;5d 22h 36m;6d 3h 35m;6d 8h 56m;6d 14h 41m;6d 20h 54m;7d 3h 38m;7d 10h 56m;7d 18h 51m;8d 3h 26m;8d 12h 44m;8d 22h 48m;9d 19h 40m;9d 21h 24m;10d 10h 2m;10d 23h 36m;11d 14h 10m;12d 5h 46m;12d 22h 27m;13d 16h 14m;14d 11h 12m;15d 7h 21m;16d 4h 45m;17d 3h 27m;18d 3h 28m;19d 4h 51m;20d 7h 39m'
$cRR = C '900K 2.92M 13.94M 39.8M 85.43M 115.26M 253.39M 383.68M 549.81M 755.28M 1B 1.3B 1.64B 2.04B 2.49B 3B 3.57B 4.2B 4.9B 5.67B 6.51B 7.43B 8.43B 9.5B 10.66B 11.9B 13.23B 14.65B 16.16B 17.76B 19.47B 21.27B 23.17B 25.18B 27.29B 29.51B 31.85B 34.29B 36.85B 39.53B 42.33B 45.24B 48.29B 51.45B 54.75B 58.17B 61.73B 65.42B 69.25B 73.21B 77.31B 81.56B 85.95B 90.49B 95.17B 100B 104.99B 110.13B 115.42B 120.88B 126.49B 132.26B 138.2B 144.3B 150.56B 157B 163.61B 170.39B 177.34B 184.47B 191.78B 199.27B 206.93B 214.79B 222.82B 231.05B 239.46B 248.06B 256.86B 265.84B 275.03B 284.41B 293.99B 303.77B 313.75B 323.94B 334.33B 344.93B 355.74B 366.76B 378B 389.44B 401.11B 412.99B 425.09B 437.41B 449.95B 462.72B 475.71B 488.93B'
$tRR = Tm '1d 9h 20m;1d 10h 11m;1d 11h 4m;1d 11h 59m;1d 12h 56m;1d 13h 54m;1d 14h 55m;1d 15h 57m;1d 17h 0m;1d 18h 5m;1d 19h 12m;1d 20h 21m;1d 21h 31m;1d 22h 42m;1d 23h 55m;2d 1h 10m;2d 2h 26m;2d 3h 43m;2d 5h 3m;2d 6h 23m;2d 7h 45m;2d 9h 9m;2d 10h 34m;2d 12h 1m;2d 13h 29m;2d 14h 58m;2d 16h 29m;2d 18h 1m;2d 19h 35m;2d 21h 10m;2d 22h 47m;3d 0h 25m;3d 2h 4m;3d 3h 45m;3d 5h 27m;3d 7h 11m;3d 8h 56m;3d 10h 43m;3d 12h 30m;3d 14h 20m;3d 16h 10m;3d 18h 2m;3d 19h 56m;3d 21h 50m;3d 23h 47m;4d 1h 44m;4d 3h 43m;4d 5h 43m;4d 7h 45m;4d 9h 48m;4d 11h 52m;4d 13h 58m;4d 16h 4m;4d 18h 13m;4d 20h 22m;4d 22h 33m;5d 0h 46m;5d 2h 59m;5d 5h 14m;5d 7h 31m;5d 9h 48m;5d 12h 7m;5d 14h 28m;5d 16h 49m;5d 19h 12m;5d 21h 36m;6d 0h 2m;6d 2h 29m;6d 4h 57m;6d 7h 27m;6d 9h 57m;6d 12h 30m;6d 15h 3m;6d 17h 38m;6d 20h 14m;7d 22h 51m;7d 1h 30m;7d 4h 10m;7d 6h 51m;7d 9h 33m;7d 12h 17m;7d 15h 2m;7d 17h 48m;7d 20h 36m;7d 23h 25m;8d 2h 15m;8d 5h 7m;8d 7h 59m;8d 10h 53m;8d 13h 49m;8d 16h 45m;8d 19h 43m;8d 22h 42m;9d 1h 43m;9d 4h 44m;9d 7h 47m;9d 10h 51m;9d 13h 57m;9d 17h 3m;9d 20h 11m'
$cDM = C '1.2M 4.2M 25.2M 82.2M 192.3M 376.3M 649.3M 1.03B 1.5B 2.1B 3.0B 3.9B 5.1B 6.5B 8.2B 10.1B 12.2B 14.7B 17.5B 20.5B 24.0B 27.7B 31.9B 36.5B 41.4B 46.8B 52.7B 59.05B 65.8B 73.1B 81.0B 89.3B 98.3B 107.8B 117.9B 128.6B 139.9B 151.9B 164.6B 177.9B 192.0B 206.7B 222.2B 238.5B 255.5B 273.3B 292.01B 311.4B 331.7B 352.9B'
$tDM = Tm '1d 9h 19m;1d 10h 11m;1d 11h 6m;1d 12h 6m;1d 13h 12m;1d 14h 25m;1d 15h 46m;1d 17h 14m;1d 18h 51m;1d 20h 37m;1d 22h 33m;2d 0h 38m;2d 2h 53m;2d 5h 20m;2d 7h 57m;2d 10h 45m;2d 13h 45m;2d 16h 57m;2d 20h 21m;2d 23h 57m;3d 3h 46m;3d 7h 48m;3d 12h 4m;3d 16h 33m;3d 21h 15m;4d 2h 12m;4d 7h 23m;4d 12h 48m;4d 18h 28m;5d 0h 23m;5d 6h 32m;5d 12h 58m;5d 19h 38m;6d 2h 34m;6d 9h 47m;6d 17h 15m;7d 0h 59m;7d 9h 0m;7d 17h 18m;8d 1h 52m;8d 10h 43m;8d 19h 52m;9d 5h 17m;9d 15h 1m;10d 1h 2m;10d 11h 20m;10d 21h 57m;11d 8h 52m;11d 20h 5m;12d 7h 36m'

Write-Output '--- level counts (census check: 10+10+1+5+4+4+3+7+30+30+100+50 = 254) ---'
$cnt = $cCD.Count + $cRD.Count + $cUM.Count + $cSH.Count + $cCN.Count + $cAR.Count + $cGN.Count + $cCR.Count +
  $cMSC.Count + $cMCC.Count + $cRR.Count + $cDM.Count
Write-Output ('  sum of the twelve lines = ' + $cnt)

Write-Output '--- twin / column tests ---'
Df 'Cannon vs Armor costs' $cCN $cAR
Df 'Cannon vs Armor times' $tCN $tAR
Df 'Module Shard Cost vs Module Coin Cost costs' $cMSC $cMCC
Df 'Module Shard Cost vs Module Coin Cost times' $tMC $tMC
Write-Output ('  Reroll lv1-10 costs = ' + ('{0:F0}' -f (Sum $cRR[0..9])) + ' for ' +
  ('{0:F0}' -f (Sum $tRR[0..9])) + ' min = ' + ('{0:F2}' -f ((Sum $tRR[0..9]) / 1440.0)) + ' d ; Daily lv1-10 = ' +
  ('{0:F0}' -f (Sum $cDM[0..9])) + ' for ' + ('{0:F0}' -f (Sum $tDM[0..9])) + ' min = ' +
  ('{0:F2}' -f ((Sum $tDM[0..9]) / 1440.0)) + ' d')

Write-Output '--- the four ban labs on two master ladders ---'
$costLad = @(50e9, 500e9, 5e12, 50e12, 500e12, 5e15, 50e15, 500e15)
$timeLad = @(24000.0, 54000.0, 90000.0, 132000.0, 180000.0, 234000.0, 294000.0, 360000.0)
Rat 'cost ladder' $costLad 8
$dt = @(); for ($i = 1; $i -lt 8; $i++) { $dt += ('{0:F0}' -f ($timeLad[$i] - $timeLad[$i - 1])) }
Write-Output ('  time ladder steps: ' + ($dt -join ' ') + '   (6 000-min = 100-h arithmetic increments from 30 000)')
foreach ($pair in @(@('Cannon', $cCN, $tCN), @('Armor', $cAR, $tAR), @('Generator', $cGN, $tGN), @('Core', $cCR, $tCR))) {
  $ci = @(); $ti = @()
  for ($k = 0; $k -lt $pair[1].Count; $k++) {
    $a = 0; while ($a -lt 8 -and [Math]::Abs($costLad[$a] - $pair[1][$k]) / $costLad[$a] -gt 1e-9) { $a++ }
    $b = 0; while ($b -lt 8 -and [Math]::Abs($timeLad[$b] - $pair[2][$k]) / $timeLad[$b] -gt 1e-9) { $b++ }
    $ci += ($a + 1); $ti += ($b + 1)
  }
  Write-Output ('  ' + $pair[0].PadRight(10) + 'cost idx=' + ($ci -join ',') + '  time idx=' + ($ti -join ',') +
    '  paired=' + ([string](($ci -join ',') -eq ($ti -join ','))))
}

Write-Output '--- cost shapes ---'
Rat 'Common Drop Chance' $cCD 6
Rat 'Rare Drop Chance' $cRD 6
Rat 'Shatter Shards' $cSH 5
Rat 'Reroll (L2-L11)' $cRR 12
Rat 'Daily Mission (L2-L11)' $cDM 12
Write-Output '--- time shapes ---'
Rat 'Common Drop Chance time' $tCD 6
Rat 'Rare Drop Chance time' $tRD 6
Rat 'Reroll time (L2-L11)' $tRR 12
Rat 'Daily time (L2-L11)' $tDM 12

Write-Output '--- per-line sums ---'
Show 'Common Drop Chance' $cCD $tCD
Show 'Rare Drop Chance' $cRD $tRD
Show 'Unmerge Module' $cUM $tUM
Show 'Shatter Shards' $cSH $tSH
Show 'Cannon bans' $cCN $tCN
Show 'Armor bans' $cAR $tAR
Show 'Generator bans' $cGN $tGN
Show 'Core bans' $cCR $tCR
Show 'Module Shard Cost' $cMSC $tMC
Show 'Module Coin Cost' $cMCC $tMC
Show 'Reroll Shards' $cRR $tRR
Show 'Daily Mission Shards' $cDM $tDM
$allC = @($cCD, $cRD, $cUM, $cSH, $cCN, $cAR, $cGN, $cCR, $cMSC, $cMCC, $cRR, $cDM)
$allT = @($tCD, $tRD, $tUM, $tSH, $tCN, $tAR, $tGN, $tCR, $tMC, $tMC, $tRR, $tDM)
$mC = 0.0; $mT = 0.0
foreach ($x in $allC) { $mC += (Sum $x) }
foreach ($x in $allT) { $mT += (Sum $x) }
$banC = (Sum $cCN) + (Sum $cAR) + (Sum $cGN) + (Sum $cCR)
$banT = ((Sum $tCN) + (Sum $tAR) + (Sum $tGN) + (Sum $tCR)) / 1440.0
Write-Output ('  CATEGORY Q (12 lines / ' + $cnt + ' levels): coins=' + ('{0:F4}' -f ($mC / $U18)) + ' Q = ' +
  ('{0:F1}' -f ($mC / $U12)) + ' T ; clock=' + ('{0:F0}' -f $mT) + ' min = ' + ('{0:F1}' -f ($mT / 1440.0)) + ' d')
Write-Output ('  the four ban labs: ' + ('{0:F4}' -f ($banC / $U18)) + ' Q (' +
  ('{0:F2}' -f ($banC / $mC * 100)) + ' % of the category) for ' + ('{0:F1}' -f $banT) + ' d (' +
  ('{0:F2}' -f ($banT / ($mT / 1440.0) * 100)) + ' %)')
Write-Output ('  the two Cost twins: ' + ('{0:F3}' -f (((Sum $cMSC) + (Sum $cMCC)) / $U12)) + ' T for ' +
  ('{0:F1}' -f (((Sum $tMC) * 2) / 1440.0)) + ' d ; the two Drop Chance lines: ' +
  ('{0:F3}' -f (((Sum $cCD) + (Sum $cRD)) / $U12)) + ' T for ' +
  ('{0:F2}' -f (((Sum $tCD) + (Sum $tRD)) / 1440.0)) + ' d')
$rt = @(); for ($i = $cRR.Count - 5; $i -lt $cRR.Count; $i++) { $rt += ('{0:F4}' -f ($cRR[$i] / $cRR[$i - 1])) }
Write-Output ('  Reroll cost tail(96-100): ' + ($rt -join ' '))
$rt2 = @(); for ($i = $cDM.Count - 5; $i -lt $cDM.Count; $i++) { $rt2 += ('{0:F4}' -f ($cDM[$i] / $cDM[$i - 1])) }
$rt3 = @(); for ($i = $cCD.Count - 4; $i -lt $cCD.Count; $i++) { $rt3 += ('{0:F4}' -f ($cCD[$i] / $cCD[$i - 1])) }
$rt4 = @(); for ($i = $cRD.Count - 4; $i -lt $cRD.Count; $i++) { $rt4 += ('{0:F4}' -f ($cRD[$i] / $cRD[$i - 1])) }
Write-Output ('  Daily cost tail(46-50): ' + ($rt2 -join ' ') + ' ; Common tail: ' + ($rt3 -join ' ') +
  ' ; Rare tail: ' + ($rt4 -join ' '))

Write-Output '--- Appendix B restatement (layer Q) ---'
$billC = 2314.0510 * $U18 + $mC
$billT = 492018.4 + $mT / 1440.0
Write-Output ('  rows A..Q = 185 + 12 = 197 line-rows for 191 distinct census lines (layer C carries 8 rows where the' +
  ' Module category prints 2 -> +6 over-count); no line left unpriced -> coverage 191/191 = 100 %')
Write-Output ('  coins=' + ('{0:F4}' -f ($billC / $U18)) + ' Q ; clock=' + ('{0:F1}' -f $billT) + ' d')
Write-Output ('  income units: coins ' + ('{0:F0}' -f ($billC / 700e12)) + ' d = ' +
  ('{0:F2}' -f ($billC / 700e12 / 365.25)) + ' y at 700 T/day ; clock ' + ('{0:F1}' -f $billT) + ' d = ' +
  ('{0:F1}' -f ($billT / 365.25)) + ' y single-slot = ' + ('{0:F1}' -f ($billT / 5 / 365.25)) + ' y five-slot = ' +
  ('{0:F1}' -f ($billT / 5 / 3.725 / 365.25)) + ' y stacked')
Write-Output ('  category Q share: ' + ('{0:F2}' -f ($mC / $billC * 100)) + ' % coins / ' +
  ('{0:F2}' -f (($mT / 1440.0) / $billT * 100)) + ' % clock')
Write-Output ('  coins per clock-day: ' + ('{0:E4}' -f ($mC / ($mT / 1440.0))) + ' ; coins per +1 pp of drop chance:' +
  ' Common ' + ('{0:E4}' -f ((Sum $cCD) / 1.0)) + ' , Rare ' + ('{0:E4}' -f ((Sum $cRD) / 1.0)) +
  ' ; coins per +1 reroll shard ' + ('{0:E4}' -f ((Sum $cRR) / 100.0)) + ' ; per +1 daily shard ' +
  ('{0:E4}' -f ((Sum $cDM) / 50.0)) + ' ; per +20 % shatter ' + ('{0:E4}' -f ((Sum $cSH) / 5.0)))
Write-Output ('  12-lab reading: 177 line-rows for 171 distinct, coins ' +
  ('{0:F4}' -f ((2313.0510 * $U18 + $mC) / $U18)) + ' Q / ' + ('{0:F1}' -f (474018.4 + $mT / 1440.0)) + ' d')
