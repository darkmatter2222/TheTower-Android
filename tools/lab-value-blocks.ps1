param()
# Iteration 146: the value side of the four single-law blocks B, B2, C, P -> 16 of 18 rows value-complete.
# Reading R: ln(printed value at cap / printed value at level 1). Reading P: the physical multiplier (1 - reduction) ratio.
# Cost = max(Sigma coins / 700e12, Sigma clock / 5) calendar days, as in the Rev 38 ledger.
$stack = 3.725
$slots = 5
$inc = 700e12
$sheet = 17.7550 / 350.06
$par = 0.029559 / (1000 / 607.5)

Write-Output '--- 1. layer B (the enemy-stat T9-T13 band, 13 lines) ---'
# name, lines, R-ln each, P-ln each, Sigma coins, Sigma clock slot-days
$bLines = @(
  @('Common Enemy Health + Attack',        2, [Math]::Log(12.0/0.40), [Math]::Log(0.996/0.88)),
  @('Fast Enemy Health + Attack',          2, [Math]::Log(12.0/0.40), [Math]::Log(0.996/0.88)),
  @('Fast Enemy Speed',                    1, [Math]::Log(12.0/0.40), [Math]::Log(0.996/0.88)),
  @('Ranged Enemy Health + Attack',        2, [Math]::Log(12.0/0.40), [Math]::Log(0.996/0.88)),
  @('Tank Enemy Health + Attack',          2, [Math]::Log(12.0/0.40), [Math]::Log(0.996/0.88)),
  @('Protector Health + Radius',           2, [Math]::Log(9.0/0.30),  [Math]::Log(0.997/0.91)),
  @('Protector Damage Reduction (20 lv)',  1, [Math]::Log(6.0/0.30),  [Math]::Log(0.997/0.94)),
  @('Ranged Enemy Range (-0.50n)',         1, [Math]::Log(15.0/0.50), [Math]::Log(0.995/0.85))
)
$lnB = 0.0; $lnBp = 0.0; $nB = 0
foreach ($l in $bLines) {
  $nB += $l[1]; $lnB += $l[1] * $l[2]; $lnBp += $l[1] * $l[3]
  Write-Output ('  B ' + $l[0].PadRight(34) + ' x' + $l[1] + ' ; ln ' + (('{0,7:F4}' -f $l[2])) + ' each (R) / ' +
    (('{0,7:F4}' -f $l[3])) + ' (P)')
}
Write-Output ('  layer B : ' + $nB + ' lines ; Sigma ln ' + (('{0,8:F4}' -f $lnB)) + ' (R) / ' + (('{0,8:F4}' -f $lnBp)) + ' (P)')

Write-Output '--- 2. layers B2, C, P ---'
$lnB2 = 6 * [Math]::Log(12.0/0.40); $lnB2p = 6 * [Math]::Log(0.996/0.88)
Write-Output ('  B2 : 6 lines (the T19 trio, -0.40n to -12.00 %) ; Sigma ln ' + (('{0,8:F4}' -f $lnB2)) + ' (R) / ' +
  (('{0,8:F4}' -f $lnB2p)) + ' (P)')
$lnC = 8 * [Math]::Log(30.0/1.0); $lnCp = 8 * [Math]::Log(31.0/2.0)
Write-Output ('  C  : 8 assist labs (+1 pp/level, 30 lv) ; Sigma ln ' + (('{0,8:F4}' -f $lnC)) + ' (R) / ' +
  (('{0,8:F4}' -f $lnCp)) + ' (P, slot efficiency 1+1 -> 1+30)')
$lnPp = [Math]::Log(20.0/2.0) + 2 * [Math]::Log(20.0/1.0) + 2 * [Math]::Log(10.0/1.0) + 2 * [Math]::Log(9.0/0.30)
$lnPq = [Math]::Log(0.98/0.80) + 2 * [Math]::Log(0.99/0.80) + 2 * [Math]::Log(0.99/0.90) + 2 * [Math]::Log(0.997/0.91)
Write-Output ('  P  : 7 lines (BC Reduction 2n to 20 %, Groups 1-4 at 1n to 20/20/10/10 %, the Boss pair -0.30n to -9 %) ;' +
  ' Sigma ln ' + (('{0,8:F4}' -f $lnPp)) + ' (R) / ' + (('{0,8:F4}' -f $lnPq)) + ' (P)')

