param([string]$File = 'C:\Users\ryans\AppData\Local\Temp\opencode\s102u.txt')
# Time-column arithmetic for the four-column lab tables: parses each `Nd Nh Zm` cell, then tests the two readings
# (per-level vs cumulative): per-level sum vs the last printed cell.
$txt = [System.IO.File]::ReadAllText($File)
foreach ($p in ($txt -split '=====')) {
  if ($p.Trim() -eq '') { continue }
  $page = (($p -split "`r?`n")[0].Trim()) -replace '^=+\s*', ''
  $mm = [regex]::Match($p, 'HDR:\s*(.+?)\r?\nROWS:\s*(.+)')
  if (-not $mm.Success) { continue }
  $rows = [regex]::Matches($mm.Groups[2].Value, '\[([^\]]*)\]')
  $flat = @()
  foreach ($r in $rows) { $flat += (($r.Groups[1].Value -replace '^"|"$', '') -split '","') -replace '"', '' }
  $n = [math]::Floor($flat.Count / 4)
  if ($n -lt 3) { continue }
  $min = @()
  for ($r = 0; $r -lt $n; $r++) {
    $t = $flat[$r * 4 + 1]
    $d = 0; $h = 0; $m = 0
    if ($t -match '(?:(\d+)\s*d)?\s*(?:(\d+)\s*h)?\s*(?:(\d+)\s*m)?') {
      if ($Matches[1]) { $d = [int]$Matches[1] }; if ($Matches[2]) { $h = [int]$Matches[2] }; if ($Matches[3]) { $m = [int]$Matches[3] }
    }
    $min += ($d * 1440 + $h * 60 + $m)
  }
  $sum = ($min | Measure-Object -Sum).Sum
  Write-Output "== $page  levels=$n"
  Write-Output ('   first 12 cells (min): ' + (($min | Select-Object -First 12) -join ' '))
  Write-Output ('   last cell: ' + $min[$n - 1] + ' min = ' + ('{0:0.0}' -f ($min[$n - 1] / 1440)) + ' d')
  Write-Output ('   sum of cells (per-level reading): ' + $sum + ' min = ' + ('{0:0.0}' -f ($sum / 1440)) + ' d = ' + ('{0:0.0}' -f ($sum / 1440 / 365.25)) + ' y')
  $last = [math]::Max(1, $min[$n - 1])
  Write-Output ('   ratio sum/last: ' + ('{0:0.00}' -f ($sum / $last)))
  $d1 = @(); for ($k = 1; $k -lt [math]::Min(13, $n); $k++) { $d1 += ($min[$k] - $min[$k - 1]) }
  Write-Output ('   first differences (cumulative reading), cells 2..13: ' + ($d1 -join ' '))
}
