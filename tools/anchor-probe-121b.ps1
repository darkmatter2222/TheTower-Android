param()
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
foreach ($a in @('Area of Effect`)|', 'Area of Effect`),', 'and the printed save order), (arith., Rev 6: one script re-adds')) {
  Write-Output ('[' + $a + '] count=' + ([regex]::Matches($txt, [regex]::Escape($a))).Count)
}
$i = $txt.IndexOf('| [T012]')
$seg = $txt.Substring($i, [Math]::Min(2400, $txt.Length - $i))
Write-Output ('ROW: [' + $seg + ']')
