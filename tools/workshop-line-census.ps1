param([string]$File, [int]$Line = 0)
# Census of the workshop per-stat line tables (`Level | Value | Cost | Total Cost`) on the wiki/workshop/* pages.
# Per table it prints: rows, the first row, the last row, the value law, the cost ratio of the first steps,
# whether the Total Cost column is a prefix sum (cumulative) or equals the level's own price (per level),
# the sum of the Cost column, and coins per value unit over the first ten levels.
function NumOf([string]$t) {
  $t = $t.Trim() -replace '^\+', '' -replace 'x$', '' -replace 'X$', '' -replace '%$', ''
  if ($t -notmatch '^([-.\d]+)([KMBTqQsSO])?$') {
    # `0.65s` style seconds prints: the trailing s is a unit, not the 10^21 suffix
    $t = $t -replace 's$', ''
    if ($t -notmatch '^([-.\d]+)([KMBTqQsSO])?$') { return $null }
  }
  $m = [regex]::Match($t, '^([-.\d]+)([KMBTqQsSO])?$')
  $v = [double]$m.Groups[1].Value
  if ($m.Groups[2].Success) {
    $e = 0
    switch -casesensitive ($m.Groups[2].Value) {
      'K' { $e = 3 } 'M' { $e = 6 } 'B' { $e = 9 } 'T' { $e = 12 } 'q' { $e = 15 }
      'Q' { $e = 18 } 's' { $e = 21 } 'S' { $e = 24 } 'O' { $e = 27 }
    }
    $v *= [math]::Pow(10, $e)
  }
  return $v
}
$L = Get-Content $File
$page = ''
$ti = 0
for ($i = 0; $i -lt $L.Count; $i++) {
  $s = $L[$i]
  if ($s.StartsWith('=====')) { $page = $s.Substring(6).Trim(); $ti = 0; Write-Output ('== ' + $page); continue }
  if (-not $s.StartsWith('ROWS:')) { continue }
  $ti++
  $prev = $L[$i - 1]
  if (-not ($prev.Contains('"Level","Value","Cost","Total Cost"') -or $prev.Contains('"Level","Value","Coins","Total Coins"'))) { continue }
  if ($Line -gt 0 -and $ti -ne $Line) { continue }
  $rowMatches = [regex]::Matches($s.Substring(6).Trim(), '\["(.*?)"\]')
  $n = 0; $sumC = 0.0; $levels = @(); $vals = @(); $costs = @(); $totals = @()
  foreach ($rm in $rowMatches) {
    $cells = @($rm.Groups[1].Value -split '","')
    $n++
    $lv = NumOf ($cells[0] -replace ',', '')
    $vv = NumOf (($cells[1] -replace ',', '') -replace '^[xX]', '')
    $cc = NumOf ($cells[2] -replace ',', '')
    $tt = NumOf ($cells[3] -replace ',', '')
    $levels += $lv; $vals += $vv; $costs += $cc; $totals += $tt
    if ($null -ne $cc) { $sumC += $cc }
  }
  # value law: arithmetic?
  $vsteps = @()
  for ($k = 1; $k -lt $vals.Count; $k++) {
    if ($null -ne $vals[$k] -and $null -ne $vals[$k - 1]) { $vsteps += [math]::Round($vals[$k] - $vals[$k - 1], 5) }
  }
  $vuniq = @($vsteps | Select-Object -Unique)
  $vlaw = 'n/a'
  if ($vuniq.Count -eq 1) { $vlaw = 'step ' + $vuniq[0] } elseif ($vuniq.Count -gt 1) { $vlaw = 'non-arith (' + (($vuniq | Select-Object -First 3) -join ',') + ')' }
  # level spacing
  $lsteps = @()
  for ($k = 1; $k -lt $levels.Count; $k++) {
    if ($null -ne $levels[$k] -and $null -ne $levels[$k - 1]) { $lsteps += [int]($levels[$k] - $levels[$k - 1]) }
  }
  $lspace = 'n/a'; if (@($lsteps | Select-Object -Unique).Count -eq 1) { $lspace = 'every ' + ($lsteps | Select-Object -First 1) }
  # cost ratios
  $ratios = @()
  for ($k = 1; $k -lt [Math]::Min(4, $costs.Count); $k++) {
    if ($null -ne $costs[$k] -and $null -ne $costs[$k - 1] -and $costs[$k - 1] -ne 0) { $ratios += ('{0:0.000}' -f ($costs[$k] / $costs[$k - 1])) }
  }
  # prefix-sum test on the dense head of the table
  $pref = 'n/a'
  if ($n -ge 4 -and ($lspace -eq 'every 1' -or $lspace -eq 'every 10')) {
    $ok = 0; $tot = 0
    for ($k = 2; $k -le [Math]::Min(6, $costs.Count - 1); $k++) {
      if ($null -ne $costs[$k] -and $null -ne $totals[$k] -and $null -ne $totals[$k - 1] -and $null -ne $costs[$k - 1]) {
        $tot++
        $expect = $totals[$k - 1] + $costs[$k]
        if ([math]::Abs($expect - $totals[$k]) / [Math]::Max(1.0, $totals[$k]) -lt 0.01) { $ok++ }
      }
    }
    $pref = 'cumulative ' + $ok + '/' + $tot
  }
  # geometric mean of the per-level cost ratio, from the first and last printed prices
  $geo = 'n/a'
  if ($n -ge 3 -and $null -ne $costs[0] -and $null -ne $costs[$costs.Count - 1] -and $costs[0] -gt 0) {
    $span = $levels[$levels.Count - 1] - $levels[0]
    if ($span -gt 0) { $geo = '{0:0.0000}' -f [math]::Pow($costs[$costs.Count - 1] / $costs[0], 1.0 / $span) }
  }
  # bill over the first ten levels (dense tables only): prefix through the row whose level is 10
  $bill10 = 'n/a'
  if ($lspace -eq 'every 1') {
    for ($k = 0; $k -lt $levels.Count; $k++) {
      if ($levels[$k] -eq 10 -and $null -ne $totals[$k]) { $bill10 = ('{0:0.####E0}' -f $totals[$k]); break }
    }
  }
  Write-Output ('  table ' + $ti + ' | rows=' + $n + ' | level space=' + $lspace +
    ' | L1 ' + $rowMatches[0].Groups[1].Value +
    ' | last ' + $rowMatches[$rowMatches.Count - 1].Groups[1].Value +
    ' | value: ' + $vlaw + ' | cost ratios ' + (($ratios | Select-Object -First 3) -join '/') +
    ' | ' + $pref + ' | geoRatio=' + $geo + ' | bill@L10=' + $bill10 + ' | SumCost=' + ('{0:0.####E0}' -f $sumC))
}
