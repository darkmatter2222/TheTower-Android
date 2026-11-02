# H028 — Which Dissonance multipliers are live inside a tournament run?

Status: open · Raised: 2026-11-01

**Claim.** In a **tournament** bracket the tier's **own** Dissonant Boost is not applied, but the **echo** from other
tiers is (Tower Hub states this directly; it also explains why the echo is coded as a separate additive term).

**Consequence if true.** The pre-bracket checklist changes: for a bracket you want the *echo* maximised (many finished
tiers, cheap) rather than a deep own-tier run, and a Dissonant Run's high `f` is only valuable for normal runs. It also
means the coin multiplier you read in the tournament's stats panel should equal `1 + Σ echo`, not the panel value of
the Dissonance tab.

**Alternative reading.** The boost is a plain per-tier stat attached to the save, so it applies to every run type
(normal, tournament, Dissonant, mission) — then the tournament preset in T014 keeps the full ×3/×5.

**Settling observation (one bracket, two reads).**
1. Note the tier you will bracket and the number shown for it in the **Dissonance** panel (e.g. `coins ×1.750`).
2. Start the bracket with that tier and read the run's stats panel **Coins multiplier** line in the first few waves;
   then end and start a **normal** run on the same tier and read the same line.
- equal ⇒ the boost applies in tournaments too (claim falsified);
- tournament value ≈ `1 + 0.005 × B × Σf(others)` (a much smaller number, e.g. 1.750 → 1.04) ⇒ claim confirmed, and the
  echo-only model is what T014's per-ticket coin estimate should use.

**Falsifier.** Equal multipliers ⇒ delete the “tournaments use echo only” bullet in T021 §6 and keep T014's numbers as
they are. If the tournament multiplier matches the panel exactly *and* the echo is missing (i.e. it shows 1.750 rather
than 1.790), the two sources implement the terms in the opposite order — record which term is missing.
