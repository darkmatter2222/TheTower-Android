param()
# Prints the codepoints of the T025 status cell tail (from "52-week" onward).
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
foreach ($l in ($txt -split "`r?`n")) {
  if (-not $l.StartsWith('| [T025]')) { continue }
  $cells = $l -split '\|'
  $cell = $cells[5]
  $i = $cell.IndexOf('52-week')
  $seg = $cell.Substring($i, $cell.Length - $i)
  Write-Output ('seg=[' + $seg + '] len=' + $seg.Length)
  $parts = @()
  $n = $seg.Length
  for ($j = 0; $j -lt $n; $j++) {
    $ch = $seg[$j]
    $code = [int]$ch
    $parts += $code.ToString('X4')
  }
  Write-Output ($parts -join ' ')
}
