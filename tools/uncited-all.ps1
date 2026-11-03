param()
# Lists every wiki section in the sitemap with uncited counts, reusing uncited-pages.ps1 logic.
$sitemap = (Invoke-WebRequest -Uri 'https://www.tower-hub.com/sitemap.xml' -UseBasicParsing).Content
$urls = [regex]::Matches($sitemap, 'https://www\.tower-hub\.com/wiki/[a-z0-9-]+/[a-z0-9-]+') | ForEach-Object { $_.Value } | Sort-Object -Unique
$docs = Get-ChildItem -Path docs -Recurse -Filter *.md | ForEach-Object { [System.IO.File]::ReadAllText($_.FullName, [System.Text.Encoding]::UTF8) }
$all = $docs -join "`n"
$sec = @{}
foreach ($u in $urls) {
  $slug = ($u -split '/wiki/')[1]
  $parts = $slug -split '/'
  if (-not $sec.ContainsKey($parts[0])) { $sec[$parts[0]] = @(0, 0) }
  $v = $sec[$parts[0]]
  $v[0] = $v[0] + 1
  if ($all.Contains($slug) -or $all.Contains($parts[1])) { $v[1] = $v[1] + 1 }
  else { Write-Output ('UNCITED ' + $slug) }
}
foreach ($k in ($sec.Keys | Sort-Object)) { Write-Output ($k + ' total=' + $sec[$k][0] + ' cited=' + $sec[$k][1]) }
