param([string]$File, [string]$Rows = '')
# Prints, for each workshop stone table, one line per column: index, level count, first values, last value, and the sum.
$L = Get-Content $File
$want = @()
if ($Rows -ne '') { $want = $Rows.Split(',') | ForEach-Object { [int]$_ } }
function Clean([string]$x) { return ($x -replace '[\[\]"]', '' -replace '\s+', '') }
for ($n = 0; $n -lt $L.Count; $n++) {
  $s = $L[$n]
  if (-not $s.StartsWith('ROWS:')) { continue }
  if ($want.Count -gt 0 -and $want -notcontains $n) { continue }
  $cells = $s.Substring(6).Trim() -split '\],\['
  $tab = @()
  foreach ($c in $cells) { $tab += ,(($c -split '","') | ForEach-Object { Clean $_ }) }
  $ncol = 0
  foreach ($r in $tab) { if ($r.Count -gt $ncol) { $ncol = $r.Count } }
  Write-Output ("TABLE row " + $n + " : " + $tab.Count + " rows x " + $ncol + " cols")
  for ($c = 0; $c -lt $ncol; $c++) {
    $vals = @()
    foreach ($r in $tab) { if ($c -lt $r.Count) { $vals += $r[$c] } }
    $sum = [double]0; $num = 0
    foreach ($v in $vals) {
      $t = ($v -replace ',', '')
      if ($t -match '^-?[\d.]+$') { $sum += [double]$t; $num++ }
    }
    $head = ($vals[0] + ' ' + $vals[1] + ' ' + $vals[2])
    $last = $vals[$vals.Count - 1]
    Write-Output ("  c" + $c + " n=" + $vals.Count + " numeric=" + $num + " first[" + $head.Trim() + "] last[" + $last + "] sum=" + $sum)
  }
}
