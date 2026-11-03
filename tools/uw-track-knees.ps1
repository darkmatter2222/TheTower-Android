param([string]$File = 'C:\Users\ryans\AppData\Local\Temp\opencode\s96c.txt', [int]$Block = 5, [switch]$Csv)
# Parses the "Workshop - Basic Upgrades" tables out of a fetch-hub.ps1 payload dump of the nine
# `wiki/uw/<name>` pages (tools/fetch-hub.ps1 output). For every (value, cost) column pair it prints
# the level count, the printed `Total` vs the column sum, the marginal per-level increments and the
# per-block cost + stones-per-value-unit, so the knee of every line can be read off without
# hand-adding. Then it groups the tracks whose marginal ladders agree cell for cell.
# Law used (verified 9/9 in T008 §2): the cost columns are per-level increments, the first cell is
# level 0 (cost 0), the trailing row is `Total`, so levels = numeric cells - 2.

function Get-Num([string]$s) {
  if ([string]::IsNullOrEmpty($s)) { return $null }
  $t = $s -replace '[^0-9.]', ''
  if ($t -eq '') { return $null }
  return [double]$t
}

$txt = Get-Content -Raw -LiteralPath $File
$all = @()
foreach ($p in ($txt -split '=====')) {
  if ($p.Trim() -eq '') { continue }
  $pageName = (($p -split "`r?`n")[0].Trim()) -replace '^uw/', ''
  $pairs = [regex]::Matches($p, 'HDR:\s*(.+?)\r?\nROWS:\s*(.+)')
  foreach ($m in $pairs) {
    $hdr = (($m.Groups[1].Value.Trim() -replace '^"|"$', '') -split '","') -replace '"', ''
    $rowMatches = [regex]::Matches($m.Groups[2].Value, '\[([^\]]*)\]')
    if ($rowMatches.Count -lt 3) { continue }
    $rows = foreach ($r in $rowMatches) { (($r.Groups[1].Value -replace '^"|"$', '') -split '","') -replace '"', '' }
    $cols = $hdr.Count
    # a basic-upgrades table = even column count, paired (value, cost) headers, trailing `Total` row
    if ($cols -lt 4 -or ($cols % 2) -ne 0) { continue }
    if ($rows[($rowMatches.Count - 1) * $cols] -notlike 'Total*') { continue }
    $isStat = $true
    for ($c = 1; $c -lt $cols; $c += 2) { if ($hdr[$c] -notmatch 'Cost|Stone') { $isStat = $false } }
    if (-not $isStat) { continue }
    for ($c = 0; $c + 1 -lt $cols; $c += 2) {
      if ($hdr[$c + 1] -notmatch '^(Cost|Stone?s?\s*\()') { continue }
      $track = ($hdr[$c + 1] -replace '^Stone?s?\s*\((.*)\)$', '$1')
      if ($track -eq 'Cost') { $track = ($hdr[$c] -replace '\|', '/') }
      $vals = @(); $stones = @(); $printed = $null; $totalRow = -1
      for ($r = 0; $r -lt $rowMatches.Count; $r++) { if ($rows[$r * $cols] -like 'Total*') { $totalRow = $r } }
      if ($totalRow -ge 0) { $printed = Get-Num $rows[$totalRow * $cols + $c + 1] }
      for ($r = 0; $r -lt $rowMatches.Count; $r++) {
        if ($rows[$r * $cols] -like 'Total*') { break }
        $v = $rows[$r * $cols + $c]
        $st = $rows[$r * $cols + $c + 1]
        if ($st -match '^[\d,\.]+$') { $vals += $v; $stones += [double]($st -replace ',', '') } else { break }
      }
      if ($stones.Count -lt 3) { continue }
      $n = $stones.Count - 1
      $sum = ($stones | Measure-Object -Sum).Sum
      $all += [pscustomobject]@{
        page = $pageName; track = $track; n = $n; sum = $sum; printed = $printed
        v0 = (Get-Num $vals[0]); vn = (Get-Num $vals[$vals.Count - 1]); vals = @($vals)
        inc = @($stones[1..$n])
      }
    }
  }
}

