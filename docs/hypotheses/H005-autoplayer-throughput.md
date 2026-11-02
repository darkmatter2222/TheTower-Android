# H005 — Autoplayer beats manual play for coins/hour once unlocked

Status: open · Raised: 2026-11-01

**Claim.** After the Autoplayer profile is configured, an autoplayed run yields more Coins per wall-clock
hour than a manually driven run at the same tier, because the tap-hold stacking stays exact and the
profile buys upgrades without hesitation.

**Evidence.** `AutoPlayer`, `AutoMergeUI`, `AutoplayerStats`, `AutoplayerProfile` (a ScriptableObject,
`Custom/AutoplayerProfile`) are all present in the dump, so the feature is data-driven rather than
per-run tuning. Community guides recommend low tier + high wave + auto for idle farming and tier-500
difficulty for active farming, which implies both modes are considered optimal in different contexts.

**Settling observation.** Two timed 30-minute blocks on the same tier: block A manual, block B
autoplay. Record coins/min for each, and whether block B's tap-hold counts ever overshoot.

**Why it matters.** If autoplay wins on throughput, the human's job becomes queue management (Labs,
missions, ads) and the run itself is a background process.
