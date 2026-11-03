param()
# Iteration 133: the printed `List of daily missions` goal ladders (fandom `Daily Missions`, 2026-11-03).
# Each mission picks one of its `Possible goals` at random; the pay is tier-fixed, so the rung only
# changes the WORK, not the reward. This script tests the ladder shapes.
$rows = @(
  @{ n = 'Kill bosses';            g = @(1, 2, 3, 4, 5);        gate = 'none' },
  @{ n = 'Kill basic';             g = @(50, 75, 100, 150, 200); gate = 'none' },
  @{ n = 'Kill fast';              g = @(20, 35, 50);           gate = 'T2' },
  @{ n = 'Kill tank';              g = @(20, 35, 50);           gate = 'T3' },
  @{ n = 'Kill ranged';            g = @(2, 4, 6);              gate = 'T4' },
  @{ n = 'Tap floating gems';      g = @(1, 2, 3);              gate = 'none' },
  @{ n = 'Advance waves';          g = @(30, 50, 70);           gate = 'none' },
  @{ n = 'Start battles';          g = @(1);                    gate = 'none' },
  @{ n = 'Crit hits';              g = @(100, 150, 200);        gate = 'T4' },
  @{ n = 'Bounce shots';           g = @(100, 150, 200);        gate = 'WS' },
  @{ n = 'Super crit';             g = @(10, 20, 30);           gate = 'WS' },
  @{ n = 'Knockback';              g = @(40, 60, 80);           gate = 'WS' },
  @{ n = 'Orbs';                   g = @(60, 80, 100, 120);     gate = 'WS' },
  @{ n = 'Land mines';             g = @(60, 80, 100, 120);     gate = 'WS' },
  @{ n = 'Skip enemy level';       g = @(3, 5, 7, 10);          gate = 'WS' },
  @{ n = 'Buy workshop upg';       g = @(1);                    gate = 'WS' },
  @{ n = 'Buy battle upg';         g = @(10, 20, 30);           gate = 'WS' },
  @{ n = 'Chain Lightning';        g = @(25, 40, 60, 80);       gate = 'WS' },
  @{ n = 'Death Wave';             g = @(15, 25, 35, 50);       gate = 'WS' },
  @{ n = 'Poison Swamp';           g = @(60, 100, 150, 200);    gate = 'WS' },
  @{ n = 'Smart Missiles';         g = @(25, 40, 60, 80);       gate = 'WS' },
  @{ n = 'Golden Tower';           g = @(50, 75, 100, 150);     gate = 'WS' },
  @{ n = 'Chrono Field';           g = @(50, 75, 100, 150);     gate = 'WS' },
  @{ n = 'Inner Land Mines';       g = @(15, 25, 35, 50);       gate = 'WS' },
  @{ n = 'Spotlight';              g = @(15, 25, 35, 50);       gate = 'WS' },
  @{ n = 'Skip waves';             g = @(3, 5, 7, 10);          gate = 'CARD' },
  @{ n = 'Death Ray';              g = @(50, 75, 100, 150);     gate = 'CARD' },
  @{ n = 'Energy Net';             g = @(1, 2, 3, 4, 5);        gate = 'CARD' },
  @{ n = 'Demon Mode';             g = @(40, 60, 80, 100);      gate = 'CARD' },
  @{ n = 'Buy cards';              g = @(1);                    gate = 'CARD' },
  @{ n = 'Change skins';           g = @(1);                    gate = 'SKIN' },
  @{ n = 'Tournament';             g = @(1);                    gate = 'WED/SAT' }
)
Write-Output ('rows = ' + $rows.Count)

# --- 1. the gate census (pool size as gates open, in the order the tutorial reaches them) ---
Write-Output '--- gate census: rows per gate, and the cumulative pool size ---'
$order = @('none', 'T2', 'T3', 'T4', 'WS', 'CARD', 'SKIN', 'WED/SAT')
$run = 0
foreach ($g in $order) {
  $c = 0; foreach ($r in $rows) { if ($r.gate -eq $g) { $c++ } }
  $run += $c
  Write-Output ('  ' + $g.PadRight(8) + ' rows=' + (('{0,2}' -f $c)) + '  cumulative pool=' + $run +
    '  (' + ('{0:F1}' -f ($run / $rows.Count * 100)) + ' %)')
}

