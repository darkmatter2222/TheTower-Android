param()
# Iteration 132: the assist + Primary Module Bonus tail, and the module slot-cost ladder.
# Printed headers: `Assist Module Labs` = "Cost (Q Coins)" (1 Q = 10^18); slot table = shards + coins.
$Q = 1e18; $T = 1e12

# --- assist / main-effect lab: 30 levels, cost 0.25 Q x n, time n x 933 078 s (printed L1/L10/L30 cells) ---
$unit = 933078.0
$cOne = 0.0; $tOne = 0.0
for ($n = 1; $n -le 30; $n++) { $cOne += (0.25 * $n); $tOne += ($n * $unit) }
Write-Output ('  one lab: ' + ('{0:F2}' -f $cOne) + ' Q (= ' + ('{0:F1}' -f ($cOne * $Q / $T)) + ' T) ; time ' +
  ('{0:F0}' -f $tOne) + ' s = ' + ('{0:F1}' -f ($tOne / 86400.0)) + ' d ; closed forms 0.25*465 and 933078*465')
Write-Output ('  eight assist labs: ' + ('{0:F2}' -f (8 * $cOne)) + ' Q ; ' +
  ('{0:F1}' -f (8 * $tOne / 86400.0)) + ' d   [the layer C figure: 930 Q, was printed as 930 q]')
Write-Output ('  four Primary Module Bonus labs if the ladder is shared: ' + ('{0:F2}' -f (4 * $cOne)) +
  ' Q ; ' + ('{0:F1}' -f (4 * $tOne / 86400.0)) + ' d for +120 pp of primary effect')
$dt = @(('{0:F4}' -f ((10 * $unit) / 86400.0)), ('{0:F4}' -f ((30 * $unit) / 86400.0)),
  ('{0:F4}' -f ($unit / 86400.0)))
Write-Output ('  time-column check (days): L1 = ' + $dt[2] + ' (prints 10d 19h 11m) ; L10 = ' + $dt[0] +
  ' (prints 107d 23h 50m) ; L30 = ' + $dt[1] + ' (prints 323d 23h 30m)')

# --- the bill with the corrected unit ---
$billOld = 2314.7693; $billNew = $billOld - 0.93 + 930.0
$clock = 497359.8
Write-Output ('  bill: ' + ('{0:F4}' -f $billOld) + ' Q -> ' + ('{0:F4}' -f $billNew) +
  ' Q (delta ' + ('{0:F2}' -f ($billNew - $billOld)) + ' Q) ; clock unchanged ' + ('{0:F1}' -f $clock) + ' d')
Write-Output ('  income units: coins ' + ('{0:F0}' -f ($billNew * $Q / (700 * $T))) + ' d = ' +
  ('{0:F1}' -f ($billNew * $Q / (700 * $T) / 365.25)) + ' y ; clock ' + ('{0:F1}' -f ($clock / 365.25)) +
  ' y single-slot = ' + ('{0:F1}' -f ($clock / 5 / 365.25)) + ' y five-slot -> coins bind x' +
  ('{0:F2}' -f (($billNew * $Q / (700 * $T)) / $clock)) + ' single-slot / x' +
  ('{0:F2}' -f (($billNew * $Q / (700 * $T)) / ($clock / 5))) + ' five-slot')
Write-Output ('  layer shares of the new bill: C (assist) ' + ('{0:F2}' -f (930.0 / $billNew * 100)) +
  ' % ; P (BC+Boss) ' + ('{0:F2}' -f (2314.051 / $billNew * 100)) + ' %')

# --- the module slot-cost ladder: printed (level, shard/level, coin/level, total shard, total coin) ---
$rows = @(
  @(1, 7, 10000), @(2, 7, 10000), @(11, 20, 45000), @(21, 40, 120000), @(31, 75, 350000), @(41, 120, 1e6),
  @(51, 180, 3e6), @(61, 250, 25e6), @(71, 350, 100e6), @(81, 500, 350e6), @(91, 700, 350e6),
  @(101, 1000, 8e9), @(111, 1300, 8e9), @(121, 1800, 32e9), @(131, 2500, 32e9), @(141, 3000, 500e9),
  @(151, 4000, 500e9), @(161, 5000, 10e12), @(162, 5125, 60e12), @(171, 6250, 510e12), @(181, 7500, 1.01e15),
  @(191, 8750, 1.51e15), @(201, 10000, 2.5e15), @(221, 15000, 265e15), @(241, 20000, 1e18),
  @(261, 30000, 106e18), @(281, 40000, 411e18), @(300, 49500, 886e18)
)
$totShard = @(7, 14, 115, 360, 845, 1715, 2975, 4845, 7445, 11095, 16295, 23595, 33895, 47395, 66095, 91595,
  122595, 163595, 168720, 220470, 289845, 371720, 466095, 718595, 1071095, 1576095, 2281095, 3136095)
Write-Output '  slot ladder: trapezoid sums of the shard column vs the printed Total Shard deltas'
$maxDev = 0.0
for ($i = 1; $i -lt $rows.Count; $i++) {
  $lv0 = $rows[$i - 1]; $lv1 = $rows[$i]
  $k = $lv1[0] - $lv0[0]; $trap = $k * ($lv0[1] + $lv1[1]) / 2.0
  $printed = $totShard[$i] - $totShard[$i - 1]
  $dev = [Math]::Abs($trap - $printed) / $printed
  if ($dev -gt $maxDev) { $maxDev = $dev }
  if ($dev -gt 0.004) {
    Write-Output ('    L' + $lv0[0] + '->L' + $lv1[0] + ': k=' + $k + ' trapezoid=' + ('{0:F0}' -f $trap) +
      ' printed=' + $printed + ' dev=' + ('{0:P2}' -f $dev))
  }
}
Write-Output ('    segments with dev <= 0.4 % are folded together ; max dev = ' + ('{0:P2}' -f $maxDev))
$col = @(); foreach ($r in $rows) { $col += [string]$r[1] }
Write-Output ('  printed shard-per-level column: ' + ($col -join ' '))
$per = @(); for ($i = 1; $i -lt $rows.Count; $i++) { $k = $rows[$i][0] - $rows[$i-1][0]; $per += ('{0:0.#}' -f (($rows[$i][1] - $rows[$i-1][1]) / $k)) }
Write-Output ('  implied per-level slope inside each segment: ' + ($per -join ' '))

# --- pinning the unit that follows Q, from the printed coin totals 804.46Q (L261), 5.79s (L281), 18.07s (L300) ---
Write-Output '  the unit after Q: candidates 10^20 / 10^21 / 10^22 against the trapezoid sums'
foreach ($e in @(20, 21, 22)) {
  $S = [Math]::Pow(10, $e)
  $d1 = (5.79 * $S) - (804.46 * $Q)
  $d2 = ((18.07 - 5.79) * $S)
  $t1 = 20 * (106 + 411) / 2.0 * $Q; $t2 = 19 * (411 + 886) / 2.0 * $Q
  Write-Output ('    s=10^' + $e + ' : dL261-281=' + ('{0:E3}' -f $d1) + ' vs trap=' + ('{0:E3}' -f $t1) +
    ' (dev ' + ('{0:F1}' -f ([Math]::Abs($d1 - $t1) / $t1 * 100)) + ' %) ; dL281-300=' + ('{0:E3}' -f $d2) +
    ' vs trap=' + ('{0:E3}' -f $t2) + ' (dev ' + ('{0:F1}' -f ([Math]::Abs($d2 - $t2) / $t2 * 100)) + ' %)')
}
