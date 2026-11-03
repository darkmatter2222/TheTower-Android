param()
# Iteration 107: T006 Rev 21 in the ranked table.
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$old = '(arith., Rev 20:'
$new = '(arith., Rev 21: the UW cap row fully enumerated 39/39 cells re-adding to **669**, and the ' +
       '`Swamp Rend - Additional Enemies` **6/9/11** three-way skew logged), (arith., Rev 20:'
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
Write-Output ('rows=' + $done + ' pipes=7 open=' + $o + ' close=' + $c + ' r21=' + $R.Contains('(arith., Rev 21:') +
  ' totalRows=' + $rows.Count + ' badRows=' + $bad + ' moji=' + ([regex]::Matches($chk, [string][char]0x00E2)).Count)
