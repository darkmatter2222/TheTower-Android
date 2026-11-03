param()
# Counts parens in the HEAD vs working-copy T006 row (was the imbalance pre-existing?).
$head = (git show HEAD:README.md) -join "`n"
$R = @(($head -split "`n") | Where-Object { $_.StartsWith('| [T006]') })[0]
$o = 0; $c = 0
foreach ($ch in $R.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
Write-Output ('HEAD T006 open=' + $o + ' close=' + $c)
# Per-field breakdown of the working copy row.
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$W = @(($txt -split "`r?`n") | Where-Object { $_.StartsWith('| [T006]') })[0]
$f = $W -split '\|'
for ($n = 1; $n -lt $f.Count; $n++) {
  $o2 = ([regex]::Matches($f[$n], '\(')).Count; $c2 = ([regex]::Matches($f[$n], '\)')).Count
  if ($o2 -ne $c2) { Write-Output ('field ' + $n + ' open=' + $o2 + ' close=' + $c2 + ' :: ' + $f[$n].Trim().Substring(0, 80)) }
}
