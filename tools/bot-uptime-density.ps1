param()
# Iteration 137: the bot uptime density ladder.
# U = Duration / Cooldown (the site's own model: "on for Duration out of every Cooldown").
# Medal lines: Duration +0.5 s/level, Cooldown -3 s/level, price(n) = 100 + 40(n-1) = 40n + 60 on every normal stat line.
# Relative gain of a level is separable: dD level n = 0.5 / D(n-1) ; dC level n = 3 / C(n-1).
function PriceOf([int] $n) { return 40 * $n + 60 }
function SumCostOf([int] $L) { return 20 * $L * $L + 80 * $L }

Write-Output '--- 1. per-level relative uptime gain and density, Golden-style base D=20 C=120 ---'
$D = 20.0; $C = 120.0
for ($n = 1; $n -le 15; $n++) {
  $gD = 0.5 / ($D + 0.5 * ($n - 1))
  $gC = 3.0 / ($C - 3.0 * ($n - 1))
  $p = PriceOf $n
  Write-Output ('  level ' + (('{0,2}' -f $n)) + '  price ' + (('{0,5}' -f $p)) +
    ' ; dD 0.5/' + (('{0,5:F1}' -f ($D + 0.5 * ($n - 1)))) + ' = ' + (('{0:F5}' -f $gD)) +
    ' dens ' + (('{0:F3}' -f ($gD / $p * 1e4))) + 'e-4' +
    ' ; dC 3/' + (('{0,3:F0}' -f ($C - 3.0 * ($n - 1)))) + ' = ' + (('{0:F5}' -f $gC)) +
    ' dens ' + (('{0:F3}' -f ($gC / $p * 1e4))) + 'e-4' +
    ' ; dC/dD = ' + (('{0:F3}' -f ($gC / $gD))))
}

Write-Output '--- 2. the greedy interleave for one bot (levels until the budget dies) ---'
function GreedyU([double] $d0, [double] $c0, [int] $Ld, [int] $Lc, [int] $budget) {
  $nd = 0; $nc = 0; $spent = 0; $seq = @()
  while ($true) {
    $gD = 0.5 / ($d0 + 0.5 * $nd) / (PriceOf ($nd + 1))
    $gC = 3.0 / ($c0 - 3.0 * $nc) / (PriceOf ($nc + 1))
    $pickD = $gD -ge $gC
    if ($pickD -and $nd -ge $Ld) { $pickD = $false }
    if ((-not $pickD) -and $nc -ge $Lc) { $pickD = $true }
    if ($nd -ge $Ld -and $nc -ge $Lc) { break }
    $price = PriceOf $(if ($pickD) { $nd + 1 } else { $nc + 1 })
    if (($spent + $price) -gt $budget) {
      $alt = -not $pickD
      $altPrice = PriceOf $(if ($alt) { $nd + 1 } else { $nc + 1 })
      $altCap = $(if ($alt) { $Ld } else { $Lc })
      $altN = $(if ($alt) { $nd } else { $nc })
      if ($altN -lt $altCap -and ($spent + $altPrice) -le $budget) { $pickD = $alt; $price = $altPrice }
      else { break }
    }
    $spent += $price
    if ($pickD) { $nd++; $seq += ('D' + $nd + '@' + $price) } else { $nc++; $seq += ('C' + $nc + '@' + $price) }
  }
  $u = ($d0 + 0.5 * $nd) / ($c0 - 3.0 * $nc)
  return @{ nd = $nd; nc = $nc; spent = $spent; u = $u; u0 = $d0 / $c0; seq = ($seq -join ' ') }
}
foreach ($cfg in @(
    @(20.0, 120.0, 30, 15, 1215, 'Golden / Amplify / Bot Bot'),
    @(20.0, 120.0, 30, 15, 3000, 'Golden / Amplify / Bot Bot'),
    @(5.0, 120.0, 20, 15, 1215, 'Thunder'),
    @(5.0, 120.0, 20, 15, 3000, 'Thunder'))) {
  $g = GreedyU $cfg[0] $cfg[1] $cfg[2] $cfg[3] $cfg[4]
  Write-Output ('  ' + $cfg[5].PadRight(27) + ' budget ' + (('{0,5}' -f $cfg[4])) + ' : ' + (('{0,2}' -f ($g.nd + $g.nc))) +
    ' levels for ' + (('{0,6}' -f $g.spent)) + ' medals (D ' + $g.nd + ' / C ' + $g.nc + ')' +
    ' ; uptime ' + (('{0:F3}' -f ($g.u0 * 100))) + ' % -> ' + (('{0:F3}' -f ($g.u * 100))) + ' % = x' +
    (('{0:F3}' -f ($g.u / $g.u0))) + ' ; ln/medal = ' + (('{0:F2}' -f ([Math]::Log($g.u / $g.u0) / $g.spent * 1e4))) + 'e-4')
  Write-Output ('      ' + $g.seq)
}

