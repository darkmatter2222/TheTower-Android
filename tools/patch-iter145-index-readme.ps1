param()
# Iteration 145: INDEX (T006 Rev 41 + the session-136 anchor) and README (T006 cells). ASCII-only literals.
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
$a1 = '**Verified (Rev 40**, arithmetic: the **value side completed for eleven of eighteen rows**'
$b1 = '**Verified (Rev 41**, arithmetic: **layer A priced on value, 12 of 18 rows done** - the 39 UW tables close as ' +
  '**31 leveled tables + 8 one-level unlock rows**, `Sigma ln` **65.9162** (raw pp) / **63.4826** (1+pp), density ' +
  '**0.018143 / 0.017473** per day (**0.067582** with the stack) so **A straddles the par** (**1.010x** vs **0.973x**) - ' +
  'the only layer whose side of the par depends on the pp reading; the schedule reads **E D F sheet L Q A par J H M K O G** ' +
  '(raw) and **E D F sheet L par A Q M J K H O G** (1+pp), five UW lines carry `ln 30`, the six 287-608 M lines carry ' +
  '**29.1 %** of the layer, coverage **12 rows / 145 of 197 lines / Sigma ln 259.481 / 18 510.6 d**, ' +
  '`tools/lab-value-layer-A.ps1`), ' + $a1

$a2 = '- [2026-11-03 - session 135 (T006 Rev 40)](log/2026-11-03.md#2026-11-03---session-135-iteration-144-four-more-lab-layers-priced-on-value)'
$b2 = $a2 + "`r`n" +
  '- [2026-11-03 - session 136 (T006 Rev 41)](log/2026-11-03.md#2026-11-03---session-136-iteration-145-layer-a-on-value-the-39-uw-lab-tables)'

Patch 'docs/INDEX.md' @( $a1, $b1, '1', $a2, $b2, '1' )

# ---------- README ----------
$c1 = 'schedule reads **E D F sheet L Q par J H M K O G**'
$d1 = 'schedule reads **E D F sheet L Q A par J H M K O G** (raw pp) or **E D F sheet L par A Q M J K H O G** (1 + pp)'

$c2 = '**Verified** (arith., Rev 40: the **value side completed for eleven of eighteen rows**'
$d2 = '**Verified** (arith., Rev 41: **layer A priced on value** - 31 leveled tables + 8 unlock rows = 39, `Sigma ln` ' +
  '**65.9162 / 63.4826**, density **0.018143 / 0.017473** per day so it straddles the par (**1.010x** / **0.973x**), ' +
  'coverage **12 rows / 145 of 197 lines / Sigma ln 259.481**, `tools/lab-value-layer-A.ps1`), ' + $c2

Patch 'README.md' @( $c1, $d1, '1', $c2, $d2, '1' )
