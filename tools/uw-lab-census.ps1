param([string]$File, [string]$TextFile = '')
# Compact census of the per-weapon lab tables in a fetch-hub dump of the wiki/uw/* pages.
# For every 4-column Level/Time/Cost/Value table it prints: rows, L1 price+time, last price+time,
# the value law (constant step?), sum of prices and sum of times (per-level reading).
function NumOf([string]$t) {
  $t = $t.Trim() -replace '^\+', '' -replace 'x$', ''
  if ($t -notmatch '^([-\d.]+)([KMBTqQsSO])?$') { return $null }
  $m = [regex]::Match($t, '^([-\d.]+)([KMBTqQsSO])?$')
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
function SecOf([string]$t) {
  $m = [regex]::Match($t, '(?:(\d+)d)?\s*(?:(\d+)h)?\s*(?:(\d+)m)?')
  $d = 0; $h = 0; $mi = 0
  if ($m.Groups[1].Success) { $d = [int]$m.Groups[1].Value }
  if ($m.Groups[2].Success) { $h = [int]$m.Groups[2].Value }
  if ($m.Groups[3].Success) { $mi = [int]$m.Groups[3].Value }
  return $d * 86400 + $h * 3600 + $mi * 60
}
$L = Get-Content $File
$page = ''
for ($i = 0; $i -lt $L.Count; $i++) {
  $s = $L[$i]
  if ($s.StartsWith('=====')) { $page = $s.Substring(6).Trim(); Write-Output ('== ' + $page); continue }
  if (-not $s.StartsWith('ROWS:')) { continue }
  $prev = $L[$i - 1]
  if (-not ($prev -match '"Level","Time","Cost","Value"' -or $prev -match '"Level","TIme","Cost","Value"' -or $prev -match '"level","Time","Cost","Value"' -or $prev -match '"Level","Time","Coins","Value"')) { continue }
  $rowMatches = [regex]::Matches($s.Substring(6).Trim(), '\["(.*?)"\]')
  $n = 0; $sumC = 0.0; $sumT = 0.0; $first = ''; $last = ''; $steps = @(); $prevV = -1.0; $law = ''
  $sumC10 = 0.0; $sumT10 = 0.0; $v10 = $null; $v1 = $null
  foreach ($rm in $rowMatches) {
    $cells = @($rm.Groups[1].Value -split '","')
    $n++
    $c = NumOf ($cells[2] -replace ',', '')
    $t = SecOf $cells[1]
    $v = NumOf (($cells[3] -replace '%', '') -replace ',', '')
    if ($null -ne $c) { $sumC += $c }
    $sumT += $t
    if ($n -le 10) { if ($null -ne $c) { $sumC10 += $c }; $sumT10 += $t; if ($n -eq 10) { $v10 = $v } }
    if ($n -eq 1) { $first = $cells[2] + ' @ ' + $cells[1] + ' [' + $cells[3] + ']'; $v1 = $v }
    $last = $cells[2] + ' @ ' + $cells[1] + ' [' + $cells[3] + ']'
    if ($null -ne $v) { if ($prevV -ge 0) { $steps += [math]::Round($v - $prevV, 4) }; $prevV = $v }
  }
  $uniq = @($steps | Select-Object -Unique)
  if ($uniq.Count -eq 1) { $law = 'step ' + $uniq[0] } elseif ($uniq.Count -eq 0) { $law = 'single-row' } else { $law = 'non-arith (' + (($uniq | Select-Object -First 4) -join ',') + ')' }
  $step0 = 0
  if ($uniq.Count -eq 1) { $step0 = [double]$uniq[0] }
  $perPoint = 'n/a'
  $gain10 = ($v10 - $v1) + $step0
  if ($null -ne $v10 -and $null -ne $v1 -and $gain10 -gt 0 -and $sumC10 -gt 0) {
    $perPoint = ('{0:0.####}' -f ($sumC10 / $gain10))
  }
  Write-Output ('  rows=' + $n + ' | L1 ' + $first + ' | last ' + $last + ' | ' + $law +
    ' | sumCost=' + ('{0:0.####E0}' -f $sumC) + ' | sumTime=' + ('{0:0.00}' -f ($sumT / 86400)) + 'd' +
    ' | L10: sum=' + ('{0:0.####E0}' -f $sumC10) + ' time=' + ('{0:0.00}' -f ($sumT10 / 86400)) + 'd value=' + $v10 +
    ' | coins-per-point@L10=' + $perPoint)
}
