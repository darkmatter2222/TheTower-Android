param()
# Iteration 120: the Milestones page's own totals ledger (wiki/guide/milestones, 8 per-block Totals rows).
# Each block prints three Totals rows (coins / gems / stones) whose six columns, in print order, are
# tierA free | tierA paid | tierB free | tierB paid | tierC free | tierC paid.
# Plain integer literals only: in a PS array literal the comma binds tighter than * (see the repo's PS traps).
$U12 = [Math]::Pow(10, 12); $U15 = [Math]::Pow(10, 15)
$names = 'T1-3', 'T4-6', 'T7-9', 'T10-12', 'T13-15', 'T16-18', 'T19-21', 'T22-24'
# ---- coins, by print column
$c1 = 1660, 50000, 5000000, 20000000, 300000000, 30000000000, 300000000000, 10000000000000
$c2 = 141450, 11500000, 40000000, 105000000, 900000000, 180000000000, 2100000000000, 40000000000000
$c3 = 250, 650000, 10000000, 50000000, 1500000000, 160000000000, 600000000000, 25000000000000
$c4 = 3330000, 27050000, 38000000, 250000000, 9000000000, 450000000000, 4500000000000, 150000000000000
$c5 = 35000, 1000000, 0, 0, 45000000000, 300000000000, 1000000000000, 250000000000000
$c6 = 9890000, 36300000, 18500000, 450000000, 90000000000, 800000000000, 8000000000000, 850000000000000
# ---- gems, by print column
$g1 = 235, 380, 340, 535, 705, 750, 750, 950
$g2 = 360, 515, 600, 920, 1150, 1260, 1390, 1475
$g3 = 180, 275, 490, 610, 1050, 1310, 1260, 1320
$g4 = 380, 565, 770, 935, 1715, 1740, 1820, 1950
$g5 = 205, 390, 450, 645, 1520, 1355, 1750, 1775
$g6 = 385, 560, 890, 970, 2170, 2195, 2330, 2450
# ---- stones, by print column
$s1 = 5, 10, 35, 60, 185, 225, 225, 240
$s2 = 35, 70, 140, 170, 310, 440, 440, 450
$s3 = 15, 40, 70, 90, 300, 390, 390, 395
$s4 = 35, 60, 130, 165, 430, 505, 505, 525
$s5 = 10, 30, 40, 135, 370, 385, 385, 400
$s6 = 60, 105, 155, 255, 655, 740, 740, 750
$sumC = 0.0; $sumGf = 0.0; $sumGp = 0.0; $sumSf = 0.0; $sumSp = 0.0
$cf12 = 0.0; $cp12 = 0.0; $gf12 = 0; $gp12 = 0; $sf12 = 0; $sp12 = 0
for ($b = 0; $b -lt 8; $b++) {
  $cf = $c1[$b] + $c3[$b] + $c5[$b]
  $cp = $c2[$b] + $c4[$b] + $c6[$b]
  $gf = $g1[$b] + $g3[$b] + $g5[$b]
  $gp = $g2[$b] + $g4[$b] + $g6[$b]
  $sf = $s1[$b] + $s3[$b] + $s5[$b]
  $sp = $s2[$b] + $s4[$b] + $s6[$b]
  $sumC += $cf + $cp; $sumGf += $gf; $sumGp += $gp; $sumSf += $sf; $sumSp += $sp
  Write-Output ($names[$b] + ' | coins free ' + ('{0:G6}' -f $cf) + ' + paid ' + ('{0:G6}' -f $cp) +
    ' | gems ' + $gf + ' / ' + $gp + ' | stones ' + $sf + ' / ' + $sp)
  if ($b -le 3) { $cf12 += $cf; $cp12 += $cp; $gf12 += $gf; $gp12 += $gp; $sf12 += $sf; $sp12 += $sp }
}
Write-Output ('grand coins = ' + ('{0:G6}' -f $sumC) + ' = ' + ('{0:G5}' -f ($sumC / $U15)) + ' q  (page prints 1.3q~)')
Write-Output ('grand gems: free ' + $sumGf + ' (print 19230, delta ' + ($sumGf - 19230) + ') ; paid ' + $sumGp +
  ' (print 23955, delta ' + ($sumGp - 23955) + ') ; print grand 43185 vs 19230+23955 = ' + (19230 + 23955))
Write-Output ('grand stones: free ' + $sumSf + ' (print 4430, delta ' + ($sumSf - 4430) + ') ; paid ' + $sumSp +
  ' (print 7870, delta ' + ($sumSp - 7870) + ') ; print grand 12300 = 4430+7870 = ' + (4430 + 7870))
$gp1921 = $g2[6] + $g4[6] + $g6[6]
Write-Output ('paid-gem skew ' + ($sumGp - 23955) + ' vs the T19-21 paid column ' + $gp1921 +
  ' (equal? ' + (($sumGp - 23955) -eq $gp1921) + ') ; paid-stone T19-21 = ' + ($s2[6] + $s4[6] + $s6[6]) +
  ' vs T16-18 = ' + ($s2[5] + $s4[5] + $s6[5]))
Write-Output ('through T12 free track: gems ' + $gf12 + ' stones ' + $sf12 + ' coins ' + ('{0:G6}' -f $cf12))
Write-Output ('through T12 paid track: gems ' + $gp12 + ' stones ' + $sp12 + ' coins ' + ('{0:G6}' -f $cp12))
Write-Output ('T12 free gems in days at 435/day = ' + [Math]::Round($gf12 / 435.0, 1) + ' ; free stones at 55/day = ' +
  [Math]::Round($sf12 / 55.0, 1) + ' ; T12 paid gems = ' + [Math]::Round($gp12 / 435.0, 1) + ' days of income')
$c7 = $c1[7] + $c2[7] + $c3[7] + $c4[7] + $c5[7] + $c6[7]
Write-Output ('T22-24 coins = ' + ('{0:G5}' -f ($c7 / $U15)) + ' q = ' + [Math]::Round($c7 / $sumC * 100, 1) +
  ' % of the coin ledger')
$b567 = 0.0
for ($b = 4; $b -le 6; $b++) { $b567 += $c1[$b] + $c2[$b] + $c3[$b] + $c4[$b] + $c5[$b] + $c6[$b] }
Write-Output ('T13-15 + T16-18 + T19-21 coins = ' + ('{0:G5}' -f ($b567 / $U12)) + ' T = ' +
  [Math]::Round($b567 / $sumC * 100, 1) + ' % of the ledger')
Write-Output ('T1-12 coins = ' + ('{0:G5}' -f (($cf12 + $cp12) / $U12)) + ' T = ' +
  [Math]::Round(($cf12 + $cp12) / $sumC * 100, 2) + ' % of the ledger')
Write-Output ('gem share up to T12 = ' + $gf12 + ' of 19230 free = ' + [Math]::Round($gf12 / 19230 * 100, 1) +
  ' % ; stone share = ' + [Math]::Round($sf12 / 4430 * 100, 1) + ' %')
