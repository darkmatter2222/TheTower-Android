param([string]$Section = 'card')
# Lists the sitemap URLs under one wiki section and marks which are already cited in docs/.
$sitemap = (Invoke-WebRequest -Uri 'https://www.tower-hub.com/sitemap.xml' -UseBasicParsing).Content
$pat = 'https://www\.tower-hub\.com/wiki/' + $Section + '/[a-z0-9-]+'
$urls = [regex]::Matches($sitemap, $pat) | ForEach-Object { $_.Value } | Sort-Object -Unique
$docs = Get-ChildItem -Path docs -Recurse -Filter *.md | ForEach-Object { [System.IO.File]::ReadAllText($_.FullName, [System.Text.Encoding]::UTF8) }
$all = $docs -join "`n"
$n = 0
$cited = 0
foreach ($u in $urls) {
  $slug = (($u -split '/wiki/')[1])
  $bare = ($slug -split '/')[-1]
  $n++
  if ($all.Contains($slug) -or $all.Contains($bare)) { $cited++ }
  else { Write-Output ('UNCITED ' + $slug) }
}
Write-Output ('section=' + $Section + ' total=' + $n + ' cited=' + $cited)
