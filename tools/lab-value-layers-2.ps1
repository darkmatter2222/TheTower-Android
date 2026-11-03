param()
# Iteration 144: the value side of the four category layers whose laws are printed (H, J, K, Q), then the merged
# value-complete ranking with the Rev 39 layers, the medal sheet and the par.
# Convention A: printed endpoints available -> ln(final / level-1 value). Convention B: only a "k x n" step and the total
# are printed -> ln(N), N = levels (the ratio of the printed totals L_N/L_1). Unlock-only lines take ln = 0.
$stack = 3.725
$slots = 5
$sheet = 17.7550 / 350.06
$par = 0.029559 / (1000 / 607.5)

Write-Output '--- 1. the four new layers, line by line ---'
# id, name, levels, ln, convention, Sigma coins, Sigma clock slot-days
$linesQ = @(
  @('Common Drop Chance',  10, [Math]::Log(10.0), 'B', 19.882e9),
  @('Rare Drop Chance',    10, [Math]::Log(10.0), 'B', 28.4254e12),
  @('Reroll Shards',      100, [Math]::Log(100.0), 'B', 13.3279e12),
  @('Daily Mission Shards', 50, [Math]::Log(50.0), 'B', 4.50002e12),
  @('Module Shard Cost',   30, [Math]::Log(30.0), 'B', 35.6142e12),
  @('Module Coin Cost',    30, [Math]::Log(30.0), 'B', 35.6257e12),
  @('Unmerge Module',       1, 0.0, 'unlock', 1.0e7),
  @('Shatter Shards',       5, [Math]::Log(5.0), 'B', 2.06356e15),
  @('Cannon Effect Bans',   4, [Math]::Log(4.0), 'B', 55.0505e15),
  @('Armor Effect Bans',    4, [Math]::Log(4.0), 'B', 55.0505e15),
  @('Generator Effect Bans',3, [Math]::Log(3.0), 'B', 50.505e15),
  @('Core Effect Bans',     7, [Math]::Log(7.0), 'B', 555.555e15)
)
$sumQ = 0.0; $lvlQ = 0; $coinQ = 0.0
foreach ($l in $linesQ) {
  $sumQ += $l[2]; $lvlQ += $l[1]; $coinQ += $l[4]
  Write-Output ('  Q ' + $l[0].PadRight(21) + ' lv ' + (('{0,4}' -f $l[1])) + ' ; ln ' + (('{0,7:F5}' -f $l[2])) + ' (' + $l[3] + ')')
}
Write-Output ('  layer Q : ' + $linesQ.Count + ' lines / ' + $lvlQ + ' levels (the page prints 12 / 254) ; Sigma ln ' +
  (('{0,8:F4}' -f $sumQ)) + ' ; Sigma coins ' + (('{0:E4}' -f $coinQ)) + ' (the page prints 0.718 3 Q = 718 342.1 T)')
$banC = 55.0505e15 + 55.0505e15 + 50.505e15 + 555.555e15
$banLn = [Math]::Log(4.0) * 2 + [Math]::Log(3.0) + [Math]::Log(7.0)
$otherC = 117.513e12 + 2.06356e15          # the doc's 117.513 T for the 231 levels + Shatter Shards 2.063 56 q
$otherLn = $sumQ - $banLn
Write-Output ('  Q the four ban labs: ' + (('{0,7:F2}' -f (100 * $banC / $coinQ))) + ' % of the coins for ' +
  (('{0,7:F2}' -f (100 * $banLn / $sumQ))) + ' % of the ln ; the other 11 lines are ' +
  (('{0,7:F0}' -f (($otherLn / $otherC) / ($banLn / $banC)))) + ' x better per coin')

