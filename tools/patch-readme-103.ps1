param()
# Iteration 103: T006 Rev 19 in the ranked table (the `Super Tower Bonus` ladder as the lab layer's fourth clock shape).
# NOTE: reads/writes with explicit UTF-8 so the ANSI-decode double-encoding bug cannot return.
$p = 'README.md'
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$extra = '; the B-scale **Super Tower Bonus** lab (gate **T8 W300**, **30** lv) prices **1 + 0.03L** from its first row ' +
  '(**1.03** -> **1.30** at L10 -> **x1.90** at the cap) for **115.94 B** coins over ten levels, bought as two +0.15 ' +
  'blocks of **21.37 B** and **94.57 B** (**x4.43**) so block 1 is the whole practical buy, and its **x1.30** lifts the ' +
  'card product **270 -> 351** (T012)'
$old = '(arith., Rev 18:'
$new = '(arith., Rev 19: + the **Super Tower Bonus** ladder as a fourth clock shape, **1 + 0.03L** 10/10, cap **x1.90**, ' +
       '**Sigma10 = 115.94 B** in blocks **21.37 B** / **94.57 B** = **x4.43**, price **x1.3451**/level not x1.5, card ' +
       'product **270 -> 351 -> 513**), (arith., Rev 18:'
$lines = $txt -split "`r?`n"
$done = 0
for ($n = 0; $n -lt $lines.Count; $n++) {
  if (-not $lines[$n].StartsWith('| [T006]')) { continue }
  $f = $lines[$n] -split '\|'
  if ($f.Count -ne 8) { Write-Output ('fields=' + $f.Count); exit 1 }
  $a = 0; $b = 0
  if ($f[5].Contains($old)) { $f[5] = $f[5] -replace ([regex]::Escape($old)), $new; $a++ }
  if ($f[2].EndsWith('**200,000 + 50,000n**)')) { $f[2] = $f[2] + $extra; $b++ }
  if ($a -ne 1 -or $b -ne 1) { Write-Output ('anchor counts rev=' + $a + ' desc=' + $b + ' f2tail=' + $f[2].Substring([Math]::Max(0, $f[2].Length - 60))); exit 1 }
  $lines[$n] = ($f -join '|')
  $done++
}
[System.IO.File]::WriteAllText($p, ($lines -join "`r`n"), $u8)
$chk = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$rows = @($chk -split "`r?`n" | Where-Object { $_.StartsWith('| [T0') })
$bad = 0
foreach ($r in $rows) { if (($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count -ne 7) { $bad++ } }
$R = @(($chk -split "`r?`n") | Where-Object { $_.StartsWith('| [T006]') })[0]
$o = 0; $c = 0
foreach ($ch in $R.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
Write-Output ('rows=' + $done + ' totalRows=' + $rows.Count + ' badRows=' + $bad + ' open=' + $o + ' close=' + $c)
Write-Output ('rev19=' + $R.Contains('(arith., Rev 19:') + ' blocks=' + $R.Contains('21.37 B') + ' cap=' + $R.Contains('x1.90') +
  ' prod=' + $R.Contains('270 -> 351 -> 513') + ' moji=' + ([regex]::Matches($chk, [string][char]0x00E2)).Count)
