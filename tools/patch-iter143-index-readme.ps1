param()
# Iteration 143: INDEX (T006 Rev 39 + the session-134 anchor) and README (T006 cells). ASCII-only literals.
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
$a1 = '**Verified (Rev 38**, arithmetic: the **whole lab tree on the calendar**'
$b1 = '**Verified (Rev 39**, arithmetic: the **value side of the cheap layers** - `Sigma ln` from the printed laws gives ' +
  '**E 2.3026 / D 2.9957 / F 5.9915 / L 8.0064 / M 40.7349 / O 4.5990 / G 0.6123**, so the density order is ' +
  '**E 0.452374 > D 0.116339 > F 0.114946 > the medal sheet 0.050720 > L 0.033768 > par 0.017957 > M 0.011315 > ' +
  'O 0.003481 > G 0.003412 per day**: three lab layers beat the whole sheet, **L swaps ahead of G** (9.9x) against the ' +
  'cost order, and Garlic Thorns is the densest object found anywhere (**1.685094/day** with the stack, **94x** the par); ' +
  'the printed per-unit figures re-add from the same laws (**373 B**/point, **1.3889e16**/multiplier), ' +
  '`tools/lab-value-layers.ps1`), ' + $a1

$a2 = '- [2026-11-03 - session 133 (T006 Rev 38)](log/2026-11-03.md#2026-11-03---session-133-iteration-142-the-lab-tree-on-the-calendar)'
$b2 = $a2 + "`r`n" +
  '- [2026-11-03 - session 134 (T006 Rev 39)](log/2026-11-03.md#2026-11-03---session-134-iteration-143-the-value-side-of-the-cheap-lab-layers)'

Patch 'docs/INDEX.md' @( $a1, $b1, '1', $a2, $b2, '1' )

# ---------- README ----------
$c1 = 'five layers are 12 lines and **134 d** with the stack, which fits inside the **350 d** medal sheet'
$d1 = 'five layers are 12 lines and **134 d** with the stack, which fits inside the **350 d** medal sheet; with the value ' +
  'laws summed the schedule is **E > D > F > L > the sheet > M > O > G** (Garlic Thorns **0.452/day**, 94x the par with ' +
  'the stack)'

$c2 = '**Verified** (arith., Rev 38: the **whole lab tree on the calendar**'
$d2 = '**Verified** (arith., Rev 39: the **value side of the cheap layers** - `Sigma ln` **2.3026 / 2.9957 / 5.9915 / ' +
  '8.0064 / 40.7349 / 4.5990 / 0.6123** for E, D, F, L, M, O, G gives the density order **E 0.452374 > D 0.116339 > ' +
  'F 0.114946 > sheet 0.050720 > L 0.033768 > par 0.017957 > M 0.011315 > O 0.003481 > G 0.003412** per day, so L swaps ' +
  'ahead of G and the four best layers are **86 d** with the stack for `Sigma ln` **19.30**, `tools/lab-value-layers.ps1`), ' +
  $c2

Patch 'README.md' @( $c1, $d1, '1', $c2, $d2, '1' )
