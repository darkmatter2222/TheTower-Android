param()
# Appends the session-132 log entry (iteration 141) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 132 (iteration 141: the joint medal and lab queue)

## Asked

T015 prices the bot layer in **medals** and T006 prices the lab layer in **coins and slot-hours**, so a sub-Tier-11 player
with one calendar had no single answer for "what do I buy next". One item: build the numeraire that lets both be ranked
together, and derive the resulting queue.

## Sources

No new fetches - the inputs are all already printed in the two docs: the ten lab lines** bills and clocks from T006
"The Bot Research category priced line by line" (Rev 33: **1.808 24 T / 830 411 min** per cooldown line, **664.838 T /
1 229 315 min** per duration line, **567.06 T / 442 973 min** for Burn Stack, **3.235 5 q / 9 512 288 min** for the
category), the prefix ladders of finding 7, the medal blocks of T015 3.3-3.4, the medal incomes **607.5 / 1 080** per day
(T013 2.4) and the coin anchor **700 T/day**. New script: `tools/lab-day-density.ps1`.

## What was established

**1. The model.** `cost_days = max(price / income_of_currency, Sigma clock / (1440 x slots))`, statistic =
`ln(final value / base value) / cost_days` - relative value per **calendar day**, the only unit all four currencies share.
Par from the cosmetic line: `0.029559 / (1 000/607.5)` = **0.017 957 per day**.

**2. The medal layer beats the lab category by 14.6x.** Medal blocks per day: Echoing Shot **0.103 973**, Flame Cooldown
**0.097 658**, Titan Shock 0.085 018, Thunder**s** four lines 0.079 114, Golden**s** four par lines 0.055 607, the whole
**445-tap** sheet **0.050 720** (212 660 medals = 350.06 days, ln 17.755). The ten lab lines together: **1 321.2** calendar
days at 5 slots for `Sigma ln = 4.5990` = **0.003 481** per day, and no single lab line reaches the par (best: Burn Stack
0.011 266 at 5 slots, 0.002 253 at 1 slot). ⇒ **finish the medal sheet first, run the labs in the slots behind it.**

**3. Inside the lab category the best order depends on which resource binds.** Clock-bound (5 slots, rich): **Burn Stack
0.011 266 > Thunder Linger Time 0.007 906 > Flame Cooldown 0.003 516 > the three Duration labs 0.002 375 > the four 120-s
Cooldown labs 0.002 026**. Coin-bound (the 1e11-1e13/day range): almost **reversed**, because per coin the cooldown labs are
**2.242e-13** (Flame) and **1.292e-13** (the others) against **6.099e-16** for the duration column - a **212x** gap - with
Linger Time 2.030e-15 and Burn Stack 1.222e-15 in between. The **crossover incomes** at 5 slots: the cooldown lab is
coin-bound below **15.68 B/day**, the duration lab below **3.894 T**, Burn Stack below **9.217 T**; between them the category
is mixed, which is the numeric form of T006**s** own "coins and clock bind on different halves" finding.

**4. Checks and one correction.** The prefix ladders re-add: cooldown `181.65 M / 515.0 M / 7.69 B / 80.58 B / 462.95 B /
1 808.24 B` and duration `475 B / 1 318.75 B / 11 328.13 B / 87 368.13 B / 664 838 B`, and
`5 x 1.808 24 T + 4 x 664.838 T + 567.06 T =` **3.235 455 7 q** = the printed **3.235 5 q**. Burn Stack**s** `k = 3` prefix
is **204.25 T** (`43 + 64.5 + 96.75`), so the **B** suffix in T006 finding 7 is a unit typo - corrected in the new section.
The two divisions behind the headline are checkable by hand: `212 660/607.5 = 350.06` and `9 512 288/(1440 x 5) = 1 321.2`.

## Verdict

**T006 Rev 37**: new section "The Bot category on a calendar-day scale - the joint medal/lab queue" (the model, the two
ranked tables, the flip and its crossover incomes, the prefix re-adds, the 204.25 T correction), 3 checklist items, 3
falsification bullets, Rev line + Sources bullet. INDEX T006 row bumped to Rev 37, session-132 anchor; README T006
description + confidence cells.

## Next open question

Device list unchanged: **H063**, **H065**, **H064**, **H014**, **H066**, **H067**, **H068**, **H062**, **H061** - plus the
one reading the new model asks for: the player**s** own **coin income/day** counter (it decides which of the two lab orders
applies, and the two crossovers are 15.68 B and 9.217 T). Paper candidates: (a) apply the same day-scale model to the other
lab categories (the 12 module lines at **0.718 3 q / 5 341.4 d**, the assist layer at **3 243.8393 Q**) so the whole lab
tree gets one ordering; (b) the **stone** side of the day scale, where T014 3.3 already gives stones/week, to see whether the
Bot+ gate (6 250 st) or the UW sync (910 st) is the first stone purchase per day rather than per week.

'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
