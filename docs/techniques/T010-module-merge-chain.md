# T010 — Merge boss-dropped Common modules into one high-rarity chain

Rev: 1 · Status: **Unverified**
Value: ★★★ (free module power with zero gem spend) · Ease: 8 taps · Prerequisite: Modules unlocked; at least 8–10 Common modules held

## Why it works

Modules drop from bosses for free, and same-rarity modules **merge** upward: Common → Rare → Rare+ →
Epic → … Each merge step multiplies the effect, so N commons of one kind are worth more merged than
kept loose. The client ships an **Auto Merge** panel (`AutoMergeUI`, `AutoMergeEntryViewer` in the
binary) plus **Unmerge** (`ModuleUnmergeUI`) and a **Restore & Max** view (`ModuleRestoreAndMaxUI`),
which means the merge is a bulk operation you can drive in a handful of taps. Shard cost for leveling
modules is separately reduced by up to 30 % once the tier-10 labs are open, so holding commons until
then is not penalised.

## Steps

1. Finish runs until you hold a pile of Common modules from bosses (no gem spend needed).
2. Open **Modules** → tap **Auto Merge** (`AutoMergeUI`) to collapse every complete set in one action.
3. Open the merged set's details (`ModuleDetailsUI`) and read which slots have a unique Epic-and-above effect — those are the ones worth finishing.
4. Equip only the merged (higher-rarity) versions; leave duplicate commons in the inventory for the next merge rather than leveling them with shards.
5. Only after 5 Labs + 5–6 card slots exist, start pulling for a specific **unique Epic module** instead of merging.
6. Note: unique modules need a stat foundation to shine, so merge-only power is expected to trail equipped-card power at low tiers.

## Reproduction checklist

- [ ] Auto Merge reduced the item count while the top rarity went up
- [ ] Equipped modules all at the highest rarity you own for that effect
- [ ] Shard counter unchanged by the merge (merging ≠ leveling)

## Falsification

If Auto Merge is unavailable at your progression point, record the tier where it appears and fall back
to manual merge (select matching modules → **Merge**). If leveling costs did not drop after the tier-10
labs, note that here — the 30 % shard-cost reduction may be per-lab rather than per-tier.

## Sources

tower-hub / fandom tier guide ("At Tier 10, wave 40 … unlock 3 labs: Reduce the shard cost … by up to 30 %"), game-vault `Guide:Gem_Guide` §Buying Modules; class names `AutoMergeUI`, `ModuleUnmergeUI`, `ModuleRestoreAndMaxUI` from `tools/gm_strings.txt`.
