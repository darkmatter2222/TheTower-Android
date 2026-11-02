# H024 — Enhancement unlock counters are cumulative coin-spend and survive a Workshop respec

Status: open · Raised: 2026-11-01

**Claim.** Enhancements unlock at cumulative coin-spend thresholds (**50 B / 500 B / 500 T** spent on the relevant
enhancement type, per the fandom enhancement pages), and those counters are **lifetime spend**, so
1. every coin spent on the ordinary Workshop lines contributes (the “cheap-first” order in
   [T020](../techniques/T020-workshop-coin-order.md) §2 is therefore a double-dip), and
2. using the **Workshop Respec** (lab, T4 W30) refunds the *coins* but does **not** roll back the unlock counters,
   so a respec is free in unlock-progress terms.

**Alternative reading.** The counter is per-enhancement-type “coins currently invested”, i.e. it decreases when the
coins come back from a respec — then a respec can lock you out of a 500 T unlock and the respec should be avoided
until after the enhancement is unlocked.

**Why it matters.** It decides whether the respec is a zero-risk rebalancing tool (as T017/T020 assume) or a
progress-destroying one, and whether surplus coins should be pushed into the *cheapest* levels (many small spends) or
into a few deep levels. If the counter is lifetime-spend, both readings give the same coin total, so the difference
only shows up around a respec.

**Settling observation (one respec).** Record the three enhancement unlock counters (Attack / Defense / Utility, shown
as “X spent of Y” on the enhancement unlock rows), use the **Workshop Respec** button so a known coin amount `R`
returns, then re-read the same three counters.
- unchanged ⇒ lifetime-spend counters (claim confirmed, respec is free);
- decreased by exactly `R` ⇒ currently-invested counters (then respec only after the desired enhancement is unlocked).

**Falsifier.** If the counters decrease, T020 §6’s “coin spend advances the counters for free” note needs the caveat
“unless you respec”, and the respec moves behind the enhancement unlocks in the tap order.
