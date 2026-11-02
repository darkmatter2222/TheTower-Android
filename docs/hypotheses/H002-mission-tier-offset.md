# H002 — Wave-based missions use `tier = your max tier − 2`

Status: open · Raised: 2026-11-01

**Claim.** A mission reading "Reach wave xx … on tier xx" is evaluated against `max tier − 2`, so the
listed tier is two below the tier you have actually unlocked.

**Evidence.** game-vault `Guide:Event_Guide` states it directly for two mission rows ("Tier in the
mission is your maximum Tier -2"). Client class `DailyMissionManager` / `DailyMissionTile` confirm the
system is generated per tier.

**Settling observation.** With max tier T, screenshot 3 wave-based missions and compare the printed
tier with T. If the offset is not exactly 2 in your build, record the observed offset (it may be a
per-mission constant) and correct T004 step 2.

**Consequence if true.** Always run wave-mission objectives two tiers below your max: enemy HP is
lower, so no-damage and max-interest streaks are far easier.

**Corroboration (2026-11-01, iteration 15).** The event-mission table lists the same `max tier − 2` note on
two independent mission families (“Reach wave xx without any card equipped on tier xx or above” and “Take no
damage for xx consecutive waves”), i.e. the offset is shared by the **daily** and **event** mission generators
rather than being a per-mission constant. Still needs the on-device check above, because both wikis may be
transcribing the same in-game tooltip.
