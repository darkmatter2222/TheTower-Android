param()
# Iteration 139: the 19-line cross-bot density table and the bot-vs-bot ranking.
# Every bot line reduces to ONE parameter  rho = base / increment :
#   growing  lines (Range, Bonus, Duration, Linger, Damage, DmgRed):  gain(n) = 1/(rho + n - 1)
#   shrinking line (every * Cooldown):                                 gain(n) = 1/(rho - n + 1)
# density(n) = gain(n) / (40n + 60) ; cost(L) = 20L^2 + 80L ; ln gain to L = ln(final value / base).
# Par = ln(1.03)/1000 (the whole cosmetic line), from T013 2 / T015 3.1.
function PriceOf([int] $n) { return 40 * $n + 60 }
function SumCostOf([int] $L) { return 20 * $L * $L + 80 * $L }
$PAR = [Math]::Log(1.03) / 1000

# bot, line, base, increment, cap, kind
$lines = @(
  @('Golden ', 'Range   ', 20.0,   2.0,  20, 'grow'),
  @('Golden ', 'Bonus   ',  2.0,   0.2,  30, 'grow'),
  @('Golden ', 'Duration  ', 20.0,  0.5,  30, 'grow'),
  @('Golden ', 'Cooldown  ', 120.0, 3.0,  15, 'shrink'),
  @('Amplify', 'Range   ', 25.0,   2.0,  18, 'grow'),
  @('Amplify', 'Bonus   ',  3.5,    0.4,  30, 'grow'),
  @('Amplify', 'Duration  ', 20.0,  0.5,  30, 'grow'),
  @('Amplify', 'Cooldown  ', 120.0, 3.0,  15, 'shrink'),
  @('Bot Bot', 'Range   ', 20.0,   2.0,  20, 'grow'),
  @('Bot Bot', 'Bonus   ',  1.05,   0.05, 19, 'grow'),
  @('Bot Bot', 'Duration  ', 20.0,  0.5,  30, 'grow'),
  @('Bot Bot', 'Cooldown  ', 120.0, 3.0,  15, 'shrink'),
  @('Thunder', 'Range   ', 25.0,   3.0,  15, 'grow'),
  @('Thunder', 'Linger  ', 20.0,   3.0,  20, 'grow'),
  @('Thunder', 'Duration  ', 5.0,   0.5,  20, 'grow'),
  @('Thunder', 'Cooldown  ', 120.0, 3.0,  15, 'shrink'),
  @('Flame  ', 'Range   ', 30.0,   4.0,  15, 'grow'),
  @('Flame  ', 'Damage  ', 50.0,   8.0,  30, 'grow'),
  @('Flame  ', 'DmgRed  ', 20.0,   3.0,  25, 'grow'),
  @('Flame  ', 'Cooldown',  75.0,  3.0,  15, 'shrink')
)

function DensOf([double] $rho, [int] $n, [string] $kind) {
  if ($kind -eq 'grow') { return 1.0 / (($rho + $n - 1) * (PriceOf $n)) }
  return 1.0 / (($rho - $n + 1) * (PriceOf $n))
}
function StopOf([double] $rho, [int] $cap, [string] $kind) {
  for ($n = 1; $n -le $cap; $n++) { if ((DensOf $rho $n $kind) -lt $PAR) { return $n - 1 } }
  return $cap
}
function LnGain([double] $rho, [int] $L, [string] $kind) {
  if ($L -le 0) { return 0.0 }
  if ($kind -eq 'grow') { return [Math]::Log(1.0 + $L / $rho) }
  return [Math]::Log($rho / ($rho - $L))
}

