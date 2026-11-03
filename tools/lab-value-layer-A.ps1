param()
# Iteration 145: the value side of layer A (the 39 UW lab tables) from Appendix A.1's printed laws,
# then the merged schedule with the Rev 39/40 layers, the medal sheet and the par.
# Reading R: ln(value at cap / value at level 1) from the printed value column. Reading P: pp lines read as 1 + pp.
$stack = 3.725
$slots = 5
$sheet = 17.7550 / 350.06
$par = 0.029559 / (1000 / 607.5)
$cdA = 18165.95 / $slots

# name, v1, vcap, kind (m = printed multiplier, a = arithmetic, pp = percentage-point law, d = decreasing)
$a = @(
  @('Golden Tower Bonus',            0.15,     3.75,   'a'), @('Golden Tower Duration',      1.0,    20.0,   'a'),
  @('Death Wave Health',             5.25,   12.50,    'pp'), @('Death Wave Coins Bonus',     1.55,    2.50,   'm'),
  @('Death Wave Cells Bonus',        1.10,     3.00,   'm'), @('Death Wave Damage Amplifier',6.5,    50.00,   'a'),
  @('Death Wave Armor Stripping',    1.00,    10.00,   'a'), @('Black Hole Damage',           0.20,    2.00,  'pp'),
  @('Black Hole Coin Bonus',         1.50,    11.00,   'm'), @('Shock Chance',                3.00,   17.50, 'pp'),
  @('Shock Multiplier',              1.14,     1.66,   'm'), @('Chain Thunder',               3.0,    90.0,  'pp'),
  @('Lightning Amplifier-Scatter',   1.25,    37.5,     'm'), @('Chrono Field Duration',       1.00,   30.00,  'a'),
  @('Chrono Field Reduction %',     10.50,    25.00,  'pp'), @('Chrono Field Range',          3.00,   60.00,  'a'),
  @('Inner Mine Blast Radius',       0.10,     2.00,   'a'), @('Inner Mine Rotation Speed',   0.80,   16.00,  'a'),
  @('Inner Land Mine - Chrono Jump', 5.0,     50.0,     'a'), @('Swamp Radius',               0.04,    1.20,   'a'),
  @('Swamp Stun Chance',             7.5,     80.0,   'pp'), @('Swamp Stun Time',             1.3,    10.0,    'a'),
  @('Swamp Rend - Basic Enemies',    3.0,     90.0,   'pp'), @('Swamp Rend - Additional Enemies', 0.0,  0.0, 'txt'),
  @('Missile Despawn Time',          1.0,     20.0,    'a'), @('Missile Amplifier',           2.50,   38.50,  'm'),
  @('Missiles Radius',               0.35,     1.30,   'a'), @('Missile Barrage Quantity',   25.0,    50.0,    'a'),
  @('Recharge Missile Barrage',   1500.0,   200.0,     'd'), @('Spotlight Missiles',         19.00,    2.00,   'd'),
  @('Spotlight Coin Bonus',          1.10,     3.00,    'm')
)
$sumR = 0.0; $sumP = 0.0; $nTxt = 0
foreach ($l in $a) {
  $lnR = 0.0; $lnP = 0.0
  if ($l[3] -eq 'txt') { $nTxt++ }
  else {
    $lnR = [Math]::Abs([Math]::Log($l[2] / $l[1]))
    $lnP = $(if ($l[3] -eq 'pp') { [Math]::Abs([Math]::Log((1 + $l[2]) / (1 + $l[1]))) }
             elseif ($l[3] -eq 'd') { [Math]::Log($l[1] / $l[2]) } else { $lnR })
  }
  $sumR += $lnR; $sumP += $lnP
  $sfx = $(if ($lnP -ne $lnR) { '  vs P ' + (('{0,7:F4}' -f $lnP)) } else { '' })
  Write-Output ('  A ' + $l[0].PadRight(31) + $l[3] + '  v1 ' + (('{0,8:F2}' -f $l[1])) + ' -> cap ' + (('{0,8:F2}' -f $l[2])) +
    ' ; ln ' + (('{0,7:F4}' -f $lnR)) + $sfx)
}
Write-Output ('  layer A : ' + $a.Count + ' leveled tables + 8 one-level unlock rows (ln 0) = 39 lines ; ' +
  'text-valued lines ' + $nTxt + ' ; Sigma ln ' + (('{0,8:F4}' -f $sumR)) + ' (R) / ' + (('{0,8:F4}' -f $sumP)) + ' (P)')
