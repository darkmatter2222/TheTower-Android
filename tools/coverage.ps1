param([string]$Section = 'guide')
# Precise coverage check: which sitemap slugs of one section appear in docs/techniques + docs/hypotheses only.
$sitemap = (Invoke-WebRequest -Uri 'https://www.tower-hub.com/sitemap.xml' -UseBasicParsing).Content
$urls = [regex]::Matches($sitemap, 'https://www\.tower-hub\.com/wiki/[a-z0-9-]+/[a-z0-9-]+') | ForEach-Object { $_.Value } | Sort-Object -Unique
$slugs = @($urls | ForEach-Object { ($_ -split '/wiki/')[1] } | Where-Object { $_.StartsWith($Section + '/') })
$paths = @()
if (Test-Path docs/techniques) { $paths += Get-ChildItem docs/techniques -Filter *.md }
if (Test-Path docs/hypotheses) { $paths += Get-ChildItem docs/hypotheses -Filter *.md }
$txt = ($paths | ForEach-Object { [System.IO.File]::ReadAllText($_.FullName, [System.Text.Encoding]::UTF8) }) -join "`n"
# Expand brace lists so `guide/{a,b}` counts as both.
$extra = @()
foreach ($m in [regex]::Matches($txt, '\{([^{}]*)\}')) {
  $head = $txt.Substring([Math]::Max(0, $m.Index - 60), [Math]::Min(60, $m.Index))
  $pm = [regex]::Match($head, '[A-Za-z0-9\-/]+$')
  $tail = $txt.Substring($m.Index + $m.Length, [Math]::Min(40, $txt.Length - $m.Index - $m.Length))
  $suf = [regex]::Match($tail, '^[A-Za-z0-9\-/]+').Value
  foreach ($alt in ($m.Groups[1].Value -split ',')) { $extra += ($pm.Value + $alt.Trim() + $suf) }
}
$hay = $txt + "`n" + ($extra -join "`n")
# A hyphenated last segment is distinctive enough to count on its own; plain words need the full slug.
$miss = @($slugs | Where-Object {
    $tail = ($_ -split '/')[-1]
    -not ($hay.Contains($_) -or ($tail.Contains('-') -and $hay.Contains($tail)))
  })
Write-Output ($Section + ' slugs=' + $slugs.Count + ' missing=' + $miss.Count)
foreach ($m in $miss) { Write-Output ('MISSING ' + $m) }
