param()
$t = Get-Content README.md
foreach ($l in $t) {
  if ($l.StartsWith('| [T025]')) {
    $i = $l.IndexOf('(arith., Rev 6')
    Write-Output ('idx=' + $i)
    $a = [Math]::Max(0, $i)
    Write-Output $l.Substring($a, [Math]::Min(260, $l.Length - $a))
  }
}
$x = Get-Content docs/INDEX.md
foreach ($l in $x) {
  if ($l.StartsWith('| T025 |')) {
    Write-Output '--- INDEX ---'
    Write-Output $l.Substring(0, [Math]::Min(200, $l.Length))
  }
}
