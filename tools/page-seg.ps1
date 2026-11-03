param([string]$File, [string]$Page, [int]$Len = 600)
# Prints the raw HDR/ROWS lines (and optional TEXT head) of one page inside a fetch-hub dump.
$txt = [System.IO.File]::ReadAllText($File)
foreach ($p in ($txt -split '=====')) {
  $head = (($p -split "`r?`n")[0].Trim()) -replace '^=+\s*', ''
  if ($head -ne $Page) { continue }
  foreach ($ln in ($p -split "`r?`n")) {
    if ($ln.StartsWith('HDR:') -or $ln.StartsWith('ROWS:')) { Write-Output $ln }
    elseif ($ln.StartsWith('TEXT:')) { Write-Output ($ln.Substring(0, [Math]::Min($Len, $ln.Length))) }
  }
}