# --- 2. ladder-shape law: strictly increasing, piecewise arithmetic with <= 2 distinct steps ---
Write-Output '--- ladder shape test per row: n / min / max / ratio / distinct steps / arithmetic / mean vs min ---'
$arith = 0; $twoStep = 0; $fail = 0; $single = 0
$shapes = @{}
foreach ($r in $rows) {
  $g = $r.g; $n = $g.Count
  $key = ($g -join ',')
  if (-not $shapes.ContainsKey($key)) { $shapes[$key] = 0 }
  $shapes[$key] = $shapes[$key] + 1
  $sum = 0.0; foreach ($v in $g) { $sum += $v }
  $mean = $sum / $n
  if ($n -eq 1) {
    $single++
    Write-Output ('  ' + $r.n.PadRight(18) + ' n=1 min=' + $g[0] + ' single-rung')
    continue
  }
  $steps = @(); $inc = $true
  for ($i = 1; $i -lt $n; $i++) {
    $d = $g[$i] - $g[$i - 1]
    if ($d -le 0) { $inc = $false }
    $steps += $d
  }
  $uniq = @(); foreach ($s in $steps) { if (-not ($uniq -contains $s)) { $uniq += $s } }
  $isArith = ($uniq.Count -eq 1)
  if ($isArith) { $arith++ } elseif ($uniq.Count -eq 2) { $twoStep++ } else { $fail++ }
  Write-Output ('  ' + $r.n.PadRight(18) + ' n=' + $n + ' min=' + (('{0,4}' -f $g[0])) + ' max=' +
    (('{0,4}' -f $g[$n - 1])) + ' x' + ('{0:F2}' -f ($g[$n - 1] / $g[0])) +
    ' steps=' + ($steps -join '/') + ' distinct=' + $uniq.Count + $(if ($isArith) { ' ARITH' } else { ' piecewise' }) +
    ' mean=' + ('{0:F1}' -f $mean) + ' mean/min=x' + ('{0:F2}' -f ($mean / $g[0])) + $(if ($inc) { '' } else { ' NOT-INCREASING' }))
}
Write-Output ('  arithmetic=' + $arith + ' ; piecewise two-step=' + $twoStep + ' ; other=' + $fail +
  ' ; single-rung=' + $single + '  (sum=' + ($arith + $twoStep + $fail + $single) + ')')
$rungs = @{}; $hi = 0; $lo = 0
foreach ($r in $rows) {
  $n = $r.g.Count
  if (-not $rungs.ContainsKey($n)) { $rungs[$n] = 0 }
  $rungs[$n] = $rungs[$n] + 1
  if ($n -gt 1) { if ($r.g[$n - 1] / $r.g[0] -ge 3) { $hi++ } else { $lo++ } }
}
$parts = @(); foreach ($k in ($rungs.Keys | Sort-Object)) { $parts += ($k.ToString() + ' rungs x ' + $rungs[$k]) }
Write-Output ('  rung-length census: ' + ($parts -join ' ; '))
Write-Output ('  multi-rung ladders with max/min >= 3 : ' + $hi + ' ; with max/min < 3 : ' + $lo +
  '  (of ' + ($hi + $lo) + ')')
Write-Output '--- distinct ladder shapes (the compact library), with multiplicities ---'
foreach ($k in ($shapes.Keys | Sort-Object { -$shapes[$_] })) {
  Write-Output ('  ' + (('{0,2}' -f $shapes[$k])) + ' x  ' + $k)
}
Write-Output ('  distinct shapes = ' + $shapes.Count + ' for ' + $rows.Count + ' rows')

# --- 3. the printed tier table: fandom cells vs the Hub cells already in T004 (T1 shard diff) ---
$shard = @(1, 3, 5, 8, 12, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100, 105)
$bad = 0
for ($t = 7; $t -le 24; $t++) { if ((5 * $t - 15) -ne $shard[$t - 1]) { $bad++ } }
Write-Output ('--- shard law 5t - 15 for t >= 7 : failing rows = ' + $bad + ' (of 18)')
$steps = @(); for ($t = 2; $t -le 6; $t++) { $steps += ($shard[$t - 1] - $shard[$t - 2]) }
Write-Output ('  T1 cell = ' + $shard[0] + ' ; head steps T1->T6 = ' + ($steps -join '/') +
  ' then +5 from T6 -> the head is not arithmetic')
Write-Output ('  box-gate law: stones need Tournaments (T1 W60), medals need Events (T1 W70), tokens need Guilds (T3 W10)' +
  ' -> a pre-T3 player sees 45 stones only from W60/W70 onward and 0 tokens before T3 W10')
