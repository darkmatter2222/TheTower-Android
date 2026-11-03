param()
# Finds the unmatched paren position in the working-copy T006 row, field 2.
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$W = @(($txt -split "`r?`n") | Where-Object { $_.StartsWith('| [T006]') })[0]
$f = ($W -split '\|')[2]
$stack = New-Object System.Collections.Generic.Stack[int]
for ($i = 0; $i -lt $f.Length; $i++) {
  $ch = $f[$i]
  if ($ch -eq '(') { $stack.Push($i) }
  elseif ($ch -eq ')') { if ($stack.Count -gt 0) { $stack.Pop() | Out-Null } }
}
Write-Output ('unclosed at positions: ' + (($stack.ToArray() | ForEach-Object { $_ }) -join ', '))
foreach ($p in $stack.ToArray()) {
  $s = [Math]::Max(0, $p - 40); $e = [Math]::Min($f.Length, $p + 80)
  Write-Output ('...' + $f.Substring($s, $e - $s) + '...')
}
