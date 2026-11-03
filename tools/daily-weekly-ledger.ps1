param()
# Iteration 133: the printed weekly ledger (Daily Missions) and the tournament stone matrix.
# Weekly boxes: thresholds 5..35 by 5 -> coins multiplier, gems, medals, stones, guild tokens, contribution.
$thr = @(5, 10, 15, 20, 25, 30, 35)
$coinX = @(3, 4, 5, 7, 10, 15, 20)
$gems = @(10, 15, 20, 25, 30, 35, 50)
$medals = @(0, 10, 15, 20, 25, 30, 35)
$stones = @(0, 0, 0, 0, 10, 15, 20)
$tokens = @(5, 5, 5, 5, 5, 5, 5)
$contrib = @(5, 5, 5, 5, 5, 5, 5)
function S([double[]] $a) { $x = 0.0; foreach ($v in $a) { $x += $v }; return $x }
Write-Output '--- weekly box totals vs the printed Total row (x64 / 185 / 135 / 45 / 35 / 35) ---'
Write-Output ('  coins multiplier sum = ' + (S $coinX) + ' ; gems = ' + (S $gems) + ' ; medals = ' + (S $medals) +
  ' ; stones = ' + (S $stones) + ' ; tokens = ' + (S $tokens) + ' ; contribution = ' + (S $contrib))
Write-Output ('  first paying threshold = ' + $thr[4] + ' missions (stones start at box 5) ; last = ' + $thr[6])
Write-Output ('  board law: 2 missions per 8 h = ' + (2 * 3) + '/day = ' + (2 * 3 * 7) + '/week ; weekly boxes stop at 35' +
  ' -> ' + ((2 * 3 * 7) - 35) + ' tiles pay no box reward')
Write-Output ('  stones per week from boxes = ' + (S $stones) + ' ; per medal trade = 15 ; medals/week = ' + (S $medals) +
  ' -> if all 135 medals are traded for stones: ' + ((S $medals) * 15) + ' stones')

# the per-tile shard/coin table by tier, and the shard law 5t - 15
$shard = @(1, 3, 5, 8, 12, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100, 105)
$bad = 0; $first = 0
for ($t = 7; $t -le 24; $t++) {
  $pred = 5 * $t - 15
  if ($pred -ne $shard[$t - 1]) { $bad++; if ($first -eq 0) { $first = $t } }
}
Write-Output ('--- shard-per-tile law: shards(t) = 5t - 15 for t >= 7 : failing rows = ' + $bad + ' (first ' + $first + ')')
$dev = @(); for ($t = 2; $t -le 6; $t++) { $dev += ('t' + $t + ':' + ($shard[$t] - $shard[$t - 1])) }
Write-Output ('  early steps (t2..t6): ' + ($dev -join ' ') + ' ; tail step = +5 from t7 ; T11 = ' + $shard[10] +
  ' shards/tile vs T4 ' + $shard[3] + ' = x' + ('{0:F2}' -f ($shard[10] / $shard[3])))

# tournament stone matrix: rank bands per league (Copper..Mythic), 1st place from Currency/Power Stones
$leagues = @('Copper', 'Silver', 'Gold', 'Platinum', 'Champion', 'Legend', 'Mythic')
$firstPl = @(20, 40, 80, 180, 300, 375, 475)
$last = @(5, 12, 20, 20, 20, 100, 225)
Write-Output '--- tournament stone matrix: 1st vs last band (23-30) and the ratio ---'
for ($i = 0; $i -lt 7; $i++) {
  Write-Output ('  ' + $leagues[$i].PadRight(9) + ' 1st=' + (('{0,5}' -f $firstPl[$i])) + '  23-30th=' +
    (('{0,5}' -f $last[$i])) + '  ratio=' + ('{0:F2}' -f ($firstPl[$i] / $last[$i])))
}
Write-Output ('  1st-place ladder ratios: ' + ((1..6 | ForEach-Object { '{0:F3}' -f ($firstPl[$_] / $firstPl[$_ - 1]) }) -join ' '))
Write-Output '--- testing T025 band ladder 80/154/432/1080/6400/20160 = 45 + k x (1st place) ---'
$t025 = @(80, 154, 432, 1080, 6400, 20160)
for ($i = 0; $i -lt 6; $i++) {
  $k = ($t025[$i] - 45) / ($firstPl[$i + 1])
  Write-Output ('  ' + $leagues[$i + 1].PadRight(9) + 'ladder=' + (('{0,6}' -f $t025[$i])) + ' => k = (' + $t025[$i] +
    ' - 45) / ' + $firstPl[$i + 1] + ' = ' + ('{0:F3}' -f $k))
}
