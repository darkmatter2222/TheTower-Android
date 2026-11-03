param()
# Appends the session-124 log entry (iteration 133) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 124 (iteration 133: the mission pool is printed - 32 rows and 17 ladder shapes)

## Asked

T004 carried the pay side of the daily missions (tier table, box table, shard law) but never the **pool**: which missions
can appear at all, what their goal values are, and what gates each one. One item: transcribe the printed
`List of daily missions` and find the laws inside it.

## Sources

fandom raw wikitext (2026-11-03): **`Daily Missions`** (the 32-row `List of daily missions` with `Mission | Possible
goals | Needs`, the "picks one of its possible goals at random" line, the `Rewards` prose, the 24-row tier table with
**Tier 1 = 1 shard**, the 7-box `Weekly Rewards` table **including the Guild-contribution column** and the Monday
00:00 UTC reset, the three unlock bullets, the `Reroll Daily Mission` lab row, the Vault table), **`Tournaments`**
(gate **T1 W60**), **`Events`** (gate **T1 W70**), **`Guilds`** (gate **T3 W10**, 50-gem creation, 5 contribution per box,
chests at 100/250/500/750). New script: `tools/daily-mission-goals.ps1`. Binary cross-check: `tools/gm_strings.txt`
(`DailyMissionActive/Base/Manager/Tile.cs`, `Guilds/ContributionChestData.cs`, `Guilds/GuildContributionChest.cs`,
method `addWeeklyBoxContribution`).

## What was established

**1. The `Needs` column is a pool-size ladder.** 5 rows are ungated (**15.6 %** of 32) -> 6 at Tier 2 -> 7 at Tier 3 ->
**9 at Tier 4** (28.1 %) -> **25** after the **16** Workshop-gated rows (78.1 %) -> **30** after the 5 card rows ->
**31** with skins -> **32** with the tournament tile. The tier ladder contributes only **4** rows in total; the Workshop
alone is half the pool.

**2. Ladder-shape law (27/27).** Of the 27 multi-rung ladders, **15** are arithmetic (one common step) and **12** are
piecewise with **exactly two** step values (`50,75,100,150` = +25,+25,+50; `15,25,35,50` = +10,+10,+15; `25,40,60,80` =
+15,+20,+20; `3,5,7,10` = +2,+2,+3; `60,100,150,200` = +40,+50,+50), **0** need a third step. Plus **5** single-rung rows.
Rung-length census: **1 x 5, 3 x 10, 4 x 14, 5 x 3**; **17 distinct shapes** cover all 32 rows (the most common being the
five `1` rows, then `15,25,35,50` and `50,75,100,150` at 3 each).

**3. Fixed pay, variable work.** Ratios max/min run **x2.00 … x5.00** and **18 of the 27** ladders span **>= x3**, while
the pay is the same 3 gems + tier row on every rung; mean/min = **1.50 … 3.00** (cheapest `Crit hits` 1.50, dearest
`Kill [x] bosses` 3.00). So the expected work per tile is 1.5-3x its best case, and the reroll's value is exactly that
spread: with the Vault `Free Mission Reroll` (15 keys) reroll every **top-rung** draw; paying **5 gems** (1.67 missions'
worth) is only clearly worth it on the x5.00/x4.00 ladders.

**4. The instant five.** `Start [x] battles`, `Buy [x] workshop upgrades`, `Buy [x] cards`, `Change [x] skins`,
`Participate in 1 tournament` are all single-rung = **1 action** for the full pay - clear them first at each 8-h tick.

**5. The weekly ledger is milestone-gated, not tier-gated.** Printed: medals only after **Events (T1 W70)**, stones only
after **Tournaments (T1 W60)**, tokens + guild contribution only after **Guilds (T3 W10)**; each box adds **5** guild
contribution (cap 35/week, resets **Monday 00:00 UTC** with the box counter and all seven boxes). So a T1 W1-W59 account
earns **coins + gems only** from the boxes, and the 45/135/35 rows in T004 apply from T3 W10 with a guild joined. The
tournament tile is the only predictable one: **00:00 UTC batch on Wednesday and Saturday**.

**6. Cell diff closed:** fandom prints **Tier 1 = 1 shard** where the Tower Hub prints "-"; the two agree under the
printed rule "shards are only given once Modules are unlocked" (T2 W90). All 24 coin cells match; `5t - 15` re-adds with
**0 failures over 18 rows** and the head is not arithmetic (T1->T6 steps **+2, +2, +3, +4, +3**).

## Verdict

**T004 Rev 5** - new section "The mission pool: 32 printed rows, 17 ladder shapes" (the transcribed table with derived
max/min and mean columns, findings 1-6), a `Confidence: High` header clause (the doc had none), steps 7-8 (instant five +
reroll rule; box claims before Monday 00:00 UTC), 6 checklist items, 5 falsification notes, 2 Sources bullets. INDEX and
README T004 rows carry the Rev-5 clause; validator run after the log anchor.

## Next open question

Still device-only: **H063** (mastery-lab count + the `Cells` ladder), **H065** (`Primary Module Bonus` level 1-2 + the
lab count), **H064** (BC ceiling 58.5 / 80 / 54.4 %), **H062**, **H061**, the gate-cell reads. New low-priority reads
from this pass: whether the 8-mission hold cap and the 2-per-tick cadence are still printed in-panel, and the exact
count of distinct tiles observed over two days (pool-size ladder check at T4).

'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
