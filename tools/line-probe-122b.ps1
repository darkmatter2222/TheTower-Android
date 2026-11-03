param()
$txt = [System.IO.File]::ReadAllText('docs/techniques/T012-card-deck-order.md', [System.Text.Encoding]::UTF8)
foreach ($a in @('which is why every mastery name in this doc comes from the wiki rather than the dump.',
                 'rather than the dump.', '## 3. Step-by-step (UI only)', '**31 x 10**', '31 \u00d7 10')) {
  Write-Output ('[' + $a + '] count=' + ([regex]::Matches($txt, [regex]::Escape($a))).Count)
}
$lines = $txt -split "`r?`n"
for ($i = 468; $i -le 486; $i++) { Write-Output (($i + 1).ToString() + ':[' + $lines[$i] + ']') }
