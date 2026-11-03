# Document index

Ranked summary lives in [../README.md](../README.md). Goal definition: [../goal.md](../goal.md).

## Techniques

| ID | File | Currency | Status |
|---|---|---|---|
| T001 | [Interest idle engine](techniques/T001-interest-idle-engine.md) | Cash, Coins | **Verified (Rev 5**, arithmetic: the two rate ladders `0.06 % × L` / `1 + 0.02n`, **5.94 × 2.98 = 17.70 %**, the prefix-sum ledger 10/10, the cap ladder’s marginal table) |
| T002 | [In-run phase order](techniques/T002-run-phase-order.md) | Cash → Coins | **Verified (Rev 5**, arithmetic: stack law + ceilings + the wave clock 26+9 s ⇒ 102.86 waves/h at ×1 + the **stats-page attribution law** `P − P/mᵢ` ⇒ rows sum to `P × (n − Σ 1/mᵢ)`, **1.85×** on the printed 100 / ×20 / ×10 example and ≈ **4.71×** with five overlapping sources, and **heat-up 1.04^k** ⇒ 1.48 / 2.19 / 4.80 / 10.52 / 50.5 at k = 10 / 20 / 40 / 60 / 100) |
| T003 | [Turtle build T1–T2](techniques/T003-turtle-build-t1-t2.md) | tier unlocks | **Verified (Rev 4**, arithmetic: the **T13 / T14 orb breakpoint**, the two printed Wall readiness conditions, and the −50 % / −50 % perk trade reading as ×2 effective health) |
| T004 | [Mission farming on low tier](techniques/T004-mission-farming-low-tier.md) | Gems, Coins, Shards, Medals, Tokens | **Verified (Rev 4**, arithmetic) |
| T005 | [Tier-rush then farm](techniques/T005-tier-rush-then-farm.md) | Coins (daily/weekly) | **Verified (Rev 4**, arithmetic: lattice + gate table + the printed tier ladder `1 + 0.8n` T1–T8 → 60 at T21 + the BC bills + the **content timeline** (27 version pages: **Def % 90 → 98 at v0.22**, milestone gates only from **v0.18**, Elite Cells = lab speed at **v0.23**, Dissonance **5×/3×** = the v0.28 hotfix, tier map T10/T11/T12/T13/T14–15/T16–18/T19–21 → v0.4.0/0.8/0.14/0.18/0.20/0.24/0.27) |
| T006 | [Lab queue packing + cheapest skipped hour](techniques/T006-lab-queue-packing.md) | all (multipliers) | **Verified (Rev 23**, arithmetic: 29/29 value laws + the cheap-tier bill 8.10 B / 462.33 d + the 5 h-per-level relation + the **`Super Tower Bonus`** ladder as the **fourth clock shape** (`1 + 0.03·L` 10/10, cap **×1.90**, **Σ10 = 115.94 B** in blocks **21.37 B** / **94.57 B** = **×4.43**, price **×1.3451**/level rather than ×1.5, card product **270 → 351 → 513**) + the **Assist Module Labs** layer (**8** labs, **T19 W50**, cost **0.25 q × n** / time **933 078 s × n**, one lab **116.25 q / 5 021.8 d**, the **100 % law** `1 + 69 + 30`, the stone ladder `3k + 15` ⇒ **8 073**/track, printed hard caps **98 / 90 / 150 / 7 / 37**) + the UW cap row fully enumerated **39/39** with **Σ = 669** re-added and the `Swamp Rend - Additional Enemies` **6/9/11** skew logged + the enemy-stat table closed at **20/20 lines** (`Ranged Enemy Range` **−0.50 %** ⇒ **−15 %**, ×**1.4** costs, **233 280 s**/level = the shared ladder ×**1.00808**, **Σ 60.50 T / 1 245.94 d**) + the Card-lab reconciliation: mastery labs counted **one per card** ⇒ **21** lines / Σ **198** and the census at **169 lines / Σ 4 792**) |
| T007 | [Ad-gem sweep](techniques/T007-ad-gem-sweep.md) | Gems | Amounts verified (Rev 2) |
| T008 | [Stone economy: knee-first UW buying + cooldown sync](techniques/T008-uw-sync-with-stones.md) | Stones → Coins | **Verified (Rev 11**, arithmetic: 9/9 stone values + 4/4 lattice rows + the 53 547 ledger + the 9 UW+ tables closing as 4 sequences (179 240) + the GT matrix + 9/9 workshop totals + the **27/27** per-line `Total` rows + the index page's 42/42 family cells and 27/27 value ranges + the **orbless acceptance test**: uptime **>50 %**, **GT bonus ≥16×**, **BH size 44–48 m at 30 m range**, `Spotlight` **3 beams / ≥40° / ≥20×** (**≥60°** for SL4), kills **≥20×** faster in the beam, `Wall Regen` **10** / `Wall Thorns` **11** + **SPB 25** + **Def % 23**, **CL ≤596×** / **SLM ≥34×**, SH→GComp at **≈60 %**, ACP ancestral **+1 000 waves**) |
| T009 | [Gem spend order](techniques/T009-gem-spend-order.md) | Coins/min | **Three-sourced (Rev 5**; device read pending) |
| T010 | [Module economy (slot levels, merges, rerolls)](techniques/T010-module-merge-chain.md) | Modules, shards | **Verified (Rev 9**, arithmetic: the `40 + 5(t−11)` tier law, the **73-row** four-table sub-stat census (start-rarity histogram **23/9/24/16/1**, cumulative pool **23/32/56/72/73**, **24** arithmetic rows, **7** shared ladders over 22 rows, sensitivity `Defense Absolute` **66.7** / `Cash / Wave` **33.3** / Core damage **31.25**, `Poison Swamp - Cooldown` the only Rare-start cooldown), the lock ladder, the printed ledger) |
| T011 | [Perk engine tuning](techniques/T011-perk-engine-tuning.md) | Coins (run multipliers) | **Verified (Rev 6**, arithmetic: the printed ladders + the per-tier perk bill 0 → 1 46…1 056 picks, 8/8 marginals re-added) |
| T012 | [Card deck order (gems per percentage point)](techniques/T012-card-deck-order.md) | Coins, Cash, Elite Cells | **Verified (Rev 5**, arithmetic: card ladders double-sourced on 23 per-card pages, the mastery law universal as **v(k) = base + (k+1)s** over 22 two-table pages, Σ 27 500 stones with 22 per-page prints, the 50 q / 562.5 d lab, **Coin Decay**, plus the special-card pages printing **Double Death Ray** Σ 1.10 T / 892.3 d and the **×3.00** mastery product) |
| T013 | [Event window & medal economy](techniques/T013-event-medal-economy.md) | Medals → Gems, Stones, Shards | **Verified (Rev 6**, arithmetic: the ladder + the 21/21 milestone-skin laws + the 83/58/44 bucket table at +95.2 pp) |
| T014 | [Tournament tickets & league ladder](techniques/T014-tournament-tickets.md) | Gems, Stones, Keys | **Verified (Rev 9**, arithmetic: 130 ladder cells, the two width sets Σ 30, `n* = floor(P/10)` at ≥ ×2.00, and §4.3's per-league condition/skip laws) |
| T015 | [Bot economy & cell/coin chain](techniques/T015-bot-economy.md) | Medals, Coins, Elite Cells | **Verified (Rev 6**, arithmetic) |
| T016 | [Guild tokens & Bits](techniques/T016-guild-tokens-bits.md) | Tokens, Bits, Coins, Gems, Shards | **Verified (Rev 3**, arithmetic) |
| T017 | [Vault: Keys priority ladder](techniques/T017-vault-keys-priority.md) | Keys → Gems, Coins, Cash, Shards | **Verified (Rev 4**, arithmetic) |
| T018 | [Relic economy & price rule](techniques/T018-relic-economy.md) | % points (Coins/Cash/Lab) | **Verified (Rev 3**, arithmetic) |
| T019 | [Milestone claim engine](techniques/T019-milestone-claim-engine.md) | Gems, Stones, Coins, labs | **Verified (Rev 3**, arithmetic; H038 open) |
| T020 | [Workshop coin-spend order](techniques/T020-workshop-coin-order.md) | Coins → Cash/Coins multipliers | **Verified (Rev 16**, arithmetic: the four value laws `1+0.01L` / `L+1` / `4L`, caps L149 = ×2.49 / 150 / ×2.49 / 596, Σ 19.47 M vs 14.82 M = 0.761, the 9 360× convexity, the 18-row census law `At max = 1 + step × Max` 18/18, per-track bills 2.233 / 2.543 / 7.598 S = 12.374 S, the discount labs' `0.50 % × n` with stop level **L30**, the **17-line attack ledger** 9 cheap caps = **22.88 M** vs 8 deep caps = **839.30 q**, the **18-line defense ledger** 10.767 M vs 6.525 q, the **Packages trio** on one ladder (2 500 coins/pp at L1, **24.7×** second band, caps 321.28 M / 1.33 T / 15.77 T), `Coin Bonus +` to L250 with the **28.6×** second band, `Wave Skip` = **1.1^n** with the `10 % + 5 %·L` ⇒ **55 %** mastery lab, enhancement per point **1.03 / 6.17 / 157.8 B**, the 99-row discount ladder's **20 blocks** with the `40 × price` payback rule ⇒ **Defense L20 / Attack L25 / Utility L30 (99 with Packages)**, the **990 = 99 × 10** offset identity and the 1 445.0 d time-column close, the three per-track pages double-sourcing **all six special totals** and printing the lab gates **T12 W60 5 B / 576 000 s** + **T21 W60**, the **`Range` pair** closed — workshop **79 lv** of `30 + 0.5n` m for **1.46 M** coins, lab **T2 W30 / 80 lv** of `1 + 0.02n` with **L1 = 30 / 0 s**, **Σ 50 027 193** coins, card × lab ⇒ **180.7 m**) |
| T021 | [Dissonant Runs & Echo](techniques/T021-dissonant-runs-echo.md) | Coins (+ damage/health/UW) | **Verified (Rev 4**, arithmetic: the echo law `echoed = (B − 1) × (0.5 + 0.5·L) / 100` per contributing tier, the convex wave ladder, and the **enumerated locks** — **17 / 17 / 12 / 9 = 55** printed stat lines, the four module loadouts, the printed order Attack → UW → Health → Utility, range **max vs min ≈ +2 000 waves**, **AD 3.8 / 6.5 / 10.5×** by rarity, **22** bounce targets) |
| T022 | [Free-currency census & paid ladder](techniques/T022-free-currency-census-paid-ladder.md) | Gems, Stones (budget + bills) | **Verified (Rev 2**, arithmetic) |
| T023 | [Guardian economy (bit model, Fetch droptable, sync layer)](techniques/T023-guardian-economy.md) | Bits → Gems, Medals, Shards, Coins | **Verified (Rev 5**, arithmetic) |
| T024 | [Enemy Level Skip ledger (workshop + lab + enhancement)](techniques/T024-enemy-level-skip-ledger.md) | Coins → wave depth | **Verified (Rev 2**, arithmetic: 14/14 workshop checkpoints + the tier staircase `5 × (tier − 13)`) |

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
| H033 | [How many levels does a UW+ ability have](hypotheses/H033-uwplus-level-count.md) — **resolved** (per-ability caps **11 / 13 / 14 / 19**; the layer is **179 240** stones, not 184 740) | done: each `wiki/uw/<name>` prints its `UW+ Cost Table`, and CL’s own `TOTAL` row re-adds |
| H034 | [Bot Bot Bonus line: 19 or 30 levels](hypotheses/H034-botbot-level-count.md) — **resolved** (19 levels, cap ×2.00) | done: value ladder closes 1.05 + 19 × 0.05 = 2.00 ✓ |
| H035 | [Lab-rush price improves per completed lab](hypotheses/H035-lab-rush-rate-per-completed-lab.md) — **resolved** (7.5 gems/h × 0.91/0.79/0.66 buckets + 0.015× per gold box) | done: both factors printed by two sources |
| H036 | [Is the 80-card event quest worth 1 600 gems](hypotheses/H036-buy-80-cards-event-roi.md) | read the quest's medal payout + the shop's gems-per-medal rate |
| H037 | [Per-level step of the six special enhancements](hypotheses/H037-enhancement-per-level-step.md) — **resolved** (printed census: step **+0.01** on all six, `At max = 1 + step × Max` **18/18**, tracks printed ⇒ `Orb Size` = Defense, the four economy ones = Utility) | done: T020 §6.4 transcribes the 18-row census; panel reads are confirmation only |
| H038 | [Milestone premium track additive (46 cells) or replacement (23)](hypotheses/H038-milestone-two-track-badge.md) | badge delta before/after buying one pass on a fully-cleared group |
| H039 | [Milestone coin cells flat or run-multiplier scaled](hypotheses/H039-milestone-coin-cell-scaling.md) | coin-counter delta for one cell, low vs high coin multiplier |
| H040 | [Does Fetch's cooldown run offline](hypotheses/H040-fetch-procs-offline.md) | gem/shard counters before an app-closed night + per-hour rate |
| H041 | [What Fetch's 20-gem/10-medal cap counts](hypotheses/H041-fetch-cap-semantics.md) | five counter reads across one day — do the shard lines keep rising |
| H042 | [Enemies-tab Coin Bonus: multiplier or flat add](hypotheses/H042-enemy-tab-coin-bonus-semantics.md) | coin-multiplier breakdown + coins-per-kill before/after 1 level |
| H043 | [Do the Vault tab totals sum to ≈ 73 000 keys](hypotheses/H043-vault-tab-totals.md) | read the three tab totals (Harmony should be ≈ 1 350) |
| H044 | [How many assist module slots (4?)](hypotheses/H044-assist-slot-count.md) | count the assist slots + read each unlock price |
| H045 | [Is the module pity counter per banner or shared?](hypotheses/H045-module-pity-counter-scope.md) | read the counter on both banners around a switch |
| H046 | [Card rarity-mass redistribution: 85/15 or 97/3?](hypotheses/H046-card-rarity-mass-redistribution-rule.md) | read the ℹ panel right after the 12th Common maxes |
| H047 | [Land Mine Stun gate: T7 W250 or T11 W10?](hypotheses/H047-land-mine-stun-milestone-gate.md) — also carries the two competing **Death Ray** prints ("any tier, W250" vs W250 on each of the first 10 tiers) | read the Card-reward cell in the Milestones screen |
| H048 | [Vault Power nodes: additive or multiplicative with the lab?](hypotheses/H048-vault-power-node-stacking-with-lab.md) | buy one Power level, re-read the line's value and the wave cash delta |
| H049 | [Income lab: multiplies value or increment?](hypotheses/H049-income-lab-multiplies-value-vs-increment.md) | Cash/Wave at workshop L1 with the lab at L10 → 4 or 4.8 |
| H050 | [Lab `Time` column: per-level or cumulative?](hypotheses/H050-lab-time-column-per-level-vs-cumulative.md) — **resolved** (per-level) | done: `Game Speed`'s 7 times sum to 65 317 min = 45.36 d = its printed total |
| H051 | [Free-upgrade 90.75 % decomposition + ×2.5 multiply point](hypotheses/H051-free-upgrade-chance-90-75-decomposition.md) | read the tab’s summed chance, the perk’s wording, then one Vault level |
| H052 | [Guardian chip caps: Summon's two short lines + Cash Bonus = 72 levels?](hypotheses/H052-guardian-chip-line-caps.md) | hold the Summon chip: Cash Bonus final level/total (255 600?) + Cooldown and Duration final values |
| H053 | [Bot cooldown steps: medal −3 s / lab −1 s, base 120 s?](hypotheses/H053-bot-cooldown-step-sizes.md) | read one bot’s cooldown at 0 → 1 medal → 1 lab → (6 m + 2 l): expect 120 / 117 / 116 / 100 s |
| H054 | [Thorns hits law `⌈100/t⌉` with breakpoints at 100/n?](hypotheses/H054-thorns-breakpoint-hit-law.md) | hits-to-kill at 25 / 26 / 33 / 34 % ⇒ expect 4 / 4 / 4 / **3** |
| H055 | [Perk defense terms: what order gives exactly 99.1 %?](hypotheses/H055-perk-defense-composition.md) | read `Defense %` at 0 perks → after 5 × `+5 %` → after the −55 % perk: expect 85.5 / 90.5 / 95.5 (additive) or 85.5 flat with ×0.95⁵ damage (multiplicative) |
| H056 | [Does the 53 547 stone headline include the UW+ ledger?](hypotheses/H056-uw-plus-ledger-in-headline.md) | read GT's per-UW "spent" number vs §2's prefix-sum (**2 520** at 10/15/10) and Golden Combo's per-level prices |
| H057 | [Heat increases every ≈ 55.6 waves (`level ≈ 1 + ⌊W/55.6⌋`, 19 levels inside wave 1 000)?](hypotheses/H057-heat-increase-wave-spacing.md) — settles how hard a 200-wave bracket really is | read the **Heat** level on the run screen at waves ~56 / ~111 / ~167, then at 200 and 500 |
| H058 | [Does a card mastery multiply the card's whole printed value (×1.885) or only its bonus (×1.585)?](hypotheses/H058-mastery-multiplies-card-value-or-bonus.md) — sets every mastery's per-stone worth | unlock the `Coins` mastery with the lab untouched and read the **Card Detail** value: **1.4935** (whole) vs **1.4635** (bonus) |
| H059 | [Are the sub-stat rarity chances 46.2 / 40 / 10 / 2.5 / 1 / 0.3 %, and a different roll from the banner's 68.5 / 29 / 2.5?](hypotheses/H059-substat-rarity-roll-chances.md) — sets the reroll-shard budget per perfect slot | read the percentages in the module panel's ℹ, or tally the highest rarity over **50** rerolls (expect ≈ 23/20/5/1.25/0.5/0.15 vs 34/14.5/1.25) |
| H060 | [Do the tab `Workshop … Discount` labs also discount that track's enhancement prices?](hypotheses/H060-workshop-discount-lab-covers-enhancements.md) — moves the discount lab's stop level from **L30** to **L99** | read `Coin Bonus +`'s price at level 0 (5.00 B), buy **10** levels of `Workshop Utility Discount`, re-read: 5.00 B (tab only) vs 4.75 B (both) |
| H061 | [Is the active card-slot cap **19** (16 at v0.14, +1 at v0.16, +2 at v0.23)?](hypotheses/H061-active-card-slot-cap-19.md) — extends T009’s gem ladder past slot 10 | count the slot frames on the **Cards** screen (expect 19) and read the next two slot prices after the last one you own |

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
- [2026-11-02 - session 59 (T004 Rev 4, T010 Rev 7, T021 Rev 3)](log/2026-11-02.md#2026-11-02---session-59-iteration-68-the-module-lab-page-prices-the-whole-shard-layer-and-the-echo-law-becomes-one-formula)
- [2026-11-02 - session 60 (T006 Rev 10, T014 Rev 7)](log/2026-11-02.md#2026-11-02---session-60-iteration-69-the-whole-lab-system-closes-at-4-693-levels-and-the-condition-layer-gets-a-ceiling)
- [2026-11-02 - session 61 (T024 new, T006 Rev 11, H037 partial)](log/2026-11-02.md#2026-11-02---session-61-iteration-70-the-enemy-scaling-layer-closes-and-the-skip-stat-gets-a-buying-order)
- [2026-11-02 - session 62 (T002/T003/T005 Verified, T008 Rev 3, T009 Rev 4)](log/2026-11-02.md#2026-11-02---session-62-iteration-71-the-three-unverified-docs-close-and-the-thorns-lattice-falls-out-of-one-formula)
- [2026-11-02 - session 63 (T006 Rev 12)](log/2026-11-02.md#2026-11-02---session-63-iteration-72-the-wave-axis-becomes-one-law-and-the-fleet-shard-columns-close)
- [2026-11-02 - session 64 (T011 Rev 5, T002 Rev 3, H055)](log/2026-11-02.md#2026-11-02---session-64-iteration-73-the-tier-guide-prints-the-perk-values-and-the-whole-per-tier-build)
- [2026-11-02 - session 65 (T008 Rev 4, H056)](log/2026-11-02.md#2026-11-02---session-65-iteration-74-the-uw-stone-ladders-get-a-second-source-and-the-account-ledger-re-adds)
- [2026-11-02 - session 66 (T008 Rev 5, H033 resolved)](log/2026-11-02.md#2026-11-02---session-66-iteration-75-the-nine-uw-ledgers-close-and-the-stone-layer-re-adds-to-179240)
- [2026-11-02 - session 67 (T008 Rev 6)](log/2026-11-02.md#2026-11-02---session-67-iteration-76-the-golden-combo-income-matrix-closes-into-two-ratio-laws)
- [2026-11-02 - session 68 (T006 Rev 14)](log/2026-11-02.md#2026-11-02---session-68-iteration-77-the-uw-category-lab-ladders-get-a-per-level-law-and-a-level-10-knee)
- [2026-11-02 - session 69 (T006 Rev 15)](log/2026-11-02.md#2026-11-02---session-69-iteration-78-nine-weapons-lab-tables-collapse-to-six-sequences-and-225-is-15-squared)
- [2026-11-02 - session 70 (T003 Rev 3)](log/2026-11-02.md#2026-11-02---session-70-iteration-79-the-printed-build-ladder---ehp-to-hybrid-to-glass-cannon-and-every-cf-number-re-adds)
- [2026-11-02 - session 71 (T006 Rev 16)](log/2026-11-02.md#2026-11-02---session-71-iteration-80-the-named-uw-lab-ledger---39-tables-priced-and-eight-unlocks-that-cost-70-days)
- [2026-11-02 - session 72 (T008 Rev 7, T006 Rev 17)](log/2026-11-02.md#2026-11-02---session-72-iteration-81-the-nine-workshop-stone-ledgers-agree-three-ways-and-the-bill-is-244-542)
- [2026-11-02 - session 73 (T008 Rev 8)](log/2026-11-02.md#2026-11-02---session-73-iteration-82-the-nine-ultimate-weapon-cost-rows-are-four-sequences-and-the-179-240-ledger-closes-at-every-depth)
- [2026-11-02 - session 74 (T009 Rev 5, H047)](log/2026-11-02.md#2026-11-02---session-74-iteration-83-the-community-gem-ladder-re-prices-to-9-020-gems-and-matches-path-a-within-three-pulls)
- [2026-11-02 - session 75 (T005 Rev 3)](log/2026-11-02.md#2026-11-02---session-75-iteration-84-the-printed-tier-ladder-is-one-arithmetic-line-to-t8-then-x123-a-tier-and-tier-13-costs-zero-perk-work)
- [2026-11-02 - session 76 (T002 Rev 4)](log/2026-11-02.md#2026-11-02---session-76-iteration-85-the-wave-clock-is-26-plus-9-seconds-so-one-wave-costs-35-s-and-tournaments-run-faster-by-a-fixed-factor)
- [2026-11-02 - session 77 (T024 Rev 2)](log/2026-11-02.md#2026-11-02---session-77-iteration-86-the-els-reduction-tier-staircase-is-exactly-5-times-tier-minus-13-and-the-printed-40-pins-it-to-the-perks-screen)
- [2026-11-02 - session 78 (T011 Rev 6)](log/2026-11-02.md#2026-11-02---session-78-iteration-87-the-per-tier-perk-bill-is-0-picks-through-tier-13-then-146-to-1056-and-all-eight-marginals-re-add-from-the-family-steps)
- [2026-11-02 - session 79 (T014 Rev 8)](log/2026-11-02.md#2026-11-02---session-79-iteration-88-the-seven-tournament-reward-ladders-are-recorded-cell-for-cell-and-ticket-buying-collapses-to-n-star--floor-of-p-over-10)
- [2026-11-02 - session 80 (T013 Rev 6)](log/2026-11-02.md#2026-11-02---session-80-iteration-89-the-milestone-skin-table-obeys-paid-iff-tier-is-2-mod-3-so-the-free-cosmetic-leg-collapses-to-one-formula)
- [2026-11-02 - session 81 (T014 Rev 9)](log/2026-11-02.md#2026-11-02---session-81-iteration-90-a-brackets-contents-derive-from-the-league-index-and-heat-is-only-a-fifth-of-full-strength-at-wave-200)
- [2026-11-02 - session 82 (T012 Rev 3)](log/2026-11-02.md#2026-11-02---session-82-iteration-91-the-mastery-layer-is-one-law-and-a-stone-unlock-is-one-tenth-of-the-effect)
- [2026-11-02 - session 83 (T010 Rev 8)](log/2026-11-02.md#2026-11-02---session-83-iteration-92-reroll-shards-gain-5-per-tier-from-t11-and-one-sub-stat-rarity-step-doubles-the-payout)
- [2026-11-02 - session 84 (T001 Rev 5)](log/2026-11-02.md#2026-11-02---session-84-iteration-93-the-interest-engine-becomes-two-arithmetic-ladders-and-a-cap-ladder)
- [2026-11-02 - session 85 (T020 Rev 8)](log/2026-11-02.md#2026-11-02---session-85-iteration-94-every-workshop-currency-line-is-one-arithmetic-ladder-and-the-cash-pair-is-a-quarter-cheaper-than-the-coin-pair)
- [2026-11-02 - session 86 (T020 Rev 9)](log/2026-11-02.md#2026-11-02---session-86-iteration-95-the-enhancement-layer-is-one-arithmetic-law-and-the-three-discount-labs-share-one-ladder-with-starting-cash)
- [2026-11-02 - session 87 (T006 Rev 18)](log/2026-11-02.md#2026-11-02---session-87-iteration-96-eighteen-cheap-uw-labs-get-one-bill-and-two-ladder-relations)
- [2026-11-02 - session 88 (T020 Rev 10)](log/2026-11-02.md#2026-11-02---session-88-iteration-97-the-attack-track-ledger-splits-the-workshop-into-two-price-worlds)
- [2026-11-02 - session 89 (T020 Rev 11)](log/2026-11-02.md#2026-11-02---session-89-iteration-98-the-defense-track-splits-the-same-way-and-the-wall-gets-two-closed-forms)
- [2026-11-02 - session 90 (T020 Rev 12)](log/2026-11-02.md#2026-11-02---session-90-iteration-99-the-packages-trio-rides-one-ladder-and-wave-skip-gets-a-compounding-law)
- [2026-11-02 - session 91 (T008 Rev 9)](log/2026-11-02.md#2026-11-02---session-91-iteration-100-the-twenty-seven-workshop-lines-are-priced-and-the-five-damage-lines-ride-one-ladder)
- [2026-11-02 - session 92 (T008 Rev 10)](log/2026-11-02.md#2026-11-02---session-92-iteration-101-the-index-page-prints-the-whole-plus-layer-and-the-value-rows-get-a-second-source)
- [2026-11-02 - session 93 (T020 Rev 13)](log/2026-11-02.md#2026-11-02---session-93-iteration-102-the-99-row-discount-ladder-folds-into-20-blocks-and-each-tab-gets-its-own-stop-level)
- [2026-11-02 - session 94 (T006 Rev 19)](log/2026-11-02.md#2026-11-02---session-94-iteration-103-the-super-tower-bonus-lab-is-a-fourth-clock-shape-and-prices-the-card-product-to-513)
- [2026-11-02 - session 95 (T012 Rev 4)](log/2026-11-02.md#2026-11-02---session-95-iteration-104-the-per-card-pages-double-source-both-ladders-and-print-coin-decay)
- [2026-11-02 - session 96 (T012 Rev 5)](log/2026-11-02.md#2026-11-02---session-96-iteration-105-the-card-census-closes-and-the-special-card-pages-print-the-lab-layer)
- [2026-11-02 - session 97 (T006 Rev 20, T020 Rev 14)](log/2026-11-02.md#2026-11-02---session-97-iteration-106-enhancement-pages-double-source-and-the-assist-labs-close)
- [2026-11-02 - session 98 (T006 Rev 21)](log/2026-11-02.md#2026-11-02---session-98-iteration-107-the-uw-cap-row-closes-at-39-of-39-and-a-new-skew-appears)
- [2026-11-02 - session 99 (T006 Rev 22)](log/2026-11-02.md#2026-11-02---session-99-iteration-108-the-enemy-stat-table-gains-its-last-five-lines)
- [2026-11-02 - session 100 (T005 Rev 4, H061)](log/2026-11-02.md#2026-11-02---session-100-iteration-109-the-version-timeline-dates-every-printed-number)
- [2026-11-02 - session 101 (T010 Rev 9)](log/2026-11-02.md#2026-11-02---session-101-iteration-110-the-four-sub-stat-tables-close-at-73-rows)
- [2026-11-02 - session 102 (T020 Rev 15, T006 Rev 23)](log/2026-11-02.md#2026-11-02---session-102-iteration-111-the-range-pair-closes-and-the-lab-census-gains-its-mastery-reading)
- [2026-11-03 - session 103 (T002 Rev 5, T003 Rev 4)](log/2026-11-03.md#2026-11-03---session-103-iteration-112-the-faq-prints-the-attribution-law-and-the-heat-up-constant)
- [2026-11-03 - session 104 (T021 Rev 4, T008 Rev 11, T020 Rev 16)](log/2026-11-03.md#2026-11-03---session-104-iteration-113-the-dissonant-locks-are-enumerated-and-the-orbless-package-gets-its-numbers)

## Reference material in this repo

- `tools/gm_strings.txt` — 46,810 dedumped strings from `global-metadata.dat` (grep this first; it is the fastest way to confirm a system exists).
- `apk/apktool/` — manifest, resources, 5 dex in smali.
- `apk/jadx/sources/` — Java SDK layer only (game code is IL2CPP, not here).
- `apk/native/lib/arm64-v8a/` — `libil2cpp.so` (73 MB) holds all C# game code.
