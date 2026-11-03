param()
# Minimal test of the T025 status old-string match.
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$a = '**Verified** (arith., Rev 2: the 27-line + nine-page closure, the four stages, the fleet bill and the 52-week split, '
$b = '`tools/ledger-year1.ps1` / `1b` / `1c`)'
$old = $a + $b
Write-Output ('a=' + ([regex]::Matches($txt, [regex]::Escape($a))).Count +
  ' b=' + ([regex]::Matches($txt, [regex]::Escape($b))).Count +
  ' joined=' + ([regex]::Matches($txt, [regex]::Escape($old))).Count)
Write-Output ('oldlen=' + $old.Length)
