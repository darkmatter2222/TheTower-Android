param()
# Iteration 137: INDEX + README for T015 Rev 8 (the uptime density ladder) + the session-128 anchor.
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
$a1 = '**Verified (Rev 7**, arithmetic: the full per-level bot lab tables'
$b1 = '**Verified (Rev 8**, arithmetic: the **uptime density ladder** - the two medal lines have separable relative ' +
  'gains **0.5/(19.5 + 0.5n)** and **3/(123 - 3n)** over the **40n + 60** price, so **level 1 of each is worth exactly ' +
  '2.5 %** of uptime and **dC/dD** rises to **2.077** by level 15 (greedy **D1 C1 C2 D2 C3 D3 C4 C5 D4** = **7 levels / ' +
  '1 060 medals** at the 1 215 budget, **13 / 2 820** at 3 000); ranked by **ln(mult)/medals**: Flame Cooldown ' +
  '**1.61** > Thunder Duration **1.14** > the four 120->75 Cooldown lines **0.82** > cosmetics **0.296** > the three ' +
  '20->35 Duration lines **0.27** (x10^-4) => the stop is **Cooldown 15 / Duration 14** = **10 740** medals for **36 %** ' +
  'uptime, `tools/bot-uptime-density.ps1`), ' + $a1

$a2 = '- [2026-11-03 - session 127 (T013 Rev 8)](log/2026-11-03.md#2026-11-03---session-127-iteration-136-the-line-choice-becomes-a-table)'
$b2 = $a2 + "`r`n" +
  '- [2026-11-03 - session 128 (T015 Rev 8)](log/2026-11-03.md#2026-11-03---session-128-iteration-137-the-uptime-density-ladder)'

Patch 'docs/INDEX.md' @( $a1, $b1, '1', $a2, $b2, '1' )

# ---------- README ----------
$c1 = '**50 s / 45 s**)'
$d1 = '**50 s / 45 s**; the **uptime density ladder** ranks the medal lines **Flame Cooldown 1.61 > Thunder Duration ' +
  '1.14 > the 120->75 Cooldown lines 0.82 > cosmetics 0.296 > the Duration lines 0.27 (x10^-4 per medal)**, so buy ' +
  'Cooldown before Duration and stop at **Cooldown 15 / Duration 14** = **10 740** medals for **36 %** uptime)'

$c2 = '**Verified** (arith., Rev 7: the per-level bot lab tables reproduce'
$d2 = '**Verified** (arith., Rev 8: the **uptime density ladder** - level 1 of either line is worth exactly **2.5 %** ' +
  '(`0.5/20 = 3/120`), `dC/dD` reaches **2.077**, the ranking is **1.61 / 1.14 / 0.82 / 0.296 / 0.27 e-4** and the par ' +
  'stop is **Cooldown 15 / Duration 14** = **10 740** medals for **36 %** uptime), ' + $c2

Patch 'README.md' @( $c1, $d1, '1', $c2, $d2, '1' )
