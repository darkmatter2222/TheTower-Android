param()
# Iteration 143: the value side (Sigma ln) of the layers whose printed value laws are complete,
# on the same calendar-day scale as tools/lab-tree-day-ledger.ps1.
# Convention (as in T015 3.x): gain = ln(value at max level / value at level 1), read from the printed law.
# For a pure "k x n" law that is ln(N); the rho-variant (level-0 base) is ln(1 + N) and is printed as a sensitivity.
# Density = Sigma ln / calendar days, calendar days = Sigma clock(min)/(1440 x 5); the x3.725 stack divides the clock again.
$u8 = $null
$slots = 5
$stack = 3.725
$sheet = 17.7550 / 350.06        # the whole medal sheet: 212 660 medals / 607.5 per day
$par = 0.029559 / (1000 / 607.5)  # the cosmetic line

# id, name, lines, Sigma ln, Sigma clock in slot-days (from Appendix B), law note
$layers = @(
  @('E', 'Garlic Thorns (0.5n, 10 lv)',                    1, [Math]::Log(10.0),                 25.45),
  @('D', 'Recharge Second Wind (2000/400) + Blast (25n,4)',2, ([Math]::Log(5.0) + [Math]::Log(4.0)), 128.75),
  @('F', 'the two Level Skip lines (0.10n, 20 lv)',         2, (2 * [Math]::Log(20.0)),          260.62),
  @('G', 'Super Tower Bonus (1 + 0.03n, 30 lv)',            1, [Math]::Log(1.90 / 1.03),         897.30),
  @('L', 'the six named Card lines',                        6, ([Math]::Log(30.0) + 2 * [Math]::Log(2.0) + 2 * [Math]::Log(5.0)), 1185.50),
  @('M', 'the 32 mastery labs (1.4 to 5, 9 lv)',           32, (32 * [Math]::Log(5.0 / 1.4)),  18000.00),
  @('O', 'the Bot Research category (Rev 37)',             10, 4.5990,                           6605.80)
)
Write-Output ('--- 1. the value-complete layers on the day scale (5 slots) ---')
Write-Output ('  reference: the whole medal sheet = ' + (('{0,9:F6}' -f $sheet)) + ' per day ; the par (cosmetics) = ' +
  (('{0,9:F6}' -f $par)) + ' per day')
