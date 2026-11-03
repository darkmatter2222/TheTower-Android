param()
# Iteration 122: fandom Card Masteries census -- stones column re-add, lab ladder closed form, linearity.
# Ladder times are printed as "d d h h"; convert to hours. Costs as printed in q (10^15).
$st = @(750, 750, 750, 750, 750, 500, 1250, 1000, 750, 1000, 1000, 750, 500, 750, 1250, 1000, 1000, 1250, 1000, 1000,
        1000, 750, 750, 1000, 1000, 1000, 1000, 1000, 750, 750, 750, 1000)
$sum = ($st | Measure-Object -Sum).Sum
$n500 = ($st | Where-Object { $_ -eq 500 }).Count
$n750 = ($st | Where-Object { $_ -eq 750 }).Count
$n1000 = ($st | Where-Object { $_ -eq 1000 }).Count
$n1250 = ($st | Where-Object { $_ -eq 1250 }).Count
Write-Output ('rows = ' + $st.Count + ' ; stones sum = ' + $sum + ' (page prints 28,500 ; delta ' + ($sum - 28500) + ')')
Write-Output ('price classes: 500 x' + $n500 + ' + 750 x' + $n750 + ' + 1000 x' + $n1000 + ' + 1250 x' + $n1250 +
  ' = ' + (500 * $n500 + 750 * $n750 + 1000 * $n1000 + 1250 * $n1250) + ' ; rows covered ' + ($n500 + $n750 + $n1000 + $n1250))
Write-Output ('mean price = ' + [Math]::Round($sum / $st.Count, 1) + ' stones ; at 55/day = ' +
  [Math]::Round($sum / 55.0, 1) + ' d of stone income for all 32')
# shared mastery lab ladder, 9 levels, as printed
$hr = @(500, 750, 1000, 1250, 1500, 1750, 2000, 2250, 2500)
$lc = @(1.10, 1.30, 2.00, 3.40, 5.60, 7.70, 9.10, 9.80, 10.00)
$hrSum = ($hr | Measure-Object -Sum).Sum
Write-Output ('lab time hours = ' + ($hr -join ' ') + ' ; sum = ' + $hrSum + ' h = ' + ($hrSum / 24.0) +
  ' d (page prints 562d 12h = ' + ((562 * 24 + 12) / 24.0) + ' d) ; closed form 250 x (n+1): ' +
  ((1..9 | ForEach-Object { (250 * (( $_ + 1) - 1) ) }) -join ' '))
Write-Output ('  step check: ' + (($hr[1] - $hr[0]) + ' / ' + ($hr[8] - $hr[7]) + ' h ; 250 x (2+3+...+10) = ' +
  (250 * 54)))
Write-Output ('lab coins = ' + ($lc -join ' ') + ' ; sum = ' + [Math]::Round(($lc | Measure-Object -Sum).Sum, 2) +
  ' q (page prints 50.00 q)')
$cr = @(); for ($i = 1; $i -le 8; $i++) { $cr += ('{0:G4}' -f ($lc[$i] / $lc[$i - 1])) }
Write-Output ('  cost ratios = ' + ($cr -join ' ') + ' ; time ratios = ' +
  ((1..8 | ForEach-Object { '{0:G4}' -f ($hr[$_] / $hr[$_ - 1]) }) -join ' '))
Write-Output ('  x32 labs: coins ' + [Math]::Round(($lc | Measure-Object -Sum).Sum * 32, 1) + ' q ; clock ' +
  ($hrSum * 32) + ' h = ' + [Math]::Round($hrSum * 32 / 24.0, 0) + ' d = ' +
  [Math]::Round($hrSum * 32 / 24.0 / 365.25, 1) + ' y ; at x3.725 = ' +
  [Math]::Round($hrSum * 32 / 24.0 / 3.725, 0) + ' d = ' + [Math]::Round($hrSum * 32 / 24.0 / 3.725 / 365.25, 1) + ' y')
Write-Output ('  per-day coin rate for one full lab = ' + [Math]::Round(50.0 / ($hrSum / 24.0), 3) + ' q/d')
# the 32 printed ladders: name, v(0) (mastery bought), v(9) (lab L9); step = (v9 - v0) / 9
$nom = 'Damage+','AttackSpeed+','Health+','HealthRegen+','Damage/Meter','EliteFarming','Coins+','SlowAttack',
       'SuperCrit','EliteBalance','ExtraDefense+','FortressWalls','LockedUpgrade','CoinOrb','EliteCannon',
       'DoubleCoins','DoubleWaveSkip','WarpSpeed','Flashbang','CarePackage','Cells+','EnhancedRay','ElectrifiedNet',
       'UltimateTower','AngelWings','DemonRevenge','Repel','SpawnAccelerator','VikingFuneral','UltCrit+','Radiation',
       'BlastZone'
$v0 = @(1.4, 1.03, 1.2, 1.4, 1.2, 0.4, 1.03, 5, 1, 6, 0.7, 10, 1, 1.04, 5, 10, 10, 1.8, 2.5, 0.4, 1.05, 5, 2, 3, 1.9,
        1.5, 5, 110, 30, 0.3, 5, 2.5)
$v9 = @(5, 1.3, 3, 5, 3, 4, 1.3, 50, 10, 60, 7, 100, 10, 1.4, 50, 100, 55, 18, 25, 4, 1.32, 50, 20, 30, 10, 6, 50, 200,
        300, 3.3, 50, 25)
$clean = 0
for ($i = 0; $i -lt 32; $i++) {
  $step = ($v9[$i] - $v0[$i]) / 9.0
  $ratio = $step * 100
  $isClean = ([Math]::Abs($ratio - [Math]::Round($ratio)) -lt 0.01)
  if ($isClean) { $clean++ }
  Write-Output (($nom[$i] + '        ').Substring(0, 16) + ' | st ' + $st[$i] + ' | v0 ' + $v0[$i] + ' v9 ' + $v9[$i] +
    ' | step ' + ('{0:G6}' -f $step) + ' | ' + $(if ($isClean) { 'clean' } else { 'ROUNDED PRINT' }))
}
Write-Output ('clean steps = ' + $clean + ' / 32 ; rows needing a rounded print = ' + (32 - $clean))
Write-Output ('stones per step-unit for the four cheapest-per-point lines:')
$pairs = @()
for ($i = 0; $i -lt 32; $i++) { $pairs += ($nom[$i] + '=' + [Math]::Round($st[$i] / (($v9[$i] - $v0[$i]) / 9.0), 2)) }
Write-Output ('  ' + ($pairs -join '  '))
