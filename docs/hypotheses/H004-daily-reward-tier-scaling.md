# H004 — Daily/weekly coin rewards scale with your maximum tier

Status: open · Raised: 2026-11-01

**Claim.** The daily/weekly coin claim (and the Milestones panel payout) is a function of *max tier
reached*, so spending one run to unlock a tier retroactively enriches every later daily claim.

**Evidence.** `Guide:Beginners_Guide`: "try to beat stage 100, since when you unlock a new tier your
daily and weekly coin rewards increase". Client classes `MilestoneManager`, `Milestone`,
`WeeklyBox`, `PromotionBar` exist in the dump.

**Settling observation.** Record the exact coin figure on the daily claim at max tier T. Push to T+1.
Record the next day's claim. Expected: a step change, not a gradual drift. Note also whether the change
applies to already-completed days (it should not) and whether the Weekly Box follows the same rule.

**Consequence if true.** Tier-rushing ([T005](../techniques/T005-tier-rush-then-farm.md)) is the single
best early investment, above any Workshop line, because it lifts a *passive* income stream.
