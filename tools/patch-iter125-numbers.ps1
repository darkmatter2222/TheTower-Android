param()
# Iteration 125: replaces the pre-fix Defense numbers (the Wall Fortification units bug) everywhere.
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

$w1 = '**187.228 T** coins over **15 076.3 d**'
$w2 = '**187.228 T** over **15 076.3 d**'
$w3 = '**93.29 %**'
$w4 = '= 4.866 Q / 260 639.7 d'

Patch 'docs/INDEX.md' @(
  '**174 678.551 T** coins over **15 050.9 d**', $w1, '1',
  '**99.9928 %**', $w3, '1',
  '= 5.040 Q / 260 639.7 d', $w4, '1'
)
Patch 'README.md' @(
  '**174 678.551 T** coins over **15 050.9 d**', $w1, '1',
  '**174 678.551 T** over **15 050.9 d**', $w2, '1',
  '**99.9928 %**', $w3, '2',
  '= 5.040 Q / 260 639.7 d', $w4, '1'
)

$logOld1 = '**1. The category totals 16 lines / 635 levels = 174 678.551 T coins over 15 050.9 d = 41.3 y.**'
$logNew1 = '**1. The category totals 16 lines / 635 levels = 187.228 T coins over 15 076.3 d = 41.3 y** (the 15 new ' +
  'lines alone are 187.228 T / 15 050.9 d; the sixteenth is the already-priced Garlic Thorns).'
$logOld3 = '= 5.040 Q coins / 260 639.7 d of clock**, i.e. 7 200 d = 19.71 y of'
$logNew3 = '= 4.866 Q coins / 260 639.7 d of clock**, i.e. 6 951 d = 19.03 y of'

Patch 'docs/log/2026-11-03.md' @(
  $logOld1, $logNew1, '1',
  "the category's 174.679 T coins (**99.9928 %**)", 'the category''s 187.228 T coins (93.29 %)', '1',
  $logOld3, $logNew3, '1',
  'band''s share moves to 32.3 % of coins', 'band''s share moves to 33.4 % of coins', '1'
)
