param()
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
foreach ($a in @('time tail **1.13**|', 'time tail **1.13**) |', 'and a monotone-decaying ratio tail), (arith., ', 'Gate:', 'gate **T16')) {
  Write-Output ('[' + $a + '] count=' + ([regex]::Matches($txt, [regex]::Escape($a))).Count)
}
$i = $txt.IndexOf('| [T012]')
$seg = $txt.Substring($i, [Math]::Min(2600, $txt.Length - $i))
$j = $seg.IndexOf("`n")
if ($j -gt 0) { $seg = $seg.Substring(0, $j) }
Write-Output ('ROW: [' + $seg + ']')
