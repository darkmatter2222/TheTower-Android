# H049 — Does the income lab multiply the workshop *value* or only the per-level *increment*?

Status: open · Raised: 2026-11-02

**Claim.** Tower Hub describes all four income labs as “each level increases the size of the workshop increments **while
also raising the maximum workshop value**” ([T020 §1.2](../techniques/T020-workshop-coin-order.md)). Two readings are
possible and they differ by the base term:

| Reading | `Cash/Wave` at workshop **L50** with the lab at **L10 (×1.20)** |
|---|---|
| **(A) value × lab** | 200 × 1.20 = **240** |
| **(B) increment × lab, base added** | 4 × 50 × 1.20 = 240 — same, *but* at L0 the two differ: (A) 1 × 1.20 = **1.2**, (B) 1 + 0 = **1** |

For `Coins/Wave` the base is **1**, so (A) gives `1 × 2.98 = 2.98` at workshop L1 while (B) gives `1 + 1 × 1.98 = 2.98` —
the readings agree only where the base is 0 (Cash/Wave). **The discriminating case is `Coins/Wave` at workshop level 1**
(or the ×-lines, where the base is ×1.00: (A) → 1.00 × 2.98 = 2.98, (B) → 1.00 + 1.98 = 2.98 — identical again).
So the only real difference is whether the lab multiplies the **whole** line value (including the flat base) or the
per-level part only: it shows up in the **Cash/Wave** line at low levels, where the base is 0 and both readings agree, and
in any line whose base is non-zero *and* whose lab level is odd-numbered (rounding of ×1.02 steps).

**Why it matters.** If (A) is right, the §1.2 end-state (`2.49 × 2.98 = 7.42`) is exact; if (B) is right, the `×`-lines cap
at `1 + 1.49 × 1.98`-style values instead and every “per unit” price in T020 §1.2 shifts by a few percent — the *order* of
buys does not change, but the totals in T022's bills do.

**Settling observation (device, two reads, no run needed).**
1. **Workshop → Utility** → read the displayed value of `Coins/Kill` at its current level (e.g. `1.05x`) and the displayed
   value of its lab (`1.20` at L10).
2. Open a run's stats and read the **Coin/Kill** figure, then compute `workshop × lab` and `1 + (workshop−1) + (lab−1)` and
   see which matches the in-run figure. (The ×-lines make both formulas agree, so use the *next* step.)
3. Discriminate on `Cash/Wave`: at workshop **L1** with the lab at **L10** the payout should be **4** (reading B) or
   **4.8** (reading A) before Cash Bonus — divide the wave-to-wave cash delta by your Cash Bonus total.

**Kill condition.** If neither number appears, the line has a third term (a flat additive part from the Vault or the
modules); record the raw wave delta, the workshop value and the lab value, and rebuild §1.2 from the triple.