$rows = @()
foreach ($l in $layers) {
  $cd = $l[4] / $slots
  $dens = $l[3] / $cd
  $rows += [pscustomobject]@{ id = $l[0]; name = $l[1]; lines = $l[2]; ln = $l[3]; cd = $cd; dens = $dens }
  Write-Output ('  ' + $l[0].PadRight(3) + ' ' + $l[1].PadRight(46) + ' lines ' + (('{0,3}' -f $l[2])) +
    ' ; Sigma ln ' + (('{0,8:F4}' -f $l[3])) + ' ; ' + (('{0,8:F2}' -f $cd)) + ' cal-days ; ' +
    (('{0,9:F6}' -f $dens)) + ' /day ; with the stack ' + (('{0,9:F6}' -f ($dens * $stack))) +
    ' ; x' + (('{0,6:F2}' -f ($dens / $par))) + ' par ; x' + (('{0,6:F2}' -f ($dens / $sheet))) + ' sheet')
}
Write-Output '--- 2. the ranked order (value-complete layers + the sheet + the par inserted) ---'
$rank = @($rows | ForEach-Object { [pscustomobject]@{ id = $_.id; dens = $_.dens } })
$rank += [pscustomobject]@{ id = 'M-'; dens = $sheet }
$rank += [pscustomobject]@{ id = 'pr'; dens = $par }
$i = 0
foreach ($r in ($rank | Sort-Object -Property dens -Descending)) {
  $i++
  Write-Output ('  ' + (('{0,2}' -f $i)) + '. ' + $r.id.PadRight(3) + (('{0,9:F6}' -f $r.dens)) + ' /day')
}
Write-Output '--- 3. the convention sensitivity (level-1 base vs level-0/rho base) ---'
$conv = @(
  @('E Garlic Thorns  (0.5n, 10 lv)',  [Math]::Log(10.0),  [Math]::Log(11.0)),
  @('F Level Skip     (0.10n, 20 lv)', [Math]::Log(20.0),  [Math]::Log(21.0)),
  @('G Super Tower    (1 + 0.03n)',    [Math]::Log(1.90 / 1.03), [Math]::Log(1.90 / 1.00)),
  @('L Double Death Ray (1n, 30 lv)',  [Math]::Log(30.0),  [Math]::Log(31.0)),
  @('L Extra Orbs     (+1/+2)',        [Math]::Log(2.0),   [Math]::Log(3.0)),
  @('D Second Wind Blast (25n, 4 lv)', [Math]::Log(4.0),   [Math]::Log(5.0)),
  @('M mastery        (1.4 to 5, 9 lv)', [Math]::Log(5.0 / 1.4), [Math]::Log(5.0 / 1.4))
)
foreach ($c in $conv) {
  Write-Output ('  ' + $c[0].PadRight(34) + ' ln ' + (('{0,7:F4}' -f $c[1])) + ' vs rho-form ' + (('{0,7:F4}' -f $c[2])) +
    '  (+' + (('{0,5:F1}' -f (100 * ($c[2] / $c[1] - 1)))) + ' %)')
}
Write-Output '--- 4. the printed per-unit and re-add checks ---'
Write-Output ('  F per point: 0.745 T / 2.00 = ' + (('{0:E4}' -f (0.745e12 / 2))) + ' coins per point (the doc prints 373 B)')
Write-Output ('  M per unit of multiplier: 50.00 q / (5 - 1.4) = ' + (('{0:E4}' -f (5.0e16 / 3.6))) +
  ' (the doc prints 1.388 9e16) ; ln(5/1.4) = ' + (('{0,7:F6}' -f ([Math]::Log(5 / 1.4)))) + ' x32 = ' +
  (('{0,8:F4}' -f (32 * [Math]::Log(5 / 1.4)))))
Write-Output ('  D coins: 14.430 T + 84.3 M = ' + (14.430 + 0.0000843) + ' T vs the printed 14.4301 T')
Write-Output ('  L coins: 1.09708 + 0.89 + 0.000000925 + 0.0000015 + 14.430 + 14.430 = ' +
  (('{0,9:F4}' -f (1.09708 + 0.89 + 0.000000925 + 0.0000015 + 14.430 + 14.430))) + ' T vs the printed 30.848 T')
Write-Output ('  L clock: 892.30 + 43.98 + 7.41 + 2.08 + 119.88 + 119.88 = ' +
  (('{0,9:F2}' -f (892.30 + 43.98 + 7.41 + 2.08 + 119.88 + 119.88))) + ' d vs the printed 1 185.5 d')
Write-Output ('  M clock: 32 x 562.5 = ' + (32 * 562.5) + ' d vs the printed 18 000 d ; at 5 slots ' +
  (('{0,8:F1}' -f (18000 / 5))) + ' cal-days')
Write-Output '--- 5. the two-resource check: are any of these coin-bound at 700 T/day? ---'
$coins = @{ E = 1.35e6; D = 14.4300843e12; F = 1.49e12; G = 12.304e12; L = 30.848e12; M = 1.6e18; O = 3.2355e15 }
foreach ($k in @('E', 'D', 'F', 'G', 'L', 'M', 'O')) {
  $cdays = $coins[$k] / 700e12
  $r = $rows | Where-Object { $_.id -eq $k }
  Write-Output ('  ' + $k + ' : coin-days ' + (('{0,9:F2}' -f $cdays)) + ' vs cal-days ' + (('{0,9:F1}' -f $r.cd)) +
    ' -> binds ' + $(if ($cdays -gt $r.cd) { 'COINS' } else { 'clock' }))
}
