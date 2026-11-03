param()
# Iteration 117: grand totals of the 39 named UW lab tables (T006 Appendix A, with A.1's corrections applied).
# Suffix ladder per T020: K=1e3 M=1e6 B=1e9 T=1e12 q=1e15 Q=1e18. Boost price: 30 cells per skipped hour at x1.5.
$rows = @(
  , @('Golden Tower', 'Golden Tower Bonus', 124.85e9, 466.6, 'q-family-L-I')
  , @('Golden Tower', 'Golden Tower Duration', 34.39e9, 214.1, 'B')
  , @('Death Wave', 'Death Wave Health', 15.79e9, 165.7, 'B (A.1 corrected)')
  , @('Death Wave', 'Death Wave Coins Bonus', 34.38e9, 197.4, 'B')
  , @('Death Wave', 'Death Wave Cells Bonus', 6.65e12, 233.5, 'T')
  , @('Death Wave', 'Death Wave Damage Amplifier', 38.34e15, 2011.1, 'q')
  , @('Death Wave', 'Death Wave Armor Stripping', 265.93e12, 283.2, 'T')
  , @('Black Hole', 'Black Hole Damage', 820.53e6, 36.8, 'M')
  , @('Black Hole', 'Black Hole Coin Bonus', 92.00e9, 214.1, 'B')
  , @('Black Hole', 'Extra Black Hole', 15.00e9, 17.36, 'B')
  , @('Black Hole', 'Black Hole Disable Ranged Enemies', 550.00e9, 28.94, 'B')
  , @('Chrono Field', 'Chrono Field Duration', 116.24e9, 825.4, 'B')
  , @('Chrono Field', 'Chrono Field Damage Reduction', 750000, 0.69, 'unit')
  , @('Chrono Field', 'Chrono Field Reduction %', 116.24e9, 825.4, 'B')
  , @('Chrono Field', 'Chrono Field Range', 34.38e9, 197.4, 'B')
  , @('Chain Lightning', 'Chain Lightning Shock', 950000, 1.0, 'unit')
  , @('Chain Lightning', 'Shock Chance', 356.52e9, 916.1, 'B')
  , @('Chain Lightning', 'Shock Multiplier', 4.32e9, 65.2, 'B')
  , @('Chain Lightning', 'Chain Thunder', 38.34e15, 2011.1, 'q')
  , @('Chain Lightning', 'Lightning Amplifier-Scatter', 38.34e15, 2011.1, 'q')
  , @('Inner Land Mines', 'Inner Mine Blast Radius', 34.38e9, 197.4, 'B')
  , @('Inner Land Mines', 'Inner Mine Rotation Speed', 34.38e9, 197.4, 'B')
  , @('Inner Land Mines', 'Inner Mine Stun', 250.00e6, 13.90, 'M')
  , @('Inner Land Mines', 'Inner Land Mine - Chrono Jump', 1247.44e15, 916.7, 'q')
  , @('Smart Missiles', 'Missile Despawn Time', 12.94e9, 157.8, 'B')
  , @('Smart Missiles', 'Missile Amplifier', 124.86e9, 445.7, 'B')
  , @('Smart Missiles', 'Missiles Explosion', 900000, 0.93, 'unit')
  , @('Smart Missiles', 'Missiles Radius', 12.95e9, 173.5, 'B')
  , @('Smart Missiles', 'Missile Barrage', 1500000, 6.67, 'unit')
  , @('Smart Missiles', 'Missile Barrage Quantity', 59.01e6, 19.8, 'M')
  , @('Smart Missiles', 'Recharge Missile Barrage', 14.43e12, 120.0, 'T')
  , @('Poison Swamp', 'Swamp Radius', 116.24e9, 825.4, 'B (A.1 corrected)')
  , @('Poison Swamp', 'Poison Swamp Stun', 700000, 0.83, 'unit')
  , @('Poison Swamp', 'Swamp Stun Chance', 116.24e9, 825.4, 'B (A.1 corrected)')
  , @('Poison Swamp', 'Swamp Stun Time', 116.24e9, 825.4, 'B (A.1 corrected)')
  , @('Poison Swamp', 'Swamp Rend - Basic Enemies', 38.34e15, 2011.1, 'q')
  , @('Poison Swamp', 'Swamp Rend - Additional Enemies', 1.01e18, 248.13, 'Q-scale (A.1 corrected)')
  , @('Spotlight', 'Spotlight Missiles', 22.25e9, 243.6, 'B')
  , @('Spotlight', 'Spotlight Coin Bonus', 92.00e9, 214.1, 'B')
)
$coins = 0.0; $clock = 0.0
foreach ($r in $rows) { $coins += $r[2]; $clock += $r[3] }
Write-Output ('lines=' + $rows.Count + ' grand coins = ' + ('{0:G6}' -f $coins) +
  ' = ' + ('{0:G6}' -f ($coins / 1e15)) + ' q ; grand clock = ' + [Math]::Round($clock, 2) +
  ' d = ' + [Math]::Round($clock / 365.0, 1) + ' y single-slot')
