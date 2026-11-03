param()
# Appends the session-120 log entry (iteration 129) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 120 (iteration 129: the Bot category closes on two shared columns)

## Asked

Rev 32 left 21 unpriced lines. One item: price the **Bot** category from `Lab/<name>`, test whether its ladders are
shared columns like the Recharge family, and check the resulting numbers against T015 (which already prices parts of it).

## Sources

fandom, raw wikitext through `api.php?action=parse&page=X&prop=wikitext&format=json`. Ten pages under `Lab/`:
`Flame Bot Cooldown`, `Thunder Bot Cooldown`, `Golden Bot Cooldown`, `Amplify Bot Cooldown`, `Bot Bot Cooldown`,
`Flame Bot - Burn Stack`, `Thunder Bot Linger Time`, `Golden Bot Duration`, `Amplify Bot Duration`,
`Bot Bot Duration`; plus `Lab Category/Bot Research` (the 10-row name list with `Max Lv 25 / 20 / 5`). None of the ten
prints a `Total` row. New script: `tools/bot-research-family.ps1`.

## What was established

**1. Eight of the ten lines live on two printed ladders.** All five `* Cooldown` pages print the same 25 costs
(30M ... 398.88B) and the same 25 times (1d 14h 53m ... 85d 8h 22m): re-add **1.808 T / 830 411 min = 576.67 d** each.
All four `* Duration`/`Linger` pages print the same 20 costs (100B ... 221.68B) and the same 20 times (8d 8h 0m ...
118d 14h 21m): **664.838 T / 1 229 315 min = 853.69 d** each. Cell-level diff: 0 differing cells in both columns.

**2. `Thunder Bot Linger Time` is the duration column plus 3.00.** Its value ladder is `3.50 ... 13.00` where the three
`* Duration` ladders are `0.50 ... 10.00`, same step 0.5, 0/20 differing cells after the shift. Same price, same clock, a
3-second head start - so its first levels come before the other three duration labs.

**3. Two lines print the family law undistorted, and the closed form now has a numeric check.** Duration costs ratio
1.5000 (max relative deviation **1.953e-3**, from the 3-s.f. prints 759.38B and 1140B) and **1.1500 on all nineteen time
steps** (max dev **2.740e-5**); Burn Stack 3.445e-5 / 2.877e-6. Therefore T015's closed form `t1(1.15^n - 1)/0.15` prices
a whole line from row 1: duration n=20 -> **1 229 323.0 min** vs the printed re-add **1 229 315 min** (delta **8 min** =
6.5e-6), Burn Stack n=5 -> **442 974.4** vs **442 973**. The Cooldown column is the distorted one (first ratio 2.0017 vs
the law's 1.5, peak 1.8036 at L7, decay to 1.5779; max dev 2.506e-1).

**4. Three T015 prints re-add from the tables** (the credibility test for this layer): cooldown levels 1-5 =
30 + 60.05 + 91.6 + 132.15 + 201.2 = **515.0 M** (T015: "515.0 M coins on all three bots"); duration levels 1-5 =
**1 318.75 B = 1.32 T** (T015's Bot Bot *Duration* block); Burn Stack from the printed cells **567.07 T** vs the law's
**567.0625 T** (T015 prints 567.06 T - the gap is the 5-s.f. rounding of 145.13 and 217.69).

**5. The census gains two lines.** `Lab Category/Bot Research` prints **10** rows; the Rev-23 census had 8 / Sigma 165,
missing the two `Bot Bot` labs (25 + 20 = 45 levels; 165 + 45 = **210** ✓). So: Bot = **10 / Sigma 210**, the
12-lab-reading census is **171 / Sigma 4 837**, and the 32-mastery-lab reading Appendix B uses is **191 / Sigma 5 017**
(171 + 20 lines, 4 837 - 198 + 378 = 5 017). The All row of the §census table now reads **160 / 4 738**.

**6. Category total and the coin/clock split.** 10 lines / 210 levels = **3 235.464 T = 3.2355 q** coins for
**9 512 288 min = 6 605.8 d** (18.09 y single-slot). Shares: cooldowns x5 **0.28 %** coins / **43.65 %** clock;
durations x4 **82.19 %** / **51.69 %**; Burn Stack **17.53 %** / **4.66 %**. Per queue-day: **3.136e9** coins/day for the
five cooldowns, **7.787e11** for the four durations, **1.843e12** for Burn Stack - Burn Stack is **x588** dearer per day,
so the cooldown labs are a pure queue decision (all five maxed = 9.041 T = 18.6 min of printed income).
Per printed unit: 7.2330e10 coins per -1 s of cooldown (23.07 d), 3.3242e13 per +0.5 s of duration (42.68 d),
1.1341e14 per burn stack (61.52 d).

**7. Cheap-tier cut.** The nine level-1 buys (5 x 30 M + 4 x 100 B) = **400 150 000 000** coins for 59 665 min = 41.43 d.
Stop-level prefixes: cooldown k=10 7.69 B / 37.32 d, k=25 1 808.24 B / 576.67 d; duration k=5 1 318.75 B / 56.19 d,
k=10 11 328.13 B / 169.20 d, k=20 664 838 B / 853.69 d; Burn Stack k=1 = **43 T / 45.63 d** for one stack (dearest first
level in the category), k=3 204.25 B / 158.43 d.

**8. Gate skew.** `Lab/Bot Bot Cooldown` printed **tier 6 wave 60** today vs T015's table (**T6 W90**) and its
2026-11-02 fetch (**T5 W90**) - three prints, still a device read. The other cooldown gates form W60/W70/W80/W90 across
T5; all four duration labs and Burn Stack print **T10 W50**.

## Verdict

**T006 Rev 33** (new "The Bot Research category priced line by line" section: 4-row table, 8 findings, 3 checklist items,
2 falsification notes, 1 Sources bullet; §census Bot row 10/210 + All row 160/4 738 + the three-reading note; Appendix B
row `O` and the Sigma row, income units for the 178-line bill, coverage fact 93.2 %, T19 shares 14.6 %, fact 3 extended
with the layer-`O` per-day table) + **T015 Rev 7** (the lab layer confirmed from the full tables, the 8-minute closed-form
check, and the third Bot Bot gate print). INDEX and README rows bumped; validator clean after the log anchor.

## Next open question

13 lines left unpriced: `Module` (6), the 2 `Enemies` `Boss` lines, `Battle Condition` (5). Device list unchanged:
H063 (which also settles the 191 vs 189 denominator), H062, H061, the Bot Bot gate, then the gate-cell reads.

'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
