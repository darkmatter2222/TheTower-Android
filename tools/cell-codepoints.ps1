param()
# Verifies the value-star cells of two ranked-table rows are exactly four U+2605.
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$want = (([string][char]0x2605) * 4)
foreach ($l in ($txt -split "`r?`n")) {
  foreach ($pre in @('| [T024]', '| [T025]')) {
    if ($l.StartsWith($pre)) {
      $cells = $l -split '\|'
      $c = $cells[3].Trim()
      $ok = ($c -eq $want)
      Write-Output ($pre + ' len=' + $c.Length + ' matchesFourStars=' + $ok)
    }
  }
}
