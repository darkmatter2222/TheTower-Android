param()
# Iteration 105: T012 Rev 5 in the ranked table (card census closes + special-card lab layer).
$p = 'README.md'
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$extra = '; the card census is closed (**23 of 23** standard card pages printed, 22 with both ladders - the mastery law ' +
  'is universal as **v(k) = base + (k+1) x step**, base = 1 for x-rows, 0 for plain %, the printed offset otherwise, and ' +
  '22 stone costs sit in the four buckets); the special-card pages add the lab layer: **Double Death Ray** (T3 W300, ' +
  '+1 pp per level, sum **1.10 T** coins / 892 d), Nuke and Demon Mode recharge **1 500 to 300**, and both-at-9 masteries ' +
  'multiply (**x1.50 x x2.00 = x3.00**)'
$old = '(arith., Rev 4:'
$new = '(arith., Rev 5: the census is closed - 22 two-table pages all fit **v(k) = base + (k+1) x step** and the special-card ' +
       'pages print the Card-Research labs (Double Death Ray sum 1.10 T coins / 892.3 d, printed mastery product x3.00)), ' +
       '(arith., Rev 4:'
$lines = $txt -split "`r?`n"
$done = 0
for ($n = 0; $n -lt $lines.Count; $n++) {
  if (-not $lines[$n].StartsWith('| [T012]')) { continue }
  $f = $lines[$n] -split '\|'
  if ($f.Count -ne 8) { Write-Output ('fields=' + $f.Count); exit 1 }
  $a = 0; $b = 0
  if ($f[5].Contains($old)) { $f[5] = $f[5] -replace ([regex]::Escape($old)), $new; $a++ }
  if ($f[2].Contains('drops half coins')) { $f[2] = $f[2] + $extra; $b++ }
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
Write-Output ('rev5=' + $R.Contains('(arith., Rev 5:') + ' ddr=' + $R.Contains('Double Death Ray') +
  ' product=' + $R.Contains('x3.00') + ' universal=' + $R.Contains('universal') +
  ' moji=' + ([regex]::Matches($chk, [string][char]0x00E2)).Count)
