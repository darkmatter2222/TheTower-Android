# H068 — Are Thunder's stun and linger **50 %** or **25 %** effective against Bosses, Elites and Fleets?

**Status:** open (device read needed) · **Opened:** 2026-11-03 (iteration 140) · **Affects:**
[T015](../techniques/T015-bot-economy.md) §1.2/§1.3 (the “max it or leave it” rule for Thunder Bot)

## Claim

The two wiki copies disagree on the boss-effectivity of Thunder Bot's crowd control:

| source (as fetched) | statement |
|---|---|
| fandom `Thunder Bot` (2026-11-03) | “Stun and linger are **50 %** effective against Bosses and Elites.” |
| Tower Hub `wiki/bot/thunder-bot` (2026-11-01, quoted in T015 §1.2) | never stuns Bosses/Elites/Fleets (v29.1.2); in range they move at **half speed** and take the linger slow at **25 %** strength |

The two are not the same model: the fandom version keeps a stun at half strength, the Tower Hub version **drops the stun
entirely** and folds the effect into the half-speed walk plus a quarter-strength linger. The number matters for the two
places the bot is used: (a) how much of the `+3 %`-per-level **Linger** line is actually realised on a boss (the line's
`ρ = 6.667` density is unaffected, but the *achieved* slow is), and (b) whether the `×5.00` Titan Shock block rides on a
real stun cycle.

## Readings to take (UI only)

1. Run a bracket that ends on a **Boss** wave with Thunder Bot **unlevelled** (all lines at 0) and note the boss's speed
   while the bot is on-field. Compare with the same wave with the bot's **Duration/Cooldown** at the §3.1 par
   (**27 s / 75 s**). If the boss visibly stops, the stun survives at some strength (fandom form); if it only slows, the
   Tower Hub form holds.
2. Read the **Bots** screen for Thunder's `Linger` value and the boss's applied slow % if the panel shows it (some panels
   print the effective % under the icon). The expected pairs are `20 % → 10 %` (50 % form) or `20 % → 5 %` (25 % form).
3. Repeat once on an **Elite** wave and once on a **Fleet** — the Tower Hub copy lists all three categories; the fandom
   copy names only Bosses and Elites.

## What each outcome changes

- **50 % (fandom)** — a boss keeps a half-strength stun, so the Linger line's *achieved* slow doubles; T015 §3.3's
  `ρ`-ranking is unchanged (it is built from printed increments), only the interpretation of `ln 1.3863` for the Linger
  block moves.
- **25 % (Tower Hub)** — as printed in T015 §1.2; nothing moves.
- Either way the **medal** arithmetic of §3.4 is untouched: the block totals are cap sums and the densities are ratios of
  printed increments.

## Falsification

If the boss's speed never changes at all during a Thunder activation, neither number is right and the bot's contribution
against elites should be modelled as `1.0` (no slow) — in that case re-rank the four Thunder lines with the Linger line's
`ρ` dropped from the coin-chain table and note the wave where it was observed.
