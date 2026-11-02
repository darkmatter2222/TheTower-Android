# Document index

Ranked summary lives in [../README.md](../README.md). Goal definition: [../goal.md](../goal.md).

## Techniques

| ID | File | Currency | Status |
|---|---|---|---|
| T001 | [Interest idle engine](techniques/T001-interest-idle-engine.md) | Cash, Coins | Unverified (Rev 2) |
| T002 | [In-run phase order](techniques/T002-run-phase-order.md) | Cash → Coins | Unverified |
| T003 | [Turtle build T1–T2](techniques/T003-turtle-build-t1-t2.md) | tier unlocks | Unverified |
| T004 | [Mission farming on low tier](techniques/T004-mission-farming-low-tier.md) | Gems, Coins | Unverified |
| T005 | [Tier-rush then farm](techniques/T005-tier-rush-then-farm.md) | Coins (daily/weekly) | Unverified |
| T006 | [Lab queue packing + cheapest skipped hour](techniques/T006-lab-queue-packing.md) | all (multipliers) | Unverified (Rev 2) |
| T007 | [Ad-gem sweep](techniques/T007-ad-gem-sweep.md) | Gems | Amounts verified |
| T008 | [Ultimate Weapon sync](techniques/T008-uw-sync-with-stones.md) | Coins | Verified |
| T009 | [Gem spend order](techniques/T009-gem-spend-order.md) | Coins/min | Unverified (Rev 2) |
| T010 | [Module economy (slot levels, merges, rerolls)](techniques/T010-module-merge-chain.md) | Modules, shards | Unverified (Rev 2) |
| T011 | [Perk engine tuning](techniques/T011-perk-engine-tuning.md) | Coins (run multipliers) | Unverified (Rev 2) |
| T012 | [Card deck order (gems per percentage point)](techniques/T012-card-deck-order.md) | Coins, Cash, Elite Cells | Unverified |
| T013 | [Event window & medal economy](techniques/T013-event-medal-economy.md) | Medals → Gems, Stones, Shards | Unverified (Rev 2) |
| T014 | [Tournament tickets & league ladder](techniques/T014-tournament-tickets.md) | Gems, Stones, Keys | Unverified (Rev 2) |
| T015 | [Bot economy & cell/coin chain](techniques/T015-bot-economy.md) | Coins, Elite Cells | Unverified |
| T016 | [Guild tokens & Bits](techniques/T016-guild-tokens-bits.md) | Tokens, Bits, Coins, Gems, Shards | Unverified |
| T017 | [Vault: Keys priority ladder](techniques/T017-vault-keys-priority.md) | Keys → Gems, Coins, Cash, Shards | Unverified |
| T018 | [Relic economy & price rule](techniques/T018-relic-economy.md) | % points (Coins/Cash/Lab) | Unverified |
| T019 | [Milestone claim engine](techniques/T019-milestone-claim-engine.md) | Gems, Stones, Coins, labs | Unverified (Rev 2) |
| T020 | [Workshop coin-spend order](techniques/T020-workshop-coin-order.md) | Coins → Cash/Coins multipliers | Unverified |

## Hypotheses (open)

