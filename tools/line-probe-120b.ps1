param()
$txt = [System.IO.File]::ReadAllText('docs/techniques/T019-milestone-claim-engine.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
for ($i = 0; $i -lt $lines.Count; $i++) {
  if ($lines[$i].Contains('wiki/guide/milestones')) {
    for ($j = $i; $j -lt [Math]::Min($i + 8, $lines.Count); $j++) { Write-Output (($j + 1).ToString() + ':[' + $lines[$j] + ']') }
    break
  }
}
