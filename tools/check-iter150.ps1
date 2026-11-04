param()
# Iteration 150 verification: INDEX rows have 4 pipes, README rows 7 pipes, and the new cells are present.
$idx = Get-Content docs/INDEX.md
foreach ($l in $idx) {
  if ($l.StartsWith('| T019 |') -or $l.StartsWith('| T025 |')) {
    $p = ($l.ToCharArray() | Where-Object { $_ -eq '|' }).Count
    Write-Output ('IDX pipes=' + $p + ' rev=' + ([regex]::Match($l, 'Rev \d+').Value) + ' len=' + $l.Length)
  }
  if ($l.StartsWith('- [2026-11-03 - session 141')) { Write-Output ('ANCHOR ok: ' + $l) }
}
$rd = Get-Content README.md
foreach ($l in $rd) {
  if ($l.StartsWith('| [T019]') -or $l.StartsWith('| [T025]')) {
    $p = ($l.ToCharArray() | Where-Object { $_ -eq '|' }).Count
    Write-Output ('RD pipes=' + $p + ' ' + ([regex]::Match($l, 'Rev \d+').Value))
  }
}
# ASCII check on the two files: any char above 0x7F reported with its line number.
foreach ($f in @('docs/INDEX.md', 'README.md')) {
  $n = 0
  foreach ($l in (Get-Content $f)) {
    $n++
    $bad = $l.ToCharArray() | Where-Object { [int]$_ -gt 126 }
    if ($bad.Count -gt 0) { Write-Output ($f + ':' + $n + ' nonascii=' + (-join $bad)) }
  }
}
