param()
# Prints the tail of the summary cell and the whole status cell for two README rows.
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
foreach ($l in ($txt -split "`r?`n")) {
  foreach ($pre in @('| [T006]', '| [T025]')) {
    if ($l.StartsWith($pre)) {
      $cells = $l -split '\|'
      $sum = $cells[2].Trim()
      Write-Output ($pre + ' summary tail: ' + $sum.Substring([Math]::Max(0, $sum.Length - 260)))
      Write-Output ($pre + ' status: ' + $cells[5].Trim())
    }
  }
}
