param()
# Iteration 138: the four-line density system for a bot (Golden Bot's printed constants).
# Lines: Range 20 m +2 m/lv (cap 20) ; Bonus x2.0 +0.2/lv (cap 30) ; Duration 20 s +0.5/lv (cap 30) ;
#        Cooldown 120 s -3/lv (cap 15).  Price(n) = 100 + 40(n-1) = 40n + 60 on every normal line.
# Coin model: coins = kills-in-coverage x Bonus x uptime-factor  =>  relative gain per level:
#   dR(n) = 2/(18+2n)   dB(n) = 0.2/(1.8+0.2n)   dD(n) = 0.5/(19.5+0.5n)   dC(n) = 3/(123-3n)
function PriceOf([int] $n) { return 40 * $n + 60 }
function SumCostOf([int] $L) { return 20 * $L * $L + 80 * $L }
function DensR([int] $n) { return (2.0 / (18 + 2 * $n)) / (PriceOf $n) }
function DensB([int] $n) { return (0.2 / (1.8 + 0.2 * $n)) / (PriceOf $n) }
function DensD([int] $n) { return (0.5 / (19.5 + 0.5 * $n)) / (PriceOf $n) }
function DensC([int] $n) { return (3.0 / (123 - 3 * $n)) / (PriceOf $n) }

Write-Output '--- 1. the four density ladders, x10^-4 per medal, with the par line 0.296 ---'
for ($n = 1; $n -le 30; $n++) {
  $r = DensR $n; $b = DensB $n; $d = DensD $n; $c = $(if ($n -le 15) { DensC $n } else { -1 })
  $sR = $(if ($n -le 20 -and $r -ge 2.96e-5) { 'in' } elseif ($n -gt 20) { 'cap' } else { 'out' })
  $sB = $(if ($b -ge 2.96e-5) { 'in' } else { 'out' })
  $sD = $(if ($d -ge 2.96e-5 -and $n -le 30) { 'in' } else { 'out' })
  $sC = $(if ($c -lt 0) { 'cap' } elseif ($c -ge 2.96e-5) { 'in' } else { 'out' })
  Write-Output ('  n=' + (('{0,2}' -f $n)) + ' price ' + (('{0,4}' -f (PriceOf $n))) +
    ' ; Range ' + (('{0,7:F3}' -f ($r * 1e4))) + ' ' + $sR +
    ' ; Bonus ' + (('{0,7:F3}' -f ($b * 1e4))) + ' ' + $sB +
    ' ; Duration ' + (('{0,7:F3}' -f ($d * 1e4))) + ' ' + $sD +
    ' ; Cooldown ' + $(if ($c -lt 0) { '   -  ' } else { ('{0,7:F3}' -f ($c * 1e4)) }) + ' ' + $sC)
}
Write-Output ('  identity check: dR(n) = 2/(18+2n) = 1/(9+n) and dB(n) = 0.2/(1.8+0.2n) = 1/(9+n)' +
  ' -> identical for all n: ' + $(if ((DensR 7) -eq (DensB 7)) { 'YES' } else { 'NO' }))

Write-Output '--- 2. the greedy four-line plan at the par (density >= ln(1.03)/1000 = 2.96e-5) ---'
$cnt = @{ 'R' = 0; 'B' = 0; 'D' = 0; 'C' = 0 }
$caps = @{ 'R' = 20; 'B' = 30; 'D' = 30; 'C' = 15 }
$par = [Math]::Log(1.03) / 1000
$total = 0; $seq = @()
while ($true) {
  $dens = @{}
  foreach ($k in @('R', 'B', 'D', 'C')) {
    $n = $cnt[$k] + 1
    if ($n -gt $caps[$k]) { $dens[$k] = -1.0; continue }
    switch ($k) {
      'R' { $dens[$k] = DensR $n }
      'B' { $dens[$k] = DensB $n }
      'D' { $dens[$k] = DensD $n }
      'C' { $dens[$k] = DensC $n }
    }
  }
  $best = 'x'; $bd = 0
  foreach ($k in @('R', 'B', 'D', 'C')) { if ($dens[$k] -gt $bd) { $bd = $dens[$k]; $best = $k } }
  if ($bd -lt $par) { break }
  $cnt[$best]++
  $total += PriceOf $cnt[$best]
  $seq += ($best + $cnt[$best] + '@' + (PriceOf $cnt[$best]))
}
$sr = SumCostOf $cnt['R']; $sb = SumCostOf $cnt['B']; $sd = SumCostOf $cnt['D']; $sc = SumCostOf $cnt['C']
Write-Output ('  levels: R ' + $cnt['R'] + ' (cost ' + $sr + ') ; B ' + $cnt['B'] + ' (cost ' + $sb +
  ') ; D ' + $cnt['D'] + ' (cost ' + $sd + ') ; C ' + $cnt['C'] + ' (cost ' + $sc + ')')
