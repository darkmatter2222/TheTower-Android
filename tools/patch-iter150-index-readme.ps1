param()
# Iteration 150: INDEX (T019 Rev 5 + T025 Rev 9 + session-141 anchor) and README (two cells). ASCII-only. Run ONCE.
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
$i1 = '**Verified (Rev 4**, arithmetic: the **eight block Totals rows** closed four ways'
$b1 = '**Verified (Rev 5**, arithmetic: **the eight blocks on the calendar scale** - each block priced in days of gem income ' +
  '(**7.7 / 13.4 / 21.2 / 30.7 / 70.8 / 81.5 / 83.1 / 86.3 d**, Sigma **171 725 ge = 394.8 d**), and the free ladder''s ' +
  'seven ratios **x2.005 x1.480 x1.700 x2.549 x1.134 x1.026 x1.046** put **34.0 %** of the log growth in the **T13** gate and ' +
  '**92.9 %** through **T15** (T16-24 = **7.1 %**); the T1-12 window is **10 135 ge = 23.3 d** free and **31 785 ge = 73.1 d** ' +
  'with the four passes (**2.14x** the free track) = **3.4 % / 10.7 %** of one idle year, and in the max() model the lumps ' +
  'move **only the gem and stone legs**: the state-C plan runs **349.6 -> 328.3 -> 273.9 -> 219.0 -> 161.5 d** with the ' +
  'binding walking **stones -> gems -> shards** (**188.1 d** total), the 12 300-stone ladder being **1.39x** the 8 865 knee ' +
  'package but only **2.7 %** of the 452 282 census, `tools/lump-sum-ledger.ps1), ' + $i1

$i2 = '**Verified (Rev 8**, arithmetic: **the weekly form and the corrected medal unit**'
$b2 = '**Verified (Rev 9**, arithmetic: **lump-sum income joined to the same max() model** - `leg = max(0, bill - lump) / ' +
  'income`, so only gems and stones can shorten; the state-C plan runs **349.6 / 328.3 / 273.9 / 219.0 / 161.5 d** as the ' +
  'free T1-12 track, the four passes, the whole free ladder and the paid column are claimed (**188.1 d**, binding ' +
  '**stones -> gems -> shards**), the ladder is **171 725 ge = 394.8 d** = **57.8 %** of one idle year ' +
  '(**297 318.4 ge** of flow at the Copper bottom), and the **12 300**-stone ladder is **1.39x** the knee package yet ' +
  '**2.7 %** (**485.1 d**) of the census, `tools/lump-sum-ledger.ps1), ' + $i2

$i3 = '- [2026-11-03 - session 140 (T006 Rev 43)](log/2026-11-03.md#2026-11-03---session-140-iteration-149-the-medal-unit-is-per-week-and-the-sheet-is-2450-days)'
$b3 = $i3 + "`r`n" +
  '- [2026-11-03 - session 141 (T019 Rev 5)](log/2026-11-03.md#2026-11-03---session-141-iteration-150-lump-sum-income-joins-the-max-model)'

Patch 'docs/INDEX.md' @( $i1, $b1, '1', $i2, $b2, '1', $i3, $b3, '1' )

# ---------- README ----------
$r1 = '(arith., Rev 4: the eight block Totals rows close four ways'
$d1 = '(arith., Rev 5: **the blocks on the calendar scale** - **7.7 / 13.4 / 21.2 / 30.7 / 70.8 / 81.5 / 83.1 / 86.3** days ' +
  'of gem income, Sigma **171 725 ge = 394.8 d**; **34.0 %** of the ladder''s log growth is the **T13** gate and T16-24 only ' +
  '**7.1 %**; the T1-12 window is **23.3 d** free / **73.1 d** with the four passes (**2.14x**) = **3.4 % / 10.7 %** of a ' +
  'year; the lumps move only the gem and stone legs (state-C plan **349.6 -> 161.5 d**, **188.1 d** saved), ' + $r1

$r2 = '(arith., Rev 8: **the weekly form**'
$d2 = '(arith., Rev 9: **lump-sum income in the same max() model** - state-C plan **349.6 / 328.3 / 273.9 / 219.0 / ' +
  '161.5 d** as the lumps arrive, binding **stones -> gems -> shards**; the ladder is **171 725 ge = 394.8 d = 57.8 %** of ' +
  'one idle year (**297 318.4 ge** of flow), and the 12 300-stone ladder is **1.39x** the knee package but **2.7 %** of the ' +
  'census), ' + $r2

Patch 'README.md' @( $r1, $d1, '1', $r2, $d2, '1' )
