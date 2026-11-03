param()
# Iteration 115: adds the T025 row to the ranked table (after T024).
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$row = '| [T025](docs/techniques/T025-years-to-max-ledger.md) | The **budget sheet** - every sink priced in days of ' +
       'income: the gem framework **114 500** gems = **263 d** at 435/day (4 900 lab slots + 58 400 card slots + ' +
       '51 200 card levels), the stone bill **452 282** = 244 542 UW stats + 179 240 UW+ + 28 500 masteries = ' +
       '**108.7 / 56.5 / 20.1 / 8.05 / 1.36 / 0.43 years** by league band (promotion is **x252** on income), module ' +
       'shards **20 595** to slot L50 = **14.0 weeks** (5.8 with `Shatter Shards`) vs **41 y** to the L300 cap, ' +
       'the Vault at **73 000** keys = **87.7 years** at 16/week, `Ally` at **9.3 seasons** of bits, the 5-slot cell ' +
       'boost = **1.8x** a day of income, and the enhancement layer **12.374 S** = **4.84 x 10^7 years** -> buy to ' +
       'the knees | ★★★★ | 0 taps | **Verified** (arith., Rev 1: the six sums + six band divisions, `tools/years-ledger.ps1`) | none (gem rows); stones need Silver+, shards need T2 W90 |'
$lines = $txt -split "`r?`n"
$out = New-Object System.Collections.Generic.List[string]
$ins = 0
for ($n = 0; $n -lt $lines.Count; $n++) {
  $out.Add($lines[$n])
  if ($lines[$n].StartsWith('| [T024]')) { $out.Add($row); $ins++ }
}
if ($ins -ne 1) { Write-Output ('inserts=' + $ins); exit 1 }
[System.IO.File]::WriteAllText('README.md', ($out -join "`r`n"), $u8)
$chk = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$rows = @($chk -split "`r?`n" | Where-Object { $_.StartsWith('| [T0') })
$bad = 0
foreach ($r in $rows) { if (($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count -ne 7) { $bad++ } }
Write-Output ('inserts=' + $ins + ' totalRows=' + $rows.Count + ' badRows=' + $bad +
  ' moji=' + ([regex]::Matches($chk, [string][char]0x00E2)).Count)
