param()
$x = Get-Content docs/INDEX.md
foreach ($l in $x) {
  if ($l.StartsWith('| T019 |')) { Write-Output ('IDX19: ' + $l.Substring(0, [Math]::Min(200, $l.Length))) }
  if ($l.StartsWith('| T025 |')) { Write-Output ('IDX25: ' + $l.Substring(0, [Math]::Min(200, $l.Length))) }
}
$r = Get-Content README.md
foreach ($l in $r) {
  if ($l.StartsWith('| [T019]')) {
    $i = $l.IndexOf('(arith., Rev')
    if ($i -lt 0) { $i = 0 }
    Write-Output ('RD19: ' + $l.Substring($i, [Math]::Min(200, $l.Length - $i)))
  }
  if ($l.StartsWith('| [T025]')) {
    $i = $l.IndexOf('(arith., Rev')
    if ($i -lt 0) { $i = 0 }
    Write-Output ('RD25: ' + $l.Substring($i, [Math]::Min(200, $l.Length - $i)))
  }
}
