param()
# Iteration 136: which of the three Event Shop lines leads, from two objectives.
# Bills/incomes (printed elsewhere): gems 114 500 (T009 1) / 3 045 per week; shards four slots to L50 = 82 380
# (T010, 20 595 per slot) / 1 470 per week, 3 570 with Daily Mission Shards L50 (T004); stones 452 282 (T025 1)
# and the staged first-year target 11 461, weekly pay per band from T014 3.3 (F2P reading a = 3.5).
$c = @(40, 65, 90, 130, 175, 230, 380, 380, 380, 380, 380, 380)   # price of the k-th trade on ONE line
$units = @{ 'stones' = 15; 'shards' = 250; 'gems' = 150 }
$keys = @('stones', 'shards', 'gems')

function Density([string] $k, [hashtable] $inc, [int] $depth) {
  return ($units[$k] / $inc[$k]) / $c[$depth]
}

Write-Output '--- 1. weeks of income to the bill (the makespan view: the largest binds) ---'
$bands = [ordered]@{ 'Copper 23-30' = 177.5; 'Copper 13-15' = 251.5; 'Silver 23-30' = 529.5; 'Gold 23-30' = 1177.5;
                     'Platinum 16-24' = 6497.5; 'Champion 16-24' = 20257.5 }
foreach ($shardInc in @(1470, 3570)) {
  Write-Output ('  shards at ' + $shardInc + '/week (' + $(if ($shardInc -eq 1470) { 'no lab' } else { 'lab L50' }) + '):')
  foreach ($b in $bands.Keys) {
    $w = @{ 'stones' = 452282 / $bands[$b]; 'shards' = 82380 / $shardInc; 'gems' = 114500 / 3045 }
    $order = $keys | Sort-Object { -$w[$_] }
    Write-Output ('    ' + $b.PadRight(15) + ' stones ' + (('{0,7:F1}' -f $w['stones'])) + ' w ; shards ' +
      (('{0,5:F1}' -f $w['shards'])) + ' w ; gems ' + (('{0,5:F1}' -f $w['gems'])) + ' w  =>  ' + ($order -join ' > '))
  }
}

Write-Output '--- 2. weeks of calendar compressed PER MEDAL (the density view, sets the order inside a round) ---'
foreach ($cfg in @(@(177.5, 1470), @(177.5, 3570), @(1177.5, 1470), @(1177.5, 3570), @(20257.5, 3570))) {
  $inc = @{ 'stones' = $cfg[0]; 'shards' = $cfg[1]; 'gems' = 3045 }
  $d = @{}
  foreach ($k in $keys) { $d[$k] = $units[$k] / $inc[$k] }          # per trade (price 1 index cancels in the order)
  $order = $keys | Sort-Object { -$d[$_] }
  Write-Output ('  stones ' + (('{0,8:F1}' -f $cfg[0])) + ' ; shards ' + (('{0,4}' -f $cfg[1])) +
    ' : w/trade  stones ' + (('{0:F4}' -f $d['stones'])) + ' ; shards ' + (('{0:F4}' -f $d['shards'])) +
    ' ; gems ' + (('{0:F4}' -f $d['gems'])) + '  =>  round order ' + ($order -join ' > '))
}

