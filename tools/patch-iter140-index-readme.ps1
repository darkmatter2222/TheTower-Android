param()
# Iteration 140: INDEX (T015 Rev 11 + the session-131 anchor) and README (T015 cells).
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
$a1 = '**Verified (Rev 10**, arithmetic: the **cross-bot ranking**'
$b1 = '**Verified (Rev 11**, arithmetic: the **Bot+ block on the same scale** - all three ladders are one law ' +
  '**price(n) = 100 + s(n-1)** with **s = 40** (stat lines) / **50** (Bot+) / **200** (Echoing Shot), so the first step of ' +
  'any line is **100/rho**: **Echoing Shot 33.33e-4** (rho 3) and **Titan Shock 20.00e-4** (rho 5) are the two densest buys ' +
  'in the medal layer; the par-optimal Bot+ block is **78 levels / 43 550 medals = 72.5 %** of the capped **60 100** with ' +
  '**both cell lines stopping at level 15 = 6 750**, the merged plan is **445 taps / 212 660 medals = 175.0 events**, and ' +
  'the **6 250-stone** gate costs only **0.3-78 weeks** of the T014 grid, `tools/botplus-density.ps1`), ' + $a1

$a2 = '- [2026-11-03 - session 130 (T015 Rev 10)](log/2026-11-03.md#2026-11-03---session-130-iteration-139-the-cross-bot-ranking)'
$b2 = $a2 + "`r`n" +
  '- [2026-11-03 - session 131 (T015 Rev 11)](log/2026-11-03.md#2026-11-03---session-131-iteration-140-the-bot-plus-block-on-one-scale)'

Patch 'docs/INDEX.md' @( $a1, $b1, '1', $a2, $b2, '1' )

# ---------- README ----------
$c1 = 'and the bot order is **Thunder 1.30 > Flame 1.28 > Amplify 0.93 > Golden 0.92 > Bot Bot 0.86 e-4/medal**)'
$d1 = 'and the bot order is **Thunder 1.30 > Flame 1.28 > Amplify 0.93 > Golden 0.92 > Bot Bot 0.86 e-4/medal**; the Bot+ ' +
  'block shares the scale (`price = 100 + s(n-1)`, `s = 40/50/200`) and its **43 550**-medal par plan puts **Echoing Shot ' +
  '(33.33e-4)** and **Titan Shock (20.00e-4)** at the very top of the whole medal layer)'

$c2 = '**Verified** (arith., Rev 10: the **cross-bot ranking**'
$d2 = '**Verified** (arith., Rev 11: the **Bot+ block on one scale** - `price(n) = 100 + s(n-1)` with `s = 40/50/200`, ' +
  'first step **100/rho**, the par block is **78 levels / 43 550 medals = 72.5 %** of **60 100** with the cell lines ' +
  'stopping at **15 = 6 750**, and the merged sheet is **445 taps / 212 660 medals = 175.0 events**), ' + $c2

Patch 'README.md' @( $c1, $d1, '1', $c2, $d2, '1' )
