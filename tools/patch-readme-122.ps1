param()
# Iteration 122: patches the T012 ranked-table row (mastery census closed on a second source).
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)

$o1 = 'time tail **1.13**|'
$n1 = 'time tail **1.13**) ; the mastery layer is closed on a second source - **32** rows re-add to **28 500** stones, ' +
  'the shared lab clock is **t(n) = 250 x (n + 1)** h (**562.5 d** per lab, **1 600 q** and **13.2 y** for all 32 ' +
  'stacked), **31/32** ladders are exact, `Enhanced Ray` is **750 st / 5 to 50 %**, gate **T16 W100 + 30 cards at L7**|'

$o2 = 'and a monotone-decaying ratio tail), (arith., '
$n2 = 'and a monotone-decaying ratio tail), (arith., Rev 9: the mastery census double-sources - **32** rows re-add to ' +
  '**28 500** stones exactly, the lab clock closes as **250 x (n + 1)** h = **562.5 d**, **31/32** ladders exact), (arith., '

$map = @($o1, $n1, $o2, $n2)
for ($i = 0; $i -lt $map.Length; $i += 2) {
  $c = ([regex]::Matches($txt, [regex]::Escape($map[$i]))).Count
  if ($c -ne 1) { Write-Output ('pair ' + ($i / 2 + 1) + ' count=' + $c); exit 1 }
  $txt = $txt.Replace($map[$i], $map[$i + 1])
}
[System.IO.File]::WriteAllText('README.md', $txt, $u8)
$chk = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$rows = @($chk -split "`r?`n" | Where-Object { $_.StartsWith('| [T0') })
$bad = 0
foreach ($r in $rows) { if (($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count -ne 7) { $bad++ } }
Write-Output ('applied=2 rows=' + $rows.Count + ' badRows=' + $bad +
  ' stones=' + $chk.Contains('28 500') + ' closed=' + $chk.Contains('250 x (n + 1)') +
  ' gate=' + $chk.Contains('T16 W100 + 30 cards at L7') + ' rev9=' + $chk.Contains('Rev 9: the mastery census'))