$linesJ = @(
  @('Health', 100, [Math]::Log(4.00 / 1.03), 'A'), @('Health Regen', 100, [Math]::Log(4.00 / 1.03), 'A'),
  @('Defense Absolute', 100, [Math]::Log(4.00 / 1.03), 'A'), @('Defense Percent', 50, [Math]::Log(50.0), 'B'),
  @('Orb Speed', 20, [Math]::Log(20.0), 'B'), @('Land Mine Damage', 20, [Math]::Log(20.0), 'B'),
  @('Land Mine Decay', 35, [Math]::Log(35.0), 'B'), @('Shockwave Size', 20, [Math]::Log(20.0), 'B'),
  @('Orb Boss Hit', 10, [Math]::Log(10.0), 'B'), @('Wall Health', 50, [Math]::Log(50.0), 'B'),
  @('Wall Rebuild', 20, [Math]::Log(20.0), 'B'), @('Wall Regen', 30, [Math]::Log(30.0), 'B'),
  @('Wall Thorns', 20, [Math]::Log(20.0), 'B'), @('Wall Invincibility', 10, [Math]::Log(10.0), 'B'),
  @('Wall Fortification', 60, [Math]::Log(60.0), 'B')
)
$sumJ = 0.0; $lvlJ = 0
foreach ($l in $linesJ) { $sumJ += $l[2]; $lvlJ += $l[1] }
Write-Output ('  layer J : ' + $linesJ.Count + ' lines / ' + $lvlJ + ' levels (the page prints 16 / 635 incl. Garlic Thorns,' +
  ' so 625 here) ; Sigma ln ' + (('{0,8:F4}' -f $sumJ)))

$linesK = @(
  @('Cash Bonus', 99, [Math]::Log(2.98 / 1.02), 'A'), @('Cash / Wave', 99, [Math]::Log(2.98 / 1.02), 'A'),
  @('Coins / Kill Bonus', 99, [Math]::Log(2.98 / 1.02), 'A'), @('Coins/wave', 99, [Math]::Log(2.98 / 1.02), 'A'),
  @('Interest', 99, [Math]::Log(2.98 / 1.02), 'A'), @('Max Interest', 15, [Math]::Log(15000.0 / 50), 'A'),
  @('Package After Boss', 1, 0.0, 'unlock'), @('Recovery Package Amount', 20, [Math]::Log(20.0), 'B'),
  @('Recovery Package Max', 20, [Math]::Log(20.0), 'B'), @('Recovery Package Chance', 20, [Math]::Log(20.0), 'B')
)
$sumK = 0.0; $lvlK = 0
foreach ($l in $linesK) { $sumK += $l[2]; $lvlK += $l[1] }
Write-Output ('  layer K : ' + $linesK.Count + ' lines / ' + $lvlK + ' levels (the page prints 12 / 611 incl. the two 20-level' +
  ' Level Skip lines of layer F, so 571 here) ; Sigma ln ' + (('{0,8:F4}' -f $sumK)))

$linesH = @(
  @('Starting Cash', 99, [Math]::Log(99.0), 'B'), @('Workshop Attack Discount', 99, [Math]::Log(99.0), 'B'),
  @('Workshop Defense Discount', 99, [Math]::Log(99.0), 'B'), @('Workshop Utility Discount', 99, [Math]::Log(99.0), 'B'),
  @('Labs Coin Discount', 99, [Math]::Log(99.0), 'B'), @('Labs Speed', 99, [Math]::Log(99.0), 'B'),
  @('Enhancement Coin Discount', 100, [Math]::Log(100.0), 'B'), @('Game Speed', 7, [Math]::Log(5.0 / 2.0), 'A'),
  @('Buy multiplier', 4, [Math]::Log(20.0), 'A'), @('Presets', 5, [Math]::Log(5.0), 'B'),
  @('More Round Stats', 1, 0.0, 'unlock'), @('Workshop Respec', 1, 0.0, 'unlock'),
  @('Reroll Daily Mission', 1, 0.0, 'unlock'), @('Workshop Enhancements', 1, 0.0, 'unlock'),
  @('Target Priority', 2, [Math]::Log(2.0), 'B')
)
$sumH = 0.0; $lvlH = 0
foreach ($l in $linesH) { $sumH += $l[2]; $lvlH += $l[1] }
Write-Output ('  layer H : ' + $linesH.Count + ' lines / ' + $lvlH + ' levels ; Sigma ln ' + (('{0,8:F4}' -f $sumH)) +
  ' ; Enhancement Coin Discount alone is ' + (('{0,6:F2}' -f (100 * [Math]::Log(100.0) / $sumH))) +
  ' % of the ln and 100.0 % of the coins')

