param()
# Census of wiki sitemap pages vs the docs, matching bare slug, full slug, and brace-expanded forms.
$sitemap = (Invoke-WebRequest -Uri 'https://www.tower-hub.com/sitemap.xml' -UseBasicParsing).Content
$urls = [regex]::Matches($sitemap, 'https://www\.tower-hub\.com/wiki/[a-z0-9-]+/[a-z0-9-]+') | ForEach-Object { $_.Value } | Sort-Object -Unique
$docs = Get-ChildItem -Path docs -Recurse -Filter *.md | ForEach-Object { [System.IO.File]::ReadAllText($_.FullName, [System.Text.Encoding]::UTF8) }
$all = $docs -join "`n"
# Expand `{a,b,c}` written after a slug prefix (and before a slug suffix) into literal candidates.
$extra = New-Object System.Collections.Generic.List[string]
foreach ($m in [regex]::Matches($all, '\{([^{}]*)\}')) {
  $i = $m.Index
  $s = [Math]::Max(0, $i - 60)
  $head = $all.Substring($s, $i - $s)
  $pm = [regex]::Matches($head, '[A-Za-z0-9\-/]+$')
  $pre = ''
  if ($pm.Count -gt 0) { $pre = $pm[0].Value }
  $tailStart = $i + $m.Length
  $tm = [regex]::Match($all.Substring($tailStart, [Math]::Min(40, $all.Length - $tailStart)), '^[A-Za-z0-9\-/]+')
  $suf = $tm.Value
  foreach ($alt in ($m.Groups[1].Value -split ',')) { $extra.Add($pre + $alt.Trim() + $suf) }
}
$hay = $all + "`n" + ($extra -join "`n")
$sec = @{}
foreach ($u in $urls) {
  $slug = ($u -split '/wiki/')[1]
  $parts = $slug -split '/'
  if (-not $sec.ContainsKey($parts[0])) { $sec[$parts[0]] = @(0, 0) }
  $v = $sec[$parts[0]]
  $v[0] = $v[0] + 1
  if ($hay.Contains($slug) -or $hay.Contains($parts[1])) { $v[1] = $v[1] + 1 }
  else { Write-Output ('UNCITED ' + $slug) }
}
foreach ($k in ($sec.Keys | Sort-Object)) { Write-Output ($k + ' total=' + $sec[$k][0] + ' cited=' + $sec[$k][1]) }
