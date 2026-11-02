param([string]$Url, [string]$Marker = '', [int]$Start = 0, [int]$Len = 2600)
# Fetch a Tower Hub page, strip tags, decode entities, then print a window of the article text.
$t = (Invoke-WebRequest -Uri $Url -UseBasicParsing).Content
$i = $t.IndexOf('</svg>')
if ($i -ge 0) { $t = $t.Substring($i) }
$txt = ($t -replace '(?s)<script.*?</script>', ' ') -replace '(?s)<[^>]+>', ' '
$txt = $txt -replace '\s+', ' '
$txt = $txt -replace '&amp;', '&' -replace '&#x27;', "'" -replace '&quot;', '"' -replace '&nbsp;', ' '
if ($Marker -ne '') { $Start = $txt.IndexOf($Marker) }
if ($Start -lt 0) { Write-Output "marker not found"; exit }
Write-Output ("LEN=" + $txt.Length + " START=" + $Start)
Write-Output $txt.Substring($Start, [Math]::Min($Len, $txt.Length - $Start))
