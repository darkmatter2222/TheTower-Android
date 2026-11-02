param([string]$File, [int]$Line = 0, [string]$Levels = '1,2,3,10,50,90,99')
# Statistics for one Level/Time/Cost/Value lab table from a fetch-hub dump.
# Handles the game's number suffixes (K M B T q Q s S O) and "0d 0h 0m" time strings, and prints
# both readings of the Time/Cost columns: per-level (sum of the column) vs cumulative (last row).
$pairK = 'K','M','B','T','q','Q','s','S','O'
$pairE = 3,6,9,12,15,18,21,24,27
function NumOf([string]$t) {
  $t = $t.Trim()
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
$rows = $L[$Line - 1]
if (-not $rows.StartsWith('ROWS:')) { Write-Output ('line ' + $Line + ' is not a ROWS line'); exit 1 }
$want = @($Levels -split ',' | ForEach-Object { [int]$_ })
$rowMatches = [regex]::Matches($rows.Substring(6).Trim(), '\["(.*?)"\]')
$sumC = 0.0; $sumT = 0.0; $lastC = 0.0; $lastT = 0.0; $n = 0; $prevC = 0.0; $r1 = -1; $rl = -1; $bad = 0
foreach ($rm in $rowMatches) {
  $cells = @($rm.Groups[1].Value -split '","')
  $n++
  $lv = [int]$cells[0]
  $c = NumOf ($cells[2] -replace ',', '')
  $t = SecOf $cells[1]
  $v = NumOf (($cells[3] -replace '%', '') -replace ',', '')
  if ($null -ne $c) { $sumC += $c; if ($prevC -gt 0) { $r = $c / $prevC; if ($r1 -lt 0) { $r1 = $r }; $rl = $r }; $prevC = $c; $lastC = $c }
  $sumT += $t; $lastT = $t
  if ($null -ne $v -and $v -ne 0) {
    $step = $v / $lv
    if ([math]::Abs($step * 100 - [math]::Round($step * 100)) > 0.02) { $bad++ }
  }
  if ($want -contains $lv) {
    Write-Output ($lv.ToString() + ' | ' + $cells[1] + ' | ' + $cells[2] + ' | ' + $cells[3] +
      '  (t=' + $t + 's  runSumCost=' + ('{0:0.###}' -f $sumC) + '  runSumTime=' + ('{0:0.00}' -f ($sumT / 86400)) + 'd)')
  }
}
Write-Output ('rows=' + $n + '  value-law non-integer-step rows=' + $bad)
Write-Output ('COST  per-level sum = ' + ('{0:0.####}' -f $sumC) + '   cumulative reading (last row) = ' + ('{0:0.####}' -f $lastC))
Write-Output ('TIME  per-level sum = ' + $sumT + ' s = ' + ('{0:0.00}' -f ($sumT / 86400)) + ' d   cumulative reading (last row) = ' + $lastT + ' s = ' + ('{0:0.00}' -f ($lastT / 86400)) + ' d')
Write-Output ('price ratio: first = ' + ('{0:0.0000}' -f $r1) + '  last = ' + ('{0:0.0000}' -f $rl))
