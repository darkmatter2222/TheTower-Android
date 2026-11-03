param()
# Appends the session-129 log entry (iteration 138) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 129 (iteration 138: the four-line density system)

## Asked

Rev 8 priced the two *uptime* lines per medal but left the other two (Range, Bonus) as prose ("Range is the strongest
upgrade", "keep it a couple of levels ahead of Bonus"). One item: price all four lines in one system, find where the guide's
ordering comes from arithmetically, and produce the par-optimal level plan for a bot.

## Sources

Printed constants only, all already in T015 1.3: Golden Bot **Range** 20 m, +2 m/lv, cap 60 m (**9 600** medals) ;
**Bonus** x2.0, +0.2/lv, cap x8.0 (**20 400**) ; **Duration** 20 s +0.5 (**20 400**) ; **Cooldown** 120 s -3 (**5 700**) ;
the price ladder **100 + 40(n-1)**; the four-line total **56 100** (printed) and Amplify's **54 420** with its 18-level
Range. The coin chain is H015's (`kills-in-range x Golden bonus x Bot Bot x GT window`). New script:
`tools/bot-four-line-density.ps1`; the amplification sentence comes from Tower Hub `wiki/bot/golden-bot`.

## What was established

**1. The four gains.** Under `coins = kills-in-coverage x bonus x uptime` a level's relative gain is

```
dR(n) = 2/(18 + 2n)      dB(n) = 0.2/(1.8 + 0.2n)      dD(n) = 0.5/(19.5 + 0.5n)      dC(n) = 3/(123 - 3n)
density(n) = gain(n)/(40n + 60)
```

**2. `dR(n) = dB(n) = 1/(n + 9)` — an exact identity** (both reduce to the same expression; the script checks every level).
Range and Bonus are therefore **the same ladder** while Range is still open: 2 m on 20 m and 0.2x on x2.0 are both **10 %**
steps whose bases grow at the same relative rate. The only asymmetry is the cap (**20** vs **30**), which is why the guide's
"keep Range a couple of levels ahead of Bonus" is optimal rather than arbitrary - any near-level split is optimal.

**3. The densities (x10^-4 per medal):** level 1: **10.000 / 10.000 / 2.500 / 2.500** (Range / Bonus / Duration / Cooldown);
level 10: 1.144 / 1.144 / 0.444 / 0.701 ; level 15: 0.631 / 0.631 / **0.281** (below par) / 0.583 ; level 20: 0.401 / 0.401 /
0.197 / capped. **Range-Bonus level 1 is the densest medal buy in the whole layer** - 4x the Cooldown's and **34x** the
cosmetic par (0.296e-4).

**4. The par-optimal Golden Bot** (`density >= 2.96e-5`, greedy over four lines):

| line | levels | medals | panel after | relative gain |
|---|---|---|---|---|
| Range | **20** | 9 600 | 60 m | x3.00 |
| Bonus | **24** | 13 440 | x6.8 | x3.40 |
| Duration | **14** | 5 040 | 27 s | x1.35 |
| Cooldown | **15** | 5 700 | 75 s | x1.60 |
| **total** | **73** | **33 780** | - | **x22.03** (Sigma ln = 3.092) |

**27.8 events**, i.e. **60.2 %** of the fully-capped **56 100** medals, average density **0.92e-4** per medal. The greedy
sequence keeps Range/Bonus in lockstep pairs and lets the Cooldown line finish first (its density decays slowest):
`R1 B1 R2 B2 R3 B3 R4 B4 B5 R5 D1 C1 R6 B6 ...`.

**5. The single open parameter is the amplification constant `A`** (H067): if the tower's own range adds to the bot's
coverage, `18 + 2n` becomes `20 + A + 2n` and the Range ladder is scaled down uniformly - level 1 = **10.00 / 6.67 / 5.00 /
3.33 / 2.00e-4** for `A = 0 / 10 / 20 / 40 / 80` m, with the line's par-stop falling to level **16** (A = 40) or **12**
(A = 80). For any `A >= 10` **Bonus leads from level 1**; the uptime pair and the cosmetic par are `A`-independent.

**6. Cross-checks:** `SumCost(L) = 20L^2 + 80L` re-adds the printed **9 600** (Golden Range), **7 920** (Amplify Range,
L18), **20 400** and **5 700**; the four capped lines sum to the printed **56 100** exactly.

## Verdict

**T015 Rev 9**: new **3.2** (the four density laws, the `dR = dB` identity, the density table, the par-optimal plan with
its sequence, the `A` sensitivity), 2 checklist items, 2 falsification bullets, Rev line + Sources bullet; new
**H067** for `A`. INDEX: T015 row bumped, H067 row added, session-129 anchor; README T015 description + confidence cells.

## Next open question

Device list: **H063**, **H065**, **H064**, **H062**, **H061**, **H014**, **H066**, **H067** (the `A` read: two measurements
over the same wave window). Paper candidates: the same four-line system for **Amplify** (its Bonus is +0.4/lv on a x3.5 base
= an 11.4 % step, so its level-1 density is **higher** than Golden's - the ranking of the *bots* against each other can be
finished without a device read) and the Thunder Linger line (+3 % on 20 % = a 15 % first step).

'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
