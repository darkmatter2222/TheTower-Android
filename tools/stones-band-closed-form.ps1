param()
# Iteration 134: close the six-cell stone band ladder 80/154/432/1080/6400/20160 in closed form.
# Model (T014 3.2): P = G + 10S ; n* = floor(P/10) ; t = 2 + n* ; stones/bracket = t*S ; 2 brackets/week.
# Claim: stones/week = 2*S*(S + floor(G/10) + 2)  (the 10S term cancels the /10 exactly).
# Band pay (gems G / stones S) as printed in T014 3.2 (Hub six leagues, Mythic from fandom), bands 1..10.
$bands = [ordered]@{
  Copper   = @(@(100,20),@(80,18),@(65,16),@(50,12),@(45,10),@(40,9),@(30,8),@(20,7),@(15,6),@(10,5))
  Silver   = @(@(200,40),@(150,35),@(100,30),@(75,20),@(65,19),@(60,18),@(55,17),@(50,16),@(45,14),@(40,12))
  Gold     = @(@(300,80),@(250,70),@(200,60),@(150,40),@(125,30),@(100,28),@(90,26),@(80,24),@(70,22),@(50,20))
  Platinum = @(@(400,160),@(350,140),@(300,120),@(250,70),@(225,65),@(200,60),@(175,56),@(150,53),@(125,50),@(100,20))
  Champion = @(@(600,320),@(500,300),@(400,280),@(350,200),@(325,175),@(300,150),@(275,125),@(250,100),@(200,90),@(150,20))
  Legend   = @(@(800,425),@(700,400),@(600,375),@(500,350),@(475,325),@(450,300),@(425,275),@(400,250),@(375,225),@(200,120))
  Mythic   = @(@(900,475),@(800,450),@(700,425),@(650,400),@(600,385),@(575,370),@(550,355),@(525,340),@(500,325),@(335,225))
}
# the six ladder cells as printed in T014 3.2 / T025 1
$ladder = @{ 'Copper@10' = 80; 'Copper@8' = 154; 'Silver@10' = 432; 'Gold@10' = 1080; 'Platinum@9' = 6400; 'Champion@9' = 20160 }

Write-Output '--- identity test: t*S*2 vs the closed form 2S(S + floor(G/10) + 2), all 70 cells ---'
$ok = 0; $bad = 0
foreach ($lg in $bands.Keys) {
  $row = @()
  for ($i = 0; $i -lt 10; $i++) {
    $G = $bands[$lg][$i][0]; $S = $bands[$lg][$i][1]
    $P = $G + 10 * $S
    $n = [Math]::Floor($P / 10)
    $t = 2 + $n
    $w1 = 2 * $t * $S
    $w2 = 2 * $S * ($S + [Math]::Floor($G / 10) + 2)
    if ($w1 -eq $w2) { $ok++ } else { $bad++; Write-Output ('  MISMATCH ' + $lg + ' band ' + ($i + 1) + ': ' + $w1 + ' vs ' + $w2) }
    $row += (('{0}' -f $w1))
  }
  Write-Output ('  ' + $lg.PadRight(9) + ' stones/week by band: ' + ($row -join ' '))
}
Write-Output ('  identity holds on ' + $ok + ' cells, fails on ' + $bad)

Write-Output '--- the six printed ladder cells re-added from the closed form ---'
foreach ($k in @('Copper@10','Copper@8','Silver@10','Gold@10','Platinum@9','Champion@9')) {
  $parts = $k.Split('@'); $lg = $parts[0]; $b = [int]$parts[1]
  $G = $bands[$lg][$b - 1][0]; $S = $bands[$lg][$b - 1][1]
  $P = $G + 10 * $S; $n = [Math]::Floor($P / 10); $t = 2 + $n
  $w = 2 * $S * ($S + [Math]::Floor($G / 10) + 2)
  Write-Output ('  ' + $k.PadRight(12) + ' pay ' + $G + '/' + $S + '  P=' + $P + '  n*=' + $n + '  t=' + $t +
    '  model=' + (('{0,7}' -f $w)) + '  printed=' + (('{0,7}' -f $ladder[$k])) + '  ' +
    $(if ($w -eq $ladder[$k]) { 'MATCH' } else { 'DIFF' }))
}