Write-Output ('--- 1. the 19 lines, sorted by the level-1 density (par = ' + (('{0:F3}' -f ($PAR * 1e4))) + 'e-4) ---')
$rows = @()
foreach ($l in $lines) {
  $rho = $l[2] / $l[3]
  $stop = StopOf $rho $l[4] $l[5]
  $cost = SumCostOf $stop
  $ln = LnGain $rho $stop $l[5]
  $rows += [pscustomobject]@{ bot = $l[0]; line = $l[1]; base = $l[2]; inc = $l[3]; cap = $l[4]; kind = $l[5]
    rho = $rho; d1 = (DensOf $rho 1 $l[5]); dstop = (DensOf $rho ([Math]::Max(1, $stop)) $l[5])
    stop = $stop; cost = $cost; ln = $ln; per = $(if ($cost -gt 0) { $ln / $cost } else { 0.0 });
    key = ($l[0].Trim() + '.' + $l[1].Trim()) }
}
foreach ($r in ($rows | Sort-Object -Property d1 -Descending)) {
  Write-Output ('  ' + $r.bot + ' ' + $r.line + ' base ' + (('{0,6:F2}' -f $r.base)) + ' +' + (('{0,4:F2}' -f $r.inc)) +
    ' ; rho ' + (('{0,6:F3}' -f $r.rho)) + ' ; cap ' + (('{0,2}' -f $r.cap)) + ' ; stop ' + (('{0,2}' -f $r.stop)) +
    ' ; d1 ' + (('{0,6:F2}' -f ($r.d1 * 1e4))) + 'e-4 ; d(stop) ' + (('{0,6:F3}' -f ($r.dstop * 1e4))) +
    'e-4 ; ' + (('{0,6}' -f $r.cost)) + ' medals ; ln ' + (('{0,6:F4}' -f $r.ln)) + ' ; ' +
    (('{0,5:F2}' -f ($r.per * 1e4))) + 'e-4/medal')
}

Write-Output '--- 2. same rho => same first step (then the two laws split: grow decays, shrink grows) ---'
foreach ($g in ($rows | Group-Object -Property { '{0:F4}' -f $_.rho } | Sort-Object Name)) {
  $names = ($g.Group | ForEach-Object { $_.key + '/' + $_.kind + '=' + $_.stop }) -join ' , '
  Write-Output ('  rho ' + $g.Name + ' (' + $g.Count + ' lines) : ' + $names + ' ; d1 ' +
    (('{0,6:F3}' -f ($g.Group[0].d1 * 1e4))) + 'e-4')
}

Write-Output '--- 3. the bot-vs-bot ranking (par-optimal block per bot, avg = Sigma ln / medals) ---'
$botTotals = @()
foreach ($bn in @('Golden ', 'Amplify', 'Bot Bot', 'Thunder', 'Flame  ')) {
  $sel = $rows | Where-Object { $_.bot -eq $bn }
  $cost = ($sel | Measure-Object -Property cost -Sum).Sum
  $ln = ($sel | Measure-Object -Property ln -Sum).Sum
  $lv = ($sel | Measure-Object -Property stop -Sum).Sum
  $capped = 0
  foreach ($s in $sel) { $capped += SumCostOf $s.cap }
  $botTotals += [pscustomobject]@{ bot = $bn; levels = $lv; medals = $cost; ln = $ln; per = $ln / $cost; capped = $capped }
}
foreach ($b in ($botTotals | Sort-Object -Property per -Descending)) {
  $ev1 = $b.medals / 1215; $ev2 = $b.medals / 2160
  Write-Output ('  ' + $b.bot + ' : ' + (('{0,3}' -f $b.levels)) + ' levels for ' + (('{0,6}' -f $b.medals)) +
    ' medals (' + (('{0,5:F1}' -f $ev1)) + ' events F2P / ' + (('{0,5:F1}' -f $ev2)) + ' boosted) ; ln ' +
    (('{0,6:F3}' -f $b.ln)) + ' = x' + (('{0,6:F2}' -f [Math]::Exp($b.ln))) + ' ; ' +
    (('{0,5:F2}' -f ($b.per * 1e4))) + 'e-4/medal ; ' + (('{0,5:F1}' -f ($b.medals / $b.capped * 100))) +
    ' % of the capped ' + $b.capped)
}

