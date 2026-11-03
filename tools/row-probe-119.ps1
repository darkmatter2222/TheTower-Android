param()
# Prints the README ranked-table rows for T006 and T012 bracketed.
$t = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8) -split "`r?`n"
foreach ($r in $t) {
  if ($r.StartsWith('| [T006]') -or $r.StartsWith('| [T012]')) { Write-Output ('[' + $r + ']') }
}
