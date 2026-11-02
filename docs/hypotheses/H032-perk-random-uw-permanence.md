# H032 — Is the perk-granted “Random Ultimate Weapon” a permanent unlock or in-run only?

Status: open · Raised: 2026-11-01

**Claim.** The standard perk **`Unlock a Random Ultimate Weapon`** (quantity 1, needs the Perks lab at T2 W150) grants the
semi-upgraded UW **for the rest of that run only**; the permanent unlock still costs the ladder price
(5 / 50 / 150 / 300 / 800 / 1 250 / 1 750 / 2 400 / 3 000 = 9 705 stones, [T008](../techniques/T008-uw-sync-with-stones.md) §1).

**Evidence for the claim** (fandom `Perks`, “Random ultimate weapon stats”): “*Unlocking a weapon this way doesn’t allow
you to do lab research on the weapon* … getting poison swamp will not allow you to research swamp stun or swamp radius
labs”, and “*its Ultimate Weapon perk becomes available **for the rest of the run***”. Both read like an in-run object, not
a save-file unlock — permanent unlocks in this game do enable their labs.

**Alternative reading.** The perk sets the permanent-ownership flag as a side effect (cheaper implementation: one bool per
UW), so the stone price for that UW disappears and the 9 705-stone bill shrinks by whatever the perk gave (700–2 426 in
panel terms, or 50–3 000 in ladder terms).

**Why it matters.** One perk pick per run buys an UW worth 700–2 426 stone-levels. If the unlock is also permanent, the
pick is worth **≈ 1 000 stones of the ladder price** and becomes the highest-value perk in the game (it would outrank
Coin Bonus ×1.15 ×5 in the Auto Pick Ranking, T011); if not, it is only an in-run multiplier and the ladder still has to
be paid.

**Settling observation (one run, three reads).**
1. Before the first perk pick: open **Ultimate Weapons** and note which UWs are owned and the **price of the next offer**.
2. Pick the run once the `Unlock a Random Ultimate Weapon` offer appears; note which UW it names (the offer shows it).
3. End the run (or restart the app) and re-open **Ultimate Weapons**:
   - the UW is **not** in the owned list and the next offer still shows the same price ⇒ **in-run only** (claim confirmed);
   - the UW **is** in the owned list, or the next offer’s price advanced by one step ⇒ permanent.

**Controls.** Do the run with the same preset both times (the UW list affects which UW the perk can hand out — it picks
one you do not own), and note that once all nine are owned the perk leaves the pool, so the test must run before the 9th
unlock. Keep the stone counter visible to see whether the ladder position moved.

**Falsifier.** If the UW appears as owned after the run but its **labs stay locked**, the two flags are separate
(ownership ≠ lab enablement) — record both, and note in T008 §5 that the perk covers one but not the other.
