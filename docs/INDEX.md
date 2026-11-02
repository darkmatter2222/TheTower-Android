# Document index

Ranked summary lives in [../README.md](../README.md). Goal definition: [../goal.md](../goal.md).

## Techniques

| ID | File | Currency | Status |
|---|---|---|---|
| T001 | [Interest idle engine](techniques/T001-interest-idle-engine.md) | Cash, Coins | Unverified |
| T002 | [In-run phase order](techniques/T002-run-phase-order.md) | Cash → Coins | Unverified |
| T003 | [Turtle build T1–T2](techniques/T003-turtle-build-t1-t2.md) | tier unlocks | Unverified |
| T004 | [Mission farming on low tier](techniques/T004-mission-farming-low-tier.md) | Gems, Coins | Unverified |
| T005 | [Tier-rush then farm](techniques/T005-tier-rush-then-farm.md) | Coins (daily/weekly) | Unverified |
| T006 | [Lab queue packing](techniques/T006-lab-queue-packing.md) | all (multipliers) | Unverified |
| T007 | [Ad-gem sweep](techniques/T007-ad-gem-sweep.md) | Gems | Amounts verified |
| T008 | [Ultimate Weapon sync](techniques/T008-uw-sync-with-stones.md) | Coins | Verified |
| T009 | [Gem spend order](techniques/T009-gem-spend-order.md) | Coins/min | Unverified |
| T010 | [Module merge chain](techniques/T010-module-merge-chain.md) | Modules | Unverified |
| T011 | [Perk engine tuning](techniques/T011-perk-engine-tuning.md) | Coins (run multipliers) | Unverified |

## Hypotheses (open)

| ID | File | Settled by |
|---|---|---|
| H001 | [Ad-gem daily hard cap](hypotheses/H001-ad-gem-hard-cap.md) | count views until the payout stops in one day |
| H002 | [Mission tier offset = max − 2](hypotheses/H002-mission-tier-offset.md) | read 3 wave-based missions vs your max tier |
| H003 | [Interest cap value](hypotheses/H003-interest-cap-value.md) | watch the `$` icon cross grey/gold |
| H004 | [Daily reward scales with max tier](hypotheses/H004-daily-reward-tier-scaling.md) | log daily claim before/after a tier unlock |
| H005 | [Autoplayer beats manual at low tier](hypotheses/H005-autoplayer-throughput.md) | coins/hour with and without it |
| H006 | [Auto Pick Ranking vs First Perk Choice](hypotheses/H006-auto-pick-ranking-vs-first-perk-choice.md) | which perk Auto Pick takes on the first offer |
| H007 | [Stepped base waves & lab subtraction](hypotheses/H007-stepped-base-waves-lab-subtraction.md) | wave numbers of picks 20/21/22 in one long run |
| H008 | [Duplicate game-speed perk +0.01](hypotheses/H008-duplicate-game-speed-perk.md) | read game speed in the stats screen after a 2nd copy |

## Logs

- [2026-11-01 — session 1 (T001–T010)](log/2026-11-01.md)
- [2026-11-01 — session 2 (T011, H006–H008)](log/2026-11-01.md#2026-11-01--session-2-iteration-11-perks)

## Reference material in this repo

- `tools/gm_strings.txt` — 46,810 dedumped strings from `global-metadata.dat` (grep this first; it is the fastest way to confirm a system exists).
- `apk/apktool/` — manifest, resources, 5 dex in smali.
- `apk/jadx/sources/` — Java SDK layer only (game code is IL2CPP, not here).
- `apk/native/lib/arm64-v8a/` — `libil2cpp.so` (73 MB) holds all C# game code.
