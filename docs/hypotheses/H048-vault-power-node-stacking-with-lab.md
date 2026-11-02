# H048 — Do the Vault Power nodes stack additively or multiplicatively with the income-lab multiplier?

Status: open · Raised: 2026-11-02

**Claim.** `Cash/Wave` and `Coins/Wave` each have three independent multipliers, and the sources do not state how they
combine ([T020 §1.2, §6.2.1](../techniques/T020-workshop-coin-order.md), [T017 §2.2](../techniques/T017-vault-keys-priority.md)):

| Layer | Max value | Source |
|---|---|---|
| Workshop level | 596 (Cash/Wave) · 150 (Coins/Wave) | printed, 149 lv |
| Its lab (`Cash/Wave`, `Coins/Wave`) | **×2.98** (= 1 + 0.02 × 99) | printed, 99 lv |
| Vault Power node | **+500 %** (= +100 % × 5 levels) | printed, 250 keys |

Two candidate laws for the combined factor:
1. **Additive** (one percentage pool): `1 + 1.98 + 5.00 = 7.98`;
2. **Multiplicative** (each layer is its own ×): `2.98 × 6.00 = 17.88` — **2.24×** more payout.

**Why it matters.** It re-orders the key/coin priority: under (2) the Vault node is worth ×6 on top of everything and the
**775 keys** of T017 Tier B become the single best key sink in the game; under (1) the 99 lab levels and the 5 Vault levels
compete inside one pool, so each is roughly 2× less valuable than as printed. The same question applies to the `Cash` and
`Coins/Kill` Power nodes (+5 %/level ⇒ +25 %).

**Settling observation (device, one run).** Fix the workshop levels (record them), then:
1. read the **Workshop → Utility** panel's displayed value for `Cash/Wave` at your current level and its lab level;
2. buy **exactly one** Vault level of the `Cash/Wave` Power node (10 keys) and re-read the same displayed value;
3. then read the wave-to-wave cash delta in a run (the difference between two consecutive wave cash payouts is the flat
   Cash/Wave term after Cash Bonus, so divide by your Cash Bonus total to isolate it).
- One Power level multiplies the number by **1.00× + (already-earned lab bonus)** → additive;
- by exactly **2.00** → multiplicative.

**Kill condition.** Any other per-level factor (e.g. the first level adds +100 % to a base that already includes the lab,
giving a third intermediate value) → record the three reads and rewrite §1.2's end-state arithmetic from them.