Write-Output '--- 4. all five bots at the par ---'
$allMedals = ($botTotals | Measure-Object -Property medals -Sum).Sum
$allLn = ($botTotals | Measure-Object -Property ln -Sum).Sum
$allCap = ($botTotals | Measure-Object -Property capped -Sum).Sum
$withUnlock = $allMedals + 3150
Write-Output ('  total ' + $allMedals + ' medals + 3 150 unlocks = ' + $withUnlock +
  ' ; F2P ' + (('{0,6:F1}' -f ($withUnlock / 1215))) + ' events = ' + (('{0,6:F0}' -f ($withUnlock / 1215 * 2))) +
  ' weeks ; boosted ' + (('{0,6:F1}' -f ($withUnlock / 2160))) + ' events = ' +
  (('{0,6:F0}' -f ($withUnlock / 2160 * 2))) + ' weeks')
Write-Output ('  share of the five-bot grand bill ' + $allCap + ' : ' + (('{0,5:F1}' -f ($allMedals / $allCap * 100))) +
  ' % ; combined ln ' + (('{0,6:F3}' -f $allLn)) + ' = x' + (('{0,7:F1}' -f [Math]::Exp($allLn))) +
  ' ; ' + (('{0,5:F2}' -f ($allLn / $allMedals * 1e4))) + 'e-4/medal average')

Write-Output '--- 5. the joint greedy purchase order across all 19 lines ---'
$cnt = @{}; $kindm = @{}; $rhom = @{}; $capm = @{}
foreach ($r in $rows) { $cnt[$r.key] = 0; $kindm[$r.key] = $r.kind; $rhom[$r.key] = $r.rho; $capm[$r.key] = $r.cap }
function GreedyAll([hashtable] $c, [int] $budget) {
  $spent = 0; $seq = @()
  while ($true) {
    $bestK = 'x'; $bd = 0.0
    foreach ($k in $c.Keys) {
      $n = $c[$k] + 1
      if ($n -gt $capm[$k]) { continue }
      $d = DensOf $rhom[$k] $n $kindm[$k]
      if ($d -gt $bd) { $bd = $d; $bestK = $k }
    }
    if ($bestK -eq 'x') { break }
    if ($bd -lt $PAR) { break }
    $price = PriceOf ($c[$bestK] + 1)
    if ($spent + $price -gt $budget) { break }
    $c[$bestK] = $c[$bestK] + 1
    $spent += $price
    $seq += ($bestK + $c[$bestK])
  }
  return @{ spent = $spent; seq = $seq }
}
$full = GreedyAll $cnt 999999999
$lnFull = 0.0
foreach ($r in $rows) { $lnFull += LnGain $r.rho $cnt[$r.key] $r.kind }
Write-Output ('  ' + $full.seq.Count + ' levels / ' + $full.spent + ' medals ; per line: ' +
  (($cnt.Keys | Sort-Object | ForEach-Object { $_ + '=' + $cnt[$_] }) -join ' '))
Write-Output ('  combined ln ' + (('{0,6:F3}' -f $lnFull)) + ' = x' + (('{0,7:F1}' -f [Math]::Exp($lnFull))) +
  ' ; ' + (('{0,5:F2}' -f ($lnFull / $full.spent * 1e4))) + 'e-4/medal')
Write-Output ('  first 30 taps : ' + (($full.seq | Select-Object -First 30) -join ' '))
$cnt2 = @{}; foreach ($r in $rows) { $cnt2[$r.key] = 0 }
$one = GreedyAll $cnt2 1215
Write-Output ('  one 1 215-event plan : ' + $one.seq.Count + ' levels / ' + $one.spent + ' medals ; ' +
  (($cnt2.Keys | Sort-Object | Where-Object { $cnt2[$_] -gt 0 } | ForEach-Object { $_ + '=' + $cnt2[$_] }) -join ' '))
Write-Output ('  sequence : ' + ($one.seq -join ' '))