Write-Output '--- the three income layers for the representative bands (tickets / +boxes / +trades) ---'
# boxes = 45 (T1 W60 gate); trades: the medal ladder 40,65,90,130,175 = 500 medals for 5 trades = 75 stones
$reps = @('Copper@10','Silver@10','Gold@10','Platinum@9','Champion@9','Legend@9','Mythic@9','Copper@1','Legend@1')
foreach ($k in $reps) {
  $parts = $k.Split('@'); $lg = $parts[0]; $b = [int]$parts[1]
  $G = $bands[$lg][$b - 1][0]; $S = $bands[$lg][$b - 1][1]
  $P = $G + 10 * $S; $n = [Math]::Floor($P / 10); $t = 2 + $n
  $tc = [Math]::Min($t, 8)                     # the clock ceiling: 8 runs of wave 1000 per 72-h bracket
  $wT = 2 * $t * $S; $wC = 2 * $tc * $S
  Write-Output ('  ' + $k.PadRight(11) + ' t=' + (('{0,3}' -f $t)) + ' tickets-only=' + (('{0,7}' -f $wT)) +
    ' ; clock-capped t=' + $tc + ' ->' + (('{0,7}' -f $wC)) + ' ; +45 boxes ->' + (('{0,7}' -f ($wT + 45))) +
    ' ; +5 trades (75) ->' + (('{0,7}' -f ($wT + 45 + 75))) + ' ; weeks to 910 = ' +
    (('{0:F1}' -f (910 / ($wT + 45 + 75)))))
}

Write-Output '--- placement scaling: the exponent between linear and quadratic ---'
foreach ($lg in @('Copper','Silver','Gold','Platinum','Legend','Mythic')) {
  $rows = $bands[$lg]
  $payA = $rows[9][1]; $payB = $rows[0][1]
  $fA = 2 * $payA * ($payA + [Math]::Floor($rows[9][0] / 10) + 2)
  $fB = 2 * $payB * ($payB + [Math]::Floor($rows[0][0] / 10) + 2)
  $e = [Math]::Log($fB / $fA) / [Math]::Log($payB / $payA)
  Write-Output ('  ' + $lg.PadRight(9) + ' band pay ' + $payA + ' -> ' + $payB + ' (x' +
    (('{0:F2}' -f ($payB / $payA))) + ') ; weekly ' + $fA + ' -> ' + $fB + ' (x' + (('{0:F2}' -f ($fB / $fA))) +
    ') ; exponent = ' + (('{0:F2}' -f $e)))
}
Write-Output ('  ladder ratio: 20160 / 80 = ' + (('{0:F0}' -f (20160 / 80))) + ' ; sum of the six = ' +
  (80 + 154 + 432 + 1080 + 6400 + 20160))

Write-Output '--- the wave that makes the clock and the gem optimum meet: runs(W) = 8 498 / W ---'
$bill = 452282
foreach ($k in @('Copper@10','Copper@8','Silver@10','Gold@10','Platinum@9','Champion@9')) {
  $parts = $k.Split('@'); $lg = $parts[0]; $b = [int]$parts[1]
  $G = $bands[$lg][$b - 1][0]; $S = $bands[$lg][$b - 1][1]
  $P = $G + 10 * $S; $t = 2 + [Math]::Floor($P / 10)
  $wT = 2 * $t * $S; $tot = $wT + 45 + 75
  $wStop = 8498.36 / $t
  Write-Output ('  ' + $k.PadRight(12) + ' t=' + (('{0,3}' -f $t)) + ' S=' + (('{0,3}' -f $S)) +
    ' stop-wave = 8498/t = ' + (('{0,6:F0}' -f $wStop)) + ' ; tickets-only/wk=' + (('{0,7}' -f $wT)) +
    ' ; total/wk=' + (('{0,7}' -f $tot)) + ' ; years to ' + $bill + ': ' +
    (('{0:F2}' -f ($bill / $wT / 52))) + ' -> ' + (('{0:F2}' -f ($bill / $tot / 52))) + ' y')
}
Write-Output ('  boxes+trades share of the total: Copper bottom ' + (('{0:F1}' -f (120 / 200 * 100))) +
  ' % ; Gold bottom ' + (('{0:F1}' -f (120 / 1200 * 100))) + ' % ; Champion 16-24 ' +
  (('{0:F2}' -f (120 / 20280 * 100))) + ' %')
