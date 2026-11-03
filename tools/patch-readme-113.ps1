param()
# Iteration 113: T008 Rev 11 (orbless acceptance test), T020 Rev 16 (notation key), T021 Rev 4 (enumerated locks).
$u8 = New-Object System.Text.UTF8Encoding($false)
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$pairs = @(
  @{ pre = '| [T008]'; old = '(arith., Rev 10:';
     new = '(arith., Rev 11: the orbless acceptance test - uptime **>50 %** with a second BH, **GT bonus >= 16x**, ' +
           '**BH size 44-48 m at 30 m range**, Spotlight **3 beams / >= 40 degrees / >= 20x** (**>= 60** for SL4), ' +
           'kills **>= 20x** faster inside the beam, Wall Regen **10** + Wall Thorns **11** + SPB **25** + Def % **23**, ' +
           '**CL <= 596x**, **SLM >= 34x**, SH -> GComp near **60 %** uptime, ACP ancestral **+1 000 waves**), ' +
           '(arith., Rev 10:' },
  @{ pre = '| [T020]'; old = '(arith., Rev 15:';
     new = '(arith., Rev 16: the notation key extended - **N 10^30, D 10^33**, then the two-letter pairs ' +
           '**aa 10^36 ... av 10^99**, every step x1 000, so a cell reading **4.11ab** is 4.11 x 10^39), ' +
           '(arith., Rev 15:' },
  @{ pre = '| [T021]'; old = '(arith., Rev 3)';
     new = '(arith., Rev 4: the four locks enumerated at **17 / 17 / 12 / 9 = 55** printed stat lines, the four ' +
           'printed module loadouts, the printed order Attack -> UW -> Health -> Utility, max vs min range worth ' +
           '**~+2 000 waves** in the UW lock, AD **3.8 / 6.5 / 10.5x** by rarity, the **22** bounce-target ceiling), ' +
           '(arith., Rev 3)' }
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
    if ($a -ne 1) { Write-Output ($p.pre + ' anchor count=' + $a); exit 1 }
    $lines[$n] = ($f -join '|')
    $done++
  }
}
[System.IO.File]::WriteAllText('README.md', ($lines -join "`r`n"), $u8)
$chk = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$rows = @($chk -split "`r?`n" | Where-Object { $_.StartsWith('| [T0') })
$bad = 0
foreach ($r in $rows) { if (($r.ToCharArray() | Where-Object { $_ -eq '|' }).Count -ne 7) { $bad++ } }
Write-Output ('rows=' + $done + ' totalRows=' + $rows.Count + ' badRows=' + $bad +
  ' moji=' + ([regex]::Matches($chk, [string][char]0x00E2)).Count)