Write-Output '--- 6. the unlock layer, priced on the base value alone (lower bound) ---'
$unl = @(
  @('Golden ', 150, 2.0), @('Amplify', 300, 3.5), @('Thunder', 600, 1.20), @('Flame  ', 900, 1.20),
  @('Bot Bot', 1200, 1.05)
)
foreach ($u in $unl) {
  Write-Output ('  ' + $u[0] + ' unlock ' + (('{0,4}' -f $u[1])) + ' medals ; base x' + (('{0,5:F2}' -f $u[2])) +
    ' -> ' + (('{0,6:F2}' -f ([Math]::Log($u[2]) / $u[1] * 1e4))) + 'e-4/medal')
}
$top = ($rows | Sort-Object -Property d1 -Descending)[0]
Write-Output ('  par = ' + (('{0,6:F3}' -f ($PAR * 1e4))) + 'e-4 ; densest level-1 line = ' + $top.key + ' at ' +
  (('{0,6:F2}' -f ($top.d1 * 1e4))) + 'e-4')

Write-Output '--- 7. cross-checks on the printed totals ---'
foreach ($b in ($botTotals | Sort-Object bot)) {
  Write-Output ('  ' + $b.bot + ' capped bill = ' + $b.capped)
}
Write-Output ('  sum of the five capped bills = ' + $allCap + ' (printed grand bill 231 860)')
Write-Output ('  SumCost(20) = ' + (SumCostOf 20) + ' ; SumCost(18) = ' + (SumCostOf 18) + ' ; SumCost(19) = ' +
  (SumCostOf 19) + ' ; SumCost(25) = ' + (SumCostOf 25) + ' ; SumCost(15) = ' + (SumCostOf 15))

Write-Output '--- 8. the merged tap sheet: 5 unlocks + the par levels, feasibility-constrained ---'
# A level can only be bought after its bot is unlocked, so this is a density-greedy over the *eligible* set.
$unlocked = @{}; $cnt3 = @{}; $price3 = @{}; $dens3 = @{}; $stop3 = @{}
foreach ($r in $rows) { $cnt3[$r.key] = 0; $stop3[$r.key] = $r.stop }
$unlPrice = @{}; $unlDens = @{}; $unlBot = @{}
foreach ($u in $unl) {
  $unlPrice[$u[0].Trim()] = $u[1]; $unlDens[$u[0].Trim()] = [Math]::Log($u[2]) / $u[1]; $unlocked[$u[0].Trim()] = $false
}
foreach ($r in $rows) { $unlBot[$r.key] = $r.bot.Trim() }
$run = 0; $tap = 0; $seqLines = @(); $unlockLog = @()
while ($true) {
  $bestL = ''; $bestD = -1.0; $bestP = 0; $bestK = ''
  foreach ($bn in @('Golden ', 'Amplify', 'Bot Bot', 'Thunder', 'Flame  ')) {
    $bt = $bn.Trim()
    if (-not $unlocked[$bt]) {
      $d = $unlDens[$bt]; $p = $unlPrice[$bt]
      if ($d -gt $bestD) { $bestD = $d; $bestP = $p; $bestL = ('UNLOCK-' + $bt); $bestK = 'u:' + $bt }
      continue
    }
    foreach ($r in ($rows | Where-Object { $_.bot.Trim() -eq $bt })) {
      $n = $cnt3[$r.key] + 1
      if ($n -gt $stop3[$r.key]) { continue }
      $d = DensOf $r.rho $n $r.kind; $p = PriceOf $n
      if (($d -gt $bestD) -or (($d -eq $bestD) -and ($p -lt $bestP))) { $bestD = $d; $bestP = $p; $bestL = ($r.key + $n); $bestK = $r.key }
    }
  }
  if ($bestD -lt $PAR) { break }
  if ($bestK.StartsWith('u:')) { $unlocked[$bestK.Substring(2)] = $true } else { $cnt3[$bestK] = $cnt3[$bestK] + 1 }
  $tap++
  $seqLines += ($bestL + '@' + $bestP)
  if ($bestK.StartsWith('u:')) { $unlockLog += ('  ' + (('{0,2}' -f $tap)) + '. ' + $bestL + ' at ' + $run + ' medals (' + (('{0,6:F2}' -f ($bestD * 1e4))) + 'e-4)') }
  $run += $bestP
}
Write-Output ('  ' + $tap + ' taps / ' + $run + ' medals')
Write-Output ('  the unlock positions : ' + ($unlockLog -join ' ; '))
Write-Output ('  first 24 taps : ' + (($seqLines | Select-Object -First 24) -join ' '))
Write-Output ('  taps 25-48  : ' + (($seqLines | Select-Object -Skip 24 -First 24) -join ' '))
Write-Output ('  per line at the end : ' + (($cnt3.Keys | Sort-Object | ForEach-Object { $_ + '=' + $cnt3[$_] }) -join ' '))
Write-Output ('  events F2P ' + (('{0,6:F1}' -f ($run / 1215))) + ' = ' + (('{0,6:F0}' -f ($run / 1215 * 2))) +
  ' weeks ; boosted ' + (('{0,6:F1}' -f ($run / 2160))) + ' events = ' + (('{0,6:F0}' -f ($run / 2160 * 2))) + ' weeks')

