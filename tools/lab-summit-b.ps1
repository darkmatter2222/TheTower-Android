param()
# Iteration 117 (part b): the cheap/q-scale split, and the cell price of the whole UW lab layer.
$cheapCoins = 124.85e9 + 34.39e9 + 4.40e9 + 34.38e9 + 6.65e12 + 265.93e12 + 820.53e6 + 92.00e9 + 15.00e9 +
  550.00e9 + 116.24e9 + 750000 + 116.24e9 + 34.38e9 + 950000 + 356.52e9 + 4.32e9 + 34.38e9 + 34.38e9 +
  250.00e6 + 12.94e9 + 124.86e9 + 900000 + 12.95e9 + 1500000 + 59.01e6 + 14.43e12 + 12.94e9 + 700000 +
  12.94e9 + 12.94e9 + 7.49e12 + 22.25e9 + 92.00e9
$cheapClock = 466.6 + 214.1 + 165.7 + 197.4 + 233.5 + 283.2 + 36.8 + 214.1 + 17.36 + 28.94 + 825.4 + 0.69 +
  825.4 + 197.4 + 1.0 + 916.1 + 65.2 + 197.4 + 197.4 + 13.90 + 157.8 + 445.7 + 0.93 + 173.5 + 6.67 + 19.8 +
  120.0 + 157.8 + 0.83 + 157.8 + 157.8 + 123.1 + 243.6 + 214.1
$grand = 1.4011e18
Write-Output ('cheap 34 lines: coins = ' + ('{0:G6}' -f $cheapCoins) + ' = ' +
  [Math]::Round($cheapCoins / 1e12, 1) + ' T ; clock = ' + [Math]::Round($cheapClock, 1) + ' d = ' +
  [Math]::Round($cheapClock / 365.0, 1) + ' y single-slot = ' + [Math]::Round($cheapClock / 5.0 / 365.0, 2) +
  ' y at 5 slots')
Write-Output ('  share of the grand coin bill = ' + [Math]::Round($cheapCoins / 1.4011e18 * 100, 3) + ' %')
Write-Output ('  at 700 T/day = ' + ('{0:G5}' -f ($cheapCoins / 700e12)) + ' days')
# q-scale side
$qCoins = 4 * 38.34e15 + 1247.44e15
$qClock = 4 * 2011.1 + 916.7
Write-Output ('q lines (5): coins = ' + ('{0:G6}' -f $qCoins) + ' clock = ' + [Math]::Round($qClock, 1) +
  ' d = ' + [Math]::Round($qClock / $grand, 1) + ' (placeholder)')
Write-Output ('  clock share of the q lines = ' + [Math]::Round($qClock / 16038.1 * 100, 1) +
  ' % ; coin share = ' + [Math]::Round($qCoins / 1.4011e18 * 100, 2) + ' %')
Write-Output ('  Chrono Jump vs the four L-IV lines = ' + [Math]::Round(1247.44 / (4 * 38.34), 3) + 'x')
# the two closure checks: grand = cheap + q
Write-Output ('  closure: cheap + q = ' + ('{0:G6}' -f ($cheapCoins + $qCoins)) + ' vs 1.4011E+18')
Write-Output ('  closure clock: ' + [Math]::Round($cheapClock + $qClock, 1) + ' vs 16038.1')
# cell price of the whole layer at x1.5 (30 cells per skipped hour)
foreach ($tot in @(@(16038.1, 'whole layer'), @($cheapClock, 'cheap 34'), @($qClock, 'q five'))) {
  $h = $tot[0] * 24
  $skipped = $h * (1 - 1 / 1.5)
  $cells = $skipped * 30
  Write-Output ($tot[1] + ': ' + [Math]::Round($h, 0) + ' h -> skipped ' + [Math]::Round($skipped, 0) +
    ' h -> ' + ('{0:G5}' -f $cells) + ' cells = ' + ('{0:G4}' -f ($cells / 1000.0)) + ' d at 1 000/day = ' +
    ('{0:G4}' -f ($cells / 1000.0 / 365.0)) + ' y ; at 1 800/day = ' + ('{0:G4}' -f ($cells / 1800.0)) + ' d')
}
# the ratio that names the binding constraint
Write-Output ('binding constraint: coins 2 001.6 d vs cells 3 849 d at 1 000/day -> cells/coins = ' +
  [Math]::Round(3849.0 / 2001.6, 2))
