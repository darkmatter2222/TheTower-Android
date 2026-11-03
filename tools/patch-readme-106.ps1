param()
# Iteration 106: T006 Rev 20 (assist labs) + T020 Rev 14 (per-track double-source) in the ranked table.
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$pairs = @(
  @{ pre = '| [T006]'; old = '(arith., Rev 19:';
     new = '(arith., Rev 20: assist labs - 8 labs at T19 W50 with cost 0.25 q x n and time 933 078 s x n, one lab ' +
           '**116.25 q / 5 021.8 d**, the **100 % law** 1 + 69 + 30, stone ladder **3k + 15** summing to **8 073** ' +
           'per track, printed caps **98 / 90 / 150 / 7 / 37**), (arith., Rev 19:' },
  @{ pre = '| [T020]'; old = '(arith., Rev 13:';
     new = '(arith., Rev 14: the three per-track pages double-source the standard curve and **all six special totals** ' +
           '(**441.24 s / 26.62 s / 1.51 s / 734.30 s / 336.82 s / 2.99 S**) and print both lab gates - unlock ' +
           '**T12 W60, 5 B coins / 576 000 s** and discount **T21 W60**), (arith., Rev 13:' }
)
$lines = $txt -split "`r?`n"
$done = 0
for ($n = 0; $n -lt $lines.Count; $n++) {
  foreach ($p in $pairs) {
    if (-not $lines[$n].StartsWith($p.pre)) { continue }
    $f = $lines[$n] -split '\|'
    if ($f.Count -ne 8) { Write-Output ($p.pre + ' fields=' + $f.Count); exit 1 }
    $a = 0
    if ($f[5].Contains($p.old)) { $f[5] = $f[5] -replace ([regex]::Escape($p.old)), $p.new; $a++ }
    if ($a -ne 1) { Write-Output ($p.pre + ' anchor count=' + $a + ' f5=' + $f[5].Substring(0, 90)); exit 1 }
    $lines[$n] = ($f -join '|')
    $done++
  }
}
[System.IO.File]::WriteAllText('README.md', ($lines -join "`r`n"), $u8)
$chk = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$rows = @($chk -split "`r?`n" | Where-Object { $_.StartsWith('| [T0') })
$bad = 0
foreach ($r in $rows) { if (($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count -ne 7) { $bad++ } }
foreach ($pre in @('| [T006]', '| [T020]')) {
  $R = @(($chk -split "`r?`n") | Where-Object { $_.StartsWith($pre) })[0]
  $o = 0; $c = 0
  foreach ($ch in $R.ToCharArray()) { if ($ch -eq '(') { $o++ }; if ($ch -eq ')') { $c++ } }
  Write-Output ($pre + ' pipes=7 ok open=' + $o + ' close=' + $c + ' r20=' + $R.Contains('(arith., Rev 20:') +
    ' r14=' + $R.Contains('(arith., Rev 14:'))
}
Write-Output ('rows=' + $done + ' totalRows=' + $rows.Count + ' badRows=' + $bad +
  ' moji=' + ([regex]::Matches($chk, [string][char]0x00E2)).Count)
