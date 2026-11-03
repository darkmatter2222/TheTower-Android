param()
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$cand = @(
  '- buy each right after finishing its group (retroactive) |',
  '(retroactive) |',
  'buy each right after finishing its group (retroactive)',
  '(8 725 ge**) - buy each right',
  '8 725 ge**) - buy'
)
foreach ($c in $cand) {
  Write-Output ('[' + $c + '] count=' + ([regex]::Matches($txt, [regex]::Escape($c))).Count)
}
$i = $txt.IndexOf('8 725 ge')
Write-Output ('tail [' + $txt.Substring($i, 130) + ']')
