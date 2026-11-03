param()
# Prints the char codes around the two anchors so the exact separator characters can be matched.
$L = Get-Content README.md
$r = @($L | Where-Object { $_.StartsWith('| [T020]') })[0]
$f = $r -split '\|'
$i = $f[5].IndexOf('arith., Rev 12')
Write-Output ('idx5=' + $i)
if ($i -ge 0) {
  $seg = $f[5].Substring($i, 40)
  Write-Output (($seg.ToCharArray() | ForEach-Object { [int]$_ }) -join ' ')
}
$j = $f[2].IndexOf('mastery lab')
Write-Output ('idx2=' + $j)
if ($j -ge 0) {
  $seg2 = $f[2].Substring($j, [Math]::Min(60, $f[2].Length - $j))
  Write-Output (($seg2.ToCharArray() | ForEach-Object { [int]$_ }) -join ' ')
}
Write-Output ('len2=' + $f[2].Length + ' len5=' + $f[5].Length)
Write-Output ('tail5=' + $f[5].Substring([Math]::Max(0, $f[5].Length - 60)))