if ($Csv) {
  foreach ($o in $all) { Write-Output ("{0}`t{1}`t{2}`t{3}`t{4}`t{5}`t{6}`t{7}" -f `
      $o.page, $o.track, $o.n, $o.sum, $o.printed, $o.v0, $o.vn, ($o.inc -join ' ')) }
  return
}

foreach ($o in $all) {
  Write-Output ("== {0} / {1,-9} levels {2,-3} sum {3,-8} printed {4,-8} match {5}   value {6} -> {7}" -f `
    $o.page, $o.track, $o.n, $o.sum, $o.printed, ($o.sum -eq $o.printed), $o.v0, $o.vn)
  Write-Output ('     marg 1..' + $o.n + ': ' + (($o.inc) -join ' '))
  $bl = @()
  for ($lo = 1; $lo -le $o.n; $lo += $Block) {
    $hi = [math]::Min($lo + $Block - 1, $o.n)
    $cost = 0.0; for ($k = $lo; $k -le $hi; $k++) { $cost += $o.inc[$k - 1] }
    $cum = 0.0; for ($k = 1; $k -le $hi; $k++) { $cum += $o.inc[$k - 1] }
    $va = Get-Num $o.vals[$hi]; $vb = Get-Num $o.vals[$lo - 1]
    $dv = 'n/a'; $per = 'n/a'
    if ($null -ne $va -and $null -ne $vb) {
      $dv = [math]::Abs($va - $vb)
      if ($dv -ne 0) { $per = ('{0:0.###}' -f ($cost / $dv)) }
    }
    $bl += ("L{0}-{1} dv {2} cost {3} cum {4} st/u {5}" -f $lo, $hi, $dv, $cost, $cum, $per)
  }
  Write-Output ('     ' + ($bl -join "`r`n     "))
}

Write-Output ''
Write-Output '== summary (one line per track: levels, total, cum at 5/10/15, marginal stones-per-unit, doubling knee)'
foreach ($o in $all) {
  $cumAt = { param($k) $s = 0.0; for ($i = 0; $i -lt [math]::Min($k, $o.n); $i++) { $s += $o.inc[$i] }; $s }
  # marginal stones per unit of value at level k: cost(k) / (value(k) - value(k-1))
  $mPer = { param($k) $va = Get-Num $o.vals[$k]; $vb = Get-Num $o.vals[$k - 1]
    if ($null -eq $va -or $null -eq $vb -or ($va - $vb) -eq 0) { 0 } else { [math]::Abs($o.inc[$k - 1] / ($va - $vb)) } }
  $p1 = & $mPer 1
  $knee2 = $o.n
  for ($k = 2; $k -le $o.n; $k++) { if ($p1 -ne 0 -and (& $mPer $k) -gt 2 * $p1) { $knee2 = $k; break } }
  $last = & $mPer $o.n
  $rat = 'n/a'; if ($p1 -ne 0) { $rat = ('{0:0.0}' -f ($last / $p1)) }
  # arithmetic head: constant second difference from level 2
  $d = $o.inc[1] - $o.inc[0]; $h = 2
  for ($k = 2; $k -lt $o.n; $k++) { if (($o.inc[$k] - $o.inc[$k - 1]) -eq $d) { $h = $k + 1 } else { break } }
  $headSum = 0.0; for ($k = 0; $k -lt $h; $k++) { $headSum += $o.inc[$k] }
  Write-Output ('  {0,-16} {1,-16} n={2,-3} sum={3,-7} c5={4,-6} c10={5,-6} c15={6,-6} m1={7,-8} m5={8,-8} m15={9,-8} mLast={10,-9} x{11,-6} 2x-knee L{12}   head +{13} x{14} (sum {15}, {16})' -f `
    $o.page, $o.track, $o.n, $o.sum, (& $cumAt 5), (& $cumAt 10), (& $cumAt 15), ('{0:0.##}' -f $p1), ('{0:0.##}' -f (& $mPer ([math]::Min(5, $o.n)))), `
    ('{0:0.##}' -f (& $mPer ([math]::Min(15, $o.n)))), ('{0:0.##}' -f $last), $rat, $knee2, $d, $h, $headSum, ('{0:0.###}' -f ($headSum / [math]::Max(1, $o.sum))))
}

Write-Output ''
Write-Output '== layer totals (27 lines)'
$g5 = 0.0; $g10 = 0.0; $g15 = 0.0; $gSum = 0.0
foreach ($o in $all) {
  $cum = 0.0; $c5 = 0.0; $c10 = 0.0; $c15 = 0.0
  for ($k = 1; $k -le $o.n; $k++) {
    $cum += $o.inc[$k - 1]
    if ($k -le 5) { $c5 += $o.inc[$k - 1] }
    if ($k -le 10) { $c10 += $o.inc[$k - 1] }
    if ($k -le 15) { $c15 += $o.inc[$k - 1] }
  }
  $gSum += $o.sum; $g5 += $c5; $g10 += $c10; $g15 += $c15
  Write-Output ('  {0,-16} all={1,-8} first5={2,-7} first10={3,-7} first15={4,-7}' -f $o.page, $cum, $c5, $c10, $c15)
}
Write-Output ('  TOTAL 27 lines: all={0} first5={1} first10={2} first15={3}' -f $gSum, $g5, $g10, $g15)

Write-Output ''
Write-Output '== value-row law check: arithmetic rows must satisfy n = (max - min) / step'
foreach ($o in $all) {
  $v = foreach ($x in $o.vals) { Get-Num $x }
  $d = $v[1] - $v[0]; $arith = $true
  for ($k = 2; $k -lt $v.Count; $k++) { if ([math]::Abs(($v[$k] - $v[$k - 1]) - $d) -gt 1e-9) { $arith = $false; break } }
  if (-not $arith) { Write-Output ('  {0,-16} {1,-16} geometric value row (n={2}) - needs the printed cells' -f $o.page, $o.track, $o.n); continue }
  $pred = [math]::Round((($v[$o.n] - $v[0]) / $d), 6)
  Write-Output ('  {0,-16} {1,-16} step {2,-6} min {3,-8} max {4,-9} predicted n = {5,-4} printed n = {6,-4} {7}' -f `
    $o.page, $o.track, $d, $v[0], $v[$o.n], $pred, $o.n, $(if ($pred -eq $o.n) { 'OK' } else { 'MISMATCH' }))
}

Write-Output ''
Write-Output '== second source: wiki/uw/ultimate-weapons effect table (min/max) vs the parsed value rows'
# Printed on the index page as `1st/2nd/3rd Effect` + `Min` + `Max` (fetched 2026-11-02).
$idx = @{
  'black-hole|Size'             = @(30, 70); 'black-hole|Duration' = @(15, 38); 'black-hole|Cooldown' = @(200, 50)
  'chain-lightning|Damage'      = @(2, 7961); 'chain-lightning|Quantity' = @(1, 5); 'chain-lightning|Chance' = @(5.0, 27.5)
  'chrono-field|Duration'       = @(5, 40); 'chrono-field|Slow' = @(20, 75); 'chrono-field|Cooldown' = @(180, 60)
  'death-wave|Damage'           = @(2, 9119); 'death-wave|Effect Wave Quantity' = @(1, 5); 'death-wave|Cooldown' = @(300, 50)
  'golden-tower|Multiplier'     = @(5.0, 21.0); 'golden-tower|Duration' = @(15, 53); 'golden-tower|Cooldown' = @(300, 100)
  'inner-land-mines|Damage'     = @(10, 9219);
  'inner-land-mines|Quantity'   = @(3, 6); 'inner-land-mines|Cooldown' = @(200, 50)
  'poison-swamp|Damage'         = @(10, 9219); 'poison-swamp|Duration' = @(30, 100); 'poison-swamp|Cooldown' = @(125, 50)
  'smart-missiles|Damage'       = @(10, 9219); 'smart-missiles|Quantity' = @(5, 20); 'smart-missiles|Cooldown' = @(180, 20)
  'spotlight|Bonus'             = @(8.0, 50.0); 'spotlight|Angle' = @(30, 90); 'spotlight|Quantity' = @(1, 4)
}
$nm = 0; $okc = 0
foreach ($o in $all) {
  $key = ($o.page -replace '^uw/', '') + '|' + $o.track
  $m = $null
  if ($o.track -like 'Damage*') { $m = $idx.($o.page + '|Damage') }
  if ($null -eq $m) { $m = $idx.$key }
  if ($null -eq $m) { Write-Output ("  no index row for " + $key); $nm++; continue }
  $a = Get-Num $o.vals[0]; $b = Get-Num $o.vals[$o.n]
  $ok = ([math]::Abs($a - $m[0]) -lt 1e-9 -and [math]::Abs($b - $m[1]) -lt 1e-9)
  if ($ok) { $okc++ }
  Write-Output ('  {0,-16} {1,-16} parsed {2} -> {3,-9} index {4} -> {5,-9} {6}' -f $o.page, $o.track, $a, $b, $m[0], $m[1], $(if ($ok) { 'OK' } else { 'MISMATCH' }))
}
Write-Output ('  matched ' + $okc + ' / ' + $all.Count + '   (no row: ' + $nm + ')')

Write-Output ''
Write-Output '== value-row identity groups (>= 10 cells)'
for ($i = 0; $i -lt $all.Count; $i++) {
  for ($j = $i + 1; $j -lt $all.Count; $j++) {
    $a = $all[$i]; $b = $all[$j]
    $len = [math]::Min($a.vals.Count, $b.vals.Count); $k = 0
    while ($k -lt $len -and ((Get-Num $a.vals[$k]) -eq (Get-Num $b.vals[$k]))) { $k++ }
    if ($k -ge 11) { Write-Output ("  {0}/{1} == {2}/{3} for {4} value cells" -f $a.page, $a.track, $b.page, $b.track, $k) }
  }
}

Write-Output ''
Write-Output '== marginal-ladder identity groups (longest common prefix, >= 10 cells)'
for ($i = 0; $i -lt $all.Count; $i++) {
  for ($j = $i + 1; $j -lt $all.Count; $j++) {
    $a = $all[$i]; $b = $all[$j]
    $len = [math]::Min($a.n, $b.n); $k = 0
    while ($k -lt $len -and ($a.inc[$k] -eq $b.inc[$k])) { $k++ }
    if ($k -ge 10) {
      Write-Output ("  {0}/{1} == {2}/{3} for {4} cells ({5}..{6})" -f $a.page, $a.track, $b.page, $b.track, $k, $a.inc[0], $a.inc[$k - 1])
    }
  }
}
