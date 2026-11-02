# H022 — Tournament and Dissonant-run waves also light the normal Milestones

Status: open · Raised: 2026-11-01

**Claim.** A milestone lights when its `tier + wave` has been reached in **any** run type that uses the normal tier
sequence — including **tournament** runs (which are the same tiers with Heat conditions, T014 §4) — so a tournament
ticket is a *second* chance at the same milestone cell, not a separate track. The evidence is structural: the
milestone table is keyed on “tier N wave W”, tournament brackets are scored by “highest wave in that run”, and the
milestone page never excludes a run type.

**Alternative reading.** Only non-tournament (normal/autoplayer) runs write milestone progress; tournament runs are
scored separately (their own rewards), so the two never interact.

**Why it matters.** Tournaments are played 2×/week with 1–5 tickets each
([T014](../techniques/T014-tournament-tickets.md)), and the push preset reaches higher waves than the farming
preset. If the claim holds, the 23-cell ladder per tier is filled faster *for free* and the ticket value rises by
“milestone cells reached per ticket”, which is currently counted as zero in T014 §3. If it does not hold, do not
use the push preset in tournaments when the goal is milestone progress.

**Settling observation (one tournament, 3 reads).**
1. Before the bracket: read the **Milestones** badge count and the highest lit-but-unclaimed wave in your current
   tier (e.g. “Tier 7, reached 950”).
2. Play **one** tournament ticket that ends **above** the next milestone wave (e.g. 1 000) and note the wave.
3. Re-open the **Milestones** panel: if the badge count went up by the number of waves crossed, the claim holds;
   if it is unchanged, tournament waves do not count.

**Falsifier.** Badge unchanged after exceeding the next milestone wave in a tournament ⇒ only normal runs count;
record it here and in T014 §3, and keep the farming preset in tournaments whenever a milestone is close.
