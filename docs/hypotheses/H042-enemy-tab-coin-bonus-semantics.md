# H042 — Does the Enemies tab's `Coin Bonus` option (+0.01/level) show up in the run's coin multiplier?

Status: open · Raised: 2026-11-02

**Claim.** Yes, it is a plain coin multiplier for **that enemy type only**: level 1 = **+1 %**, level 20 = **+20 %**, and it
appears as its own line in the run's coin-multiplier breakdown ([T017](../techniques/T017-vault-keys-priority.md) §3 Tier D).
If so, `Basic → Coin Bonus` levels 1–5 (138 keys for +5 %) is comparable to the Power lines' **+100 % for 10 keys** and is
therefore ~**50× worse per key** — which is why Tier D sits last.

**Alternative readings.** (a) The +0.01 is a *flat coin add* per kill rather than a multiplier (then it is worth far less at
high multipliers); (b) it applies to **all** enemies once any one type is levelled; (c) it only counts for kills made by
orbs/UW (a target-filtered multiplier).

**Why it matters.** It fixes the boundary between Tier B and Tier D: with 250 keys you can have **+500 %** on Coins/Wave
(Power → Utility) or **+25 %** on one enemy type's drops (Enemies tab). The answer also tells you whether the Enemies tab is
worth 100+ keys at all below Tier 11.

**Settling observation (three reads, one sitting).**
1. Note the **Coins** counter and the run's **coin multiplier** line on the stats screen → `M0`, `C0`.
2. Vault → `Enemies` → `Simple` → **Basic** → buy **1 level** of the Coin Bonus option (25 keys) → restart the run.
3. Re-read the coin-multiplier breakdown → `M1`; and take the coins-per-kill for basic enemies before/after (`K0`, `K1`).
- `M1 − M0 = +1 %` ⇒ claim (multiplier, per-type);
- `K1 ÷ K0 = 1.01` but no line in the breakdown ⇒ still a multiplier, just not listed (claim mostly holds);
- `K1 − K0` a fixed coin amount regardless of the multipliers active ⇒ flat add (alternative (a)).

**Controls.** Same tier and wave for both measurements (kill income scales with the tier), no other key spent in between
(a Power line would move the multiplier too), and the same equipped cards/modules/perks. Do the read in a **normal** run, not
a tournament bracket (T028's dissonance term changes the breakdown there).

**Falsifier.** If `M1 = M0` **and** `K1 = K0`, the option does not affect income at all (e.g. it applies only to the enemy
type in the *other* tab sections) — then record which enemy types the three options are shown for, since the tab may key the
bonus to a specific type index.
