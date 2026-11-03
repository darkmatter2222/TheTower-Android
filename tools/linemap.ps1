param([string]$File, [int]$Len = 90)
# Prints a short line map of a fetched payload (line number + first $Len chars).
$ls = [System.IO.File]::ReadAllLines($File, [System.Text.Encoding]::UTF8)
for ($n = 0; $n -lt $ls.Count; $n++) {
  $t = $ls[$n]
  if ($t.Length -gt $Len) { $t = $t.Substring(0, $Len) }
  Write-Output (($n + 1).ToString() + ': ' + $t)
}
