param()
# Iteration 104: T012 Rev 4 in the ranked table (per-card pages double-source both ladders + Coin Decay).
$p = 'README.md'
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$extra = '; the eight per-card pages print both ladders as their own tables (**Card Level / Effect** 7 rows, ' +
  '**Mastery Level / Value** 10 rows, k = 0 to 9), so the mastery law is printed twice (**level 0 = one tenth of level 9**; ' +
  'only `Wave Skip` breaks it) and the same pages print **Coin Decay** - an enemy alive 3 waves drops half coins'
$old = '(arith., Rev 3:'
$new = '(arith., Rev 4: 8 per-card pages double-source both ladders, the mastery law **v(k) = base + (k+1) x step** has ' +
       'level 0 = one tenth of level 9 with `Wave Skip` the only break, the per-page stone costs confirm the four buckets, ' +
       'and **Coin Decay** is printed - half coins once an enemy has lived 3 waves), (arith., Rev 3:'
$lines = $txt -split "`r?`n"
$done = 0
for ($n = 0; $n -lt $lines.Count; $n++) {
  if (-not $lines[$n].StartsWith('| [T012]')) { continue }
  $f = $lines[$n] -split '\|'
  if ($f.Count -ne 8) { Write-Output ('fields=' + $f.Count); exit 1 }
  $a = 0; $b = 0
  if ($f[5].Contains($old)) { $f[5] = $f[5] -replace ([regex]::Escape($old)), $new; $a++ }
  if ($f[2].EndsWith('**71 d** of income at 700 T/day')) { $f[2] = $f[2] + $extra; $b++ }
  if ($a -ne 1 -or $b -ne 1) { Write-Output ('anchor counts rev=' + $a + ' desc=' + $b + ' f2tail=' + $f[2].Substring([Math]::Max(0, $f[2].Length - 60)) + ' f5=' + $f[5]); exit 1 }
  $lines[$n] = ($f -join '|')
  $done++
}
[System.IO.File]::WriteAllText($p, ($lines -join "`r`n"), $u8)
$chk = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$rows = @($chk -split "`r?`n" | Where-Object { $_.StartsWith('| [T0') })
$bad = 0
foreach ($r in $rows) { if (($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count -ne 7) { $bad++ } }
$R = @(($chk -split "`r?`n") | Where-Object { $_.StartsWith('| [T012]') })[0]
$o = 0; $c = 0
foreach ($ch in $R.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
Write-Output ('rows=' + $done + ' totalRows=' + $rows.Count + ' badRows=' + $bad + ' open=' + $o + ' close=' + $c)
Write-Output ('rev4=' + $R.Contains('(arith., Rev 4:') + ' decay=' + $R.Contains('Coin Decay') +
  ' tenth=' + $R.Contains('one tenth of level 9') + ' moji=' + ([regex]::Matches($chk, [string][char]0x00E2)).Count)
