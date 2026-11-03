param()
# Iteration 149: the medal-flow unit reconciliation (607.5 is per WEEK in T013 2.4 and in T015's own prints) and the
# schedule + budget table re-issued with the corrected anchors. F2P vs boosted, days vs weeks both printed.
# NOTE: pre-compute every scalar - a comma in an array literal binds tighter than '*'.
$stack = 3.725
$mWkF2P = 607.5
$mWkBo = 1080.0
$mWkF2PF = 677.5
$mWkBoF = 1150.0
$mF2P = $mWkF2P / 7
$mBo = $mWkBo / 7
$mF2PF = $mWkF2PF / 7
$mBoF = $mWkBoF / 7
$sheet = 212660.0
$I = 25.3571

Write-Output '--- 1. the two branches of the medal anchor ---'
$branches = @(
  @('F2P', $mWkF2P, $mF2P),
  @('boosted', $mWkBo, $mBo),
  @('F2P + Fetch', $mWkF2PF, $mF2PF),
  @('boosted + Fetch', $mWkBoF, $mBoF)
)
foreach ($b in $branches) {
  $wks = $sheet / $b[1]
  $days = $sheet / $b[2]
  Write-Output ('  ' + $b[0].PadRight(15) + ' : ' + (('{0,7:F1}' -f $b[1])) + ' medals/wk = ' +
    (('{0,8:F3}' -f $b[2])) + ' /day ; the 212 660 sheet = ' + (('{0,8:F2}' -f $wks)) + ' wks = ' +
    (('{0,9:F1}' -f $days)) + ' d = ' + (('{0,6:F2}' -f ($days / 365))) + ' y')
}
$evs = $sheet / 1215
Write-Output ('  the event identity : 212 660 / 1 215 per event = ' + (('{0,7:F2}' -f $evs)) +
  ' events, and an event is 2 weeks => ' + (('{0,7:F2}' -f (2 * $evs))) +
  ' wks -- the per-week print is the one that reproduces T015 s own 175.0 events / ~350 weeks')

Write-Output '--- 2. the two density anchors re-issued (per day) ---'
$sheetDay = $sheet / $mF2P
$sheetDens = 17.7550 / $sheetDay
$parDay = 1000 / $mF2P
$parDens = 0.029559 / $parDay
$parDensBo = 0.029559 / (1000 / $mBo)
Write-Output ('  the sheet : 17.7550 / ' + (('{0,9:F2}' -f $sheetDay)) + ' = ' + (('{0,9:F6}' -f $sheetDens)) +
  ' /day (was 0.050720 at the 7x-wrong day reading)')
Write-Output ('  the par   : 0.029559 / ' + (('{0,7:F3}' -f $parDay)) + ' = ' + (('{0,9:F6}' -f $parDens)) +
  ' /day (was 0.017957) ; boosted ' + (('{0,9:F6}' -f $parDensBo)) + ' /day')

Write-Output '--- 3. the merged schedule re-ranked with the corrected medal anchors (reading R) ---'
$lab = @(
  @('E', 2.302585, 1.35e6, 25.45), @('D', 2.995732, 14.4300843e12, 128.75), @('F', 5.991465, 1.49e12, 260.62),
  @('G', 0.612375, 12.304e12, 897.30), @('L', 8.006394, 30.848e12, 1185.50), @('Q', 27.351310, 0.7183e18, 5341.40),
  @('A', 65.916200, 2.4111e18, 18165.95), @('J', 42.529000, 187.228e12, 15050.90), @('H', 38.390500, 826.445e15, 16806.00),
  @('M', 40.734911, 1.6e18, 18000.00), @('K', 20.051600, 8.906e12, 10085.40), @('O', 4.599000, 3.2355e15, 6605.80),
  @('B', 43.810100, 383.113e12, 15127.87), @('B2', 20.407200, 697.5e15, 30130.08), @('C', 27.209600, 930.00e18, 40174.20),
  @('P', 19.701600, 2307.5775e18, 11453.00)
)
$stones = @(
  @('quin', 17.0002, 4205), @('S1a', 27.0281, 8865), @('S1b', 11.8338, 13584), @('S1c', 11.6976, 24149),
  @('S1d', 25.2047, 195348), @('S2a', 14.6013, 24265), @('S2b', 10.6133, 154975), @('S4', 2.0017, 6250),
  @('S3', 1.0188, 7000), @('S5', 0.0, 32855)
)
$list = @()
foreach ($r in $lab) {
  $coinD = $r[2] / 700e12
  $clockD = $r[3] / 5
  $den = $r[1] / [Math]::Max($coinD, $clockD)
  $list += [pscustomobject]@{ id = $r[0]; dens = $den }
}
foreach ($s in $stones) { $list += [pscustomobject]@{ id = $s[0]; dens = $s[1] / ($s[2] / $I) } }
$list += [pscustomobject]@{ id = 'M-'; dens = $sheetDens }
$list += [pscustomobject]@{ id = 'pr'; dens = $parDens }
$out = @()
foreach ($e in ($list | Sort-Object -Property dens -Descending)) { $out += ($e.id + ' ' + (('{0,9:F6}' -f $e.dens))) }
Write-Output ('  ' + ($out -join ' > '))
$pos = 0
foreach ($e in ($list | Sort-Object -Property dens -Descending)) {
  $pos++
  if ($e.id -eq 'M-' -or $e.id -eq 'pr') { Write-Output ('  position of ' + $e.id + ' = ' + $pos) }
}

