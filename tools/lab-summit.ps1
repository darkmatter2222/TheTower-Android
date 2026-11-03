param()
# Iteration 117: grand totals for the 39 named UW lab tables of T006 Appendix A.
# coins are printed with suffixes; ladder per T020: K=1e3 M=1e6 B=1e9 T=1e12 q=1e15 Q=1e18
function Get-Unit([string]$s) {
  switch -CaseSensitive -Wildcard ($s) {
    '*q' { return [Math]::Pow(10, 15) }
    '*Q' { return [Math]::Pow(10, 18) }
    '*T' { return [Math]::Pow(10, 12) }
    '*B' { return [Math]::Pow(10, 9) }
    '*M' { return [Math]::Pow(10, 6) }
    '*K' { return [Math]::Pow(10, 3) }
    default { return 1.0 }
  }
}
# name, printed coins cell, printed clock days
$rows = @(
  @('Golden Tower Bonus', '124.85B', 466.6),
  @('Golden Tower Duration', '34.39B', 214.1),
  @('Death Wave Health', '4.40B', 165.7),
  @('Death Wave Coins Bonus', '34.38B', 197.4),
  @('Death Wave Cells Bonus', '6.65T', 233.5),
  @('Death Wave Damage Amplifier', '38.34q', 2011.1),
  @('Death Wave Armor Stripping', '265.93T', 283.2),
  @('Black Hole Damage', '820.53M', 36.8),
  @('Black Hole Coin Bonus', '92.00B', 214.1),
  @('Extra Black Hole', '15.00B', 17.36),
  @('Black Hole Disable Ranged Enemies', '550.00B', 28.94),
  @('Chrono Field Duration', '116.24B', 825.4),
  @('Chrono Field Damage Reduction', '750000', 0.69),
  @('Chrono Field Reduction %', '116.24B', 825.4),
  @('Chrono Field Range', '34.38B', 197.4),
  @('Chain Lightning Shock', '950000', 1.0),
  @('Shock Chance', '356.52B', 916.1),
  @('Shock Multiplier', '4.32B', 65.2),
  @('Chain Thunder', '38.34q', 2011.1),
  @('Lightning Amplifier-Scatter', '38.34q', 2011.1),
  @('Inner Mine Blast Radius', '34.38B', 197.4),
  @('Inner Mine Rotation Speed', '34.38B', 197.4),
  @('Inner Mine Stun', '250.00M', 13.90),
  @('Inner Land Mine - Chrono Jump', '1247.44q', 916.7),
  @('Missile Despawn Time', '12.94B', 157.8),
  @('Missile Amplifier', '124.86B', 445.7),
  @('Missiles Explosion', '900000', 0.93),
  @('Missiles Radius', '12.95B', 173.5),
  @('Missile Barrage', '1500000', 6.67),
  @('Missile Barrage Quantity', '59.01M', 19.8),
  @('Recharge Missile Barrage', '14.43T', 120.0),
  @('Swamp Radius', '12.94B', 157.8),
  @('Poison Swamp Stun', '700000', 0.83),
  @('Swamp Stun Chance', '12.94B', 157.8),
  @('Swamp Stun Time', '12.94B', 157.8),
  @('Swamp Rend - Basic Enemies', '38.34q', 2011.1),
  @('Swamp Rend - Additional Enemies', '7.49T', 123.1),
  @('Spotlight Missiles', '22.25B', 243.6),
  @('Spotlight Coin Bonus', '92.00B', 214.1)
)
$coins = 0.0
$clock = 0.0
foreach ($r in $rows) {
  $num = [double]($r[1] -replace '[A-Za-z]', '')
  $coins += $num * (Get-Unit $r[1])
  $clock += $r[2]
}
Write-Output ('lines=' + $rows.Count)
Write-Output ('grand coins = ' + ('{0:G6}' -f $coins) + ' = ' +
  ('{0:G5}' -f ($coins / [Math]::Pow(10, 15))) + ' q = ' + ('{0:G5}' -f ($coins / [Math]::Pow(10, 12))) + ' T')
Write-Output ('grand clock = ' + [Math]::Round($clock, 1) + ' days = ' + [Math]::Round($clock / 365.0, 1) +
  ' years single-slot ; / 5 slots = ' + [Math]::Round($clock / 5.0 / 365.0, 2) +
  ' y ; at x1.5 boost = ' + [Math]::Round($clock / 5.0 / 1.5 / 365.0, 2) + ' y')
# the four q-scale lines and their share
$q4 = 4 * 38.34e15 + 1247.44e15
Write-Output ('q-scale lines: 4 x 38.34q + 1 247.44q = ' + ('{0:G6}' -f $q4) + ' ; share = ' +
  [Math]::Round($q4 / $coins * 100, 2) + ' %')
Write-Output ('  of which Chrono Jump alone = ' + [Math]::Round(1247.44e15 / $coins * 100, 2) + ' %')
# the eight unlock rows vs the printed 565.25 B / 70.31 d
$un = @(@(550.00e9, 28.94), @(15.00e9, 17.36), @(250.00e6, 13.90), @(750000, 0.69), @(950000, 1.0),
        @(900000, 0.93), @(1500000, 6.67), @(700000, 0.83))
$uc = 0.0; $ud = 0.0
foreach ($u in $un) { $uc += $u[0]; $ud += $u[1] }
Write-Output ('8 unlock rows: coins = ' + ('{0:G6}' -f $uc) + ' vs printed 565.25 B -> delta ' +
  ('{0:G3}' -f ($uc - 565.25e9)) + ' ; clock = ' + [Math]::Round($ud, 2) + ' vs printed 70.31 -> delta ' +
  [Math]::Round($ud - 70.31, 2))
# coin-rate conversions
foreach ($d in @(700e12, 1e12, 1e9)) {
  $days = $coins / $d
  Write-Output ('  at ' + ('{0:G4}' -f $d) + ' coins/day: ' + ('{0:G5}' -f $days) + ' days = ' +
    ('{0:G5}' -f ($days / 365.25)) + ' years')
}
# clock-per-coin: which lines are the queue hogs (days per 1e9 coins)
Write-Output 'top clock lines (days):'
$srt = $rows | Sort-Object -Property { -$_[2] } | Select-Object -First 6
foreach ($s in $srt) { Write-Output ('  ' + $s[0] + ' ' + $s[2] + ' d / ' + $s[1]) }