Write-Output '--- 3. the density-greedy plan (maximise weeks compressed per medal, budget in medals) ---'
function DensityPlan([double] $stoneInc, [double] $shardInc, [int] $budget) {
  $cnt = @{ 'stones' = 0; 'shards' = 0; 'gems' = 0 }
  $inc = @{ 'stones' = $stoneInc; 'shards' = $shardInc; 'gems' = 3045 }
  $spent = 0; $seq = @(); $weeks = 0.0
  while ($true) {
    $d = @{}
    foreach ($k in $keys) { $d[$k] = Density $k $inc $cnt[$k] }
    $order = $keys | Sort-Object { -$d[$_] }
    $pick = $null
    foreach ($alt in $order) { if (($spent + $c[$cnt[$alt]]) -le $budget) { $pick = $alt; break } }
    if ($null -eq $pick) { break }
    $spent += $c[$cnt[$pick]]
    $weeks += $units[$pick] / $inc[$pick]
    $cnt[$pick]++
    $seq += ($pick.Substring(0, 2) + $c[$cnt[$pick] - 1])
    if (($cnt['stones'] + $cnt['shards'] + $cnt['gems']) -ge 30) { break }
  }
  $n = $cnt['stones'] + $cnt['shards'] + $cnt['gems']
  return @{ n = $n; spent = $spent; st = $cnt['stones']; sh = $cnt['shards']; ge = $cnt['gems'];
            weeks = $weeks; seq = ($seq -join ' ') }
}
foreach ($cfg in @(
    @(177.5, 1470, 1215, 'Copper bottom, no shard lab  '),
    @(177.5, 3570, 1215, 'Copper bottom, lab L50       '),
    @(1177.5, 1470, 1355, 'Gold bottom, no shard lab    '),
    @(20257.5, 3570, 2160, 'Champion 16-24, lab L50      '))) {
  $p = DensityPlan $cfg[0] $cfg[1] $cfg[2]
  Write-Output ('  ' + $cfg[3] + ' budget ' + (('{0,5}' -f $cfg[2])) + ' -> ' + (('{0,2}' -f $p.n)) +
    ' trades for ' + (('{0,5}' -f $p.spent)) + ' medals (stones ' + $p.st + ' / shards ' + $p.sh + ' / gems ' +
    $p.ge + ') ; ge ' + (('{0,5}' -f ($p.n * 150))) + ' ; ge/medal ' + (('{0:F2}' -f ($p.n * 150 / $p.spent))) +
    ' ; calendar bought ' + (('{0:F2}' -f $p.weeks)) + ' w')
  Write-Output ('      ' + $p.seq)
}

Write-Output '--- 4. the crossover: stone weeks where the lead changes hands ---'
$shardW1470 = 82380 / 1470; $shardW3570 = 82380 / 3570; $gemW = 114500 / 3045
Write-Output ('  shards 82 380/1 470 = ' + (('{0:F1}' -f $shardW1470)) + ' w ; 82 380/3 570 = ' +
  (('{0:F1}' -f $shardW3570)) + ' w ; gems 114 500/3 045 = ' + (('{0:F1}' -f $gemW)) + ' w')
Write-Output ('  the stone line (452 282) leads while its weeks exceed the others:')
Write-Output ('    behind shards (no lab): 452 282 / W < ' + (('{0:F1}' -f $shardW1470)) + ' => W > ' +
  (('{0:F0}' -f (452282 / $shardW1470))))
Write-Output ('    behind shards (lab L50): W > ' + (('{0:F0}' -f (452282 / $shardW3570))))
Write-Output ('    behind gems:             W > ' + (('{0:F0}' -f (452282 / $gemW))))
foreach ($b in $bands.Keys) {
  $w = 452282 / $bands[$b]
  $lead = 'stones'
  if ($w -lt $shardW1470) { $lead = 'shards (no lab) / gems (lab L50)' }
  Write-Output ('  ' + $b.PadRight(15) + ' W = ' + (('{0,8:F1}' -f $bands[$b])) + ' -> stone weeks ' +
    (('{0,7:F1}' -f $w)) + ' ; leader = ' + $lead)
}

Write-Output '--- 5. sanity: what one trade buys in each currency, per unit of ladder price ---'
Write-Output ('  15 stones = 10 gems, 250 shards = 150 gems, so one trade = 150 ge at any depth;' +
  ' the depth only changes the MEDAL price (40 -> 380)')
Write-Output ('  ge/medal by trade: ' + (((1..7) | ForEach-Object { '{0:F3}' -f (150 / $c[$_ - 1]) }) -join ' '))