Write-Output '--- 4. the budget sheet re-issued (T025 1.5) with the corrected medal leg ---'
$clkRaw = 5.0
$clkStack = 5.0 * $stack
$gLeg = 114500 / 435.0
$stLeg = 8865 / $I
$shNoLeg = 82380 / 210.0
$shLabLeg = 82380 / 510.0
$mdF2P = $sheet / $mF2P
$mdBo = $sheet / $mBo
$mdF2PF = $sheet / $mF2PF
$mdBoF = $sheet / $mBoF
$ckRaw = 2497.5 / $clkRaw
$ckStack = 2497.5 / $clkStack
Write-Output ('  legs : gems ' + (('{0,7:F1}' -f $gLeg)) + ' ; stones knee ' + (('{0,7:F1}' -f $stLeg)) +
  ' ; shards no-lab ' + (('{0,7:F1}' -f $shNoLeg)) + ' ; shards lab ' + (('{0,7:F1}' -f $shLabLeg)) +
  ' ; clock raw ' + (('{0,7:F1}' -f $ckRaw)) + ' ; clock stack ' + (('{0,7:F1}' -f $ckStack)))
Write-Output ('  medal legs : F2P ' + (('{0,7:F1}' -f $mdF2P)) + ' ; boosted ' + (('{0,7:F1}' -f $mdBo)) +
  ' ; F2P+Fetch ' + (('{0,7:F1}' -f $mdF2PF)) + ' ; boosted+Fetch ' + (('{0,7:F1}' -f $mdBoF)))
$cases = @(
  @('A  F2P, nothing boosted          ', $mdF2P, $shNoLeg, $ckRaw),
  @('B  F2P, stack + shard lab        ', $mdF2P, $shLabLeg, $ckStack),
  @('C  boosted, stack + shard lab    ', $mdBo, $shLabLeg, $ckStack),
  @('D  F2P + Fetch, stack + shard lab', $mdF2PF, $shLabLeg, $ckStack),
  @('E  boosted + Fetch, full         ', $mdBoF, $shLabLeg, $ckStack)
)
foreach ($c in $cases) {
  $mx = $c[1]; $who = 'medals'
  foreach ($pair in @(@($stLeg, 'stones'), @($shNoLeg, 'shards'), @($gLeg, 'gems'), @($ckRaw, 'clock'))) {
    if ($pair[0] -gt $mx) { }
  }
  $legsX = @($gLeg, $stLeg, $c[2], $c[1], $c[3])
  $namesX = @('gems', 'stones', 'shards', 'medals', 'clock')
  $mx = 0.0; $who = ''
  for ($k = 0; $k -lt $legsX.Count; $k++) {
    if ($legsX[$k] -gt $mx) { $mx = $legsX[$k]; $who = $namesX[$k] }
  }
  Write-Output ('  ' + $c[0] + ' : ' + (('{0,7:F1}' -f $gLeg)) + ' / ' + (('{0,7:F1}' -f $stLeg)) + ' / ' +
    (('{0,7:F1}' -f $c[2])) + ' / ' + (('{0,7:F1}' -f $c[1])) + ' / ' + (('{0,7:F1}' -f $c[3])) +
    ' => ' + (('{0,7:F1}' -f $mx)) + ' d = ' + (('{0,6:F2}' -f ($mx / 365))) + ' y, bound by ' + $who)
}
Write-Output '  (the five columns are gems / stones / shards / medals / clock)'

