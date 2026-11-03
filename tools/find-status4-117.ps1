param()
# Diagnostics: rebuilds the four old strings exactly as patch-readme-117 does and counts them.
$txt = [System.IO.File]::ReadAllText('README.md', [System.Text.Encoding]::UTF8)
$pairs = @(
  , @('(**x4.43**) so block 1 is the whole practical buy, and its **x1.30** lifts the card product **270 -> 351** (T012)',
      'REPL1')
  , @('**Verified** (arith., Rev 23: the lab census has two consistent readings', 'REPL2')
  , @('**Verified** (arith., Rev 2: the 27-line + nine-page closure, the four stages, the fleet bill and the 52-week split, ' +
      '`tools/ledger-year1.ps1` / `1b` / `1c`)', 'REPL3')
  , @('the enhancement layer **12.374 S** = **4.84 x 10^7 years**', 'REPL4')
)
$k = 0
foreach ($p in $pairs) {
  $k++
  $old = $p[0]
  $c = ([regex]::Matches($txt, [regex]::Escape($old))).Count
  Write-Output ('pair ' + $k + ' elements=' + $p.Count + ' oldlen=' + $old.Length + ' count=' + $c)
  if ($c -ne 1) { Write-Output ('  old=[' + $old + ']') }
}
