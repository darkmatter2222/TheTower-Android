param()
# Iteration 146: INDEX (T006 Rev 42 + the session-137 anchor) and README (T006 cells). ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)

function Patch([string] $path, [string[]] $flat) {
  $txt = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)
  $n = 0
  for ($i = 0; $i -lt $flat.Count; $i += 3) {
    $o = $flat[$i]; $w = $flat[$i + 1]; $expect = [int]$flat[$i + 2]
    $c = ([regex]::Matches($txt, [regex]::Escape($o))).Count
    if ($c -ne $expect) { Write-Output ($path + ' MISS[' + $i + '] [' + $o + '] count=' + $c + ' expect=' + $expect); return }
    $txt = $txt.Replace($o, $w); $n++
  }
  [System.IO.File]::WriteAllText($path, $txt, $u8)
  Write-Output ($path + ' applied=' + $n)
}

# ---------- INDEX ----------
$a1 = '**Verified (Rev 41**, arithmetic: **layer A priced on value, 12 of 18 rows done**'
$b1 = '**Verified (Rev 42**, arithmetic: **the four single-law blocks, 16 of 18 rows done** - `Sigma ln` **43.8101 / ' +
  '20.4072 / 27.2096 / 19.7016** for B, B2, C, P under reading R (**1.5134 / 0.7430 / 21.9267 / 1.0024** under P), ' +
  'densities **0.014480 / 0.003387 / 0.000020 / 0.000006** per day; new identity **ln = ln(cap / step)** so every ' +
  'shared-ladder line is exactly **ln 30 = 3.4012** (per-line 3.401 for B, B2 and C); the reading fork is **29x** for B ' +
  '(the largest in the ledger) and **C** and **P** are last in **both** readings (2.0e-5 and 6.0e-6). The merged schedule ' +
  'has an **invariant head E > D > F > medal sheet > L**, rows 6-15 sit in one 8x band (**0.003 ... 0.026**) so order ' +
  'matters less than finishing there, and `C`/`P` come last. Coverage **16 rows / 179 of 197 lines / Sigma ln 370.610**; ' +
  'only I and N remain, `tools/lab-value-blocks.ps1`), ' + $a1

$a2 = '- [2026-11-03 - session 136 (T006 Rev 41)](log/2026-11-03.md#2026-11-03---session-136-iteration-145-layer-a-on-value-the-39-uw-lab-tables)'
$b2 = $a2 + "`r`n" +
  '- [2026-11-03 - session 137 (T006 Rev 42)](log/2026-11-03.md#2026-11-03---session-137-iteration-146-the-four-single-law-blocks-on-value)'

Patch 'docs/INDEX.md' @( $a1, $b1, '1', $a2, $b2, '1' )

# ---------- README ----------
$c1 = '**E D F sheet L Q A par J H M K O G** (raw pp)'
$d1 = '**E D F sheet L Q A par B J H M K O G B2 C P** (raw pp)'

$c2 = '**E D F sheet L par A Q M J K H O G** (1 + pp)'
$d2 = '**E D F sheet L par A Q M J K H G O B B2 C P** (1 + pp); with B, B2, C, P added the head stays ' +
  '**E > D > F > sheet > L** in both readings and **C**/**P** are last in both'

$c3 = '**Verified** (arith., Rev 41: **layer A priced on value**'
$d3 = '**Verified** (arith., Rev 42: **16 of 18 rows value-complete** - B 43.8101 / B2 20.4072 / C 27.2096 / P 19.7016 ' +
  'under R, densities **0.014480 / 0.003387 / 0.000020 / 0.000006**, the identity **ln = ln(cap/step)** giving **ln 30** ' +
  'per shared-ladder line, coverage **179 of 197 lines / Sigma ln 370.610**, `tools/lab-value-blocks.ps1`), ' + $c3

Patch 'README.md' @( $c1, $d1, '1', $c2, $d2, '1', $c3, $d3, '1' )
