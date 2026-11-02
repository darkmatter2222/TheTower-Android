# Document index

Ranked summary lives in [../README.md](../README.md). Goal definition: [../goal.md](../goal.md).

## Techniques

| ID | File | Currency | Status |
|---|---|---|---|
| T001 | [Interest idle engine](techniques/T001-interest-idle-engine.md) | Cash, Coins | **Verified (Rev 4**, arithmetic) |
| T002 | [In-run phase order](techniques/T002-run-phase-order.md) | Cash → Coins | Unverified |
| T003 | [Turtle build T1–T2](techniques/T003-turtle-build-t1-t2.md) | tier unlocks | Unverified |
| T004 | [Mission farming on low tier](techniques/T004-mission-farming-low-tier.md) | Gems, Coins, Shards, Medals, Tokens | **Verified (Rev 3**, arithmetic) |
| T005 | [Tier-rush then farm](techniques/T005-tier-rush-then-farm.md) | Coins (daily/weekly) | Unverified |
| T006 | [Lab queue packing + cheapest skipped hour](techniques/T006-lab-queue-packing.md) | all (multipliers) | **Verified (Rev 9**, arithmetic) |
| T007 | [Ad-gem sweep](techniques/T007-ad-gem-sweep.md) | Gems | Amounts verified (Rev 2) |
| T008 | [Stone economy: knee-first UW buying + cooldown sync](techniques/T008-uw-sync-with-stones.md) | Stones → Coins | **Verified (Rev 2)** |
| T009 | [Gem spend order](techniques/T009-gem-spend-order.md) | Coins/min | Unverified (Rev 3) |
| T010 | [Module economy (slot levels, merges, rerolls)](techniques/T010-module-merge-chain.md) | Modules, shards | **Verified (Rev 6**, arithmetic) |
| T011 | [Perk engine tuning](techniques/T011-perk-engine-tuning.md) | Coins (run multipliers) | **Verified (Rev 4**, arithmetic) |
| T012 | [Card deck order (gems per percentage point)](techniques/T012-card-deck-order.md) | Coins, Cash, Elite Cells | **Verified (Rev 2**, arithmetic) |
| T013 | [Event window & medal economy](techniques/T013-event-medal-economy.md) | Medals → Gems, Stones, Shards | **Verified (Rev 5**, arithmetic) |
| T014 | [Tournament tickets & league ladder](techniques/T014-tournament-tickets.md) | Gems, Stones, Keys | **Verified (Rev 6**, arithmetic) |
| T015 | [Bot economy & cell/coin chain](techniques/T015-bot-economy.md) | Medals, Coins, Elite Cells | **Verified (Rev 6**, arithmetic) |
| T016 | [Guild tokens & Bits](techniques/T016-guild-tokens-bits.md) | Tokens, Bits, Coins, Gems, Shards | **Verified (Rev 3**, arithmetic) |
| T017 | [Vault: Keys priority ladder](techniques/T017-vault-keys-priority.md) | Keys → Gems, Coins, Cash, Shards | **Verified (Rev 4**, arithmetic) |
| T018 | [Relic economy & price rule](techniques/T018-relic-economy.md) | % points (Coins/Cash/Lab) | **Verified (Rev 3**, arithmetic) |
| T019 | [Milestone claim engine](techniques/T019-milestone-claim-engine.md) | Gems, Stones, Coins, labs | **Verified (Rev 3**, arithmetic; H038 open) |
| T020 | [Workshop coin-spend order](techniques/T020-workshop-coin-order.md) | Coins → Cash/Coins multipliers | **Verified (Rev 7**, arithmetic) |
| T021 | [Dissonant Runs & Echo](techniques/T021-dissonant-runs-echo.md) | Coins (+ damage/health/UW) | **Verified (Rev 2**, arithmetic) |
| T022 | [Free-currency census & paid ladder](techniques/T022-free-currency-census-paid-ladder.md) | Gems, Stones (budget + bills) | **Verified (Rev 2**, arithmetic) |
| T023 | [Guardian economy (bit model, Fetch droptable, sync layer)](techniques/T023-guardian-economy.md) | Bits → Gems, Medals, Shards, Coins | **Verified (Rev 5**, arithmetic) |

## Hypotheses (open)

