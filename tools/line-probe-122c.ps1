param()
$txt = [System.IO.File]::ReadAllText('docs/techniques/T012-card-deck-order.md', [System.Text.Encoding]::UTF8)
foreach ($a in @('Rev: 8 (2026-11-03)', 'Rev: 9 (2026-11-03)', 'page mined', 'items 3 and 9')) {
  Write-Output ('[' + $a + '] count=' + ([regex]::Matches($txt, [regex]::Escape($a))).Count)
}
$i = $txt.IndexOf('Rev: 8 (2026-11-03)')
$seg = $txt.Substring($i, 130)
$codes = @()
foreach ($ch in $seg.ToCharArray()) { if ([int]$ch -gt 126) { $codes += (([int]$ch).ToString()) } }
Write-Output ('nonascii in first 130 chars: ' + ($codes -join ','))
Write-Output ('seg: ' + ($seg -replace '\r','' -replace '\n','|'))
