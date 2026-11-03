param([string]$Prefix = 's102f')
# Dumps the ranked-table row for T020 as its pipe-separated fields, UTF-8, so anchors can be copied exactly.
$L = Get-Content README.md
$r = @($L | Where-Object { $_.StartsWith('| [T020]') })[0]
$f = $r -split '\|'
$out = 'fields=' + $f.Count + ' pipes=' + (($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count)
$out += [Environment]::NewLine + 'F2:' + $f[2]
$out += [Environment]::NewLine + 'F5:' + $f[5]
[System.IO.File]::WriteAllText('C:\Users\ryans\AppData\Local\Temp\opencode\' + $Prefix + '.txt', $out, (New-Object System.Text.UTF8Encoding($false)))
Write-Output ('written ' + $Prefix)
