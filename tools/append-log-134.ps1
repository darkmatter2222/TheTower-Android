param()
# Appends the session-125 log entry (iteration 134) to today's log. ASCII-only literals.
$u8 = New-Object System.Text.UTF8Encoding($false)
$p = 'docs/log/2026-11-03.md'
$txt = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
$entry = @'


# 2026-11-03 - Session 125 (iteration 134: the stone band ladder closes on one formula)

## Asked

T025 divides the whole stone bill by a six-cell ladder (**80 / 154 / 432 / 1 080 / 6 400 / 20 160**) that had resisted a
closed form - the logged attempt `45 + k x (1st place)` gave k = 0.875 / 1.363 / 2.150 / 3.450 / 16.947 / 42.347 and two
cells (**154**, **432**) are not even multiples of 5. One item: find the law that generates the ladder, or kill it.

## Sources

Own prints re-used: T014 3.2 (the seven ten-band tables, 130 Hub cells + the fandom copy), T014 3.2's ticket law
(`n* = floor(P/10)`, `t = 2 + n`), T002 (30.5 s per wave at x1), T004 finding 5 (**45** box stones from **T1 W60**),
T013 (the stone trade ladder **40/65/90/130/175/230/380**). Fresh fandom pulls (2026-11-03): **`Tournaments`** (all seven
tables in raw wikitext: Platinum `425/180 -> 100/20`, Champion `550/300 -> 175/20`, Legend `675/375/25 -> 250/100/0`,
Mythic `900/475/50 -> 335/225/8`) and **`Currency/Power Stones`** (the 1st-place row **20/40/80/180/300/375/475**). New
script: `tools/stones-band-closed-form.ps1`.

## What was established

**1. The ladder is the ticket model, in one line.** With `G`/`S` = your band's gem/stone pay:

```
P = G + 10S   n* = floor(P/10)   t = 2 + n*   stones/week = 2*t*S = 2S(S + floor(G/10) + 2)
```

The two forms are identical because `floor((G + 10S)/10) = S + floor(G/10)` (`10S/10 = S`). The script checks the identity
on **70/70** band cells (7 leagues x 10 bands) and reproduces all six ladder rows: `10/5 -> t=8 -> 80`;
`20/7 -> t=11 -> 154`; `40/12 -> t=18 -> 432`; `50/20 -> t=27 -> 1 080`; `125/50 -> t=64 -> 6 400`;
`200/90 -> t=112 -> 20 160`. The old skew is explained: the ladder never contained the box row or the 1st-place column -
**154 = 2 x 11 x 7** is the ticket product.

**2. Placement is quadratic.** Fitting `weekly stones` against band pay inside a league gives exponents
**2.00 / 2.03 / 2.03 / 1.89 / 2.01 / 2.04** (Copper -> Mythic); worked Copper `5 -> 20` pay (x4.00) = `80 -> 1 280`
(**x16 = 4^2**), Platinum `20 -> 160` (x8.00) = `1 280 -> 64 640` (**x50.50**, the one league whose tail re-cut breaks the
square). The whole ladder's **x252** is a squared pay ratio.

**3. Every row carries a stop-wave.** Each ticket is an attempt, so `t` is capped by the 72-h bracket clock:
`runs(W) = 72 x 3 600 / 30.5W = 8 498 / W`, giving `stones/week = 2S x min(2 + floor(P/10), floor(8 498/W))`. The six rows
sit where the branches meet, at **W = 1 062 / 773 / 472 / 315 / 133 / 76**. Past that wave the extra attempts pay the same
band; short of it you lose a band. The `wave -> band` map is not printed anywhere = **H066**.

**4. Total weekly stone income.** `stones/week = 2tS + 45 + 15a` with `a = 5` trades (the stone line's own ladder costs
500 of the ~607 medals a week an active account earns: 945 event medals / 2 + 135 box medals) =
**200 / 274 / 552 / 1 200 / 6 520 / 20 280** per week, i.e. the 452 282-bill years become
**43.5 / 31.7 / 15.76 / 7.25 / 1.33 / 0.43** (from 108.7 / 56.5 / 20.1 / 8.05 / 1.36 / 0.43). The `+45 + 75` terms are
**60 %** of the Copper-bottom week, **10 %** at Gold bottom and **0.59 %** at Champion 16-24.

**5. Print note.** The grid's six leagues are the Hub copy; on the fandom copy the two skewed rows are **7 200**
(Platinum 16-24: 200/50 -> t = 72) and **26 400** (Champion 16-24: 300/100 -> t = 132) - Copper/Silver/Gold are identical
in both prints, so feed the closed form the pair your own panel shows.

**6. If H014 fails** (one payout per bracket) the grid collapses to `2S + 45 + 15a` =
**130 / 134 / 144 / 160 / 220 / 300**, and the Copper-bottom bill alone is **66.9 years** - promotion, not the ticket
count, becomes the only lever.

## Verdict

**T014 Rev 10** (new 3.3 with the closed form, the 7x10 grid, the quadratic law, the clock branch, the total-income table,
the print note, the H014 fallback; 4 checklist items, 5 falsification bullets, Sources extended) +
**T025 Rev 5** (Rev line, the total-week columns added to the 2.1 band table, 2 checklist items, 2 falsification bullets,
source pointer to 3.3-3.3) + new **H066**. INDEX rows for T014/T025 bumped, H066 row added, session-125 anchor appended;
README T014/T025 confidence cells carry the Rev-10/Rev-5 numbers.

## Next open question

Device list unchanged, plus one new row: **H063** (mastery-lab count + the `Cells` ladder), **H065** (`Primary Module
Bonus` L1-L2 + lab count), **H064** (BC ceiling), **H062**, **H061**, **H014** (the per-attempt payout - now worth 3
columns of the ledger), and **H066** (three (wave, band) pairs from one bracket).

'@
[System.IO.File]::WriteAllText($p, ($txt.TrimEnd() + "`r`n" + ($entry -replace "`r?`n", "`r`n")), $u8)
Write-Output ('appended bytes=' + (Get-Item $p).Length)
