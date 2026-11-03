param([string]$File, [int]$N = 4)
# Prints the last $N lines of a file (first 100 chars each) with their line numbers.
$ls = [System.IO.File]::ReadAllLines($File, [System.Text.Encoding]::UTF8)
$start = [Math]::Max(0, $ls.Count - $N)
for ($n = $start; $n -lt $ls.Count; $n++) {
  $t = $ls[$n]; if ($t.Length -gt 100) { $t = $t.Substring(0, 100) }
  Write-Output (($n + 1).ToString() + ': ' + $t)
}
