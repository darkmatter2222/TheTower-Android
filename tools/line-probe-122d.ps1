param()
$txt = [System.IO.File]::ReadAllText('docs/techniques/T012-card-deck-order.md', [System.Text.Encoding]::UTF8)
foreach ($a in @('of the 31 printed mastery rows have a second, per-page print**', 'Stone-cost coverage')) {
  Write-Output ('[' + $a + '] count=' + ([regex]::Matches($txt, [regex]::Escape($a))).Count)
}
$lines = $txt -split "`r?`n"
for ($i = 0; $i -lt $lines.Count; $i++) {
  if ($lines[$i].Contains('Stone-cost coverage')) {
    for ($j = $i; $j -lt [Math]::Min($i + 4, $lines.Count); $j++) { Write-Output (($j + 1).ToString() + ':[' + $lines[$j] + ']') }
    break
  }
}
