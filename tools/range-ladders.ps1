param([string]$File = 'C:\Users\ryans\AppData\Local\Temp\opencode\s111c.txt')
# Parses the two tables on `workshop/range` and tests their laws.
$ls = [System.IO.File]::ReadAllLines($File, [System.Text.Encoding]::UTF8)
function SufMult([string]$g) {
  switch -CaseSensitive ($g) {
    'K' { return 1e3 } 'M' { return 1e6 } 'B' { return 1e9 } 'T' { return 1e12 }
    'q' { return 1e15 } 'Q' { return 1e18 } 's' { return 1e21 } 'S' { return 1e24 }
    'O' { return 1e27 } default { return 1 }
  }
}
function Num([string]$s) {
  $t = ($s -replace ',', '').Trim()
  $m = [regex]::Match($t, '^([0-9.]+)\s*([KMBTqQsSO])?$')
  if (-not $m.Success) { return $null }
  $v = [double]$m.Groups[1].Value
  if ($m.Groups[2].Success) { $v *= (SufMult $m.Groups[2].Value) }
  return $v
}
function Mins([string]$s) {
  $m = [regex]::Match($s, '(?:(\d+)d)?\s*(?:(\d+)h)?\s*(?:(\d+)m)?')
  return ([int]$m.Groups[1].Value) * 1440 + ([int]$m.Groups[2].Value) * 60 + [int]$m.Groups[3].Value
}
$tblNo = 0
foreach ($l in $ls) {
  if (-not $l.StartsWith('ROWS:')) { continue }
  $tblNo++
  $cells = @([regex]::Matches($l, '(?:"[^"]*"|null)(?=,\]|\],\[")').Value)
  $cells = @([regex]::Matches($l, '"(?:[^"]|(?:""))*"').Value)
  $rows = @()
  $i = 0
  $flat = @($cells | ForEach-Object { $_.Trim('"') })
  for ($i = 0; $i + 3 -lt $flat.Count + 1; $i += 4) {
    if ($i + 3 -ge $flat.Count) { break }
    $rows += ,@($flat[$i], $flat[$i + 1], $flat[$i + 2], $flat[$i + 3])
  }
  Write-Output ('TABLE ' + $tblNo + ' rows=' + $rows.Count + ' first=' + (($rows[0]) -join '|') + ' last=' + (($rows[-1]) -join '|'))
  if ($tblNo -eq 1) {
    $badV = 0; $badT = 0; $rs = @()
    $prevTotal = 0.0
    for ($k = 0; $k -lt $rows.Count; $k++) {
      $lv = [int]$rows[$k][0]
      $val = [double]($rows[$k][1] -replace 'M$', '')
      $cost = Num $rows[$k][2]
      $tot = Num $rows[$k][3]
      if ([Math]::Abs((30 + 0.5 * $lv) - $val) -gt 1e-9) { $badV++ }
      if ($lv -ge 2) {
        $exp = $prevTotal + $cost
        if ([Math]::Abs($exp - $tot) -gt [Math]::Max(2.0, 0.006 * $tot)) { $badT++ }
      }
      $prevTotal = $tot
      if ($rs.Count -lt 8 -and $k -ge 1) { $rs += ('L' + $lv + '=' + [Math]::Round($cost / (Num $rows[$k - 1][2]), 4)) }
    }
    Write-Output ('  value law 30 + 0.5n mismatches=' + $badV + ' ; total(n)=total(n-1)+cost(n) mismatches=' + $badT)
    Write-Output ('  first cost ratios: ' + ($rs -join ' ') + ' ; last total cell = ' + $rows[-1][3])
    Write-Output ('  cost L1=' + $rows[0][2] + ' cost L20=' + $rows[19][2] + ' ratio(20/1)=' + [Math]::Round((Num $rows[19][2]) / (Num $rows[0][2]), 3) + ' 1.4^19=' + [Math]::Round([Math]::Pow(1.4, 19), 3))
  }
  else {
    $badV = 0; $mins = @(); $costs = @()
    foreach ($r in $rows) {
      $lv = [int]$r[0]
      if ([Math]::Abs((1 + 0.02 * $lv) - [double]$r[3]) -gt 1e-9) { $badV++ }
      $mins += (Mins $r[1]); $costs += (Num $r[2])
    }
    Write-Output ('  value law 1 + 0.02n mismatches=' + $badV)
    $d = @(); for ($k = 1; $k -lt [Math]::Min(9, $mins.Count); $k++) { $d += ($mins[$k] - $mins[$k - 1]) }
    Write-Output ('  time diffs (first 8) = ' + ($d -join ',') + ' ; L1=' + $mins[0] + ' L2=' + $mins[1])
    $cr = @(); for ($k = 1; $k -lt [Math]::Min(9, $costs.Count); $k++) { $cr += [Math]::Round($costs[$k] / $costs[$k - 1], 4) }
    Write-Output ('  cost ratios (first 8) = ' + ($cr -join ',') + ' ; L1=' + $costs[0] + ' L80=' + $costs[-1] + ' ; 1.15^79x30=' + [Math]::Round(30 * [Math]::Pow(1.15, 79)) + ' ; 30x1.02^79=' + [Math]::Round(30 * [Math]::Pow(1.02, 79)))
    Write-Output ('  sum(cost)=' + (($costs | Measure-Object -Sum).Sum) + ' ; sum(time min)=' + (($mins | Measure-Object -Sum).Sum) + ' ; last time min=' + $mins[-1])
    Write-Output ('  n x t1 test with t1=396 min: L2=' + (2 * 396) + ' vs ' + $mins[1] + ' ; L3=' + (3 * 396) + ' vs ' + $mins[2])
  }
}
