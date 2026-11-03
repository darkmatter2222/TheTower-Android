param()
$txt = [System.IO.File]::ReadAllText('docs/techniques/T012-card-deck-order.md', [System.Text.Encoding]::UTF8)
$lines = $txt -split "`r?`n"
for ($i = 0; $i -lt $lines.Count; $i++) {
  if ($lines[$i].Contains('Stone-cost coverage')) {
    for ($j = $i; $j -lt [Math]::Min($i + 6, $lines.Count); $j++) {
      $s = $lines[$j]
      $hex = ''
      foreach ($ch in $s.ToCharArray()) { if ([int]$ch -gt 126) { $hex += (' ' + [int]$ch) } }
      Write-Output (($j + 1).ToString() + ':[' + $s + '] codes:' + $hex)
    }
    break
  }
}
