param()
# Iteration 115: the years-to-max ledger (T025) arithmetic.
Write-Output ('gems framework bill = 4900 + 58400 + 51200 = ' + (4900 + 58400 + 51200))
Write-Output ('  days at 435/day = ' + [Math]::Round((4900 + 58400 + 51200) / 435.0, 1) +
  ' ; at 360/day = ' + [Math]::Round((4900 + 58400 + 51200) / 360.0, 1))
$stone = 244542 + 179240 + 28500
Write-Output ('stone bill = 244542 + 179240 + 28500 = ' + $stone)
foreach ($w in @(80, 154, 432, 1080, 6400, 20160)) {
  Write-Output ('  at ' + $w + ' stones/week: ' + [Math]::Round($stone / $w, 1) + ' weeks = ' +
    [Math]::Round($stone / $w / 52, 2) + ' years ; the 910-stone sync alone = ' + [Math]::Round(910 / $w, 1) + ' weeks')
}
Write-Output ('keys: 73000 / 16 per week = ' + [Math]::Round(73000 / 16.0, 1) + ' weeks = ' +
  [Math]::Round(73000 / 16.0 / 52, 1) + ' years ; / 25 per week = ' + [Math]::Round(73000 / 25.0 / 52, 1) + ' years')
Write-Output ('bits: 14470 / 1555 = ' + [Math]::Round(14470 / 1555.0, 2) + ' seasons ; five-chip bill 5 x 1555? -> ' +
  [Math]::Round((5 * 1555) / 1555.0, 1))
Write-Output ('shards L50 = 20595 : at 1470/wk = ' + [Math]::Round(20595 / 1470.0, 1) + ' weeks (' +
  [Math]::Round(20595 / 1470.0 / 52, 2) + ' y) ; at 3570/wk = ' + [Math]::Round(20595 / 3570.0, 1) + ' weeks')
Write-Output ('shards L201 = 466095 : 1470/wk = ' + [Math]::Round(466095 / 1470.0, 1) + ' weeks (' +
  [Math]::Round(466095 / 1470.0 / 52, 1) + ' y) ; 3570/wk = ' + [Math]::Round(466095 / 3570.0, 1) + ' weeks (' +
  [Math]::Round(466095 / 3570.0 / 52, 1) + ' y)')
Write-Output ('shards L300 = 3136095 : 1470/wk = ' + [Math]::Round(3136095 / 1470.0 / 52, 1) + ' y ; 3570/wk = ' +
  [Math]::Round(3136095 / 3570.0 / 52, 1) + ' y')
$enh = 12.374e24
Write-Output ('enhancement layer = 12.374 S = ' + ('{0:G6}' -f $enh) + ' coins')
foreach ($d in @(700e12, 1e11, 1e8)) {
  $days = $enh / $d
  Write-Output ('  at ' + ('{0:G4}' -f $d) + ' coins/day: ' + ('{0:G5}' -f $days) + ' days = ' +
    ('{0:G5}' -f ($days / 365.25)) + ' years')
}
Write-Output ('cells: 5 slots x 1.5 boost = 5 x 30 = ' + (5 * 30) + ' cells/h = ' + (5 * 30 * 24) +
  '/day ; one slot = ' + (30 * 24) + '/day ; income ~1000/day at T5 => all-five = ' +
  [Math]::Round((5 * 30 * 24) / 1000.0, 2) + 'x a day of income')
Write-Output ('workshop cheap legs: 4 utility lines L1-50 = 1.607 M ; Range pair = 1.46 M + 50 027 193 = ' +
  (1.46e6 + 50027193))
Write-Output ('missions/week at T10: gems 311 + 435 x 7 = ' + (311 + 435 * 7) + ' (the 311 already includes the tiles)')
