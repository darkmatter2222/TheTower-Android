# H012 — Boss interval is 10 waves, which caps reroll-shard income per wave

Status: open · Raised: 2026-11-01

**Claim.** Reroll shards drop at **15 % per boss kill**, with a **5-wave cooldown** after any drop, and the
amount is tier-indexed (T5 = 12, T10 = 35, T11 = 40). The only missing parameter is the **boss interval**. If
bosses spawn every **10 waves**, the expected rate is `0.15 × waves/10` drops, so a 100-wave hour at max speed
(~100 waves/h nominal, ~80 effective) yields **≈ 12 drops/h** → 12 × 12 = **144 reroll shards/h at Tier 5** and
**480/h at Tier 11**, before the `Reroll Shards` lab (+1 per level per drop) and before fleet/elite/recovery-package
drops. If the interval is 5 waves, the 15 % roll is the only limiter (the cooldown just binds); if it is 20,
income halves.

**Why it matters.** The reroll cost ladder is 10 → 3 000 (T010 §3). Knowing shards/hour converts “how many
locked effects can I afford” into a concrete daily plan: at 144/h, one 3-lock reroll (500) is ~3.5 h of running,
one 4-lock reroll (1 000) is ~7 h — which is why “≤3 locks + Auto Roll” is the right default.

**Settling observation.** In one run, note the wave numbers of three consecutive boss spawns (the boss is the
large enemy with its own health bar at the top) from the in-run **Statistics** screen / wave counter; the gaps
are the interval. Then divide the session's reroll-shard delta by the elapsed hours and compare with the
formula — the ratio tells you whether elites/fleets/packages contribute a comparable amount.

**Falsifier.** If the gaps are not constant (e.g. a boss every 5 waves up to wave 100 then every 10), the model
must be piecewise per tier, and the per-hour table above has to be recomputed per tier band.
