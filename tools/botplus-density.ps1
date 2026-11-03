param()
# Iteration 140: the Bot+ block on the same scale as the 19 stat lines.
# One law covers all three printed price ladders:  price(n) = 100 + s(n-1)
#   s = 40  the stat lines (100 140 180 ...)          -> Sigma = 20L^2 + 80L
#   s = 50  the Bot+ lines (100 150 200 ... 1050)     -> Sigma = 25L^2 + 75L
#   s = 200 Echoing Shot  (100 300 500 ... 1700)      -> Sigma = 100L^2
# with rho = base/increment : density(n) = 1/((rho + n - 1)(100 + s(n-1)))   (all three ladders start at 100)
function PriceOf([int] $n, [int] $s) { return 100 + $s * ($n - 1) }
function SumOf([int] $L, [int] $s) { return 100 * $L + $s * $L * ($L - 1) / 2 }
$PAR = [Math]::Log(1.03) / 1000

# key, base, inc, cap, slope, family
$lines = @(
  @('Golden.Bonus',        2.0,  0.2,  30, 40), @('Golden.Range',         20.0,  2.0,  20, 40),
  @('Golden.Duration',    20.0,  0.5,  30, 40), @('Golden.Cooldown',     120.0,  3.0,  15, 40),
  @('Amplify.Bonus',       3.5,  0.4,  30, 40), @('Amplify.Range',       25.0,  2.0,  18, 40),
  @('Amplify.Duration',   20.0,  0.5,  30, 40), @('Amplify.Cooldown',   120.0,  3.0,  15, 40),
  @('BotBot.Bonus',        1.05, 0.05, 19, 40), @('BotBot.Range',        20.0,  2.0,  20, 40),
  @('BotBot.Duration',    20.0,  0.5,  30, 40), @('BotBot.Cooldown',   120.0,  3.0,  15, 40),
  @('Thunder.Linger',     20.0,  3.0,  20, 40), @('Thunder.Range',       25.0,  3.0,  15, 40),
  @('Thunder.Duration',    5.0,  0.5,  20, 40), @('Thunder.Cooldown',  120.0,  3.0,  15, 40),
  @('Flame.Damage',       50.0,  8.0,  30, 40), @('Flame.DmgRed',       20.0,  3.0,  25, 40),
  @('Flame.Range',        30.0,  4.0,  15, 40), @('Flame.Cooldown',      75.0,  3.0,  15, 40),
  @('Bot+.BonusCells',     1.25, 0.05, 25,  50), @('Bot+.MaximumPower',   1.25, 0.05, 20,  50),
  @('Bot+.WildFire',       1.5,  0.1,  20,  50), @('Bot+.TitanShock',     5.0,  1.0,  20,  50),
  @('Bot+.EchoingShot',    3.0,  1.0,   9, 200)
)

function DensOf([double] $rho, [int] $n, [int] $s, [string] $kind) {
  if ($kind -eq 'shrink') { return 1.0 / (($rho - $n + 1) * (PriceOf $n $s)) }
  return 1.0 / (($rho + $n - 1) * (PriceOf $n $s))
}
function StopOf([double] $rho, [int] $cap, [int] $s, [string] $kind) {
  for ($n = 1; $n -le $cap; $n++) { if ((DensOf $rho $n $s $kind) -lt $PAR) { return $n - 1 } }
  return $cap
}

Write-Output '--- 1. the 25 lines on one scale, sorted by the first step (par = 2.956e-5) ---'
$rows = @()
foreach ($l in $lines) {
  $rho = $l[1] / $l[2]
  $kind = $(if ($l[0].EndsWith('Cooldown')) { 'shrink' } else { 'grow' })
  $stop = StopOf $rho $l[3] $l[4] $kind
  $cost = SumOf $stop $l[4]
  $ln = $(if ($kind -eq 'shrink') { [Math]::Log($rho / ($rho - $stop)) } else { [Math]::Log(1.0 + $stop / $rho) })
  $rows += [pscustomobject]@{ key = $l[0]; base = $l[1]; inc = $l[2]; cap = $l[3]; s = $l[4]; rho = $rho; kind = $kind
    d1 = (DensOf $rho 1 $l[4] $kind); stop = $stop; cost = $cost; ln = $ln; per = $ln / $cost
    capped = (SumOf $l[3] $l[4]) }
}
foreach ($r in ($rows | Sort-Object -Property d1 -Descending)) {
  Write-Output ('  ' + $r.key.PadRight(18) + ' base ' + (('{0,6:F2}' -f $r.base)) + ' +' + (('{0,5:F2}' -f $r.inc)) +
    ' s=' + (('{0,3}' -f $r.s)) + ' ; rho ' + (('{0,6:F3}' -f $r.rho)) + ' cap ' + (('{0,2}' -f $r.cap)) +
    ' stop ' + (('{0,2}' -f $r.stop)) + ' ; d1 ' + (('{0,6:F2}' -f ($r.d1 * 1e4))) + 'e-4 ; ' + (('{0,6}' -f $r.cost)) +
    ' medals ; ln ' + (('{0,6:F4}' -f $r.ln)) + ' ; ' + (('{0,5:F2}' -f ($r.per * 1e4))) + 'e-4/medal')
}

