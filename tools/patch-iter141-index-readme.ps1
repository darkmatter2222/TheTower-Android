param()
# Iteration 141: INDEX (T006 Rev 37 + the session-132 anchor) and README (T006 cells).
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
$a1 = '**Verified (Rev 36**, arithmetic'
$b1 = '**Verified (Rev 37**, arithmetic: the **joint medal/lab queue on a calendar-day scale** - with ' +
  '**cost_days = max(price/income, Sigma clock/(1440 x slots))** the medal layer is **0.050 720** per day against the lab ' +
  'category**s **0.003 481** (**14.6x**, par **0.017 957**), so the medal sheet finishes first; inside the lab category the ' +
  'best order **flips with the coin income** - clock-bound **Burn Stack 0.011 266 > Linger Time 0.007 906 > Flame Cooldown ' +
  '0.003 516 > Duration 0.002 375 > Cooldown 0.002 026**, coin-bound almost reversed (per coin **2.242e-13 / 1.292e-13** vs ' +
  '**6.099e-16**, a **212x** gap) with crossovers at **15.68 B / 3.894 T / 9.217 T** coins/day, and Burn Stack**s** k=3 ' +
  'prefix is **204.25 T** not B, `tools/lab-day-density.ps1`), ' + $a1

$a2 = '- [2026-11-03 - session 131 (T015 Rev 11)](log/2026-11-03.md#2026-11-03---session-131-iteration-140-the-bot-plus-block-on-one-scale)'
$b2 = $a2 + "`r`n" +
  '- [2026-11-03 - session 132 (T006 Rev 37)](log/2026-11-03.md#2026-11-03---session-132-iteration-141-the-joint-medal-and-lab-queue)'

Patch 'docs/INDEX.md' @( $a1, $b1, '1', $a2, $b2, '1' )

# ---------- README ----------
$c1 = '(L300 of the slot ladder = 3 136 095 shards / 18.07 s)'
$d1 = '(L300 of the slot ladder = 3 136 095 shards / 18.07 s); on the day scale the medal layer is **0.050 720/day** ' +
  'against the bot lab category**s **0.003 481** so medals go first, and the lab order flips with your coin income ' +
  '(crossovers **15.68 B / 3.894 T / 9.217 T** per day)'

$c2 = '**Verified** (arith., Rev 36: **unit correction + the module tail**'
$d2 = '**Verified** (arith., Rev 37: the **joint medal/lab queue** - `max(price/income, Sigma clock/(1440 x slots))` gives ' +
  '**0.050 720/day** for the medal sheet vs **0.003 481/day** for the ten lab lines (**14.6x**), the clock-bound lab order is ' +
  '**Burn Stack > Linger Time > Flame Cooldown > Duration > Cooldown** and the coin-bound order is almost its reverse ' +
  '(**212x** per coin), `tools/lab-day-density.ps1`), ' + $c2

Patch 'README.md' @( $c1, $d1, '1', $c2, $d2, '1' )