| ID | File | Settled by |
|---|---|---|
| H001 | [Ad-gem daily hard cap](hypotheses/H001-ad-gem-hard-cap.md) | count views until the payout stops in one day |
| H002 | [Mission tier offset = max − 2](hypotheses/H002-mission-tier-offset.md) | read 3 wave-based missions vs your max tier |
| H003 | [Interest cap value](hypotheses/H003-interest-cap-value.md) — **resolved** (base $50, 15-level ladder to $15 000) | done: both wikis print the ladder; one cosmetic device read left |
| H004 | [Daily reward scales with max tier](hypotheses/H004-daily-reward-tier-scaling.md) | log daily claim before/after a tier unlock |
| H005 | [Autoplayer beats manual at low tier](hypotheses/H005-autoplayer-throughput.md) | coins/hour with and without it |
| H006 | [Auto Pick Ranking vs First Perk Choice](hypotheses/H006-auto-pick-ranking-vs-first-perk-choice.md) | which perk Auto Pick takes on the first offer |
| H007 | [Stepped base waves & lab subtraction](hypotheses/H007-stepped-base-waves-lab-subtraction.md) | wave numbers of picks 20/21/22 in one long run |
| H008 | [Duplicate game-speed perk +0.01](hypotheses/H008-duplicate-game-speed-perk.md) | read game speed in the stats screen after a 2nd copy |
| H009 | [Elite density per wave → cells/hour](hypotheses/H009-elite-density-per-wave.md) | Δcell counter ÷ minutes, twice in one tier |
| H010 | [Card drop-rate split & pool re-normalisation](hypotheses/H010-card-drop-rate-renormalisation.md) | read the Cards ℹ panel before/after maxing one Common |
| H011 | [Shatter value ladder (Epic+ 180, Legendary+ 360)](hypotheses/H011-shatter-value-ladder.md) | shard-counter delta when shattering one Epic+ / Legendary+ |
| H012 | [Boss interval → reroll shards/hour](hypotheses/H012-boss-interval-reroll-rate.md) | wave gaps between three consecutive bosses + shards/hour |
| H013 | [Relic gates count only mission medals](hypotheses/H013-relic-gate-medal-source.md) | claim one weekly box first, then read the relic counter |
| H014 | [Per-ticket tournament payout](hypotheses/H014-per-ticket-payout.md) | buy exactly 2 extra tickets, compare total to 3× reward |
| H015 | [Bot Bot bonus increment 0.05 vs 0.5](hypotheses/H015-bot-bot-increment.md) | read the Bonus line at level 0 and level 1 |
| H016 | [Guild Store quantity vs price per purchase](hypotheses/H016-guild-store-quantity-vs-price.md) | read the Shards/Gems entry for buys 1, 2 and 3 |
| H017 | [Ad Gem Stack: bank or per-view multiplier](hypotheses/H017-ad-gem-stack-semantics.md) | claim once, then leave 2 timers unclaimed and read the payout |
| H018 | [Key payout in <9-player brackets](hypotheses/H018-vault-key-bracket-size.md) | note entrants + rank + keys for two brackets |
| H019 | [Premium relics granted retroactively by the Boost](hypotheses/H019-premium-relic-retroactivity.md) | read the in-event medal counter before/after buying the Boost |
| H020 | [Guild relic gates count store purchases only](hypotheses/H020-guild-relic-token-counter.md) | buy the 5-token Shards entry and watch the relic counter |
| H021 | [All 8 Premium Passes cost the same](hypotheses/H021-premium-pass-price-uniform.md) | read the Store price for pass 1 and the highest pass |
| H022 | [Tournament waves light Milestones](hypotheses/H022-milestones-from-any-run-type.md) | cross a milestone wave in a ticketed run, re-read the badge |
| H023 | [Workshop tab-discount labs apply (and their size)](hypotheses/H023-workshop-tab-discount-applies.md) | read a Utility line's price, take 1 lab level, re-read |
| H024 | [Enhancement unlock counters survive a respec](hypotheses/H024-enhancement-spend-counter-respec.md) | read the 3 counters, respec, re-read |
| H025 | [`Interest` lab multiplies the 0.06 %/level increment](hypotheses/H025-interest-lab-multiplies-workshop.md) | read the interest %/payment at lab 0 and lab 10 |
| H026 | [Is `Cash Bonus` inside the interest base?](hypotheses/H026-cash-bonus-inside-interest-base.md) | Δcash over 3 grey-icon waves, before/after +10 Cash Bonus levels |

## Logs

- [2026-11-01 — session 1 (T001–T010)](log/2026-11-01.md)
- [2026-11-01 — session 2 (T011, H006–H008)](log/2026-11-01.md#2026-11-01--session-2-iteration-11-perks)
- [2026-11-01 — session 3 (T006 Rev 2, H009)](log/2026-11-01.md#2026-11-01--session-3-iteration-12-elite-cells-vs-gems)
- [2026-11-01 — session 4 (T012, T009 Rev 2, H010)](log/2026-11-01.md#2026-11-01--session-4-iteration-13-cards)
- [2026-11-01 — session 5 (T010 Rev 2, H011–H012)](log/2026-11-01.md#2026-11-01--session-5-iteration-14-modules)
- [2026-11-01 — session 6 (T013, H013, H002 corroboration)](log/2026-11-01.md#2026-11-01--session-6-iteration-15-events--medals)
- [2026-11-01 — session 7 (T014, T013 Rev 2, H014)](log/2026-11-01.md#2026-11-01--session-7-iteration-16-tournaments)
- [2026-11-01 — session 8 (T015, H015)](log/2026-11-01.md#2026-11-01--session-8-iteration-17-bots)
- [2026-11-01 — session 9 (T016, H016)](log/2026-11-01.md#2026-11-01--session-9-iteration-18-guilds-tokens--bits)
- [2026-11-01 — session 10 (T017, T014 Rev 2, H017–H018)](log/2026-11-01.md#2026-11-01--session-10-iteration-19-the-vault)
- [2026-11-01 — session 11 (T018, H019–H020)](log/2026-11-01.md#2026-11-01--session-11-iteration-20-relics)
- [2026-11-01 — session 12 (T019, T011 Rev 2, H021–H022)](log/2026-11-01.md#2026-11-01--session-12-iteration-21-milestones)
- [2026-11-01 — session 13 (T020, H023–H024)](log/2026-11-01.md#2026-11-01--session-13-iteration-22-workshop)
- [2026-11-01 — session 14 (T001 Rev 2, T019 Rev 2, H003 resolved, H025–H026)](log/2026-11-01.md#2026-11-01--session-14-iteration-23-interest)

## Reference material in this repo

- `tools/gm_strings.txt` — 46,810 dedumped strings from `global-metadata.dat` (grep this first; it is the fastest way to confirm a system exists).
- `apk/apktool/` — manifest, resources, 5 dex in smali.
- `apk/jadx/sources/` — Java SDK layer only (game code is IL2CPP, not here).
- `apk/native/lib/arm64-v8a/` — `libil2cpp.so` (73 MB) holds all C# game code.
