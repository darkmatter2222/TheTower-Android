# T008 — Ultimate-Weapon cooldown sync (spend Stones in one lump, never incrementally)

Rev: 1 · Status: **Verified** (published cooldown numbers + stone total)
Value: ★★★★ for the coin engine once unlocked · Ease: 6 taps, but requires saving ~910 Stones · Prerequisite: Golden Tower + Black Hole unlocked

## Why it works

Golden Tower's coin multiplier and Black Hole's coin multiplier **multiply each other**: a ×10 GT
window with a ×5 BH window means enemies that die inside BH while GT is up drop **×50** coins, and
every other coin multiplier stacks on top of that. Two UWs only share a window when their cooldowns
are commensurate. Untouched cooldowns are already partially synced:

- Golden Tower (GT): **300 s**
- Death Wave (DW): **300 s**
- Black Hole (BH): **200 s**

300 and 200 share a multiple, so they fire together every **600 s** (10 min). Nudging one cooldown by
a small amount destroys that ratio: GT at 270 s vs BH at 200 s only re-aligns once every **90 minutes**.
Desync costs roughly **50 % of your coin gain**.

## Steps

1. Open the **Ultimate Weapons** screen and read the three cooldowns. Confirm GT = 300 s, DW = 300 s, BH = 200 s.
2. **Do not touch the BH cooldown.** Any BH reduction multiplies the stone bill needed to re-sync later.
3. Farm Stones (from runs + events) until you hold **910**, then drop GT from 300 s → 200 s **in one single purchase**. That is true 1:1 sync with BH.
4. Only after GT+BH are synced, accumulate again and lower DW to match all three.
5. When you next upgrade cooldowns, move **all synced UWs together** to the next common value.
6. If you already desynced: prefer the partial-sync rows below, or equip the **Multiverse Nexus** module (Epic +20 s, Legendary +10 s, Mythic +1 s, Ancestral −10 s) which forces an average cooldown. Ancestral is the only one that improves on the raw average.
7. Later, sync **Golden Bot** (base 120 s) to the GT/BH number: 1:1 at 120/100… or 2:1 at half the value (e.g. BH 200 → GB 100). Event medals −3 s and Lab levels −1 s per level, so plan the medal/lab order along the diagonal — don't overshoot.

| GT/DW | BH | Both fire every |
|---|---|---|
| 300 | 200 | 600 s |
| 250 | 200 | 1000 s |
| 270 | 180 | 520 s |
| 300 | 150 | 300 s |

## Reproduction checklist

- [ ] GT and BH visibly trigger on the same wave for ≥3 consecutive cycles
- [ ] Coins-per-cycle is roughly 2× the desynced baseline
- [ ] Stone count went 910 → 0 in one purchase, not several

## Falsification

If GT/BH still trigger on clearly different waves after GT reads 200 s, a third timer (Golden Bot,
Spotlight, or a module effect) is offsetting them → list active modules and re-test with Multiverse Nexus removed.

## Sources

game-vault `Guide:Ultimate_Weapons_Sync` (cooldowns, 910 stones, partial-sync table, GB table); mumuplayer.com strategy summary (multiplicative UW bonuses).
