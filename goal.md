# Master Goal — The Tower: infinite currency-efficiency research

Forever mode. Never stop after one answer; keep iterating.

## Objective

Reverse-engineer **The Tower – Idle Tower Defense** (package `com.TechTreeGames.TheTower`, Unity 6 / IL2CPP, this repo contains the decompiled APK in `apk/`) and maintain a growing, organized body of research that tells a **beginner / intermediate player (someone stuck below Tier 11)** how to earn **massive** amounts of every in-game currency far faster than normal play.

Currencies to cover: Coins, Cash, Gems, Stones, Experience, Prestige (green triangles), Module Shards, Relic Shards / Guardian Chips, Elite Cells, Guild currencies, Tournament/Event medals.

## Recurring unit of work (do this every iteration)

1. Read `README.md` and `docs/INDEX.md` first so you do **not** repeat an existing entry.
2. Pick exactly **one** open item: either an unanswered hypothesis in `docs/hypotheses/`, or a new angle not yet covered.
3. Research it:
   - Use `websearch` / `webfetch` aggressively — the official wikis (`the-tower-idle-tower-defense.game-vault.net`, `the-tower-idle-tower-defense.fandom.com`, `tower-hub.com/wiki`), `r/TheTowerGame`, and patch notes are the primary sources.
   - Cross-check against the binary itself: `tools/gm_strings.txt` is a de-dumped string/symbol table from `assets/bin/Data/Managed/Metadata/global-metadata.dat` (46,810 entries). Script names under `Assets\Scripts\...` and `Namespace|Class` rows reveal real systems; the `Log/Currency` / `CurrencyPolicy` / `CurrencyAudit` classes confirm a currency ledger exists. Use `grep` on that file instead of re-dumping.
4. Write or amend one document in `docs/techniques/` (numbered `T###`), and update `docs/INDEX.md` + the ranked table in `README.md`.
5. Record the iteration in `docs/log/<yyyy-mm-dd>.md`: what was asked, sources, verdict, next open question.
6. Commit and push: `git add -A && git commit -m "<T###/H###: short summary>" && git push origin main`.

## Rules for technique entries

- **UI-only.** Every technique must be executable by a human pressing buttons on the phone. No hex editing, no memory patching, no file edits, no packet manipulation.
- Each technique document must contain: `Value` (how much currency it adds, rough multiplier), `Confidence` (High / Medium / Low + why), `Ease` (number of taps / minutes), `Prerequisite tier`, numbered **step-by-step UI instructions**, the **exact in-game screen or button name** to tap, a **reproduction checklist**, and a **falsification note** ("if you see X, the technique is wrong").
- Prefer techniques whose benefit compounds (interest, multipliers that multiply each other, daily caps) over one-off gains.
- Never write the same technique twice; extend the existing `T###` and bump its `Rev:` line instead.
- State unverified claims as hypotheses in `docs/hypotheses/` with the specific observation that would confirm or kill them.
- Mark a technique **Verified** only when a numeric before/after is recorded in its doc; otherwise **Unverified**.

## Known anchors (start here, then go deeper)

- Systems confirmed in the binary: Workshop, Lab(s), Cards, Perks, Modules, Relics, Guardian/Chips, Vault, Buddies/Bots, Autoplayer, Dissonant Runs, Tournaments, Guilds, Daily Missions, Milestones, Mail, Nexus web store, Remote Config (note the key `hardCapAdGemsEnabled`, which implies a daily cap on ad-granted gems — worth pinning down).
- Open question pools: interest cap mechanics; the exact tier at which each system unlocks; daily/weekly cap values; the ordering of rewarded-ad offers per day; UW (Ultimate Weapon) sync windows; whether tier-rushing before farming loses coin rewards; Elite Cells vs Gems for research speed.

## Stop condition

None. This is a forever goal. Continue until `/goal stop`.

```mastergoal
{
  "version": 1,
  "title": "The Tower currency-efficiency research (forever)",
  "mode": "forever",
  "checks": [
    { "id": "index-exists", "type": "file", "path": "docs/INDEX.md" },
    { "id": "readme-exists", "type": "file", "path": "README.md" }
  ]
}
```
