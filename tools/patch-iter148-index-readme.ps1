param()
# Iteration 148: INDEX (T025 Rev 7 + session-139 anchor) and README (T025 cell). ASCII-only literals. Run ONCE.
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
$a1 = '**Verified (Rev 6**, arithmetic: the **medal budget pins a**'
$b1 = '**Verified (Rev 7**, arithmetic: **the whole sheet on one scale** - every bill of S1 divided by its own income in ' +
  'days (tokens **46.4**, gems **263.2** at 435/day, the four-slot fleet **161.5** with the shard lab / **392.3** without, ' +
  'medals **350.1**, the Ally chip **521.1**, stones **32 471.5** with no tournaments and **17 836.5** at the Copper ' +
  'bottom, keys **31 937.5**, cells **24 968**, coins **4 634 056**, clock **99 472**), the ge cross-check (1 st = 10 ge, ' +
  '1 shard = 0.6 ge) gives **435 ge/day of gems vs 253.57 of stones vs 126 of shards => shards are the scarcest of the ' +
  'beginner''s three** and the model is invariant to those rates (4 522 820 ge / 253.57 = 17 836 = 452 282 / 25.357); the ' +
  'joint first-year plan costs max(legs) = **499.5 d (clock) -> 392.3 d (shards) -> 350.1 d (medals)** as the x3.725 ' +
  'stack and the shard lab come in, i.e. inside one calendar year; sensitivity **+1 stone/day = 676.7 d saved, the whole ' +
  '97.5/wk box+trade flow = 6 323.9 d = 17.3 y, +1 of any non-binding counter = 0**; the 8 070/wk shard-stone crossover ' +
  're-derives T013 2.5''s **8 071**, `tools/five-resource-ledger.ps1), ' + $a1

$a2 = '- [2026-11-03 - session 138 (T008 Rev 12)](log/2026-11-03.md#2026-11-03---session-138-iteration-147-stones-as-the-third-resource-of-the-day-model)'
$b2 = $a2 + "`r`n" +
  '- [2026-11-03 - session 139 (T025 Rev 7)](log/2026-11-03.md#2026-11-03---session-139-iteration-148-the-whole-sheet-on-one-scale-five-resources)'

Patch 'docs/INDEX.md' @( $a1, $b1, '1', $a2, $b2, '1' )

# ---------- README ----------
$c1 = '(arith., Rev 6: **a = 3.5 F2P'
$d1 = '(arith., Rev 7: **one scale for nine currencies** - day costs tokens **46.4**, gems **263.2**, the four-slot fleet ' +
  '**161.5** / **392.3**, medals **350.1**, bits **521.1**, stones **17 836.5**, keys **31 937.5**, cells **24 968**, ' +
  'coins **4 634 056**, clock **99 472**; the ge cross-check **435 / 253.57 / 126 ge/day** makes **shards** the scarcest ' +
  'of the beginner''s three and the model is rate-invariant; the first-year plan is max(legs) = **499.5 -> 392.3 -> ' +
  '350.1 d** bound by clock then shards then medals, with **+1 st/day = 676.7 d** and the 97.5/wk flow = **6 323.9 d = ' +
  '17.3 y** of saving and non-binding counters worth 0), ' + $c1

Patch 'README.md' @( $c1, $d1, '1' )
