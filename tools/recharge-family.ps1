param()
# Iteration 119: the Recharge-family ladders - printed cells, sums, and the family total.
# Times as printed on wiki/card/nuke and wiki/lab/second-wind-labs (both "d h m" forms).
$cells = @(
  , @(450000, 550.00e9, 2000, 1500, 1500)
  , @(570060, 1.05e12, 1500, 1250, 1250)
  , @(694500, 1.55e12, 1250, 1000, 1000)
  , @(861000, 2.05e12, 1000, 750, 750)
  , @(1219140, 2.56e12, 750, 550, 500)
  , @(2143740, 3.07e12, 550, 400, 350)
  , @(4435920, 3.60e12, 400, 300, 200)
)
$st = 0.0; $sc = 0.0
foreach ($c in $cells) { $st += $c[0]; $sc += $c[1] }
Write-Output ('per-level times re-add = ' + $st + ' s = ' + ($st / 86400.0).ToString('0.0000') + ' d')
Write-Output ('  = ' + [Math]::Floor($st / 86400) + ' d ' + [Math]::Floor(($st % 86400) / 3600) + ' h ' +
  [Math]::Floor((($st % 3600)) / 60) + ' m')
Write-Output ('  vs the T006 record 10 371 960 s -> delta ' + ($st - 10371960) + ' s = ' +
  (($st - 10371960) / 60.0) + ' min')
Write-Output ('cost re-add = ' + ('{0:G6}' -f $sc) + ' coins = ' + ('{0:G5}' -f ($sc / 1e12)) + ' T')
Write-Output ('value ladders: Second Wind = ' + (($cells | ForEach-Object { $_[2] }) -join '/') )
Write-Output ('  Nuke = ' + (($cells | ForEach-Object { $_[3] }) -join '/') )
Write-Output ('  Missile Barrage = ' + (($cells | ForEach-Object { $_[4] }) -join '/') )
# the shift test: Nuke(k) should equal SecondWind(k+1) for k = 1..6
$sw = @($cells | ForEach-Object { $_[2] })
$nk = @($cells | ForEach-Object { $_[3] })
$mb = @($cells | ForEach-Object { $_[4] })
$shift = 0
for ($i = 1; $i -le 6; $i++) { if ($nk[$i - 1] -eq $sw[$i]) { $shift++ } }
Write-Output ('Nuke(k) = SecondWind(k+1) matches on ' + $shift + ' of 6 steps')
$agree4 = 0
for ($i = 0; $i -le 3; $i++) { if ($nk[$i] -eq $mb[$i]) { $agree4++ } }
Write-Output ('Nuke and Missile Barrage agree on the first ' + $agree4 + ' of 4 levels, then diverge (' +
  $nk[4] + ' vs ' + $mb[4] + ')')
Write-Output ('family of three printed lines: coins ' + ('{0:G5}' -f (3 * $sc / 1e12)) + ' T ; clock ' +
  [Math]::Round(3 * $st / 86400.0, 2) + ' d ; with Demon Mode predicted at the same ladder: ' +
  [Math]::Round(4 * $sc / 1e12, 2) + ' T and ' + [Math]::Round(4 * $st / 86400.0, 2) + ' d')
Write-Output ('Appendix B layer D with the corrected pair total: ' +
  [Math]::Round(750000.0 / 86400.0 + $st / 86400.0, 3) + ' d ; the grand clock stays 104 035.3 d at one decimal')
# the Nuke mastery law check: v(k) = 0.05 x (k + 1) for k = 0..9
$mv = @()
for ($k = 0; $k -le 9; $k++) { $mv += ((0.05 * ($k + 1)).ToString('0.00')) }
Write-Output ('Nuke Mastery v(k) = 0.05 x (k+1): ' + ($mv -join ' ') + '  (printed 0.05 at k=0 up to 0.5 at k=9)')
