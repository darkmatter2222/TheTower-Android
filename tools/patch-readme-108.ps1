param()
# Iteration 108: T006 Rev 22 in the ranked table (enemy-stat table closed at 20/20 lines).
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$old = '(arith., Rev 21:'
$new = '(arith., Rev 22: the enemy-stat table closed at 20/20 lines - Ranged Enemy Range at T13 W80 steps ' +
       '**-0.50 %** to **-15 %** on **1.0 T x 1.4^(n-1)** costs with **233 280 s** per level, i.e. the shared ' +
       'time ladder scaled **x1.00808**, **Sigma 60.50 T / 1 245.94 d**), (arith., Rev 21:'
$lines = $txt -split "`r?`n"
$done = 0
for ($n = 0; $n -lt $lines.Count; $n++) {
  if (-not $lines[$n].StartsWith('| [T006]')) { continue }
  $f = $lines[$n] -split '\|'
  if ($f.Count -ne 8) { Write-Output ('fields=' + $f.Count); exit 1 }
  $a = 0
  if ($f[5].Contains($old)) { $f[5] = $f[5] -replace ([regex]::Escape($old)), $new; $a++ }
  if ($a -ne 1) { Write-Output ('anchor count=' + $a); exit 1 }
  $lines[$n] = ($f -join '|')
  $done++
}
[System.IO.File]::WriteAllText('README.md', ($lines -join "`r`n"), $u8)
$chk = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$R = @(($chk -split "`r?`n") | Where-Object { $_.StartsWith('| [T006]') })[0]
$o = 0; $c = 0
foreach ($ch in $R.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
$rows = @($chk -split "`r?`n" | Where-Object { $_.StartsWith('| [T0') })
$bad = 0
foreach ($r in $rows) { if (($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count -ne 7) { $bad++ } }
Write-Output ('rows=' + $done + ' pipes=7 open=' + $o + ' close=' + $c + ' r22=' + $R.Contains('(arith., Rev 22:') +
  ' totalRows=' + $rows.Count + ' badRows=' + $bad + ' moji=' + ([regex]::Matches($chk, [string][char]0x00E2)).Count)
