param()
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
foreach ($a in @('retroactive', 'Medium model (H038)', 'save-order law (**H062**)')) {
  $i = $txt.IndexOf($a)
  while ($i -ge 0) {
    $s = [Math]::Max(0, $i - 30); $seg = $txt.Substring($s, [Math]::Min(80, $txt.Length - $s))
    Write-Output ($a + ' -> [' + $seg + ']')
    $i = $txt.IndexOf($a, $i + 1)
  }
}