Write-Output ('  density : ' + (('{0,9:F6}' -f ($sumR / $cdA))) + ' per day at 5 slots (R) / ' +
  (('{0,9:F6}' -f ($sumP / $cdA))) + ' (P) ; with the stack ' + (('{0,9:F6}' -f ($sumR / $cdA * $stack))) + ' / ' +
  (('{0,9:F6}' -f ($sumP / $cdA * $stack))) + ' ; per line ' + (('{0,6:F3}' -f ($sumR / 39))))
Write-Output ('  par ' + (('{0,9:F6}' -f $par)) + ' -> layer A is ' + (('{0,6:F3}' -f ($sumR / $cdA / $par))) +
  ' x par (R) and ' + (('{0,6:F3}' -f ($sumP / $cdA / $par))) + ' x par (P) ; the sheet is ' +
  (('{0,6:F3}' -f ($sheet / ($sumR / $cdA)))) + ' x layer A')
Write-Output '--- the merged schedule with layer A inserted ---'
$rows = @(
  @('E', 2.302585, 25.45), @('D', 2.995732, 128.75), @('F', 5.991465, 260.62), @('G', 0.612375, 897.30),
  @('L', 8.006394, 1185.50), @('Q', 27.351310, 5341.40), @('J', 42.529000, 15050.90), @('H', 38.390500, 16806.00),
  @('M', 40.734911, 18000.00), @('K', 20.051600, 10085.40), @('O', 4.599000, 6605.80), @('A', $sumR, 18165.95)
)
$all = @($rows | ForEach-Object { [pscustomobject]@{ id = $_[0]; dens = $_[1] / ($_[2] / $slots) } })
$all += [pscustomobject]@{ id = 'M-'; dens = $sheet }
$all += [pscustomobject]@{ id = 'pr'; dens = $par }
$txt = @()
foreach ($r in ($all | Sort-Object -Property dens -Descending)) { $txt += ($r.id + ' ' + (('{0,9:F6}' -f $r.dens))) }
Write-Output ('  reading R : ' + ($txt -join ' > '))
$txt2 = @($rows | Where-Object { @('A','Q','J','H','K') -notcontains $_[0] } |
           ForEach-Object { [pscustomobject]@{ id = $_[0]; dens = $_[1] / ($_[2] / $slots) } })
$txt2 += [pscustomobject]@{ id = 'A'; dens = $sumP / $cdA }
$txt2 += [pscustomobject]@{ id = 'Q'; dens = 15.5563 / (5341.40 / $slots) }
$txt2 += [pscustomobject]@{ id = 'J'; dens = 24.5491 / (15050.90 / $slots) }
$txt2 += [pscustomobject]@{ id = 'H'; dens = 13.7763 / (16806.00 / $slots) }
$txt2 += [pscustomobject]@{ id = 'K'; dens = 11.3469 / (10085.40 / $slots) }
$txt2 += [pscustomobject]@{ id = 'M-'; dens = $sheet }
$txt2 += [pscustomobject]@{ id = 'pr'; dens = $par }
$tx2 = @()
foreach ($r in ($txt2 | Sort-Object -Property dens -Descending)) { $tx2 += ($r.id + ' ' + (('{0,9:F6}' -f $r.dens))) }
Write-Output ('  reading P : ' + ($tx2 -join ' > '))
Write-Output '--- the internal top of layer A ---'
$tops = @{}
foreach ($l in $a) { if ($l[3] -ne 'txt') { $tops[$l[0]] = [Math]::Abs([Math]::Log($l[2] / $l[1])) } }
$rank = @()
foreach ($e in ($tops.GetEnumerator() | Sort-Object -Property Value -Descending | Select-Object -First 12)) {
  $rank += ($e.Key + ' ' + (('{0,7:F4}' -f $e.Value)))
}
Write-Output ('  ' + ($rank -join ' ; '))
$cheap = @($a | Where-Object { @('Golden Tower Duration','Chrono Field Duration','Swamp Radius','Chain Thunder','Missile Despawn Time','Inner Mine Blast Radius') -contains $_[0] })
$csum = 0.0
foreach ($l in $cheap) { $csum += [Math]::Abs([Math]::Log($l[2] / $l[1])) }
Write-Output ('  the six L-I/L-III lines at 287-608 M for their first ten levels carry ln ' + (('{0,7:F4}' -f $csum)) +
  ' of ' + (('{0,8:F4}' -f $sumR)) + ' = ' + (('{0,6:F1}' -f (100 * $csum / $sumR))) + ' % of the layer')