Write-Output '--- 9. the tail split (why the par stop is where it is) ---'
foreach ($r in ($rows | Where-Object { $_.cap -ge 25 })) {
  $full = SumCostOf $r.cap; $stopC = SumCostOf $r.stop
  $lnFull = LnGain $r.rho $r.cap $r.kind; $lnStop = LnGain $r.rho $r.stop $r.kind
  $tailBill = $full - $stopC; $tailLn = $lnFull - $lnStop
  Write-Output ('  ' + $r.key.PadRight(17) + ' stop ' + (('{0,2}' -f $r.stop)) + ' / ' + $r.cap +
    ' : ' + (('{0,6}' -f $stopC)) + ' of ' + (('{0,6}' -f $full)) + ' medals (' +
    (('{0,5:F1}' -f ($stopC / $full * 100))) + ' %) for ' + (('{0,5:F1}' -f ($lnStop / $lnFull * 100))) +
    ' % of the gain' +
    $(if ($tailBill -gt 0) { ' ; tail = ' + (('{0,5}' -f $tailBill)) + ' medals for ' + (('{0,6:F4}' -f $tailLn)) +
      ' ln = ' + (('{0,5:F2}' -f ($tailLn / $tailBill * 1e4))) + 'e-4' +
      $(if (($tailLn / $tailBill) -ge $PAR) { ' (above par)' } else { ' (below par)' }) } else { ' ; tail = none, the cap binds first' }))
}

Write-Output '--- 10. the sheet cut into 1 215-medal events ---'
$acc = 0; $ev = 1; $nInEv = 0
foreach ($s in $seqLines) {
  $p = [int]($s.Split('@')[1])
  if (($acc + $p) -gt ($ev * 1215)) {
    Write-Output ('  event ' + (('{0,3}' -f $ev)) + ' (cum ' + (('{0,7}' -f $acc)) + ' medals, ' + (('{0,3}' -f $nInEv)) +
      ' taps, weeks ' + (('{0,4:F0}' -f ($ev * 2))) + ')')
    $ev++
  }
  $acc += $p; $nInEv++
}
Write-Output ('  event ' + (('{0,3}' -f $ev)) + ' (cum ' + (('{0,7}' -f $acc)) + ' medals, ' + (('{0,3}' -f $nInEv)) +
  ' taps, weeks ' + (('{0,4:F0}' -f ($ev * 2))) + ')')
Write-Output ('  first event in full : ' + (($seqLines | Select-Object -First 9) -join ' '))

Write-Output '--- 11. the Range lines under the amplification constant A (rho = (base + A) / inc, H067) ---'
foreach ($r in ($rows | Where-Object { $_.line.Trim() -eq 'Range' })) {
  $s = ''
  foreach ($A in @(0, 10, 20, 40)) {
    $rhoA = ($r.base + $A) / $r.inc
    $s += ' ; A=' + $A + ' rho ' + (('{0,5:F2}' -f $rhoA)) + ' d1 ' + (('{0,5:F2}' -f ((DensOf $rhoA 1 'grow') * 1e4))) + 'e-4'
  }
  Write-Output ('  ' + $r.key.PadRight(15) + $s)
}



