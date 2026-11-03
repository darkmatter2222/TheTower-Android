param([string]$Prefix = '| [T008]')
# Prints the status cell (field 5) of a README ranked-table row, split into head/tail.
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
foreach ($l in ($txt -split "`r?`n")) {
  if (-not $l.StartsWith($Prefix)) { continue }
  $f = $l -split '\|'
  $c = $f[5]
  Write-Output ('row=' + $Prefix + ' cellLen=' + $c.Length)
  Write-Output ('HEAD: ' + $c.Substring(0, [Math]::Min(160, $c.Length)))
  Write-Output ('TAIL: ' + $c.Substring([Math]::Max(0, $c.Length - 220)))
}
