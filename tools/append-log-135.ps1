param()
# Appends the session-126 log entry (iteration 135) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 126 (iteration 135: the medal budget closes the trade ladder)

## Asked

T014 3.3 added a `+ 15a` term to the weekly stone income and left `a` (the number of Event Shop **stone** trades per week)
as "5 for an all-in-on-stones week" without deriving it, and T013 2's ladder had no closure against the medal **budget**:
which purchases does one 2-week event actually fund, and does the per-line counter make the level plan or the all-in plan
cheaper? One item: turn the medal ledger into an arithmetic object and pin `a`.

## Sources

Fresh, 2026-11-03: fandom **`Currency/Medals`** (raw wikitext: goals **10/15/20**, boost **20/30/40** and its
*retroactive* doubling, boxes **2-7 = 10/15/20/25/30/35 = 135/week**, **Fetch <= 10/day**, medals **do not expire**, shop
prices **150 gems / 15 stones / 250 shards** per trade, skin 150 / background 250 / music 200 / relic 200 Rare + 500 Epic,
trade ladder **40/65/90/130/175/230/380** with a **per-line** counter, bot ladder **150/300/600/900/1200** "in any order")
and game-vault **`Guide:Event_Guide`** (**T1 W70**, 2 weeks, **21** missions x **45** = **945**, "double that" with the
boost, **945 + 2 x 135 = 1 215** per event, gates **350/700**, spending-priority table, respec once per event, mailed
unclaimed rewards). Cross-checked in `tools/gm_strings.txt`: `EventData.cs`, `EventPanelUI.cs`, `Mission.cs` /
`MissionEvent.cs` / `MissionTile.cs`, `DailyMissionTile.cs` / `DailyMissionManager.cs` + `addWeeklyBoxContribution`,
`StoreOrganizer.cs`, `Guilds\GuildStoreTradeEntry.cs`, `ThemeManager|EventShopGemRelicWindow`. New script:
`tools/medal-weekly-ledger.ps1`; `tools/stones-band-closed-form.ps1` gained an `a` section.

## What was established

**1. The income side is now one sum.** Per 2-week event: missions **45 x 21 = 945** (boosted **1 890**), boxes
**2 x 135 = 270**, Fetch **<= 140** => **1 215 / 1 355** F2P and **2 160 / 2 300** boosted; per week
**607.5 / 677.5 / 1 080 / 1 150**. The wiki's "1 215 per event" is pure arithmetic: `945 + 2 x 135` ✓.

**2. The ladder is per line, so the level plan dominates.** Each line keeps its own counter, therefore the marginal
prices come in triples `40,40,40 / 65,65,65 / 90,90,90 / 130,130,130 / 175,...` and the cheapest *n*-trade set is the
level one: `cost(n) = 3C(q) + r c(q+1)` for `n = 3q + r`, with per-line cumulative
`C = (40, 105, 195, 325, 500, 730, 1110, 1490, 1870, 2250)`.

| Medals | max trades **level** | spent | residual | ge paid | max trades **all-in** | stones |
|---|---|---|---|---|---|---|
| 1 215 | **13** (5/4/4) | 1 150 | 65 | **1 950** | **7** | 105 |
| 1 355 | **14** (5/5/4) | 1 325 | 30 | **2 100** | **7** | 105 |
| 2 160 | **17** (6/6/5) | 1 960 | 200 | **2 550** | **9** | 135 |
| 2 300 | **18** (6/6/6) | 2 190 | 110 | **2 700** | **10** | 150 |

The level plan almost **doubles** the trade count; all-in is only right when one currency binds (below T11: stones).

**3. `a` is pinned.** All-in on the stone line: **105** stones per event F2P => `a = 105 / 2 / 15 =` **3.5** trades/week;
boosted **150** => `a =` **5.0**. So T014 3.3's `+ 75` is the **boosted** column and the F2P one is `+ 52.5`:

| reading | six bands per week | years to 452 282 |
|---|---|---|
| tickets only | 80 / 154 / 432 / 1 080 / 6 400 / 20 160 | 108.7 / 56.5 / 20.1 / 8.05 / 1.36 / 0.43 |
| **+ 45 + 52.5 (F2P)** | **177.5 / 251.5 / 529.5 / 1 177.5 / 6 497.5 / 20 257.5** | **49.0 / 34.6 / 16.4 / 7.39 / 1.34 / 0.43** |
| **+ 45 + 75 (boosted)** | **200 / 274 / 552 / 1 200 / 6 520 / 20 280** | **43.5 / 31.7 / 15.8 / 7.25 / 1.33 / 0.43** |

The two added terms are **54.9 %** (F2P) / **60 %** (boosted) of the Copper-bottom week and **0.48 % / 0.59 %** at Champion
16-24: `a` is a beginner lever. The **level** plan leaves the stone line only 4-6 of the 13-18 trades (`a = 2.5-3.0`).

**4. The efficiency curve of the ladder** (`ge/medal` at the 150-identity): **3.750 / 2.308 / 1.667 / 1.154 / 0.857 /
0.652 / 0.395** for trades 1..7 - the first three trades of each line are worth more than double the 7th, which is the
quantitative reason for the "take 1-3 of all three lines, then stop" rule.

**5. Relic gates as mission counts** (only mission medals count): F2P **ceil(350/45) = 8** missions for Rare and
**ceil(700/45) = 16** of 21 for Epic; boosted **4** and **8** - the arithmetic behind "missions first, boxes after".

**6. Bot ladder double-sourced**: fandom prints **150/300/600/900/1200**, "unlock in any order, the price depends on how
many you already own" => Sigma **3 150** medals for all five, ratios x2.00 / x2.00 / x1.50 / x1.33.

## Verdict

**T013 Rev 7** (new **2.4** with the cost law, the four-budget table, the `a` pin, the relic mission counts, the bot
ladder; 3 checklist items, 2 falsification bullets, Sources extended with the 2026-11-03 pulls + the new script) +
**T014 Rev 11** (3.3 finding 4 rewritten with both totals, the table now carries F2P and boosted columns, finding 5 gains
the F2P set, 2 checklist items, 1 falsification bullet, Sources) + **T025 Rev 6** (Rev line, the **Rev 6** note under the
band table, 1 checklist item, 1 falsification bullet). INDEX rows for T013/T014/T025 bumped + the session-126 anchor;
README T013/T014/T025 confidence cells carry the Rev numbers (25 rows, 7 pipes each).

## Next open question

Device list unchanged: **H063** (mastery-lab count + the `Cells` ladder), **H065** (`Primary Module Bonus` L1-L2 + lab
count), **H064** (BC ceiling 58.5 / 80 / 54.4 %), **H062**, **H061**, **H014** (per-attempt payout - it moves 3 columns of
this ledger), **H066** (three (wave, band) pairs from one bracket). Paper candidates: the Fetch line (10/day) is worth
**140** medals per event but its per-day cap and the **8 boxes** hold-limit interact - a one-panel read; and the shard
line (250 of one type) vs the 250-shard-equivalent gem line at **0.6 gems/shard** deserves its own per-tier crossover
table inside T010.

'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
