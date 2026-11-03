param()
# Lists the headings of T019 with line numbers.
$txt = [System.IO.File]::ReadAllText('docs/techniques/T019-milestone-claim-engine.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
for ($i = 0; $i -lt $lines.Count; $i++) {
  if ($lines[$i].StartsWith('#')) { Write-Output (($i + 1).ToString() + ':[' + $lines[$i] + ']') }
}
Write-Output ('total=' + $lines.Count)
