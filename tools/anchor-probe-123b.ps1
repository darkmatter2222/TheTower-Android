param()
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$cand = @('Demon Mode - Nuke |', 'Demon Mode - Nuke', 'Second Wind - Demon Mode', 'Nuke | ???? |', 'on 6/6), plus the printed save order')
foreach ($c in $cand) { Write-Output ('[' + $c + '] count=' + ([regex]::Matches($txt, [regex]::Escape($c))).Count) }
$i = $txt.IndexOf('on 6/6), plus the printed save order')
if ($i -ge 0) {
  $seg = $txt.Substring($i, 220)
  $codes = ''
  foreach ($ch in $seg.ToCharArray()) { if ([int]$ch -gt 126) { $codes += ('#' + [int]$ch) } }
  Write-Output ('SEG:[' + $seg + ']')
  Write-Output ('NONASCII:' + $codes)
}
