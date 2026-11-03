param()
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$i = $txt.IndexOf('| [T006]')
$seg = $txt.Substring($i, 1800)
$nl = $seg.IndexOf("`n")
if ($nl -gt 0) { $seg = $seg.Substring(0, $nl) }
Write-Output ('ROW: [' + $seg + ']')
