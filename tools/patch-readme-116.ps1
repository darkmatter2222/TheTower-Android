param()
# Iteration 116: rewrites the T025 ranked-table row (Rev 2) in README.md.
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$star = ([string][char]0x2605) * 4
$sum = 'The **budget sheet** - every sink priced in days of income: the gem framework **114 500** gems = ' +
  '**263 d** at 435/day (4 900 lab slots + 58 400 card slots + 51 200 card levels); the stone bill **452 282** ' +
  '= 244 542 UW stats + 179 240 UW+ + 28 500 masteries = **108.7 / 56.5 / 20.1 / 8.05 / 1.36 / 0.43 years** by ' +
  'league band (promotion is **x252** on income), and it closes at line level - nine page sums re-add to ' +
  '**244 542** exactly, in four stages **11 461 / 25 045 / 49 194 / 244 542**, so **79.9 %** of the bill sits in ' +
  'the last leg (levels 16 -> cap = **195 348** = 17x the first five) => take every UW line to **L10** first; ' +
  'four equipped slots to L50 = **4 x 20 595 = 82 380** shards = **56.0 weeks** unlabbed vs **23.1 weeks** with ' +
  '`Daily Mission Shards` at L50 (**T4 W70**, **x2.43** income) - one year of shards is **76 440** vs ' +
  '**185 640**, so the lab is the difference between finishing the fleet and being **5 940** short; plus the ' +
  'Vault at **73 000** keys = **87.7 years**, `Ally` at **9.3 seasons** of bits, a full Guild Shop ' +
  '(**1 225** tokens) every **6.6 weeks**, the 5-slot cell boost = **1.8x** a day of income (**1 011 h** of x1.5 ' +
  'in one year), and the enhancement layer **12.374 S** = **4.84 x 10^7 years**'
$status = '**Verified** (arith., Rev 2: the 27-line + nine-page closure, the four stages, the fleet bill and the ' +
  '52-week split, `tools/ledger-year1.ps1` / `1b` / `1c`)'
$prereq = 'none (gem rows); stones need Silver+, shards need T2 W90 + T4 W70'
$row = '| [T025](docs/techniques/T025-years-to-max-ledger.md) | ' + $sum + ' | ' + $star + ' | 0 taps | ' +
  $status + ' | ' + $prereq + ' |'
$lines = $txt -split "`r?`n"
$n = 0
for ($i = 0; $i -lt $lines.Count; $i++) {
  if ($lines[$i].StartsWith('| [T025]')) { $lines[$i] = $row; $n++ }
}
if ($n -ne 1) { Write-Output ('replaced=' + $n); exit 1 }
[System.IO.File]::WriteAllText('README.md', ($lines -join "`r`n"), $u8)
$chk = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$rows = @($chk -split "`r?`n" | Where-Object { $_.StartsWith('| [T0') })
$bad = 0
foreach ($r in $rows) { if (($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count -ne 7) { $bad++ } }
Write-Output ('replaced=' + $n + ' rows=' + $rows.Count + ' badRows=' + $bad +
  ' strayE2=' + ([regex]::Matches($chk, [string][char]0x00E2)).Count)
