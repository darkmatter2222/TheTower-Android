param()
# Iteration 135: the medal budget, the per-line trade ladder, and the stone trade count `a`.
# Prints (fandom `Currency/Medals` 2026-11-03): goals 10/15/20 (boost 20/30/40); boxes 135/week;
# Fetch <= 10/day; trade prices 40,65,90,130,175,230,380(7+) with EACH LINE ITS OWN COUNT; bot unlocks
# 150/300/600/900/1200. game-vault Event Guide: 45/mission, 21 missions, 945, "double that" with the boost,
# "1 215 per event" = 945 + 2 x 135.
$c = @(40, 65, 90, 130, 175, 230, 380, 380, 380, 380, 380, 380)   # price of trade k (1-based), flat 380 from 7
$GE = 150                                                          # gem-equivalent per trade (the 150-identity)

Write-Output '--- 1. the income ledger ---'
$perMission = @(45, 90)
$missions = @(21, 21)
for ($i = 0; $i -le 1; $i++) {
  $ev = $perMission[$i] * $missions[$i]
  $box = 135 * 2
  $fetch = 10 * 14
  Write-Output ('  ' + $(if ($i -eq 0) { 'F2P    ' } else { 'boosted' }) + ': missions ' + (('{0,5}' -f $ev)) +
    ' (' + $perMission[$i] + ' x ' + $missions[$i] + ') + boxes ' + $box + ' + Fetch ' + $fetch +
    ' = ' + (('{0,5}' -f ($ev + $box))) + ' (no Fetch) / ' + (('{0,5}' -f ($ev + $box + $fetch))) +
    ' per 2-week event  -> per week ' + (('{0:F1}' -f (($ev + $box) / 2))) + ' / ' +
    (('{0:F1}' -f (($ev + $box + $fetch) / 2))))
}
Write-Output ('  1 215 reconciliation: 945 + 2 x 135 = ' + (945 + 270) + ' ; boosted: 1 890 + 270 = ' + (1890 + 270))

Write-Output '--- 2. the per-line ladder: price, cumulative, gem-equivalent per medal ---'
$cum = 0
for ($k = 1; $k -le 8; $k++) {
  $cum += $c[$k - 1]
  Write-Output ('  trade ' + (('{0,2}' -f $k)) + ' price ' + (('{0,4}' -f $c[$k - 1])) + ' cumulative ' +
    (('{0,5}' -f $cum)) + '  ge/medal = ' + (('{0:F3}' -f ($GE / $c[$k - 1]))))
}

Write-Output '--- 3. max trades for a budget: all-in on one line vs the even 3-line spread ---'
function MaxOneLine([int] $budget) {
  $spent = 0; $n = 0
  while ($n -lt 12 -and ($spent + $c[$n]) -le $budget) { $spent += $c[$n]; $n++ }
  return @($n, $spent)
}
function MaxSpread([int] $budget) {
  # buy trade k on all three lines before trade k+1 (the marginal cost is lowest while the counts are level)
  $spent = 0; $n = 0; $k = 0
  while ($true) {
    $price = $c[$k]
    if (($spent + $price) -gt $budget) { break }
    $spent += $price; $n++                       # line A
    if (($spent + $price) -gt $budget) { break }
    $spent += $price; $n++                       # line B
    if (($spent + $price) -gt $budget) { break }
    $spent += $price; $n++                       # line C
    $k++
  }
  return @($n, $spent)
}
foreach ($b in @(1215, 1355, 2160, 2300)) {
  $one = MaxOneLine $b; $three = MaxSpread $b
  $stonesOne = $one[0] * 15
  Write-Output ('  budget ' + (('{0,5}' -f $b)) + ' : all-in stones line = ' + (('{0,3}' -f $one[0])) +
    ' trades for ' + (('{0,5}' -f $one[1])) + ' medals (' + $stonesOne + ' stones, ' +
    (('{0:F1}' -f ($one[0] / 2))) + '/week = a) ; even 3-line spread = ' + (('{0,3}' -f $three[0])) +
    ' trades for ' + (('{0,5}' -f $three[1])) + ' (' + (('{0,5}' -f ($three[0] * $GE))) + ' ge, residual ' +
    (('{0,4}' -f ($b - $three[1]))) + ')')
}

Write-Output '--- 4. the relic gates as mission counts (only event-earned medals count) ---'
foreach ($pm in @(@(45, 'F2P'), @(90, 'boosted'))) {
  $need350 = [Math]::Ceiling(350 / $pm[0]); $need700 = [Math]::Ceiling(700 / $pm[0])
  Write-Output ('  ' + $pm[1].PadRight(8) + ' ' + $pm[0] + ' per mission -> Rare (350) needs ' + (('{0,2}' -f $need350)) +
    ' missions, Epic (700) needs ' + (('{0,2}' -f $need700)) + ' of 21 ; box medals do not count')
}

Write-Output '--- 5. the bot unlock ladder (double-source for T015) ---'
$bots = @(150, 300, 600, 900, 1200)
$sb = 0; foreach ($v in $bots) { $sb += $v }
Write-Output ('  150/300/600/900/1200 -> Sigma ' + $sb + ' medals for all five unlocks' +
  ' ; ratios ' + ((1..4 | ForEach-Object { '{0:F2}' -f ($bots[$_] / $bots[$_ - 1]) }) -join ' '))
