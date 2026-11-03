param([string]$File, [int]$Len = 1500)
# Prints the `HDR:`/`ROWS:` lines of a fetch-hub dump, chunked to survive the 2000-char read limit.
$txt = [System.IO.File]::ReadAllText($File)
foreach ($ln in ($txt -split "`r?`n")) {
  if ($ln.StartsWith('=====') -or $ln.StartsWith('HDR:') -or $ln.StartsWith('ROWS:')) {
    $pos = 0
    while ($pos -lt $ln.Length) {
      $n = [Math]::Min($Len, $ln.Length - $pos)
      Write-Output ($ln.Substring($pos, $n))
      $pos += $n
    }
  }
}