Write-Output '--- 2. the Bot+ block (five lines) ---'
$bp = $rows | Where-Object { $_.key.StartsWith('Bot+.') }
$bpCost = ($bp | Measure-Object -Property cost -Sum).Sum
$bpCap = ($bp | Measure-Object -Property capped -Sum).Sum
$bpLn = ($bp | Measure-Object -Property ln -Sum).Sum
foreach ($r in ($bp | Sort-Object -Property d1 -Descending)) {
  Write-Output ('  ' + $r.key.PadRight(18) + ' stop ' + (('{0,2}' -f $r.stop)) + ' / ' + (('{0,2}' -f $r.cap)) + ' ; ' +
    (('{0,6}' -f $r.cost)) + ' of ' + (('{0,6}' -f $r.capped)) + ' medals (' + (('{0,5:F1}' -f ($r.cost / $r.capped * 100))) +
    ' %) ; ln ' + (('{0,6:F4}' -f $r.ln)) + ' = x' + (('{0,5:F2}' -f [Math]::Exp($r.ln))) + ' ; ' +
    (('{0,5:F2}' -f ($r.per * 1e4))) + 'e-4/medal')
}
Write-Output ('  block : ' + (($bp | Measure-Object -Property stop -Sum).Sum) + ' levels / ' + $bpCost + ' medals = ' +
  (('{0,5:F1}' -f ($bpCost / $bpCap * 100))) + ' % of the capped ' + $bpCap + ' ; ln ' + (('{0,6:F3}' -f $bpLn)) +
  ' ; ' + (('{0,5:F2}' -f ($bpLn / $bpCost * 1e4))) + 'e-4/medal average ; ' + (('{0,5:F1}' -f ($bpCost / 1215))) +
  ' events F2P / ' + (('{0,5:F1}' -f ($bpCost / 2160))) + ' boosted')
Write-Output ('  the two cell lines only (BonusCells + MaximumPower) : ' +
  ((SumOf (StopOf (1.25 / 0.05) 25 50 'grow') 50) + (SumOf (StopOf (1.25 / 0.05) 20 50 'grow') 50)) +
  ' medals ; fully capped 17 500 + 11 500 = 29 000')

Write-Output '--- 3. the merged sheet: 25 lines + 5 bot unlocks, Bot+ gated behind all five ---'
$unlocked = 0; $cnt = @{}; $statKeys = @(); $bpKeys = @()
foreach ($r in $rows) { $cnt[$r.key] = 0; if ($r.key.StartsWith('Bot+.')) { $bpKeys += $r.key } else { $statKeys += $r.key } }
$unlPrice = @{ 'Golden' = 150; 'Amplify' = 300; 'Thunder' = 600; 'Flame' = 900; 'BotBot' = 1200 }
$unlDens = @{ 'Golden' = [Math]::Log(2.0) / 150; 'Amplify' = [Math]::Log(3.5) / 300; 'Thunder' = [Math]::Log(1.2) / 600;
  'Flame' = [Math]::Log(1.2) / 900; 'BotBot' = [Math]::Log(1.05) / 1200 }
