param([string]$File)
# Prints the Range table cells raw (bytes 1-based within the ROWS line) so minute values can be read exactly.
$ls = [System.IO.File]::ReadAllLines($File, [System.Text.Encoding]::UTF8)
foreach ($l in $ls) {
  if ($l.StartsWith('ROWS: ["1","2d 16h')) {
    $cells = [regex]::Matches($l, '\[".*?"\]')
    foreach ($c in $cells) { Write-Output $c.Value }
  }
}
