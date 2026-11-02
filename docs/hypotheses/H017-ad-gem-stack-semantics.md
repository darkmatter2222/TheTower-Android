# H017 — Ad Gem Stack multiplies the *banked* ad-gem total, not the per-view payout

Status: open · Raised: 2026-11-01

**Claim.** The Vault line reads “Ad gems can stack up to 2x” (10 keys), 3x (20), 4x (40), 5x (60). The natural
reading is a **pending-claim bank**: normally the bottom-left ad gem holds 1 unclaimed 5-gem reward, and the line
lets 2/3/4/5 of them wait. So the T007 daily ad-gem flow stays 5 gems per view, but you can harvest once a day
instead of chasing the ~10-minute timer, and the *daily* total is unchanged (the hard cap,
[H001](H001-ad-gem-hard-cap.md), still limits it).

**Alternative reading.** “stack up to 2×” = the per-view payout becomes 10 gems, i.e. the line multiplies the
T007 table (15 + 5 + 5 + 5 = 30 → up to 50+ per day). Under that reading this single 130-key purchase is the
largest gem source in the Vault and outranks everything in T017 Tier A except the two 25-key module lines.

**Why it matters.** 130 keys is roughly 8 weeks of bottom-band Mythic income, and the two readings differ by ~10
gems/day (~5 000 gems/year). It also changes T007’s step list: under the bank reading you sweep the ad icons once
per day and the *cap* becomes the only limit; under the payout reading the sweep frequency is unchanged but the
per-view value is 5× and the daily ad-gem total must be re-derived.

**Settling observation (2 taps + 1 day).** Write the gem counter down. Tap the bottom-left **ad gem** icon once,
claim, and note the delta (expect **5**). Then leave the game closed for ~40 minutes (2+ timers) with the icon
**un**claimed and count the icon’s badge/number. Expected under the claim: a bank of 2 (or “10” if the icon prints
the gem total). If instead a single claim after 40 minutes still pays 5, the line is a per-view multiplier.

**Falsifier.** If one unclaimed icon pays **10** gems at stack level 1, the per-view reading is correct → put this
line first in T017 §3 and update T007’s daily total.
