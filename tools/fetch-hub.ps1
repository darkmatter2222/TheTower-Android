param([string]$Urls, [int]$Cap = 4500)
# Fetches Tower Hub pages (comma-separated list) and prints every data table found in the
# embedded RSC payload, plus the article prose. Payload rows use escaped quotes, so the
# tables must be parsed before tag-stripping (the rendered HTML cuts each table to 10 rows).
foreach ($u in ($Urls -split ',')) {
  if ($u.Trim() -eq '') { continue }
  try { $t = (Invoke-WebRequest -Uri $u.Trim() -UseBasicParsing).Content } catch { Write-Output "FAIL $u"; continue }
  $name = $u -replace 'https://www.tower-hub.com/wiki/', ''
  Write-Output "===== $name"
  foreach ($m in [regex]::Matches($t, '\\"headers\\":\[([^\]]*)\],\\"rows\\":\[(.*?)\]\}')) {
    Write-Output ("HDR:  " + ($m.Groups[1].Value -replace '\\"', '"'))
    Write-Output ("ROWS: " + ($m.Groups[2].Value -replace '\\"', '"'))
  }
  $body = $t
  $i = $body.IndexOf('</svg>')
  if ($i -ge 0) { $body = $body.Substring($i) }
  $txt = ($body -replace '(?s)<script.*?</script>', ' ') -replace '(?s)<[^>]+>', ' '
  $txt = $txt -replace '\s+', ' '
  if ($Skip -gt 0 -and $txt.Length -gt $Skip) { $txt = $txt.Substring($Skip) }
  if ($Cap -gt 0 -and $txt.Length -gt $Cap) { $txt = $txt.Substring(0, $Cap) }
  Write-Output ("TEXT: " + $txt)
  Write-Output ""
}