Write-Output ('  total ' + $total + ' medals = ' + (('{0:F1}' -f ($total / 1215))) + ' events vs fully capped ' +
  (56100) + ' (' + (('{0:F1}' -f (56100 / 1215))) + ' events) => ' + (('{0:F1}' -f ($total / 56100 * 100))) + ' %')
Write-Output ('  panel values: range ' + (20 + 2 * $cnt['R']) + ' m (x' +
  (('{0:F2}' -f ((20 + 2 * $cnt['R']) / 20.0))) + ') ; bonus x' + (('{0:F1}' -f (2.0 + 0.2 * $cnt['B']))) +
  ' (x' + (('{0:F2}' -f ((2.0 + 0.2 * $cnt['B']) / 2.0))) + ') ; duration ' + (20 + 0.5 * $cnt['D']) +
  ' s ; cooldown ' + (120 - 3 * $cnt['C']) + ' s')
$u = (20 + 0.5 * $cnt['D']) / (120 - 3 * $cnt['C'])
Write-Output ('  ln(sum of the four log-gains) = ' + (('{0:F3}' -f (
    [Math]::Log((20 + 2 * $cnt['R']) / 20.0) + [Math]::Log((2.0 + 0.2 * $cnt['B']) / 2.0) +
    [Math]::Log((20 + 0.5 * $cnt['D']) / 20.0) + [Math]::Log(120.0 / (120 - 3 * $cnt['C']))))) +
  ' ; overall x' + (('{0:F2}' -f [Math]::Exp(
    [Math]::Log((20 + 2 * $cnt['R']) / 20.0) + [Math]::Log((2.0 + 0.2 * $cnt['B']) / 2.0) +
    [Math]::Log((20 + 0.5 * $cnt['D']) / 20.0) + [Math]::Log(120.0 / (120 - 3 * $cnt['C']))))) +
  ' ; per medal ' + (('{0:F2}' -f (([Math]::Log((20 + 2 * $cnt['R']) / 20.0) + [Math]::Log((2.0 + 0.2 * $cnt['B']) / 2.0) +
    [Math]::Log((20 + 0.5 * $cnt['D']) / 20.0) + [Math]::Log(120.0 / (120 - 3 * $cnt['C']))) / $total * 1e4))) + 'e-4')

Write-Output ('  greedy sequence: ' + (($seq | ForEach-Object { $_ }) -join ' '))
Write-Output '--- 3. the tower-amplification parameter A (coverage = 20 + A + 2n) ---'
foreach ($A in @(0, 10, 20, 40, 80)) {
  $d1 = (2.0 / (20 + $A)) / 100
  $d20 = (2.0 / (20 + $A + 2 * 19)) / (PriceOf 20)
  $stop = 20
  for ($n = 1; $n -le 20; $n++) { $dn = (2.0 / (20 + $A + 2 * ($n - 1))) / (PriceOf $n); if ($dn -lt 2.96e-5) { $stop = $n - 1; break } }
  Write-Output ('  A = ' + (('{0,3}' -f $A)) + ' m : level 1 density ' + (('{0:F2}' -f ($d1 * 1e4))) +
    'e-4 ; level 20 ' + (('{0:F2}' -f ($d20 * 1e4))) + 'e-4 ; the line stays above par through level ' + $stop)
}
Write-Output ('  (Bonus level 1 = 10.00e-4 and Cooldown level 1 = 2.50e-4 are the fixed reference points)')

Write-Output '--- 4. cross-checks ---'
Write-Output ('  SumCost(20) = ' + (SumCostOf 20) + ' (printed Golden Range 9 600) ; Amplify Range L18 = ' +
  (SumCostOf 18) + ' (printed 7 920) ; SumCost(24) = ' + (SumCostOf 24) + ' ; SumCost(30) = ' + (SumCostOf 30) +
  ' ; SumCost(15) = ' + (SumCostOf 15))
Write-Output ('  the four capped lines of the Golden Bot: 20 400 (B, L30) + 5 700 (C, L15) + 9 600 (R, L20) + 20 400' +
  ' (D, L30) = ' + (20400 + 5700 + 9600 + 20400) + ' (printed 56 100)')
