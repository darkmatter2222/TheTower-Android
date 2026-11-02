# Validates: (1) every relative link in the markdown files resolves to a file,
# (2) every #fragment matches a heading slug generated the way GitHub's slugger does,
# (3) every README technique row has exactly 7 pipes (6 columns).
$ErrorActionPreference = 'Stop'
$root = 'C:\Users\ryans\source\repos\TheTower-Android'
# vendored tool copies ship their own markdown; only the repo's own docs are validated
$skip = '\\apk\\|\\node_modules\\|\\tools\\'

function Get-Slug([string]$heading) {
  $chars = $heading.ToLower().ToCharArray() | ForEach-Object {
    if (($_ -ge 'a' -and $_ -le 'z') -or ($_ -ge '0' -and $_ -le '9') -or $_ -eq '_' -or $_ -eq '-' -or $_ -eq ' ') { "$_" }
  }
  return (-join $chars) -replace ' ', '-'
}

$headingsByFile = @{}
Get-ChildItem -Path $root -Recurse -Filter *.md | Where-Object { $_.FullName -notmatch $skip } | ForEach-Object {
  $p = $_.FullName
  $txt = Get-Content -Raw -LiteralPath $p
  $list = New-Object System.Collections.Generic.List[string]
  foreach ($m in [regex]::Matches($txt, '(?m)^#{1,6}[ \t]+(.+?)[ \t]*(?:\r?\n)')) { $list.Add((Get-Slug $m.Groups[1].Value)) }
  $headingsByFile[$p] = $list
}

$missing = 0; $badAnchor = 0; $links = 0
Get-ChildItem -Path $root -Recurse -Filter *.md | Where-Object { $_.FullName -notmatch $skip } | ForEach-Object {
  $p = $_.FullName; $dir = Split-Path $p -Parent
  $txt = Get-Content -Raw -LiteralPath $p
  foreach ($m in [regex]::Matches($txt, '\]\(([^)\s]*)\)')) {
    $t = $m.Groups[1].Value
    if ($t -match '^https?:') { continue }
    $links++
    $frag = $null
    if ($t -match '#') { $t, $frag = $t -split '#', 2 }
    $target = if ($t -eq '') { $p } else { Join-Path $dir $t }
    $target = [System.IO.Path]::GetFullPath($target)
    if (-not (Test-Path -LiteralPath $target)) { $missing++; Write-Output "MISSING $p -> $($m.Groups[1].Value)" ; continue }
    if ($frag) {
      if (-not $headingsByFile[$target] -or $headingsByFile[$target] -notcontains $frag) {
        $badAnchor++; Write-Output "BADANCHOR $p -> $($m.Groups[1].Value)"
      }
    }
  }
}

$rows = (Get-Content -LiteralPath (Join-Path $root 'README.md') | Where-Object { $_ -match '^\| \[T' })
$badRows = @($rows | Where-Object { ([regex]::Matches($_, '\|')).Count -ne 7 })
Write-Output ("links={0} missing={1} badAnchors={2} readmeRows={3} badRows={4}" -f $links, $missing, $badAnchor, $rows.Count, $badRows.Count)
$badRows | ForEach-Object { Write-Output ("BADROW: " + $_.Substring(0, [Math]::Min(60, $_.Length))) }
