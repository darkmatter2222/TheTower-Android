# H058 — Does a card mastery multiply the card's whole printed value, or only its bonus above ×1?

**Status:** Open · **Raised:** iteration 91 (T012 §2.1) · **Layer:** Cards (mastery layer)

**Claim.** Every “Increases card stat multiplier” mastery prints a `×` ladder (for example `Coins` ×1.03 → ×1.30, `Damage`
×1.4 → ×5), but the page never says **what** the multiplier is applied to. The two readings differ by the base term:

| Reading | `Coins` card at **Lv. 7** (×1.45) with the mastery at **level 9** (×1.30) | `Damage` card at Lv. 7 (×4.00) with `Damage` mastery ×5 |
|---|---|---|
| **(A) whole value** — the mastery multiplies the card's printed multiplier | 1.45 × 1.30 = **×1.885** (i.e. +88.5 pp of coins) | 4.00 × 5 = **×20.0** |
| **(B) bonus only** — it multiplies the part above ×1.00 | 1 + 0.45 × 1.30 = **×1.585** (+58.5 pp) | 1 + 3.00 × 5 = **×16.0** |

The gap is **30 pp of coins** for `Coins` and **4 × damage** for `Damage` — large enough to see in a wave-to-wave coin count.
This is the same shape as [H049](H049-income-lab-multiplies-value-vs-increment.md) (workshop line vs its lab) and
[H055](H055-perk-defense-composition.md) (additive vs multiplicative perk terms), so a single device pass can settle the
family if all three are read at once.

**Why it matters here (currency, not just power).** Reading (A) makes the mastery layer worth **1.30/1.03 ≈ 1.26×** on top of
a maxed `Coins` card and **×5** on the `Damage` card; reading (B) makes the same 1 250 + 750 stones worth **+58.5 pp** and
**×4** instead. T012 §2.1's per-stone ranking of the eight currency masteries is ordered by the *step* and is unaffected, but
every absolute number in it (and the “×270 for three masteries” product) moves by the base term, which is what feeds
T022's stone/coin bills.

**Settling observation (UI only, two reads, no run needed).**

1. Cards screen → tap the **Coins** card → the **Card Detail** panel shows the level value (**1.45** at Lv. 7). With the
   mastery at level *m* (unlock = 0 → **×1.03**, lab 9 → **×1.30**) the two readings are
   **(A)** `1.45 × (1 + 0.03·(m+1))` and **(B)** `1 + 0.45 × (1 + 0.03·(m+1))`.
   At **m = 0** they already differ: **A = 1.4935**, **B = 1.4635** (at **m = 9**: **A = 1.885**, **B = 1.585**).
2. Read the number the panel prints right after unlocking the mastery, lab untouched:
   - **1.4935** (or **1.885** after the lab) ⇒ reading **A** (whole value).
   - **1.4635** (or **1.585**) ⇒ reading **B** (bonus only).
3. Cross-check on the run screen: at the same wave, `Coins` at Lv. 7 with and without the mastery unlocked should raise the
   wave's coin delta by **×1.03** (A at m = 0) or **×1.009** (B at m = 0: 1.4635 / 1.45) — treat the panel read (step 2) as the
   primary and the coin delta as the confirmation.

**Falsification of the framing.** If the Card Detail panel shows the *card's own* value unchanged by the mastery (still
**1.45**), the mastery is applied later in the chain and neither formula is it: then read the in-run coin delta and fit
`delta_with / delta_without` to **1.03** (A at m = 0) or **1.0135** (B at m = 0), and record which one the panel omits.
