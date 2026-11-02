# The Tower – Idle Tower Defense: currency research

Ranked table of every technique found so far. Full instructions live in the linked document.
Category index: [docs/INDEX.md](docs/INDEX.md) · Goal definition: [goal.md](goal.md)

**Legend** — Value: `★` count = rough size of the gain (1 = rounding error, 5 = game-changer).
Ease: taps/minutes a human needs. Confidence: how solid the source/derivation is.

| # | Technique | Value | Ease | Confidence | Needs |
|---|---|---|---|---|---|
| [T001](docs/techniques/T001-interest-idle-engine.md) | Buy `Max Interest` levels 1–4 (8 150 gems ⇒ cap $50→$500 = ×10 flat cash/wave) + Workshop `Interest/Wave` levels 1–30 (136.56 K coins), then hold cash at the `cap ÷ rate` threshold and let the `$` stay green — grey `$` ⇒ buy `Interest`, green ⇒ buy `Max Interest` | ★★★★ | ~34 taps | High tables / Medium interaction | Tier 2 W80 |
| [T002](docs/techniques/T002-run-phase-order.md) | Phase order for the in-run Cash bar: Cash/Wave → Cash Bonus → Coins/Kill → Defense | ★★★ | 0 (order only) | High | Tier 1 |
| [T003](docs/techniques/T003-turtle-build-t1-t2.md) | Turtle (Defense Absolute + Def % + Thorns breakpoints) to cheap-clear Tier 1–2 | ★★ | 10 min | High | Tier 1 |
| [T004](docs/techniques/T004-mission-farming-low-tier.md) | Farm daily/weekly missions on the lowest useful tier (`mission tier = max tier − 2`) | ★★★★ | 5 min | Medium | Tier 2 |
| [T005](docs/techniques/T005-tier-rush-then-farm.md) | Rush to the next tier's wave-100 milestone first, then farm (daily/weekly coin rewards scale with max tier) | ★★★★ | 15 min | Medium | Tier 1 |
| [T006](docs/techniques/T006-lab-queue-packing.md) | Pack lab research so a slot is never idle; cells buy the cheapest skipped hour (×1.5 = 30 cells/h) before any gem rush; the two meta-labs go first — `Labs Speed` **+0.02/lv → ×2.98** and `Labs Coin Discount` **−0.30 %/lv → −29.7 %** (same curve: 10 levels = 33 907 coins), and they **multiply** the relic bonus (1.25 × 2.98 = 3.725) | ★★★★ | 4 taps | **Verified** (rush buckets + curve reproduce) | Lab unlocked |
| [T007](docs/techniques/T007-ad-gem-sweep.md) | At 00:00 UTC claim the 20-gem Store free offer, then the **6-gem** ad icon up to the **60-claims/day cap (360 gems)**; with the Vault's 5× bank tap only when the badge shows 5 → up to **864** gems/day | ★★★ | 60 taps | High (v29 patch notes) | — |
| [T008](docs/techniques/T008-uw-sync-with-stones.md) | Stone economy, knee-first: buy each stat line's **first block** only (GT cooldown 300→200 s = 910 ≈ 9.1 st/s vs 53 at max), reach **GT 200 / BH 100 / DW 200 = all three every 200 s** for **2 620 stones**, then GT ×9.0 (534) + 30 s (1 076); full ledger = 9 705 + 14 650 + 244 302 + 184 740 ≈ **453 k stones** | ★★★★ | 1 tap/level | High (9/9 stone values reproduced) | UWs unlocked |
| [T009](docs/techniques/T009-gem-spend-order.md) | Gem order, priced: Enemy Balance first, then Path A (active: slots+cards interleaved, **5 590** gems to 5 labs/5 slots) or Path B (casual: all 5 lab slots first, **5 030**); keep **1 600 gems** reserved per event for the 80-card quest; slots cost 50/100/200/300/400/500/600/750/1 000 … | ★★★★ | 3 taps/purchase | High prices / Medium path choice | Cards tab (after 2 T1 runs) |
| [T010](docs/techniques/T010-module-merge-chain.md) | Level the module **slot** (arrow-to-41 trick), merge by recipe, reroll with ≤3 locks + ban labs; Restore is free. Pull EV: **1 Epic ≈ 39.1 pulls ≈ 782 gems**, shards/pull 8.575 → **31.325** after a 5★ Anc; assist ladders in closed form **C(n)=1.5n²+10.5n−12** (28 711 stones/slot) | ★★★★ | 1 tap/level | **Verified** (arith.) | Tier 2 Wave 90 |
| [T011](docs/techniques/T011-perk-engine-tuning.md) | Tune the perk engine: `Waves Required` + 3× PWR + `Standard Perk Bonus` ≈ **3.2×** more picks; the three cheap lines cost **100 K** at L1 and **≈ 7.3 B** coins buys their first 10 levels each; rank-list **overrides** First Perk Choice; take **5 bans** (≈116 B) and stop | ★★★★ | 10 taps once, 1/run | High gates (3 sources) / Medium numbers | Tier 2 W150 |
| [T012](docs/techniques/T012-card-deck-order.md) | Buy card levels by gems-per-percentage-point (L1–L4 first), then widen the deck; `Buy x10`, aligned presets, claim milestone cards | ★★★★ | 1 tap/10 pulls | Medium-High | Cards tab (after 2 T1 runs) |
| [T013](docs/techniques/T013-event-medal-economy.md) | Run the daily sweep/lab-rush/card buys inside the event window; take trades 1–3 of all three shop lines (585 medals) and bank the rest | ★★★★ | 2 taps/claim | Medium | Tier 1 Wave 70 |
| [T014](docs/techniques/T014-tournament-tickets.md) | Buy 1–3 extra tournament tickets (10/20/30 gems) while marginal value beats the next card slot; chase the one-way Copper→Gold promotion | ★★★★ | 2 taps + 1 run | Medium-High | Tier 1 Wave 60 |
| [T015](docs/techniques/T015-bot-economy.md) | Bot economy with closed-form costs (`20L²+80L`, `25L²+75L`, `100L²` — reproduce 56 100 / 17 500 / 11 500 / 8 100 exactly): Cooldown line first (60 medals/s in block 1), take Golden Bot to exactly **100 s** (5 medal + 5 lab levels) so it lands inside every 200-s GT window, then Golden Bot+ to ×2.00 | ★★★★ | 1 tap/level | High (2 wikis + formulas) | Event Shop (T1 W70) |
| [T016](docs/techniques/T016-guild-tokens-bits.md) | Join an active guild, claim all 7 weekly boxes (5 contribution each), then spend tokens on the 5-token shard buys — 150× the auto-cashout | ★★★★ | 1 tap/claim | Medium-High | Tier 3 Wave 10 |
| [T017](docs/techniques/T017-vault-keys-priority.md) | Spend keys in Harmony first — the whole tab is **1 350 keys** (Ad Gem Stack 130 = 5× the ad flow, 6 card slots 215, Free Mission Reroll 15 ≈ 5 475 gems/yr); then Power→Utility's three +500 % lines, taking only **levels 1–3 = 70 keys for ×4** each | ★★★★★ | 1 tap/level | **Verified** (7 sums re-add) | Legend league (Vault icon) |
| [T018](docs/techniques/T018-relic-economy.md) | Farm the four free relic pipelines (350/700 event medals, 75/150 guild tokens, wave 4 500 per tier, top-4 league) and pay older-event relics with medals once a line is past trade 1 (break-even 3.0/2.4 gems per medal) | ★★★★ | 0–2 taps/event | Medium-High | Events + Guild |
| [T019](docs/techniques/T019-milestone-claim-engine.md) | Claim the 23-cell Milestone ladder every tier (W100 is the tier gate); the **free** track through T12 = **4 675 gems + 540 stones ≈ 10 075 ge**, and each 3-tier **Premium Pass** adds its **whole** column (passes 1–4 = **2 425 / 3 990 / 6 510 / 8 725 ge**) — buy each right after finishing its group (retroactive) | ★★★★ | 23 taps/tier | **Verified** (12/12 column totals re-add) / Medium model (H038) | Tier 1 |
| [T020](docs/techniques/T020-workshop-coin-order.md) | Unlock the 4 Utility coin lines (40/40/100/100 coins) and take levels 1→50 on all four (1.607 M coins for ×1.5 cash, +200 cash/wave, ×1.5 coins/kill, +50 coins/wave), cap the flat Attack lines (~23 M), stop deep lines at their knee; then the **enhancement layer** (T12 W60 + lab): the 12 standard ones share one curve — **L50 = 73.23 T for ×1.50** is the whole value (L600 alone is 5.83 s, 4.6 × 10⁹× block 1), `Enemy Level Skip +` is the cheapest full project (**1.51 s**), `Coin Bonus +` / `Cells / Kill Bonus` are **2.99 S** each; buy the 3 `Enhancement Coin Discount` labs + the Vault −22.5 % node first | ★★★★ | 1 tap/level | High tables / Medium interpretation | Workshop (start); enhancements T12 W60 |
| [T021](docs/techniques/T021-dissonant-runs-echo.md) | Run the four Dissonance locks once per tier (button below `Battle`): the boost is permanent for that tier — ×3 coins (Utility) / ×5 damage·health·UW (the other three) at W5 000, on a convex curve, so always push to the next rung (1 524/2 265/2 855/3 365/3 823/4 243/4 633/5 000); the 0.5 % echo adds +0.01/tier for free | ★★★★ | 1 run/tier | High (formula reproduced from the table) | Tier 4 W90 |
| [T022](docs/techniques/T022-free-currency-census-paid-ladder.md) | Run the whole free-income census (≈ **435 gems/day** + 185 gems/45 stones per week + Bob's 2 × ≤10 with the 11/30-min gates), pay on the **web store (+10 % gems)** and claim its weekly **Free Gift**, and plan against the printed bills: ≈ **115 k gems** for the framework, ≈ **500 k stones** for UW/UW+/masteries | ★★★★ | 1–2 taps/source | High tables / Medium extrapolation | — |
| [T023](docs/techniques/T023-guardian-economy.md) | Buy the Guardian (**200 bits**, stay in a guild) + **Fetch** and **Bounty**: level **Find Chance → Cooldown → Double Find** (line totals 4 700 / 3 660 / 6 120 bits), fire Bounty inside the 200-s GT/BH/DW window; the daily Fetch flow = **20 gems + 10 medals + ≈ 75 shard-units** (shards/coins uncapped) | ★★★★ | 1 tap/level | **Verified** (6/6 line totals re-add) | Guild (T3 W10) |

Open questions being worked: [docs/hypotheses/](docs/hypotheses/) · Session log: [docs/log/](docs/log/)

## Repo layout

```
goal.md                 forever-mode goal definition (Master Goal plugin)
README.md               this ranked index
docs/INDEX.md           full catalog, newest first
docs/techniques/T###-*.md   one file per technique, UI step-by-step
docs/hypotheses/H###-*.md   open claims + the observation that settles them
docs/log/<date>.md      per-iteration findings and sources
apk/                    apktool + jadx + native dumps of the shipped APK
tools/                  apktool.jar, jadx, Il2CppDumper, gm_strings.txt (symbol table)
```

## Ground truth extracted from the shipped APK (v29.1.3 / code 1253)

- Engine: Unity `6000.3.15f1`, IL2CPP, arm64 only. Game code is `libil2cpp.so` (73 MB) + `assets/bin/Data/Managed/Metadata/global-metadata.dat`.
- Real script systems (`Assets\Scripts\…` in `tools/gm_strings.txt`): `Main`, `GameInitializer`, `SaveLoad`, `SafePlayerPrefs`, `ModuleManager`, `RelicsManager`, `TechTreeManager`, `Lab`/`LabTimeManager`, `Vault/VaultManager`, `Guilds/GuildManager`, `TournamentManager`, `DailyMissionManager`, `MilestoneManager`, `MailManager`, `LeaderboardManager`, `AutoPlayer`, `Perks`, `CurrencyAudit`, `Purchases/Purchaser`, `Nexus/NexusApiConfig`.
- Remote-config keys visible in the binary include `serverTimeV2`, `hardCapAdGemsEnabled`, `tournamentRegisterLoggingEnabled` — i.e. the server supplies time and the ad-gem reward is hard-capped, so both matter for technique design.
