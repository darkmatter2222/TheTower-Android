param()
$x = Get-Content docs/INDEX.md
foreach ($l in $x) {
  if ($l.StartsWith('| T006 |') -or $l.StartsWith('| T008 |') -or $l.StartsWith('| T025 |')) {
    Write-Output ($l.Substring(0, [Math]::Min(230, $l.Length)))
    Write-Output '  ...'
  }
  if ($l.StartsWith('- [2026-11-03 - session 13')) { Write-Output ('ANCHOR: ' + $l) }
}
$r = Get-Content README.md
foreach ($l in $r) {
  if ($l.StartsWith('| [T006]')) { $i = $l.IndexOf('(arith., Rev'); Write-Output ('README T006: ' + $l.Substring([Math]::Max(0,$i), [Math]::Min(170, $l.Length - [Math]::Max(0,$i)))) }
  if ($l.StartsWith('| [T008]')) { $i = $l.IndexOf('(arith., Rev'); Write-Output ('README T008: ' + $l.Substring([Math]::Max(0,$i), [Math]::Min(170, $l.Length - [Math]::Max(0,$i)))) }
  if ($l.StartsWith('| [T025]')) { $i = $l.IndexOf('(arith., Rev'); Write-Output ('README T025: ' + $l.Substring([Math]::Max(0,$i), [Math]::Min(170, $l.Length - [Math]::Max(0,$i)))) }
}
