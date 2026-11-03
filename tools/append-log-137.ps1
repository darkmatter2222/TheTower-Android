param()
# Appends the session-128 log entry (iteration 137) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 128 (iteration 137: the uptime density ladder)

## Asked

T015 1.2 gives the bots' levelling order as prose quoted from the guide ("Range then Bonus", "cooldown gives little
benefit unless chasing a sync"), and 1.1 lists what each block costs in events. What was missing is the *per-medal*
ranking: given one event's **1 215** medals, which line of which bot should receive the next level, and when does a line
stop paying for itself? One item: derive the density law for the uptime lines and turn it into a ranked table plus a stop
rule.

## Sources

No new external prints: the constants are the ones already banked in T015 1.3 (per-level increments **+0.5 s** Duration,
**-3 s** Cooldown; caps **30 / 15 / 20 / 25**; the price ladder **100 + 40(n-1)**) and T013 2 (the cosmetic line: theme +
background + 3 songs = **1 000** medals for **+3.0 pp**). New script: `tools/bot-uptime-density.ps1`; the closed form
`Sigma(100 + 40(n-1)) = 20L^2 + 80L` re-adds the four printed per-line totals (**20 400** / **5 700** / **9 600** /
**7 920**) with no free parameters.

## What was established

**1. The gain of a level is separable.** With `U = D/C`, a Duration level multiplies uptime by `(D + 0.5)/D` and a
Cooldown level by `C/(C - 3)`, so the relative gain of level *n* depends only on that line's own index:
`dD(n) = 0.5/(19.5 + 0.5n)` and `dC(n) = 3/(123 - 3n)` at the Golden/Amplify/Bot Bot base (20 s / 120 s). Their ratio is
`6(19.5 + 0.5n)/(123 - 3n)`: **1.000 at level 1** (both lines worth exactly **2.5 %**) rising monotonically to **2.077**
at level 15 - the cooldown's denominator shrinks while the duration's grows. Hence the greedy order
`D1 C1 C2 D2 C3 D3 C4 C5 D4 C6 D5 C7 C8` (**7 levels / 1 060 medals** at the 1 215 budget, uptime 16.667 % -> 19.907 % =
x1.194; **13 levels / 2 820** at 3 000, x1.406).

**2. The ranking, in `ln(multiplier)/medals` (x10^-4):**

| medal line | uptime multiplier | medals | e-4/medal | events |
|---|---|---|---|---|
| Flame Cooldown (75 -> 30 s) | x2.500 | 5 700 | **1.61** | 4.7 |
| Thunder Duration (5 -> 15 s) | x3.000 | 9 600 | **1.14** | 7.9 |
| Golden / Amplify / Bot Bot / Thunder Cooldown (120 -> 75) | x1.600 | 5 700 | **0.82** | 4.7 |
| cosmetics (theme + background + 3 songs) | x1.030 | 1 000 | **0.296** | 0.8 |
| Golden / Amplify / Bot Bot Duration (20 -> 35 s) | x1.750 | 20 400 | **0.27** | 16.8 |

So **Cooldown before Duration** (x3 the density), Thunder's Duration is the best duration buy in the game, and every one of
the five cooldown blocks beats the whole cosmetic line. Capped blocks: Golden/Amplify/Bot Bot x2.80 for **26 100** medals,
Thunder x4.80 for **15 300**; all five uptime blocks together **99 300** medals = **81.7 events** = **163 weeks**
(Flame's page prints no Duration column, so that bot contributes its **5 700**-medal Cooldown line only).

**3. The stop rule.** Against the cosmetic par `ln(1.03)/1 000 =` **0.296e-4**, the Cooldown line stays above par on all
**15** levels (level 15 = 0.583) while the Duration line falls below at **level 15** (0.281 < 0.296; level 14 = 0.304).
=> the medal-optimal placement per bot is **Cooldown 15 / Duration 14**, costing `5 040 + 5 700 =` **10 740** medals and
reading **36 %** uptime (`27 s / 75 s`) against 46.67 % fully capped; the last sixteen duration levels cost 15 360 medals
for x1.296 (**0.17e-4**).

**4. Segment check.** The first five Cooldown levels: **900** medals for 120 -> 105 s = x1.143 = **1.48e-4**/medal.
The last five: **2 900** medals for 90 -> 75 s = x1.200 = **0.63e-4**. 3.2x the medals for 1.05x the effect - which is why
a fresh bot's level-1s (both back at **2.5e-4**) outrank a mature bot's tail.

**5. Consistency with the sync rule.** The two divisor targets of 3 sit inside the plan: **100 s** = 5 Cooldown levels
(**900** medals) and **75 s** = all 15, so the guide's "chase the divisor" advice is also the density-optimal stopping
point at 5 levels.

## Verdict

**T015 Rev 8**: new **3.1** (the two density laws + the 15-level table, the greedy interleave, the five-row ranking with
the cosmetic par, the stop rule, the segment check), 3 checklist items, 3 falsification bullets, Rev line + Sources
bullet; INDEX row and README description/confidence cells carry the Rev-8 numbers.

## Next open question

The device list is unchanged (**H063**, **H065**, **H064**, **H062**, **H061**, **H014**, **H066**) and this layer adds
two cheap reads: **Flame's Duration base** (its page prints only the DR and Cooldown columns, so its absolute uptime % is
unprinted - the x2.50 cooldown ratio is unaffected) and the **Range line's** equivalent density, which needs the bot's
"coin per activation" model (range enters only through the number of enemies inside the field, so its density is not
separable - a one-panel read of the collected-coins counter at range 20 m vs 24 m would settle it).

'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
