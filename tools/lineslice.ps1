param([string]$File, [int]$From = 1, [int]$Count = 5, [int]$Len = 1300)
# Prints a slice of raw file lines, each truncated to $Len chars.
$ls = [System.IO.File]::ReadAllLines($File, [System.Text.Encoding]::UTF8)
for ($n = $From; $n -lt [Math]::Min($ls.Count, $From + $Count); $n++) {
  $t = $ls[$n - 1]
  if ($t.Length -gt $Len) { $t = $t.Substring(0, $Len) + ' …' }
  Write-Output ("L" + $n + ": " + $t)
}