$doneU = @{}; foreach ($k in $unlPrice.Keys) { $doneU[$k] = $false }
$run = 0; $tap = 0; $seq = @(); $marks = @()
while ($true) {
  $bk = 'x'; $bd = -1.0; $bp2 = 0
  foreach ($k in $unlPrice.Keys) {
    if (-not $doneU[$k]) { if ($unlDens[$k] -gt $bd) { $bd = $unlDens[$k]; $bk = 'u:' + $k; $bp2 = $unlPrice[$k] } }
  }
  $allU = $true; foreach ($k in $unlPrice.Keys) { if (-not $doneU[$k]) { $allU = $false } }
  foreach ($k in $statKeys) {
    $n = $cnt[$k] + 1; if ($n -gt ($rows | Where-Object { $_.key -eq $k })[0].cap) { continue }
    $r = $rows | Where-Object { $_.key -eq $k }
    $d = DensOf $r.rho $n $r.s $r.kind; $p = PriceOf $n $r.s
    if ($d -gt $bd) { $bd = $d; $bk = $k; $bp2 = $p }
  }
  if ($allU) {
    foreach ($k in $bpKeys) {
      $n = $cnt[$k] + 1; if ($n -gt ($rows | Where-Object { $_.key -eq $k })[0].cap) { continue }
      $r = $rows | Where-Object { $_.key -eq $k }
      $d = DensOf $r.rho $n $r.s $r.kind; $p = PriceOf $n $r.s
      if ($d -gt $bd) { $bd = $d; $bk = $k; $bp2 = $p }
    }
  }
  if ($bk -eq 'x') { break }
  if ($bd -lt $PAR) { break }
  if ($bk.StartsWith('u:')) { $doneU[$bk.Substring(2)] = $true } else { $cnt[$bk] = $cnt[$bk] + 1 }
  $tap++
  $seq += ($bk + '@' + $bp2)
  if ($bk.StartsWith('u:')) { $marks += ('  tap ' + (('{0,3}' -f $tap)) + ' ' + $bk + ' at cum ' + (('{0,7}' -f $run))) }
  else { if ($bk.StartsWith('Bot+.')) { if (-not ($marks | Where-Object { $_.StartsWith('  BpStart') })) { $marks += ('  BpStart tap ' + (('{0,3}' -f $tap)) + ' at cum ' + (('{0,7}' -f $run))) } } }
  $run += $bp2
}
Write-Output ('  ' + $tap + ' taps / ' + $run + ' medals total ; ' + (('{0,6:F1}' -f ($run / 1215))) + ' events F2P = ' +
  (('{0,5:F0}' -f ($run / 1215 * 2))) + ' weeks ; ' + (('{0,6:F1}' -f ($run / 2160))) + ' events boosted = ' +
  (('{0,5:F0}' -f ($run / 2160 * 2))) + ' weeks')
foreach ($m in $marks) { Write-Output $m }
Write-Output ('  per line : ' + (($cnt.Keys | Sort-Object | ForEach-Object { ($_ -replace 'Bot\+\.', '') + '=' + $cnt[$_] }) -join ' '))
$statRun = 0; foreach ($k in $statKeys) { $statRun += SumOf $cnt[$k] $(( $rows | Where-Object { $_.key -eq $k }).s) }
$bpRun = 0; foreach ($k in $bpKeys) { $bpRun += SumOf $cnt[$k] $(( $rows | Where-Object { $_.key -eq $k }).s) }
Write-Output ('  split : stat lines ' + $statRun + ' + Bot+ lines ' + $bpRun + ' + unlocks 3 150 = ' +
  ($statRun + $bpRun + 3150))

Write-Output '--- 4. the stone gate (6 250 stones for five Bot+ unlocks) against the T014 grid ---'
foreach ($g in @(@('Copper 23-30', 80), @('Copper 13-15', 154), @('Silver 23-30', 432), @('Gold 23-30', 1080),
                 @('Platinum 16-24', 6400), @('Champion 16-24', 20160))) {
  Write-Output ('  ' + $g[0].PadRight(16) + ' ' + (('{0,6}' -f $g[1])) + ' stones/week -> 6 250 in ' +
    (('{0,6:F1}' -f (6250 / $g[1]))) + ' weeks ; the 910-stone sync in ' + (('{0,5:F1}' -f (910 / $g[1]))) + ' weeks')
}

Write-Output '--- 5. cross-checks on the printed ladders ---'
Write-Output ('  SumOf(25,50) = ' + (SumOf 25 50) + ' (printed 17 500) ; SumOf(20,50) = ' + (SumOf 20 50) +
  ' (printed 11 500) ; SumOf(9,200) = ' + (SumOf 9 200) + ' (printed 8 100) ; SumOf(30,40) = ' + (SumOf 30 40) +
  ' ; SumOf(15,40) = ' + (SumOf 15 40))
Write-Output ('  the five Bot+ lines fully capped = ' + $bpCap + ' (printed 60 100) ; + the stat grand bill ' +
  (($rows | Where-Object { -not $_.key.StartsWith('Bot+.') } | Measure-Object -Property capped -Sum).Sum) +
  ' = ' + ($bpCap + (($rows | Where-Object { -not $_.key.StartsWith('Bot+.') } | Measure-Object -Property capped -Sum).Sum)) +
  ' (+3 150 unlocks)')
$p20 = 0; for ($i = 1; $i -le 20; $i++) { $p20 += PriceOf $i 50 }
Write-Output ('  the 20-level Bot+ price column re-adds to ' + $p20 + ' (the printed total 11 500) ; the first five levels ' +
  (((1..5) | ForEach-Object { PriceOf $_ 50 }) -join '+'))
$p9 = 0; for ($i = 1; $i -le 9; $i++) { $p9 += PriceOf $i 200 }
Write-Output ('  the Echoing Shot column 100+300+...+1700 re-adds to ' + $p9 + ' (printed 8 100)')
