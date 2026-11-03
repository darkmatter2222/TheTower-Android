param()
# Prints the 60 characters following each occurrence of two anchors in README.md, bracketed.
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
foreach ($a in @('x3.00', 'arith., Rev 6: one script', 'arith., Rev 25: the running bill', '67.6 %** of the clock')) {
  $ix = $txt.IndexOf($a)
  $n = 0
  while ($ix -ge 0) {
    $n++
    $seg = $txt.Substring($ix, [Math]::Min(46, $txt.Length - $ix))
    Write-Output ($a + ' #' + $n + ' -> [' + $seg + ']')
    $ix = $txt.IndexOf($a, $ix + 1)
  }
  Write-Output ($a + ' occurrences=' + $n)
}