Write-Output '--- 3. the four layers on the day scale (cost = max of the two resources) ---'
$rows = @(
  @('B',  13, $lnB,  $lnBp,  383.113e12,   15127.87),
  @('B2',  6, $lnB2, $lnB2p, 697.5e15,     30130.08),
  @('C',   8, $lnC,  $lnCp,  930.00e18,    40174.20),
  @('P',   7, $lnPp, $lnPq,  2307.5775e18, 11453.00)
)
foreach ($r in $rows) {
  $coinDays = $r[4] / $inc; $slotDays = $r[5] / $slots
  $cost = [Math]::Max($coinDays, $slotDays)
  $bind = $(if ($coinDays -gt $slotDays) { 'COINS' } else { 'clock' })
  Write-Output ('  ' + $r[0].PadRight(3) + ' lines ' + (('{0,3}' -f $r[1])) + ' ; coin-days ' + (('{0,12:F1}' -f $coinDays)) +
    ' ; cal-days ' + (('{0,10:F1}' -f $slotDays)) + ' -> binds ' + $bind + ' at ' + (('{0,12:F1}' -f $cost)) +
    ' ; ' + (('{0,9:F6}' -f ($r[2] / $cost))) + ' /day (R) ; ' + (('{0,9:F6}' -f ($r[3] / $cost))) + ' (P) ; per-line ' +
    (('{0,6:F3}' -f ($r[2] / $r[1]))))
}

Write-Output '--- 4. the merged 16-row schedule, both readings ---'
# id, lines, lnR, lnP, Sigma coins, Sigma clock slot-days
$allR = @(
  @('E',  1, 2.302585, 2.397895, 1.35e6,          25.45),
  @('D',  2, 2.995732, 3.218876, 14.4300843e12,   128.75),
  @('F',  2, 5.991465, 6.089041, 1.49e12,         260.62),
  @('G',  1, 0.612375, 0.641854, 12.304e12,       897.30),
  @('L',  6, 8.006394, 8.006394, 30.848e12,       1185.50),
  @('Q', 12, 27.351310, 15.556300, 0.7183e18,     5341.40),
  @('A', 39, 65.916200, 63.482600, 2.4111e18,     18165.95),
  @('J', 15, 42.529000, 24.549100, 187.228e12,    15050.90),
  @('H', 15, 38.390500, 13.776300, 826.445e15,    16806.00),
  @('M', 32, 40.734911, 40.734911, 1.6e18,        18000.00),
  @('K', 10, 20.051600, 11.346900, 8.906e12,      10085.40),
  @('O', 10, 4.599000, 4.599000, 3.2355e15,       6605.80),
  @('B', 13, $lnB, $lnBp, 383.113e12,             15127.87),
  @('B2', 6, $lnB2, $lnB2p, 697.5e15,             30130.08),
  @('C',  8, $lnC, $lnCp, 930.00e18,              40174.20),
  @('P',  7, $lnPp, $lnPq, 2307.5775e18,          11453.00)
)
foreach ($mode in @('R','P')) {
  $list = @()
  foreach ($r in $allR) {
    $ln = $(if ($mode -eq 'R') { $r[2] } elseif ($r[3] -gt 0) { $r[3] } else { $r[2] })
    $cost = [Math]::Max($r[4] / $inc, $r[5] / $slots)
    $list += [pscustomobject]@{ id = $r[0]; dens = $ln / $cost }
  }
  $list += [pscustomobject]@{ id = 'M-'; dens = $sheet }
  $list += [pscustomobject]@{ id = 'pr'; dens = $par }
  $out = @()
  foreach ($e in ($list | Sort-Object -Property dens -Descending)) { $out += ($e.id + ' ' + (('{0,9:F6}' -f $e.dens))) }
  Write-Output ('  reading ' + $mode + ' : ' + ($out -join ' > '))
}
$sumAll = 0.0; $linesAll = 0
foreach ($r in $allR) { $sumAll += $r[2]; $linesAll += $r[1] }
Write-Output ('  coverage : 16 rows / ' + $linesAll + ' of 197 lines ; Sigma ln ' + (('{0,9:F3}' -f $sumAll)) +
  ' ; still open: I (9 lines) and N (9 lines) = ' + (197 - $linesAll))