Write-Output '--- 3. the full-line totals per bot (both medal lines capped) and the ln gain per medal ---'
$bots = @(
  @('Golden  ', 20.0, 120.0, 30, 15),
  @('Amplify ', 20.0, 120.0, 30, 15),
  @('Bot Bot ', 20.0, 120.0, 30, 15),
  @('Thunder ', 5.0, 120.0, 20, 15),
  @('Flame  C', 75.0, 75.0, 0, 15)
)
foreach ($b in $bots) {
  $d = $b[1] + 0.5 * $b[3]; $c = $b[2] - 3.0 * $b[4]
  $u0 = $b[1] / $b[2]; $u1 = $d / $c
  $cost = (SumCostOf $b[3]) + (SumCostOf $b[4])
  $per = [Math]::Log($u1 / $u0) / $cost
  Write-Output ('  ' + $b[0] + ' D ' + (('{0,4:F1}' -f $b[1])) + ' -> ' + (('{0,4:F1}' -f $d)) + ' ; C ' +
    (('{0,3:F0}' -f $b[2])) + ' -> ' + (('{0,3:F0}' -f $c)) + ' ; U ' + (('{0,6:F2}' -f ($u0 * 100))) + ' % -> ' +
    (('{0,6:F2}' -f ($u1 * 100))) + ' % = x' + (('{0:F2}' -f ($u1 / $u0))) + ' ; medals ' + (('{0,6}' -f $cost)) +
    ' (events ' + (('{0,5:F1}' -f ($cost / 1215))) + ') ; ' + (('{0:F2}' -f ($per * 1e4))) + 'e-4 /medal')
}
Write-Output ('  reference (cosmetics, T013 2): +3.0 pp for 1 000 medals => ln(1.03)/1000 = ' +
  (('{0:F2}' -f ([Math]::Log(1.03) / 1000 * 1e4))) + 'e-4 /medal ; the shop ladder pays 150 ge at price 40 = 3.750 ge/medal')

Write-Output '--- 3b. per-LINE decomposition (the decision-ready ranking) ---'
$lines = @(
  @('Flame   Cooldown (75 -> 30 s)   ', 30.0, 75.0, 5700),
  @('Thunder Duration  (5 -> 15 s)   ', 5.0, 15.0, 9600),
  @('Golden  Cooldown (120 -> 75 s)  ', 75.0, 120.0, 5700),
  @('Amplify Cooldown (120 -> 75 s)  ', 75.0, 120.0, 5700),
  @('Bot Bot Cooldown (120 -> 75 s)  ', 75.0, 120.0, 5700),
  @('Thunder Cooldown (120 -> 75 s)  ', 75.0, 120.0, 5700),
  @('Cosmetics theme+bg+songs        ', 1.0, 1.03, 1000),
  @('Golden  Duration (20 -> 35 s)   ', 20.0, 35.0, 20400),
  @('Amplify Duration (20 -> 35 s)   ', 20.0, 35.0, 20400),
  @('Bot Bot Duration (20 -> 35 s)   ', 20.0, 35.0, 20400)
)
foreach ($l in $lines) {
  $mult = $l[2] / $l[1]
  $per = [Math]::Log($mult) / $l[3]
  Write-Output ('  ' + $l[0] + ' x' + (('{0,5:F3}' -f $mult)) + ' for ' + (('{0,6}' -f $l[3])) +
    ' medals => ' + (('{0:F2}' -f ($per * 1e4))) + 'e-4 /medal')
}
Write-Output ('  first-five-level check, cooldown line: 900 medals of 5 700 for 15 s of the 45 s cut => x' +
  (('{0:F3}' -f (120.0 / 105.0))) + ' => ' + (('{0:F2}' -f ([Math]::Log(120.0 / 105.0) / 900 * 1e4))) + 'e-4 /medal')
Write-Output ('  last-five-level check, cooldown line: ' + (((11..15) | ForEach-Object { 40 * $_ + 60 }) | Measure-Object -Sum).Sum +
  ' medals for 90 -> 75 s => x' + (('{0:F3}' -f (90.0 / 75.0))) + ' => ' +
  (('{0:F2}' -f ([Math]::Log(90.0 / 75.0) / (((11..15) | ForEach-Object { 40 * $_ + 60 }) | Measure-Object -Sum).Sum * 1e4))) + 'e-4 /medal')

Write-Output '--- 6. stop levels against the cosmetic numeraire (3.0e-5 relative per medal) ---'
$par = [Math]::Log(1.03) / 1000
for ($n = 1; $n -le 30; $n++) {
  $dD = (0.5 / (19.5 + 0.5 * $n)) / (40 * $n + 60)
  $dC = $null
  if ($n -le 15) { $dC = (3.0 / (123 - 3 * $n)) / (40 * $n + 60) }
  $sD = $(if ($dD -ge $par) { 'above par' } else { 'below' })
  $sC = $(if ($null -eq $dC) { 'capped' } elseif ($dC -ge $par) { 'above par' } else { 'below' })
  Write-Output ('  level ' + (('{0,2}' -f $n)) + ' : D ' + (('{0:F3}' -f ($dD * 1e4))) + 'e-4 ' + $sD.PadRight(10) +
    ' ; C ' + $(if ($null -eq $dC) { '  -   ' } else { ('{0:F3}' -f ($dC * 1e4)) }) + 'e-4 ' + $sC)
}
Write-Output ('  par = ln(1.03)/1000 = ' + (('{0:F3}' -f ($par * 1e4))) + 'e-4 per medal')

Write-Output '--- 4. cross-checks on the closed forms ---'
Write-Output ('  SumCost(30) = ' + (SumCostOf 30) + ' (printed 20 400) ; SumCost(15) = ' + (SumCostOf 15) +
  ' (printed 5 700) ; SumCost(20) = ' + (SumCostOf 20) + ' (printed 9 600) ; SumCost(18) = ' + (SumCostOf 18) +
  ' (printed 7 920) ; SumCost(25) = ' + (SumCostOf 25))
$p5 = 0; for ($i = 1; $i -le 5; $i++) { $p5 += PriceOf $i }
Write-Output ('  first five cooldown levels 100+140+180+220+260 = ' + $p5 +
  ' (the 100 s sync divisor = 5 medal levels)')
$g1 = GreedyU 20.0 120.0 30 15 10000000
Write-Output ('  Golden capped both lines: D ' + $g1.nd + ' C ' + $g1.nc + ' ; U = 35/75 = ' +
  (('{0:F3}' -f ($g1.u * 100))) + ' % ; spent ' + $g1.spent + ' medals')
