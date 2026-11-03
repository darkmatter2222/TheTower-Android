param()
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
foreach ($c in @('and the save-order law (**H062**|)', 'and the save-order law (**H062**)|', '(12/12 column totals re-add) / Medium model (H038) |')) {
  Write-Output ('[' + $c + '] count=' + ([regex]::Matches($txt, [regex]::Escape($c))).Count)
}
