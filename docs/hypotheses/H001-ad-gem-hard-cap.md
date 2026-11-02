# H001 — Rewarded-ad gem income is subject to a daily hard cap

Status: **resolved** (2026-11-01, from the developer's own v29 patch notes) · Raised: 2026-11-01

**Answer.** The cap exists and its value is published: **“Ad Gem claims are now capped to 60 claims per day
(360 gems), resetting at 00:00 UTC”** (v29, 25 Aug 2026) — implemented by the remote-config flag
`hardCapAdGemsEnabled` (`tools/gm_strings.txt`). With the v29 payout of **6 gems per claim**, the ceiling is
**60 × 6 = 360 gems/day**. The stated design reason in the same note is “to reduce the disparity of gems earned from
running the game 24/7”, which also confirms the cap is measured per calendar day in UTC, not per session.

**Numbers now fixed (T007 Rev 2 §1–§2).**

| quantity | pre-v29 | v29+ |
|---|---|---|
| ad-gem claim payout | 5 | **6** |
| claims per day | uncapped in practice | **60** |
| daily ad-gem total | 5 × (uptime/10 min) | **360** |
| Store free (rewarded) claim | 15 | **20** |
| reset | — | **00:00 UTC** |

**What stayed open (moved to H029).** Whether the 60-claim counter counts **tap events** or **accrued timer units**,
which decides if the Vault's `Ad Gem Stack` (130 keys, bank up to 5×) raises the daily total from 360 to as much as
**864** gems (144 accrued timers/day × 6) or only reduces the number of taps. See
[H029](H029-ad-gem-cap-counts-taps-or-timers.md).

**Why it mattered.** It fixes the routine: front-load the 20-gem Store claim, then drain up to 60 ad claims, and stop
— later taps pay nothing until the 00:00 UTC reset. It also explains why the mission row “Claim AD Gems xx times” has
a 60-count tier (T013 §4): the mission ladder was built on the same cap.
