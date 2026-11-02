# H001 — Rewarded-ad gem income is subject to a daily hard cap

Status: open · Raised: 2026-11-01

**Claim.** The number of gem-granting rewarded-ad views per day is capped by a server-side remote
config value, not by the offers themselves.

**Evidence.** The string `hardCapAdGemsEnabled` is present in `tools/gm_strings.txt` (line 11297),
alongside `serverTimeV2` and `tournamentRegisterLoggingEnabled`, in the same block as
`Log/Currency` → `logCurrencyAudit`. That grouping implies a remote-config/feature-flag set consumed
by `RemoteConfigDefaults` (`Assets\Scripts\ScriptableObjects\RemoteConfigDefaults.cs`).

**Why it matters for technique design.** If a cap exists, the optimal daily routine front-loads the
highest-yield offers (15-gem Store offer first) because later views may pay nothing. If no cap exists,
extra ad-view slots that appear during long sessions are pure bonus and should be taken.

**Settling observation.** In one calendar day, take rewarded-ad views in order and write down the gem
count granted by each: `15, 5, 5, …`. The first grant of `0` (or the first repeat of the same offer
without a payout) is the cap N. Record N in T007 and mark this hypothesis closed.

**Alternate explanations to rule out.** The icon may simply not have refreshed yet (the bottom-left ad
gem is on a ~10-minute timer, not a queue); force a fresh app start before concluding the cap was hit.
