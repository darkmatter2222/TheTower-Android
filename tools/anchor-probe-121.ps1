param()
$txt = [System.IO.File]::ReadAllText('docs/techniques/T012-card-deck-order.md', [System.Text.Encoding]::UTF8)
foreach ($a in @('(value column = the level number), the second beam', 'coins over 30 levels; time',
                 '(T006-lab-queue-packing.md)).', 'alone take 17 058 h = **79.7 %**', 'as established in')) {
  Write-Output ('[' + $a + '] count=' + ([regex]::Matches($txt, [regex]::Escape($a))).Count)
}