| ID | File | Settled by |
|---|---|---|
| H001 | [Ad-gem daily hard cap](hypotheses/H001-ad-gem-hard-cap.md) — **resolved** (60 claims/day = 360 gems, 00:00 UTC) | done: v29 patch notes state the cap; semantics of the bank moved to H029 |
| H002 | [Mission tier offset = max − 2](hypotheses/H002-mission-tier-offset.md) | read 3 wave-based missions vs your max tier |
| H003 | [Interest cap value](hypotheses/H003-interest-cap-value.md) — **resolved** (base $50, 15-level ladder to $15 000) | done: both wikis print the ladder; one cosmetic device read left |
| H004 | [Daily reward scales with max tier](hypotheses/H004-daily-reward-tier-scaling.md) | log daily claim before/after a tier unlock |
| H005 | [Autoplayer beats manual at low tier](hypotheses/H005-autoplayer-throughput.md) | coins/hour with and without it |
| H006 | [Auto Pick Ranking vs First Perk Choice](hypotheses/H006-auto-pick-ranking-vs-first-perk-choice.md) — **resolved** (the ranking takes precedence) | done: Tower Hub states the precedence with the worked example |
| H007 | [Stepped base waves & lab subtraction](hypotheses/H007-stepped-base-waves-lab-subtraction.md) — **resolved** (the lab subtracts from every base; thresholds are `k × floor(interval)`) | done: Tower Hub prints the law per base + the worked example |
| H008 | [Duplicate game-speed perk +0.01](hypotheses/H008-duplicate-game-speed-perk.md) | read game speed in the stats screen after a 2nd copy |
| H009 | [Elite density per wave → cells/hour](hypotheses/H009-elite-density-per-wave.md) | Δcell counter ÷ minutes, twice in one tier |
| H010 | [Card drop-rate split & pool re-normalisation](hypotheses/H010-card-drop-rate-renormalisation.md) | read the Cards ℹ panel before/after maxing one Common |
| H011 | [Shatter value ladder (Epic+ 180, Legendary+ 360)](hypotheses/H011-shatter-value-ladder.md) | shard-counter delta when shattering one Epic+ / Legendary+ |
| H012 | [Boss interval → reroll shards/hour](hypotheses/H012-boss-interval-reroll-rate.md) | wave gaps between three consecutive bosses + shards/hour |
| H013 | [Relic gates count only mission medals](hypotheses/H013-relic-gate-medal-source.md) | claim one weekly box first, then read the relic counter |
| H014 | [Per-ticket tournament payout](hypotheses/H014-per-ticket-payout.md) | buy exactly 2 extra tickets, compare total to 3× reward |
| H015 | [Bot Bot bonus increment 0.05 vs 0.5](hypotheses/H015-bot-bot-increment.md) — **resolved** (+0.05, cap ×2.00) | done: Tower Hub's level table is internally consistent; level count moved to H034 |
| H016 | [Guild Store quantity vs price per purchase](hypotheses/H016-guild-store-quantity-vs-price.md) — **resolved** (fixed 100 gems / 250 shards; price escalates; shard types independent) | done: Tower Hub's prose states the rule |
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
| H027 | [One Dissonance boost per tier, or one per category](hypotheses/H027-dissonance-one-boost-per-tier-vs-four.md) | run Attack then Utility on one tier, count the panel lines |
| H028 | [Which Dissonance terms are live in a tournament](hypotheses/H028-dissonance-boost-in-tournaments.md) | read the run's coin multiplier in a bracket vs a normal run |
| H029 | [Does the 60-claim cap count taps or timers](hypotheses/H029-ad-gem-cap-counts-taps-or-timers.md) | with the 5× bank, log taps × badge until the icon stops paying |
| H030 | [Does the web store's +10 % cover stone offers too](hypotheses/H030-webstore-bonus-applies-to-stones.md) | compare identical price points in-game vs the web **Gems**/**Stones** tabs |
| H031 | [Does the web Free Gift stack with the 20-gem claim](hypotheses/H031-webstore-weekly-gift-stacking.md) | one week of `G0 → G1 → G2` gem-counter reads |
| H032 | [Is the perk-granted random UW permanent](hypotheses/H032-perk-random-uw-permanence.md) | take the perk, end the run, re-read the UW owned-list + next offer price |
| H033 | [How many levels does a UW+ ability have](hypotheses/H033-uwplus-level-count.md) | read the level cap on two UW+ lines from different trees |
| H034 | [Bot Bot Bonus line: 19 or 30 levels](hypotheses/H034-botbot-level-count.md) — **resolved** (19 levels, cap ×2.00) | done: value ladder closes 1.05 + 19 × 0.05 = 2.00 ✓ |
| H035 | [Lab-rush price improves per completed lab](hypotheses/H035-lab-rush-rate-per-completed-lab.md) — **resolved** (7.5 gems/h × 0.91/0.79/0.66 buckets + 0.015× per gold box) | done: both factors printed by two sources |
| H036 | [Is the 80-card event quest worth 1 600 gems](hypotheses/H036-buy-80-cards-event-roi.md) | read the quest's medal payout + the shop's gems-per-medal rate |
| H037 | [Per-level step of the six special enhancements](hypotheses/H037-enhancement-per-level-step.md) | read the multiplier line at level 0, 1 and the cap for each |
| H038 | [Milestone premium track additive (46 cells) or replacement (23)](hypotheses/H038-milestone-two-track-badge.md) | badge delta before/after buying one pass on a fully-cleared group |
| H039 | [Milestone coin cells flat or run-multiplier scaled](hypotheses/H039-milestone-coin-cell-scaling.md) | coin-counter delta for one cell, low vs high coin multiplier |
| H040 | [Does Fetch's cooldown run offline](hypotheses/H040-fetch-procs-offline.md) | gem/shard counters before an app-closed night + per-hour rate |
| H041 | [What Fetch's 20-gem/10-medal cap counts](hypotheses/H041-fetch-cap-semantics.md) | five counter reads across one day — do the shard lines keep rising |
| H042 | [Enemies-tab Coin Bonus: multiplier or flat add](hypotheses/H042-enemy-tab-coin-bonus-semantics.md) | coin-multiplier breakdown + coins-per-kill before/after 1 level |
| H043 | [Do the Vault tab totals sum to ≈ 73 000 keys](hypotheses/H043-vault-tab-totals.md) | read the three tab totals (Harmony should be ≈ 1 350) |
| H044 | [How many assist module slots (4?)](hypotheses/H044-assist-slot-count.md) | count the assist slots + read each unlock price |
| H045 | [Is the module pity counter per banner or shared?](hypotheses/H045-module-pity-counter-scope.md) | read the counter on both banners around a switch |
| H046 | [Card rarity-mass redistribution: 85/15 or 97/3?](hypotheses/H046-card-rarity-mass-redistribution-rule.md) | read the ℹ panel right after the 12th Common maxes |
| H047 | [Land Mine Stun gate: T7 W250 or T11 W10?](hypotheses/H047-land-mine-stun-milestone-gate.md) | read the Card-reward cell in the Milestones screen |
| H048 | [Vault Power nodes: additive or multiplicative with the lab?](hypotheses/H048-vault-power-node-stacking-with-lab.md) | buy one Power level, re-read the line's value and the wave cash delta |
| H049 | [Income lab: multiplies value or increment?](hypotheses/H049-income-lab-multiplies-value-vs-increment.md) | Cash/Wave at workshop L1 with the lab at L10 → 4 or 4.8 |
| H050 | [Lab `Time` column: per-level or cumulative?](hypotheses/H050-lab-time-column-per-level-vs-cumulative.md) — **resolved** (per-level) | done: `Game Speed`'s 7 times sum to 65 317 min = 45.36 d = its printed total |
| H051 | [Free-upgrade 90.75 % decomposition + ×2.5 multiply point](hypotheses/H051-free-upgrade-chance-90-75-decomposition.md) | read the tab’s summed chance, the perk’s wording, then one Vault level |
| H052 | [Guardian chip caps: Summon's two short lines + Cash Bonus = 72 levels?](hypotheses/H052-guardian-chip-line-caps.md) | hold the Summon chip: Cash Bonus final level/total (255 600?) + Cooldown and Duration final values |

## Logs

> Anchor rule (verified against GitHub's rendered `id=` attributes): a heading's separator contributes **one hyphen per
> space plus the literal character**, so `2026-11-02 - Session 48 (iteration 57: …)` ⇒ `2026-11-02---session-48-…`
> (**three** hyphens, because the separator is a plain `-`), while an em-dash separator ⇒ **two**. Always regenerate an
> anchor from the heading text instead of typing it.

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
- [2026-11-01 — session 14 (T001 Rev 2, T019 Rev 2, H003 resolved, H025–H026)](log/2026-11-01.md#2026-11-01---session-14-iteration-23-interest)
- [2026-11-01 — session 15 (T021, H027–H028)](log/2026-11-01.md#2026-11-01---session-15-iteration-24-dissonance)
- [2026-11-01 — session 16 (T007 Rev 2, T010 Rev 3, H001 resolved, H029)](log/2026-11-01.md#2026-11-01---session-16-iteration-25-ad-gems--v29-notes)
- [2026-11-01 — session 17 (T022, H030–H031)](log/2026-11-01.md#2026-11-01---session-17-iteration-26-census--paid-ladder)
- [2026-11-01 — session 18 (T008 Rev 2, H032–H033)](log/2026-11-01.md#2026-11-01---session-18-iteration-27-stone-ledger)
- [2026-11-01 — session 19 (T015 Rev 2, H015 resolved, H034)](log/2026-11-01.md#2026-11-01---session-19-iteration-28-bot-ladders)
- [2026-11-01 — session 20 (T009 Rev 3, H035–H036)](log/2026-11-01.md#2026-11-01---session-20-iteration-29-gem-ladder-priced)
- [2026-11-01 — session 21 (T020 Rev 2, H037)](log/2026-11-01.md#2026-11-01---session-21-iteration-30-enhancement-layer-priced)
- [2026-11-02 — session 22 (T019 Rev 3, H038–H039)](log/2026-11-02.md#2026-11-02---session-22-iteration-31-the-milestone-ledger-two-track-model)
- [2026-11-02 — session 23 (T023, T022 pointer, H040–H041)](log/2026-11-02.md#2026-11-02---session-23-iteration-32-the-guardian-layer-priced)
- [2026-11-02 — session 24 (T017 Rev 2, H042–H043)](log/2026-11-02.md#2026-11-02---session-24-iteration-33-the-vault-priced)
- [2026-11-02 — session 25 (T006 Rev 3, H035 resolved)](log/2026-11-02.md#2026-11-02---session-25-iteration-34-the-lab-layers-two-meta-labs)
- [2026-11-02 — session 26 (T011 Rev 3, H006 resolved)](log/2026-11-02.md#2026-11-02---session-26-iteration-35-the-perk-tree-budgeted)
- [2026-11-02 — session 27 (T010 Rev 4, H044–H045)](log/2026-11-02.md#2026-11-02---session-27-iteration-36-the-module-layer-budgeted)
- [2026-11-02 — session 28 (T012 Rev 2, H046–H047)](log/2026-11-02.md#2026-11-02---session-28-iteration-37-the-card-deck-budgeted)
- [2026-11-02 — session 29 (T020 Rev 3, H048–H049)](log/2026-11-02.md#2026-11-02---session-29-iteration-38-the-workshops-income-layer-priced)
- [2026-11-02 — session 30 (T001 Rev 3, H050)](log/2026-11-02.md#2026-11-02---session-30-iteration-39-the-interest-engines-units-fixed-and-its-stack-completed)
- [2026-11-02 — session 31 (T020 Rev 4, H051)](log/2026-11-02.md#2026-11-02---session-31-iteration-40-the-free-upgrade-engine-priced)
- [2026-11-02 — session 32 (T023 Rev 2, H052)](log/2026-11-02.md#2026-11-02---session-32-iteration-41-the-guardians-bit-prices-close-as-a-closed-form)
- [2026-11-02 — session 33 (T020 Rev 5, H050 resolved)](log/2026-11-02.md#2026-11-02---session-33-iteration-42-the-two-qol-labs-priced-and-h050-settled)
- [2026-11-02 — session 34 (T018 Rev 2, H051 candidate)](log/2026-11-02.md#2026-11-02---session-34-iteration-43-the-relic-pool-re-summed-row-by-row)
- [2026-11-02 — session 35 (T016 Rev 2, H016 resolved)](log/2026-11-02.md#2026-11-02---session-35-iteration-44-the-guild-economy-double-sourced-and-h016-closed)
- [2026-11-02 — session 36 (T015 Rev 3)](log/2026-11-02.md#2026-11-02---session-36-iteration-45-the-bot-layer-budgeted-in-events)
- [2026-11-02 — session 37 (T015 Rev 4, H034 resolved)](log/2026-11-02.md#2026-11-02---session-37-iteration-46-per-bot-line-caps-close-the-bot-layer-h034-resolved)
- [2026-11-02 — session 38 (T013 Rev 3)](log/2026-11-02.md#2026-11-02---session-38-iteration-47-the-event-layer-double-sourced-t013-verified)
- [2026-11-02 — session 39 (T015 Rev 5)](log/2026-11-02.md#2026-11-02---session-39-iteration-48-the-bot-layer-closes-all-five-bots-and-ten-labs)
- [2026-11-02 — session 40 (T006 Rev 4)](log/2026-11-02.md#2026-11-02---session-40-iteration-49-the-elite-cell-ledger-closes)
- [2026-11-02 — session 41 (T001 Rev 4)](log/2026-11-02.md#2026-11-02---session-41-iteration-50-the-in-run-cash-laws-first-printed-closed-forms)
- [2026-11-02 — session 42 (T014 Rev 4)](log/2026-11-02.md#2026-11-02---session-42-iteration-51-tournaments-double-sourced-the-battle-condition-lab-layer-closes)
- [2026-11-02 — session 43 (T004 Rev 2, T016 Rev 3)](log/2026-11-02.md#2026-11-02---session-43-iteration-52-the-daily-mission-ledger-closes-guild-season-budget-rises-to-1-480)
- [2026-11-02 — session 44 (T017 Rev 3, T023 Rev 3)](log/2026-11-02.md#2026-11-02---session-44-iteration-53-the-vault-and-the-chip-grids-are-double-sourced-five-of-five-chip-totals-re-add)
- [2026-11-02 — session 45 (T015 Rev 6, T006 Rev 5)](log/2026-11-02.md#2026-11-02---session-45-iteration-54-the-bot-census-closes-and-the-lab-clock-law-appears)
- [2026-11-02 — session 46 (T023 Rev 4, T014 Rev 5)](log/2026-11-02.md#2026-11-02---session-46-iteration-55-the-chip-grid-is-double-sourced-and-the-ticket-rules-get-a-third-print)
- [2026-11-02 — session 47 (T011 Rev 4, H007 resolved)](log/2026-11-02.md#2026-11-02---session-47-iteration-56-the-perk-engine-closes-with-printed-laws-and-the-nine-uw-stone-bill)
- [2026-11-02 — session 48 (T021 Rev 2, T006 Rev 6)](log/2026-11-02.md#2026-11-02---session-48-iteration-57-dissonance-closes-on-both-series-and-the-third-lab-time-shape-appears)
- [2026-11-02 — session 49 (T022 Rev 2, T023 Rev 5)](log/2026-11-02.md#2026-11-02---session-49-iteration-58-the-nine-currency-pages-close-the-census-and-the-bit-ladder)
- [2026-11-02 — session 50 (T020 Rev 6)](log/2026-11-02.md#2026-11-02---session-50-iteration-59-the-enhancement-discount-labs-close-as-a-third-price-shape)
- [2026-11-02 � session 51 (T013 Rev 4)](log/2026-11-02.md#2026-11-02---session-51-iteration-60-five-of-the-twenty-one-event-missions-complete-themselves)
- [2026-11-02 - session 52 (T017 Rev 4, T013 Rev 5)](log/2026-11-02.md#2026-11-02---session-52-iteration-61-both-vault-trees-close-as-closed-forms-and-the-cosmetic-law-lands-at-90-)
- [2026-11-02 - session 53 (T018 Rev 3)](log/2026-11-02.md#2026-11-02---session-53-iteration-62-the-relic-totals-table-closes-25-of-27-lines-and-the-uw-law-is-printed)
- [2026-11-02 - session 54 (T006 Rev 7)](log/2026-11-02.md#2026-11-02---session-54-iteration-63-the-lab-census-closes-at-158-lines-and-the-rush-ladder-gets-a-rate-law)
- [2026-11-02 - session 55 (T004 Rev 3)](log/2026-11-02.md#2026-11-02---session-55-iteration-64-the-daily-mission-shard-column-is-one-formula-and-the-weekly-bill-is-106-x-the-tier-row)
- [2026-11-02 - session 56 (T010 Rev 5)](log/2026-11-02.md#2026-11-02---session-56-iteration-65-the-shatter-lab-prints-a-fourth-lab-shape-and-every-module-cap-closes)
- [2026-11-02 - session 57 (T006 Rev 8, T012 Rev 2, T014 Rev 6, T020 Rev 7)](log/2026-11-02.md#2026-11-02---session-57-iteration-66-three-uncited-tower-hub-pages-close-and-four-legend-laws-re-add)
- [2026-11-02 - session 58 (T006 Rev 9, T010 Rev 6)](log/2026-11-02.md#2026-11-02---session-58-iteration-67-five-lab-pages-print-their-ladders-and-the-per-column-law-falls-out)

## Reference material in this repo

- `tools/gm_strings.txt` — 46,810 dedumped strings from `global-metadata.dat` (grep this first; it is the fastest way to confirm a system exists).
- `apk/apktool/` — manifest, resources, 5 dex in smali.
- `apk/jadx/sources/` — Java SDK layer only (game code is IL2CPP, not here).
- `apk/native/lib/arm64-v8a/` — `libil2cpp.so` (73 MB) holds all C# game code.