Write-Output '--- 2. the merged value-complete ranking (11 rows of 18) ---'
$rows = @(
  @('E', 1,  2.302585, 25.45), @('D', 2, 2.995732, 128.75), @('F', 2, 5.991465, 260.62),
  @('G', 1,  0.612375, 897.30), @('L', 6, 8.006394, 1185.50), @('Q', 12, $sumQ, 5341.40),
  @('J', 15, $sumJ, 15050.90), @('H', 15, $sumH, 16806.00), @('M', 32, 40.734911, 18000.00),
  @('K', 10, $sumK, 10085.40), @('O', 10, 4.599000, 6605.80)
)
$totLn = 0.0; $totLines = 0
foreach ($r in ($rows | ForEach-Object { [pscustomobject]@{ id = $_[0]; lines = $_[1]; ln = $_[2]; cd = $_[3] / $slots } } |
                Sort-Object -Property @{Expression={ $_.ln / $_.cd }} -Descending)) {
  $totLn += $r.ln; $totLines += $r.lines
  Write-Output ('  ' + $r.id.PadRight(3) + ' lines ' + (('{0,3}' -f $r.lines)) + ' ; Sigma ln ' + (('{0,8:F4}' -f $r.ln)) +
    ' ; ' + (('{0,8:F1}' -f $r.cd)) + ' cal-days ; ' + (('{0,9:F6}' -f ($r.ln / $r.cd))) + ' /day ; ' +
    (('{0,9:F6}' -f ($r.ln / $r.cd * $stack))) + ' with the stack ; per-line ' + (('{0,6:F3}' -f ($r.ln / $r.lines))))
}
Write-Output ('  reference rows : the medal sheet ' + (('{0,9:F6}' -f $sheet)) + ' /day ; the par ' +
  (('{0,9:F6}' -f $par)) + ' /day')
$all = @($rows | ForEach-Object { [pscustomobject]@{ id = $_[0]; dens = $_[2] / ($_[3] / $slots) } })
$all += [pscustomobject]@{ id = 'M-'; dens = $sheet }
$all += [pscustomobject]@{ id = 'pr'; dens = $par }
$rankTxt = @()
foreach ($r in ($all | Sort-Object -Property dens -Descending)) {
  $rankTxt += ($r.id + ' ' + (('{0,9:F6}' -f $r.dens)))
}
Write-Output ('  the schedule, best first : ' + ($rankTxt -join ' > '))
Write-Output ('  coverage : 11 rows / ' + $totLines + ' of 197 lines ; Sigma ln ' + (('{0,9:F3}' -f $totLn)) +
  ' ; total calendar days ' + (('{0,9:F1}' -f (($rows | ForEach-Object { $_[3] / $slots }) | Measure-Object -Sum).Sum)))
Write-Output '--- 3. the two readings of a percentage-point law, both densities ---'
# Reading R (raw, used above): a pp line contributes ln(N) = ln(total pp / first pp).
# Reading P (physical): the quantity is (1 + pp), so ln((1 + pp_N) / (1 + pp_1)).
$Jp = 3 * [Math]::Log(4.00 / 1.03) + [Math]::Log(1.100 / 1.002) + [Math]::Log(2.00 / 0.10) +
  [Math]::Log(3.00 / 1.10) + [Math]::Log(17.5 / 0.5) + [Math]::Log(1.00 / 0.05) + [Math]::Log(1.02 / 1.002) +
  [Math]::Log(2.00 / 1.02) + [Math]::Log(200.0 / 10.0) + [Math]::Log(4.00 / 1.10) + [Math]::Log(1.20 / 1.01) +
  [Math]::Log(10.0 / 1.0) + [Math]::Log(13.00 / 1.20)
$Kp = 4 * [Math]::Log(2.98 / 1.02) + [Math]::Log(2.98 / 1.02) + [Math]::Log(15000.0 / 50) +
  [Math]::Log(1.08 / 1.004) + [Math]::Log(1.20 / 1.01) + [Math]::Log(1.04 / 1.002)
$Qp = 2 * [Math]::Log(1.01 / 1.001) + [Math]::Log(100.0) + [Math]::Log(50.0) + 2 * [Math]::Log(0.99 / 0.70) +
  [Math]::Log(2.00 / 1.20) + $banLn