Write-Output '--- 5. the sensitivity of the now-binding medal leg (F2P, 607.5/wk) ---'
foreach ($a in @(10, 50, 100)) {
  $newWk = $mWkF2P + $a
  $newDay = $sheet / ($newWk / 7)
  Write-Output ('  medals +' + $a + '/wk => ' + (('{0,8:F1}' -f $newDay)) + ' d (from ' +
    (('{0,8:F1}' -f $mdF2P)) + ' d, saves ' + (('{0,8:F1}' -f ($mdF2P - $newDay))) + ' d)')
}
$fetch = $sheet / ($mWkF2PF / 7)
Write-Output ('  the two Fetch passes (+70/wk) take the sheet leg from ' + (('{0,7:F1}' -f $mdF2P)) + ' to ' +
  (('{0,7:F1}' -f $fetch)) + ' d, i.e. the whole new-sheet leg drops below the 499.5 d clock leg only if the medal' +
  ' flow reaches ' + (('{0,7:F1}' -f ($sheet / $ckRaw * 7))) + ' medals/wk')

Write-Output '--- 6. the Rev-37 per-block table re-issued at 86.786 medals/day ---'
$blocks = @(
  @('Echoing Shot 9 lv        ', 8100.0, 1.386294),
  @('Flame Cooldown 15 lv     ', 5700.0, 0.916291),
  @('Titan Shock 20 lv        ', 11500.0, 1.609438),
  @("Thunder's four lines     ", 30600.0, 3.985000),
  @("Golden's four par lines  ", 33780.0, 3.092000),
  @('whole medal sheet (445)  ', 212660.0, 17.755000),
  @('cosmetics (the par line) ', 1000.0, 0.029559)
)
foreach ($b in $blocks) {
  $d = $b[1] / $mF2P
  $dens = $b[2] / $d
  Write-Output ('  ' + $b[0] + ' ' + (('{0,9:F1}' -f $d)) + ' d ; ln ' + (('{0,8:F6}' -f $b[2])) + ' ; ' +
    (('{0,9:F6}' -f $dens)) + ' /day (was /7 too high)')
}
Write-Output ('  the lab category row is unchanged : 4.5990 / 1 321.2 = ' + (('{0,9:F6}' -f (4.5990 / 1321.2))) +
  ' /day ; the medal-sheet-to-lab ratio falls from 14.6x to ' + (('{0,6:F3}' -f ($sheetDens / (4.5990 / 1321.2)))) + 'x')

Write-Output '--- 7. the two 18-row merged schedules re-issued (16 layers + sheet + par) ---'
$readR = [ordered]@{
  E = 0.452374; D = 0.116339; F = 0.114946; G = 0.003412; L = 0.033768; Q = 0.025603; A = 0.018143; J = 0.014128;
  H = 0.011422; M = 0.011315; K = 0.009941; O = 0.003481; B = 0.014480; B2 = 0.003387; C = 0.000020; P = 0.000006
}
$readP = [ordered]@{
  E = 0.471099; D = 0.125005; F = 0.116818; G = 0.003577; L = 0.033768; Q = 0.014562; A = 0.017473; J = 0.008155;
  H = 0.004099; M = 0.011315; K = 0.005625; O = 0.003481; B = 0.000500; B2 = 0.000123; C = 0.000017; P = 0.0000003
}
foreach ($pair in @(@('R', $readR), @('P', $readP))) {
  $rows = @()
  foreach ($k in $pair[1].Keys) { $rows += [pscustomobject]@{ id = $k; dens = $pair[1][$k] } }
  $rows += [pscustomobject]@{ id = 'sheet'; dens = $sheetDens }
  $rows += [pscustomobject]@{ id = 'par'; dens = $parDens }
  $txt = @()
  $pos = 0
  foreach ($e in ($rows | Sort-Object -Property dens -Descending)) {
    $pos++
    $txt += ($e.id + ' ' + (('{0,8:F6}' -f $e.dens)))
    if ($e.id -eq 'sheet' -or $e.id -eq 'par') { Write-Output ('  reading ' + $pair[0] + ': ' + $e.id + ' is ' + $pos + ' of 18') }
  }
  Write-Output ('  ' + ($txt -join ' > '))
}
