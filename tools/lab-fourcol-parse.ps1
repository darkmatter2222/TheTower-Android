param([string]$File = 'C:\Users\ryans\AppData\Local\Temp\opencode\s102.txt')
# Parses the four-column lab tables (`Level | Time | Cost | Value`) out of a fetch-hub dump and prints the
# numeric census: per-level costs, prefix sums at checkpoints, the stones/coins-per-percentage-point curve,
# and the time column's first differences (to tell per-level from cumulative).
$txt = [System.IO.File]::ReadAllText($File)
foreach ($p in ($txt -split '=====')) {
  if ($p.Trim() -eq '') { continue }
  $page = (($p -split "`r?`n")[0].Trim()) -replace '^=+\s*', ''
  $mm = [regex]::Match($p, 'HDR:\s*(.+?)\r?\nROWS:\s*(.+)')
  if (-not $mm.Success) { continue }
  $rows = [regex]::Matches($mm.Groups[2].Value, '\[([^\]]*)\]')
  $flat = @()
  foreach ($r in $rows) { $flat += (($r.Groups[1].Value -replace '^"|"$', '') -split '","') -replace '"', '' }
  if ($flat.Count -lt 8) { continue }
  $n = [math]::Floor($flat.Count / 4)
  $cost = @(); $time = @(); $val = @()
  for ($r = 0; $r -lt $n; $r++) {
    $time += $flat[$r * 4 + 1]
    $cost += [double]($flat[$r * 4 + 2] -replace ',', '')
    $val += [double]($flat[$r * 4 + 3] -replace '[^0-9.]', '')
  }
  Write-Output "== $page  rows=$n  first cost=$($cost[0]) last cost=$($cost[-1])  first val=$($val[0]) last val=$($val[-1])"
  $cum = 0.0; $sums = @{}
  for ($k = 0; $k -lt $n; $k++) { $cum += $cost[$k]; $sums[$k + 1] = $cum }
  $chk = @(1, 5, 10, 20, 30, 40, 50, 60, 70, 80, 90, 99) | Where-Object { $_ -le $n }
  foreach ($k in $chk) {
    Write-Output ('   L' + $k + ' cost ' + $cost[$k - 1] + ' cum ' + ('{0:N0}' -f $sums[$k]) + ' value ' + $val[$k - 1] + ' coins/pp ' + ('{0:0.##}' -f (($sums[$k]) / $val[$k - 1])))
  }
  Write-Output ('   last-row cost ' + $cost[$n - 1] + '  total-of-column ' + ('{0:N0}' -f $cum) + '  ratio last/first ' + ('{0:0.0}' -f ($cost[$n - 1] / $cost[0])))
  $tm = foreach ($x in $time) { $x -replace '[^0-9:mh ]', '' }
  Write-Output ('   time cells 1..12: ' + (($time | Select-Object -First 12) -join ' | '))
  Write-Output ('   cost cells 1..12: ' + (($cost | Select-Object -First 12) -join ' '))
  Write-Output ('   cost cells 28..34: ' + ((4..0 | ForEach-Object { '' }) -join '') + (($cost[27..33]) -join ' '))
  Write-Output ('   cost cells 45..54: ' + (($cost[44..53]) -join ' '))
}
