param()
# Iteration 138: INDEX (T015 Rev 9 + H067 + the session-129 anchor) and README (T015 cells).
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
$a1 = '**Verified (Rev 8**, arithmetic: the **uptime density ladder**'
$b1 = '**Verified (Rev 9**, arithmetic: the **four-line density system** - under `coins = kills-in-coverage x bonus x ' +
  'uptime` the four lines are **2/(18+2n)**, **0.2/(1.8+0.2n)**, **0.5/(19.5+0.5n)**, **3/(123-3n)** over **40n + 60**, and ' +
  '**dR(n) = dB(n) = 1/(n+9) exactly** (Range and Bonus are the same ladder while Range is open); level-1 densities ' +
  '**10.00 / 10.00 / 2.50 / 2.50 e-4** (Range-Bonus is **34x** the cosmetic par), and the par-optimal bot is ' +
  '**R 20 / B 24 / D 14 / C 15 = 33 780 medals** (27.8 events, **60.2 %** of the capped 56 100) for **x22.03** on the ' +
  'chain; the only free parameter is the amplification constant **A = H067**, `tools/bot-four-line-density.ps1`), ' + $a1

$a2 = 'then repeat after a promotion |'
$b2 = $a2 + "`r`n" +
  '| H067 | [Is the bot coin yield driven by the printed range or the tower-amplified coverage (**A**)?]' +
  '(hypotheses/H067-bot-range-amplification.md) - `A = 0` keeps the Range/Bonus tie (**10.00e-4** each) and the ' +
  '**33 780**-medal plan; **A >= 10** hands the lead to Bonus and drops Range**s** stop level to 16-20 | measure the ' +
  'coins per activation before and after **one Range level** (must be **22 m**) over the same wave window, with ' +
  '**one Bonus level** (**x2.2**) as the control |'

$a3 = '- [2026-11-03 - session 128 (T015 Rev 8)](log/2026-11-03.md#2026-11-03---session-128-iteration-137-the-uptime-density-ladder)'
$b3 = $a3 + "`r`n" +
  '- [2026-11-03 - session 129 (T015 Rev 9, H067)](log/2026-11-03.md#2026-11-03---session-129-iteration-138-the-four-line-density-system)'

Patch 'docs/INDEX.md' @( $a1, $b1, '1', $a2, $b2, '1', $a3, $b3, '1' )

# ---------- README ----------
$c1 = 'Cooldown before Duration and stop at **Cooldown 15 / Duration 14** = **10 740** medals for **36 %** uptime)'
$d1 = 'Cooldown before Duration and stop at **Cooldown 15 / Duration 14** = **10 740** medals for **36 %** uptime; the ' +
  'four-line plan is **R 20 / B 24 / D 14 / C 15 = 33 780 medals** for **x22.03** on the coin chain, and Range/Bonus tie ' +
  'exactly (`1/(n+9)`) while Range is open)'
$c2 = '**Verified** (arith., Rev 8: the **uptime density ladder**'
$d2 = '**Verified** (arith., Rev 9: the **four-line density system** - `dR = dB = 1/(n+9)` exactly, level-1 densities ' +
  '**10.00 / 10.00 / 2.50 / 2.50 e-4**, the par-optimal bot is **R 20 / B 24 / D 14 / C 15 = 33 780 medals = x22.03** ' +
  '(**60.2 %** of the capped bill), `tools/bot-four-line-density.ps1`), ' + $c2

Patch 'README.md' @( $c1, $d1, '1', $c2, $d2, '1' )