Write-Output ('  at 5 slots = ' + [Math]::Round($clock / 5.0 / 365.0, 2) + ' y ; with the x1.5 boost = ' +
  [Math]::Round($clock / 5.0 / 1.5 / 365.0, 2) + ' y ; with the x3.725 stack = ' +
  [Math]::Round($clock / 5.0 / 3.725 / 365.0, 2) + ' y')
# the five q-scale lines vs the rest
$qLines = @($rows | Where-Object { $_[4] -eq 'q' -or $_[1] -eq 'Swamp Rend - Additional Enemies' })
$qC = 0.0; $qD = 0.0
foreach ($r in $qLines) { $qC += $r[2]; $qD += $r[3] }
Write-Output ('q-scale lines=' + $qLines.Count + ' coins = ' + ('{0:G6}' -f $qC) +
  ' (' + [Math]::Round($qC / $coins * 100, 2) + ' %) clock = ' + [Math]::Round($qD, 1) + ' d (' +
  [Math]::Round($qD / $clock * 100, 1) + ' %)')
Write-Output ('  Chrono Jump alone = ' + [Math]::Round(1247.44e15 / $coins * 100, 2) +
  ' % of the bill ; vs the four L-IV lines = ' + [Math]::Round(1247.44 / (4 * 38.34), 3) + 'x')
Write-Output ('  the other ' + ($rows.Count - $qLines.Count) + ' lines: coins = ' +
  ('{0:G6}' -f ($coins - $qC)) + ' = ' + [Math]::Round(($coins - $qC) / 1e12, 1) +
  ' T = ' + ('{0:G4}' -f (($coins - $qC) / 700e12)) + ' days at 700 T/day ; clock = ' +
  [Math]::Round($clock - $qD, 1) + ' d')
# the cell price of the whole layer at x1.5 (30 cells per skipped hour)
foreach ($tot in @(@($clock, 'whole layer'), @(($clock - $qD), 'the cheap lines'), @($qD, 'the q-scale five'))) {
  $h = $tot[0] * 24
  $skipped = $h * (1 - 1 / 1.5)
  $cells = $skipped * 30
  Write-Output ($tot[1] + ': ' + [Math]::Round($h, 0) + ' h -> ' + [Math]::Round($skipped, 0) +
    ' skipped h -> ' + ('{0:G5}' -f $cells) + ' cells = ' + ('{0:G4}' -f ($cells / 1000.0)) +
    ' d at 1 000/day (' + ('{0:G3}' -f ($cells / 1000.0 / 365.25)) + ' y) ; ' +
    ('{0:G4}' -f ($cells / 1800.0)) + ' d at 1 800/day')
}
# per-weapon subtotals, the third closure
$w = @{}
$wc = 0.0; $wd = 0.0; $wl = 0
foreach ($r in $rows) {
  if (-not $w.ContainsKey($r[0])) { $w[$r[0]] = @(0.0, 0.0, 0) }
  $p = $w[$r[0]]
  $w[$r[0]] = @(($p[0] + $r[2]), ($p[1] + $r[3]), ($p[2] + 1))
}
foreach ($k in $w.Keys) {
  $p = $w[$k]
  $wc += $p[0]; $wd += $p[1]; $wl += $p[2]
  Write-Output ('  ' + $k + ' | lines ' + $p[2] + ' | coins ' + ('{0:G6}' -f $p[0]) + ' | clock ' +
    [Math]::Round($p[1], 2) + ' d | ' + [Math]::Round($p[1] / 5.0 / 365.0, 2) + ' y at 5 slots')
}
Write-Output ('per-weapon closure: lines=' + $wl + ' coins=' + ('{0:G6}' -f $wc) + ' clock=' +
  [Math]::Round($wd, 2) + ' (must equal the grand row)')
# the eight one-level unlock rows vs the printed 565.25 B / 70.31 d
$un = @(550.00e9, 15.00e9, 250.00e6, 750000, 950000, 900000, 1500000, 700000)
$ud = @(28.94, 17.36, 13.90, 0.69, 1.0, 0.93, 6.67, 0.83)
$us = 0.0; $uts = 0.0
foreach ($x in $un) { $us += $x }
foreach ($x in $ud) { $uts += $x }
Write-Output ('unlock rows: coins ' + ('{0:G6}' -f $us) + ' vs printed 565.25 B (delta ' +
  ('{0:G3}' -f ($us - 565.25e9)) + ') ; clock ' + [Math]::Round($uts, 2) + ' vs printed 70.31 (delta ' +
  [Math]::Round($uts - 70.31, 2) + ')')
