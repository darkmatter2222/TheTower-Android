param([string]$Urls)
foreach ($u in ($Urls -split ',')) {
  if ($u.Trim() -eq '') { continue }
  try { $t = (Invoke-WebRequest -Uri $u.Trim() -UseBasicParsing).Content } catch { Write-Output "FAIL $u"; continue }
  $name = $u -replace 'https://www.tower-hub.com/wiki/', ''
  $body = $t
  $i = $body.IndexOf('</svg>')
  if ($i -ge 0) { $body = $body.Substring($i) }
  $txt = ($body -replace '(?s)<script.*?</script>', ' ') -replace '(?s)<[^>]+>', ' '
  $txt = $txt -replace '\s+', ' '
  Write-Output ("== " + $name)
  foreach ($pat in @('Maxing all', 'in total', 'Total cost')) {
    $j = $txt.IndexOf($pat)
    if ($j -ge 0) {
      $len = [Math]::Min(190, $txt.Length - $j)
      Write-Output ("   [" + $pat + "] " + $txt.Substring([Math]::Max(0, $j - 60), $len))
      break
    }
  }
}
