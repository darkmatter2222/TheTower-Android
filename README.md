# The Tower – Idle Tower Defense: currency research

Ranked table of every technique found so far. Full instructions live in the linked document.
Category index: [docs/INDEX.md](docs/INDEX.md) · Goal definition: [goal.md](goal.md)

**Legend** — Value: `★` count = rough size of the gain (1 = rounding error, 5 = game-changer).
Ease: taps/minutes a human needs. Confidence: how solid the source/derivation is.

| # | Technique | Value | Ease | Confidence | Needs |
|---|---|---|---|---|---|
| [T001](docs/techniques/T001-interest-idle-engine.md) | Hold Cash at/above the Interest cap so every wave pays max interest | ★★★ | 3 taps | High | Interest unlocked |
| [T002](docs/techniques/T002-run-phase-order.md) | Phase order for the in-run Cash bar: Cash/Wave → Cash Bonus → Coins/Kill → Defense | ★★★ | 0 (order only) | High | Tier 1 |
| [T003](docs/techniques/T003-turtle-build-t1-t2.md) | Turtle (Defense Absolute + Def % + Thorns breakpoints) to cheap-clear Tier 1–2 | ★★ | 10 min | High | Tier 1 |
| [T004](docs/techniques/T004-mission-farming-low-tier.md) | Farm daily/weekly missions on the lowest useful tier (`mission tier = max tier − 2`) | ★★★★ | 5 min | Medium | Tier 2 |
| [T005](docs/techniques/T005-tier-rush-then-farm.md) | Rush to the next tier's wave-100 milestone first, then farm (daily/weekly coin rewards scale with max tier) | ★★★★ | 15 min | Medium | Tier 1 |
| [T006](docs/techniques/T006-lab-queue-packing.md) | Pack lab research so a slot is never idle; boost every slot at ×1.5 (30 cells/skipped hour) before any higher multiplier; cells ≈ 5–6× cheaper than gems | ★★★★ | 4 taps | Medium | Lab unlocked |
| [T007](docs/techniques/T007-ad-gem-sweep.md) | Sweep all rewarded-ad offers in one sitting; respect the daily ad-gem hard cap | ★★★ | 5 min | Medium | — |
| [T008](docs/techniques/T008-uw-sync-with-stones.md) | Sync Ultimate-Weapon cooldowns: save 910 Stones, drop GT 300 s → 200 s in one purchase; never touch BH first | ★★★★ | 6 taps | High | UWs unlocked |
| [T009](docs/techniques/T009-gem-spend-order.md) | Gem order: Enemy Balance card first, then alternate Card Slots and Lab unlocks; never buy speedups with Gems | ★★★★ | 3 taps | Medium | Gems |
| [T010](docs/techniques/T010-module-merge-chain.md) | Level the module **slot** (arrow-to-41 trick), merge by recipe, reroll with ≤3 locks + ban labs; Restore is free | ★★★★ | 1 tap/level | Medium-High | Tier 2 Wave 90 |
| [T011](docs/techniques/T011-perk-engine-tuning.md) | Tune the perk engine: `Waves Required` + 3× PWR + `Standard Perk Bonus` ≈ 3.2× more picks per run; rank/ban the pool so picks are deterministic | ★★★★ | 10 taps once, 1 tap/run | Medium | Tier 2 Wave 150 (Unlock Perks) |
| [T012](docs/techniques/T012-card-deck-order.md) | Buy card levels by gems-per-percentage-point (L1–L4 first), then widen the deck; `Buy x10`, aligned presets, claim milestone cards | ★★★★ | 1 tap/10 pulls | Medium-High | Cards tab (after 2 T1 runs) |
| [T013](docs/techniques/T013-event-medal-economy.md) | Run the daily sweep/lab-rush/card buys inside the event window; take trades 1–3 of all three shop lines (585 medals) and bank the rest | ★★★★ | 2 taps/claim | Medium | Tier 1 Wave 70 |
| [T014](docs/techniques/T014-tournament-tickets.md) | Buy 1–3 extra tournament tickets (10/20/30 gems) while marginal value beats the next card slot; chase the one-way Copper→Gold promotion | ★★★★ | 2 taps + 1 run | Medium-High | Tier 1 Wave 60 |
| [T015](docs/techniques/T015-bot-economy.md) | Unlock Golden Bot, max its 15-level Cooldown line first (5 700 medals → 1.6× activations), then Bonus; Golden Bot+ ×2.5 cells once all five are owned | ★★★★ | 1 tap/level | Medium | Event Shop open (T1 W70) |
| [T016](docs/techniques/T016-guild-tokens-bits.md) | Join an active guild, claim all 7 weekly boxes (5 contribution each), then spend tokens on the 5-token shard buys — 150× the auto-cashout | ★★★★ | 1 tap/claim | Medium-High | Tier 3 Wave 10 |

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
