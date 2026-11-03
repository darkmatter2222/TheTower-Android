param()
# Appends the session-130 log entry (iteration 139) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 130 (iteration 139: the cross-bot ranking)

## Asked

Rev 9 priced one bot (Golden) end to end. The open item was the **ranking between bots**: the guide gives a levelling order
(Golden, Amplify, Thunder maxed-or-skipped, Flame last) as prose, and the density table stopped at the four Golden lines.
One item: put all **19** lines of the five bots on one scale, order the bots by their medal efficiency, and turn the result
into a single tap sheet that also places the five **unlock** prices.

## Sources

No new external prints - the inputs are the §1.3 prints already banked (base and increment and level cap of every line, all
doubly determined by the level-1 values and the row counts), the price ladder **100 + 40(n-1)**, the unlock ladder
**150/300/600/900/1 200** (Tower Hub `wiki/guide/medals-guide`), the per-event budget **1 215 / 2 160** (T013 2.4) and the
cosmetic par **ln(1.03)/1 000** (T013 2). New script: `tools/bot-cross-ranking.ps1`.

## What was established

**1. One parameter per line.** With `rho = base / increment` the relative gain of level n is

```
growing lines  : gain(n) = 1/(rho + n - 1)        cooldown lines : gain(n) = 1/(rho - n + 1)
density(n) = gain(n)/(40n + 60)        first step = 100/rho x 10^-4        Sigma cost = 20L^2 + 80L
```

so the entire first-step ranking is `100/rho`: **Flame Damage 16.00** (rho 6.25) > **Flame DmgRed = Thunder Linger 15.00**
(rho 6.667) > **Flame Range 13.33** (7.5) > **Thunder Range 12.00** (8.333) > **Amplify Bonus 11.43** (8.75) > the four
**rho = 10** lines **10.00** (Golden Range/Bonus, Bot Bot Range, Thunder Duration) > Amplify Range 8.00 (12.5) > Bot Bot
Bonus 4.762 (21) > Flame Cooldown 4.00 (25) > the seven **rho = 40** lines 2.500. Ties are cell-for-cell identities; the
rho = 40 group starts tied and then splits, the four Cooldown lines rising to 0.583 at level 15 while the three Duration
lines fall through par at 15 (0.281 < 0.296).

**2. Par-optimal stop levels** (density >= 2.96e-5, per line): 30-level Bonus lines stop at **24** (Golden, Amplify), the
30-level Duration lines at **14**, Flame Damage at **25**, and every other line runs to its **cap**. The tail split: a
30-level Bonus line's first 24 levels are **65.9 %** of its 20 400-medal bill for **88.3 %** of its gain, the tail is 6 960
medals at **0.23e-4**; a 30-level Duration line's first 14 levels are **24.7 %** of the bill for **53.6 %** of the gain.

**3. Bot-vs-bot ranking** (`Sigma ln / medals` at the par):

| Bot | levels | medals | events F2P / boosted | Sigma ln | e-4/medal | % of capped |
|---|---|---|---|---|---|---|
| Thunder | 70 | 30 600 | 25.2 / 14.2 | 3.985 | **1.30** | **100.0** |
| Flame | 80 | 40 400 | 33.3 / 18.7 | 5.182 | 1.28 | 87.3 |
| Amplify | 71 | 32 100 | 26.4 / 14.9 | 2.982 | 0.93 | 59.0 |
| Golden | 73 | 33 780 | 27.8 / 15.6 | 3.092 | 0.92 | 60.2 |
| Bot Bot | 68 | 29 080 | 23.9 / 13.5 | 2.513 | 0.86 | 65.4 |

**Thunder is 100.0 % above par** - not one of its four lines falls below the cosmetic par, which is the arithmetic form of
"max it or leave it". **Amplify (0.93) edges Golden (0.92)**: Range caps at 18 levels (7 920 vs 9 600) and Bonus starts at
`rho = 8.75` vs 10. **Bot Bot is last** only because of its Bonus (`+0.05` on `x1.05`, rho = 21, a 4.76 % step).

**4. The merged tap sheet** (density-greedy over the 19 ladders plus the five unlocks, a level only after its own unlock):
the first 24 taps are `UNLOCK-Golden UNLOCK-Amplify Amplify.Bonus1 Golden.Range1 Golden.Bonus1 Amplify.Range1` … with the
Thunder unlock entering at tap 18. The unlock densities `ln(base)/price` are **46.21 / 41.76 / 3.04 / 2.03 / 0.41e-4**, and
they land after **0 / 150 / 2 790 / 10 330 / 116 090** medals of levels: only the **Bot Bot** unlock (1 200 medals for a
x1.05 base) is worse than the best level lines - the quantitative form of "unlock one, level it, then unlock the next".
Whole sheet: **367 taps / 169 110 medals** = **139.2 events ~ 278 weeks** F2P (**78.3 / 157** boosted); the level part is
**165 960 = 71.6 %** of the 231 860 grand bill at `Sigma ln = 17.755` (**1.07e-4** average). Event-by-event the ledger
starts **1 130 / 2 350 / 3 590 / 4 690 / 5 830** cumulative (**8 / 15 / 20 / 27 / 32** taps), i.e. the first event buys **8
taps for 1 130** of its **1 215**.

**5. Range under `A`** (H067): amplification only moves the Range lines down, `rho = (base + A)/i`; at `A = 40` m they read
Flame 5.71, Thunder 4.62, Golden/Bot Bot 3.33, Amplify 3.08e-4, i.e. all four fall under Bot Bot's Bonus line (4.762) and
the tap order flips to Bonus-first.

## Verdict

**T015 Rev 10**: new **3.3** (the rho reduction, the 19-line table, the tie groups, the bot ranking, the merged tap sheet
and its per-event ledger, the tail split, the `A` sensitivity), 3 checklist items, 3 falsification bullets, Rev line +
Sources bullet. INDEX: T015 row bumped to Rev 10, session-130 anchor; README T015 description + confidence cells.

## Next open question

The device list is unchanged (**H063**, **H065**, **H064**, **H014**, **H066**, **H067**, **H062**, **H061**). Paper
candidates for the next pass: (a) the same `rho` treatment for the **Bot+** lines, whose family law is `25L^2 + 75L` and
whose increments are `+0.05` on `x1.25` (rho = 25) and `+1` bullet on 3 (rho = 3), so the five Bot+ lines can be ranked
against the 19 stat lines on one scale; (b) the **stone** side of the same layer (the 6 250-stone Bot+ unlock ladder vs the
6 250-stone packs of T014 3.3); (c) whether the five unlocks are 150/300/600/900/1 200 in the *panel's* own order, which is
one screen of reading.

'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
