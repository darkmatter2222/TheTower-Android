param()
# Iteration 136: INDEX + README for T013 Rev 8 (the line-choice table) + the session-127 anchor.
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
$a1 = '**Verified (Rev 7**, arithmetic: the **medal budget closes the trade ladder**'
$b1 = '**Verified (Rev 8**, arithmetic: the **line choice is a table** - weeks-to-bill **stones 2 548 / shards 56.0 ' +
  '(23.1 at lab L50) / gems 37.6** put the **stone line first at every band through Platinum 16-24**, the lead passing to ' +
  'shards (no lab) or gems (L50) only at Champion 16-24; cross-overs at **W > 8 071 / 12 028 / 19 600** stones per week; ' +
  'the density law **0.1701 / 0.0700 / 0.0493 / 15/W** fixes the order inside a round and the density-greedy plans buy ' +
  '**12 / 13 / 11 / 16** trades (**1 800 / 1 950 / 1 650 / 2 400 ge**, **1.55 / 1.63 / 1.23 / 1.18 ge/medal**); four ' +
  'rounds = **975** medals for **1 800 ge** is the break-even depth, `tools/event-shop-line-choice.ps1`), ' + $a1

$a2 = '- [2026-11-03 - session 126 (T013 Rev 7, T014 Rev 11, T025 Rev 6)](log/2026-11-03.md#2026-11-03---session-126-iteration-135-the-medal-budget-closes-the-trade-ladder)'
$b2 = $a2 + "`r`n" +
  '- [2026-11-03 - session 127 (T013 Rev 8)](log/2026-11-03.md#2026-11-03---session-127-iteration-136-the-line-choice-becomes-a-table)'

Patch 'docs/INDEX.md' @( $a1, $b1, '1', $a2, $b2, '1' )

# ---------- README ----------
$c1 = 'therefore gives **a = 3.5** trades/week F2P and **5.0** boosted (T014 3.3); '
$d1 = 'therefore gives **a = 3.5** trades/week F2P and **5.0** boosted (T014 3.3); below Champion 16-24 the **stone line ' +
  'leads** (**2 548** weeks of income to its bill against **56.0** shards / **37.6** gems) and four ladder rounds ' +
  '(**975** medals, **1 800 ge**) is the break-even depth; '

$c2 = '**Verified** (arith., Rev 7: the **medal budget closes the ladder**'
$d2 = '**Verified** (arith., Rev 8: the **line choice is a table** - the **stone line leads** at every band through ' +
  'Platinum 16-24 (cross-overs at **W > 8 071 / 12 028 / 19 600**), the density order **0.1701 / 0.0700 / 0.0493 / 15/W** ' +
  'fixes the round, density-greedy buys **12 / 13 / 11 / 16** trades), ' + $c2

Patch 'README.md' @( $c1, $d1, '1', $c2, $d2, '1' )
