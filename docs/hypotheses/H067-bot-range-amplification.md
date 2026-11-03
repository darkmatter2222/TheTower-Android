# H067 — Is the bot's coin yield driven by the *printed* bot range, or by the tower-amplified coverage?

**Status:** open (device read needed) · **Opened:** 2026-11-03 (iteration 138) · **Affects:**
[T015](../techniques/T015-bot-economy.md) §3.2 (the four-line density plan, the Range/Bonus tie)

## Claim

Both wikis print the bot's own range ladder (`20 m` base, **+2 m** per level, cap **60 m** for Golden) **and** the sentence
that “all bot ranges are additionally **amplified by the tower's own range**”. The two statements are only compatible if the
**effective coverage** is

```
coverage(n) = 20 + A + 2n
```

with `A` a constant the tower contributes (Workshop `Range` levels, the `Range` card/relic line, T001/T012/T018). The
coin chain then gives the Range line's per-level relative gain as `2 / (20 + A + 2(n − 1))`, so **`A` scales the whole
Range density ladder down uniformly**:

| `A` (m) | Range density at level 1 | above par (`2.96e-5`) through | is Range still ≥ Bonus (10.0e-4)? |
|---|---|---|---|
| **0** | **10.00e-4** | level 20 (the cap) | yes — exact tie with Bonus |
| 10 | 6.67e-4 | 20 | no, Bonus leads |
| 20 | 5.00e-4 | 20 | no |
| 40 | 3.33e-4 | 16 | no |
| 80 | 2.00e-4 | 12 | no |

`A = 0` is the case in which the printed constants are self-contained (Range and Bonus share the identical ladder
`1/(n + 9)`); every `A > 0` breaks that tie **in favour of Bonus**.

## Readings to take (UI only)

1. **The tie test.** On a fresh **Golden Bot** (no levels), record the coins collected per activation from the **Bots**
   screen (or the coin counter over a fixed 60 s window). Buy **one Range level** (100 medals, panel range must read
   **22 m**) and re-measure over the same window. Expected: **×1.10** if `A = 0`; **×1.05** if `A = 20`; **×1.03** if
   `A = 40`. Do the same with **one Bonus level** (must read exactly **×1.10**, i.e. 2.2 on a ×2.0 base) as the control —
   the Bonus reading is exact by construction, so it calibrates the measurement.
2. **The amplification test.** With the Range line at the same level, raise the **tower's** range (Workshop `Range` levels,
   T001; or the `Range` relic, T018) and see whether the bot's collected coins move as well. If they do, `A > 0` and the
   tower's range is inside the bot's coverage; if they do not, the “amplified” sentence refers to the *visual* field only
   and `A = 0`.
3. Record the tier/wave so the field density is the same in both measurements (the number of enemies on screen changes the
   coins collected, so compare only same-wave windows).

## What each outcome changes

- **`A = 0`** → §3.2's table stands as printed: Range and Bonus are interchangeable, and the greedy plan is
  **R 20 / B 24 / D 14 / C 15 = 33 780 medals** with **×22.03** on the chain.
- **`A > 0`** → the *order* changes (Bonus before Range from level 1) and the Range line's stop level falls to **16**
  (`A = 40`) or **12** (`A = 80`); the total bill of the par-optimal bot drops below **33 780** medals and the surplus moves
  to the Cooldown line (which is `A`-independent). No other number in T015 moves.
- Either way **the uptime pair is unaffected** (Duration and Cooldown are printed in seconds) and the cosmetic-par
  comparison (0.296e-4) is unaffected.

## Falsification

If one Range level changes the collected coins by a factor that is **not** `2/(20 + A + 2(n−1))` for any single constant
`A` (e.g. the gain jumps at certain waves), then coverage is not a linear function of the printed range — record the
per-level factors for levels 1–5 and the plan falls back to the measured sequence instead of `1/(n + 9)`. If the Bonus
control does not read exactly ×1.10 after one level, the measurement window (not the model) is at fault — repeat over a
whole number of cooldown periods.
