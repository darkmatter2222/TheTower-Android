param()
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$cand = @('Buy multiplier` completes for **562 500** coins / **89.8 h** |', '**Verified** (arith., Rev 27: the Main Research category', '**Verified** (arith., Rev 28', 'Buy multiplier` completes for **562 500** coins / **89.8 h**;')
foreach ($c in $cand) { Write-Output ('count=' + ([regex]::Matches($txt, [regex]::Escape($c))).Count + ' [' + $c + ']') }
