param([string]$Row = '| [T020]', [string]$Prefix = 'row'
# Dumps a ranked-table row as its pipe-separated fields, UTF-8, so anchors can be copied exactly.
)
$L = Get-Content README.md
$r = @($L | Where-Object { $_.StartsWith($Row) })[0]
$f = $r -split '\|'
$out = 'fields=' + $f.Count + ' pipes=' + (($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count)
for ($k = 0; $k -lt $f.Count; $k++) { $out += [Environment]::NewLine + ('F' + $k + ':' + $f[$k]) }
[System.IO.File]::WriteAllText('C:\Users\ryans\AppData\Local\Temp\opencode\' + $Prefix + '.txt', $out, (New-Object System.Text.UTF8Encoding($false)))
Write-Output ('written ' + $Prefix + ' fields=' + $f.Count)
