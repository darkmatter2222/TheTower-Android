# H015 — Bot Bot's bonus increments by 0.05, not 0.5, per level

Status: open · Raised: 2026-11-01

**Claim.** The wiki writes “Bonus starts at ×1.05 and has 30 levels. Each level increases bonus by **0.5**”,
which would make Bot Bot cap at **×16.05** — implausible next to every other bot (Golden Bot caps at ×8.0) and
to the Bot+ ladders, which top out at ×2.5. The reading that fits the rest of the system is **+0.05 per level**,
capping at **×2.55** (≈ the ×2.5 seen on the Bot+ lines).

**Why it matters.** Bot Bot multiplies the Golden Bot coin bonus and the Amplify Bot damage bonus, so it sits
*inside* both currency chains (T015 §3). At ×2.55 it is a modest multiplier and belongs behind the cooldown
lines; at ×16 it would be the single highest-value bot line in the game and would jump to the top of the
medal queue, ahead of the Golden Bot Bonus line.

**Settling observation (2 taps).** In the **Event Shop → Bots → Bot Bot** upgrade list, read the Bonus line's
value at level 0 and after buying **level 1**:
- `×1.05 → ×1.10` ⇒ +0.05/level, cap **×2.55** (expected).
- `×1.05 → ×1.55` ⇒ +0.5/level, cap **×16.05** — then re-order T015 §3 with Bot Bot first.
A third possibility is a percentage-style display (105 % → 110 %), which also means +0.05.

**Falsifier.** If the panel shows a cap value directly, transcribe it; the derived chain in T015 §3 should then
use the panel's cap rather than either reading.
