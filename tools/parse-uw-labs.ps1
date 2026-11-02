param([string]$File, [string]$Rows = '')
$L = Get-Content $File
$want = @()
if ($Rows -ne '') { $want = $Rows.Split(',') | ForEach-Object { [int]$_ } }
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('ROWS:')) { continue }
  if ($want.Count -gt 0 -and $want -notcontains $n) { continue }
  $body = $s.Substring(6).Trim()
  $cells = $body -split '\],\['
  $cost = @(); $time = @(); $val = @()
  foreach ($c in $cells) {
    $f = $c -split '","'
    if ($f.Count -ge 3) {
      $cost += (($f[2] -replace '[\[\]"]', '') -replace '\s', '')
      $time += (($f[1] -replace '[\[\]"]', '') -replace '\s', '')
      $val += (($f[3] -replace '[\[\]"]', '') -replace '\s', '')
    }
  }
  Write-Output ('ROW ' + $n + ' n=' + $cost.Count)
  Write-Output ('  C: ' + ($cost -join ' '))
  Write-Output ('  T: ' + ($time -join ' '))
  Write-Output ('  V: ' + ($val -join ' '))
}
