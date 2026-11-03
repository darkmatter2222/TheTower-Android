param()
# Iteration 139: INDEX (T015 Rev 10 + the session-130 anchor) and README (T015 cells).
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
$a1 = '**Verified (Rev 9**, arithmetic: the **four-line density system**'
$b1 = '**Verified (Rev 10**, arithmetic: the **cross-bot ranking** - every line collapses to **rho = base/increment** ' +
  'with **gain(n) = 1/(rho+n-1)** (growing) or **1/(rho-n+1)** (cooldowns), so the first step of any line is **100/rho x ' +
  '10^-4**: Flame Damage **16.00** > Flame DmgRed = Thunder Linger **15.00** > Flame Range **13.33** > Thunder Range ' +
  '**12.00** > Amplify Bonus **11.43** > the four rho = 10 lines **10.00** ; bot-vs-bot at the par (**Sigma ln / medals**) ' +
  '**Thunder 1.30 > Flame 1.28 > Amplify 0.93 > Golden 0.92 > Bot Bot 0.86 e-4**, Thunder is **100.0 %** above par and ' +
  'Bot Bot is last on its **rho = 21** Bonus line; the feasibility-constrained sheet is **367 taps / 169 110 medals = ' +
  '139.2 events ~ 278 weeks** with the unlocks landing after **0 / 150 / 2 790 / 10 330 / 116 090** medals, ' +
  '`tools/bot-cross-ranking.ps1`), ' + $a1

$a2 = '- [2026-11-03 - session 129 (T015 Rev 9, H067)](log/2026-11-03.md#2026-11-03---session-129-iteration-138-the-four-line-density-system)'
$b2 = $a2 + "`r`n" +
  '- [2026-11-03 - session 130 (T015 Rev 10)](log/2026-11-03.md#2026-11-03---session-130-iteration-139-the-cross-bot-ranking)'

Patch 'docs/INDEX.md' @( $a1, $b1, '1', $a2, $b2, '1' )

# ---------- README ----------
$c1 = 'exactly (`1/(n+9)`) while Range is open)'
$d1 = 'exactly (`1/(n+9)`) while Range is open; across all 19 lines the first step is **100/rho x 10^-4** so the order is ' +
  'Flame Damage > Flame DmgRed = Thunder Linger > Flame Range > Thunder Range > Amplify Bonus > the four rho = 10 lines, ' +
  'and the bot order is **Thunder 1.30 > Flame 1.28 > Amplify 0.93 > Golden 0.92 > Bot Bot 0.86 e-4/medal**)'

$c2 = '**Verified** (arith., Rev 9: the **four-line density system**'
$d2 = '**Verified** (arith., Rev 10: the **cross-bot ranking** - `gain(n) = 1/(rho+n-1)` or `1/(rho-n+1)` with the first ' +
  'step **100/rho**, the par-optimal sheet is **367 taps / 169 110 medals = 139.2 events** and Thunder is **100.0 %** ' +
  'above par), ' + $c2

Patch 'README.md' @( $c1, $d1, '1', $c2, $d2, '1' )