$Hp = [Math]::Log(99.0) + 3 * [Math]::Log(1.495 / 1.005) + [Math]::Log(0.997 / 0.703) + [Math]::Log(2.98 / 1.02) +
  [Math]::Log(0.997 / 0.70) + [Math]::Log(2.5) + [Math]::Log(20.0) + [Math]::Log(5.0) + [Math]::Log(2.0)
$cdJ = 15050.90 / $slots; $cdK = 10085.40 / $slots; $cdQ = 5341.40 / $slots; $cdH = 16806.00 / $slots
$pairs = @(
  @('Q', $sumQ, $cdQ, $Qp), @('J', $sumJ, $cdJ, $Jp), @('H', $sumH, $cdH, $Hp), @('K', $sumK, $cdK, $Kp)
)
foreach ($x in $pairs) {
  Write-Output ('  ' + $x[0] + ' : raw ' + (('{0,8:F4}' -f $x[1])) + ' -> ' + (('{0,9:F6}' -f ($x[1] / $x[2]))) +
    '/day ; physical ' + (('{0,8:F4}' -f $x[3])) + ' -> ' + (('{0,9:F6}' -f ($x[3] / $x[2]))) + '/day ; ' +
    'the layer needs ln ' + (('{0,8:F2}' -f (($x[1] - $x[3])))) + ' to move by one place')
}
$allP = @($rows | Where-Object { @('E','D','F','G','L','M','O') -contains $_[0] } |
            ForEach-Object { [pscustomobject]@{ id = $_[0]; dens = $_[2] / ($_[3] / $slots) } })
$allP += [pscustomobject]@{ id = 'Q'; dens = $Qp / $cdQ }
$allP += [pscustomobject]@{ id = 'J'; dens = $Jp / $cdJ }
$allP += [pscustomobject]@{ id = 'H'; dens = $Hp / $cdH }
$allP += [pscustomobject]@{ id = 'K'; dens = $Kp / $cdK }
$allP += [pscustomobject]@{ id = 'M-'; dens = $sheet }
$allP += [pscustomobject]@{ id = 'pr'; dens = $par }
$rankP = @()
foreach ($r in ($allP | Sort-Object -Property dens -Descending)) { $rankP += ($r.id + ' ' + (('{0,9:F6}' -f $r.dens))) }
Write-Output ('  the order under the physical reading : ' + ($rankP -join ' > '))
Write-Output '--- 4. the layer-H variants and its internal per-coin asymmetry ---'
$sumH1 = $sumH - [Math]::Log(5.0)          # Card Presets as a 1-level unlock (the cap table: 15 lines / 712 levels)
Write-Output ('  H with the 5-level Presets line : ln ' + (('{0,8:F4}' -f $sumH)) + ' -> ' + (('{0,9:F6}' -f ($sumH / $cdH))) + '/day')
Write-Output ('  H with Card Presets as 1 level  : ln ' + (('{0,8:F4}' -f $sumH1)) + ' -> ' + (('{0,9:F6}' -f ($sumH1 / $cdH))) +
  '/day (M is ' + (('{0,9:F6}' -f (40.734911 / (18000.0 / $slots)))) + ' , so that one row flips H past M)')
$bigLn = [Math]::Log(100.0)
$bigC = 8.26445e17
$othC = (446783756 + 472509506 + 472456246 + 1714800 + 562500 + 250000 + 3000000 + 20000000 + 5000000000 + 1001000000) +
  35353500000000.0          # the 14 non-big Main lines summed from their own printed totals = 3.536 09e13
$othLn = $sumH - $bigLn
Write-Output ('  H internal : the big line is ' + (('{0,6:F2}' -f (100 * $bigLn / $sumH))) + ' % of the ln and ' +
  (('{0,6:F1}' -f (100 * $bigC / (826.45 * 1e15)))) + ' % of the coins ; the other 14 lines cost ' + (('{0:E3}' -f $othC)) +
  ' coins and are ' + (('{0,7:F0}' -f (($othLn / $othC) / ($bigLn / $bigC)))) + ' x better per coin')
