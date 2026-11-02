# H051 — How is the 90.75 % free-upgrade ceiling composed, and where does the ×2.5 enhancement multiply?

Status: open · Raised: 2026-11-02

**Claim.** Tower Hub prints “the highest free upgrade chance you can reach is **90.75 %**” for the three `Free *Upgrade`
tracks ([T020 §1.4](../techniques/T020-workshop-coin-order.md)). The components that are separately printed are:

| Source | Value |
|---|---|
| workshop, 99 levels × 0.5 % | **49.5 %** |
| `Free Upgrades` **card** (L1 → L7) | 4 % → **10 %** |
| `Free Upgrades` **perk** | printed as “×1.5” in the perk list (T011) — *unconfirmed as ×1.5 vs +50 %* |
| **Vault** `Free *` nodes (Power → Utility), 5 × +5 % | **+25 %** each |
| `Free Upgrades` **enhancement**, 150 lv | **×2.5** (§6.2.2) |

The arithmetic that fits: **(49.5 + 10 + 1) × 1.5 = 90.75** ✓ — so the pool is 60.5 % (a **+1 %** source still unidentified,
most likely a relic) multiplied by a **×1.5** perk, and the **×2.5 enhancement is not in that number**. Three sub-questions
remain, all answerable from the panels:

1. **Where does the +1 % come from?** (relic / mastery / guardian chip)
2. **Is the Vault’s +25 % inside the pool or outside it?** If inside, the ceiling would be (60.5 + 25) × 1.5 = 128.25 %,
   which would make the > 100 % **rollover** rule fire on every wave.
3. **Does the enhancement multiply before or after the perk?** `60.5 × 1.5 × 2.5 = 226.9 %` vs `60.5 × 2.5 = 151.25` then
   `× 1.5 = 226.9 %` — identical for two factors, so the order only matters if a **cap** or an additive layer sits between
   them; the observable difference is whether one wave pays **2** free levels or **3**.

**Why it matters.** The tracks cost **75–100 coins per +0.5 %** (§1.4), so the chance number converts directly into free
workshop levels per run: 90.75 % ≈ **908 free levels per 1 000 waves** per workshop, and every extra 10 % is 100 more free
levels. It also decides whether `Free Upgrades` enhancement (734.30 s coins) outranks the other 150-level enhancements.

**Settling observation (device, three reads).**
1. **Workshop → Utility** → read each of the three tracks’ `Value` (expect 0.5 % × level) and the tab’s displayed total
   chance for one workshop (the panel shows the summed chance).
2. Open the **Cards** panel’s held `Free Upgrades` card value and the **Perks** panel’s entry for the free-upgrade perk —
   record whether it reads “+50 %” or “×1.5”.
3. Re-read the summed chance **after** buying one Vault `Free *Upgrade` level (10 keys): if the total rises by **+1.5 %**
   the Vault is inside the pool (multiplied by the perk), by **+1 %** it is outside.

**Kill condition.** If the summed chance matches none of 60.5 / 90.75 / 128.25 %, the model has an extra additive layer
(the mastery’s locked stats, or the Guardian chip); record the three numbers and rebuild §1.4’s ladder from them.
