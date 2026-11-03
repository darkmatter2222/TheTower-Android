param()
# Appends the session-127 log entry (iteration 136) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 127 (iteration 136: the line choice becomes a table)

## Asked

T013 2.4 pinned how many trades one event funds but left the *line choice* as prose ("the line is one of the three
150-ge-equivalent options, so it trades only when stones bind"). Since one trade pays exactly **150 ge** on all three
lines, the order must come from the bills and incomes. One item: turn "which line do I buy" into a table a beginner can
read off, with the cross-over points.

## Sources

No new external prints were needed; the inputs are all already banked, and this iteration is their arithmetic:
bills **stones 452 282** (T025 1, staged year-one target **11 461** from T008), **shards 82 380** = four slots to L50
(T010 1's slot-level cumulative **20 595**), **gems 114 500** = the framework (T009 1); incomes **W** stones/week
(T014 3.3, F2P `a = 3.5`), **42 x (35 + L)** shards/week = **1 470** / **3 570** (T004), **3 045** gems/week = 435/day
(T022 1; the 8-h print is 360/day). New script: `tools/event-shop-line-choice.ps1`.

## What was established

**1. Weeks-to-bill (the makespan view).**

| band (stones/week) | stones | shards no-lab | shards L50 | gems | leader |
|---|---|---|---|---|---|
| Copper 23-30 (177.5) | 2 548.1 | 56.0 | 23.1 | 37.6 | stones |
| Copper 13-15 (251.5) | 1 798.3 | 56.0 | 23.1 | 37.6 | stones |
| Silver 23-30 (529.5) | 854.2 | 56.0 | 23.1 | 37.6 | stones |
| Gold 23-30 (1 177.5) | 384.1 | 56.0 | 23.1 | 37.6 | stones |
| Platinum 16-24 (6 497.5) | 69.6 | 56.0 | 23.1 | 37.6 | stones |
| Champion 16-24 (20 257.5) | 22.3 | 56.0 | 23.1 | 37.6 | shards (no lab) / gems (L50) |

**2. The cross-overs.** The stone line leads while `452 282 / W` exceeds the other columns: `W >` **8 071** falls behind
no-lab shards, `W >` **12 028** behind gems, `W >` **19 600** behind L50 shards. Every band a sub-T11 account reaches
(<= Platinum 16-24, 6 497.5) is below all three, so **the stone line is the first purchase at every sub-T11 stage** - the
prose in 2.4 now has a numeric proof.

**3. The density law (inside a round).** All three counters move together, so the order is set by
`units/trade / income`: **shards 0.1701** (no lab) / **0.0700** (L50), **gems 0.0493**, **stones `15/W`** = 0.0845 /
0.0127 / 0.0007 at the Copper / Gold / Champion bands. Hence **shards > stones > gems** at the Copper bottom without the
shard lab, **stones > shards > gems** there with it at L50, and **shards > gems > stones** from the Gold bottom up
(stones drop out as soon as `15/W < 0.0493`, i.e. `W > 305`).

**4. Density-greedy plans** (each trade to the densest line; budgets from 2.4):

| state | budget | trades | spent | residual | stones/shards/gems | ge | ge/medal | calendar bought |
|---|---|---|---|---|---|---|---|---|
| Copper bottom, no lab | 1 215 | 12 | 1 160 | 55 | 4/6/2 | 1 800 | 1.55 | 1.46 w |
| Copper bottom, lab L50 | 1 215 | 13 | 1 195 | 20 | 5/5/3 | 1 950 | 1.63 | 0.92 w |
| Gold bottom, no lab | 1 355 | 11 | 1 345 | 10 | 1/7/3 | 1 650 | 1.23 | 1.35 w |
| Champion 16-24, L50 | 2 160 | 16 | 2 035 | 125 | 3/7/6 | 2 400 | 1.18 | 0.79 w |

Worked (row 1): `sh40 sh65 st40 sh90 sh130 st65 ge40 sh175 st90 ge65 sh230 st130` = 730 + 325 + 105 = **1 160**;
next prices 380 / 175 / 90 against **55** left => stop.

**5. The two objectives are 8 % apart, and that is the whole decision.** The ge count prefers the plain level plan
(13 trades, **1 950 ge**, 1.70 ge/medal at the Copper bottom); the bill objective prefers the density plan (12 trades,
1 800 ge but **6** shard trades = 1.02 weeks of the shard calendar against 0.68). Use level for raw volume, density when
one currency gates the next upgrade. Break-even depth: `150/price >= 1` holds only through **trade 4**, so
**four rounds = 12 trades = 975 medals for 1 800 ge (1.846 ge/medal)**; the fifth (175) is the first below-par purchase.

**6. Sensitivity.** At the 8-h census income (360/day) the gem bill is **45.4 weeks** and its density **0.0595** - still
below L50-shards (0.0700), so the order is unchanged; stones pass gems once `W > 305`.

## Verdict

**T013 Rev 8**: new **2.5** (leader table with the six bands and both shard-lab states, the three cross-overs, the
density law and round orders, the four density-greedy plans with their sequences, the "8 % apart" decision note, the
break-even depth), 3 checklist items, 3 falsification bullets, Sources extended with `tools/event-shop-line-choice.ps1`
and the bill/income provenance. INDEX row and README description + confidence cells carry the Rev-8 numbers.

## Next open question

Device list unchanged: **H063**, **H065**, **H064**, **H062**, **H061**, **H014**, **H066**, plus the two one-panel reads
this ledger wants: the **measured gem/day** (435 vs 360 decides the gem column) and the **`Daily Mission Shards` level**
(1 470 vs 3 570 decides the shard column). Paper candidates: the same two-objective treatment for the **bot** ladder
(medal-per-pp of the bot's coin bonus vs the 150-identity), and a per-tier crossover table for the **shard type** choice
(all three lines' counters move together, so the type choice is free - worth stating in T010).

'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
