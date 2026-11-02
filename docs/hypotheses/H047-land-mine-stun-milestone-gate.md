# H047 — Is the `Land Mine Stun` card gated at T7 W250 or T11 W10?

Status: open · Raised: 2026-11-02

**Claim.** The two wikis print different milestone gates for the same Rare card, and one of them is stale:

| Source | Gate for `Land Mine Stun` |
|---|---|
| fandom per-tier milestone table (v29-era, used by [T019](../techniques/T019-milestone-claim-engine.md) §T7) | **Tier 7 Wave 250** |
| game-vault `Cards` (last edited 6 Jul 2025) | **Tier 11 Wave 10** (the same cell as `Nuke`) |

**Why it matters (for the sub-Tier-11 reader).** `Land Mine Stun` (stun 1.4 s → 3.8 s) is one of the six “worth levelling”
cards in [T012 §2](../techniques/T012-card-deck-order.md). If the gate is really **T11 W10** then below Tier 11 the Rare
currency set is only **Critical Coin + Wave Skip** (+ Free Upgrades), the 3-Rare assumption behind the **848-pull /
16 960-gem** six-card figure must be re-run with **2** Rares (which does *not* change those two numbers — the binding
constraint is still the 17 % Rare mass — but it changes what to buy), and T019's Tier-7 row loses a cell.
If the gate is **T7 W250**, nothing changes.

**Settling observation (device).** Open **Milestones** and walk the two candidate rows: read which wave cell actually
carries the *Card* reward, in this order — Tier 7 → wave **250**, then Tier 11 → wave **10**. Record the tier/wave whose
reward line says “Card: Land Mine Stun”.

**Kill condition.** If neither cell shows it, the card is not milestone-gated in the current client (or moved again) →
re-read the whole Tier-5…Tier-14 milestone columns and rebuild T019's card-cell map from the screen.

**Related, cheap extra reads while in the same screen** (all printed-only claims in T012 §3 step 6): does **Tier 4 W40**
carry the `Cells` card, and does **Death Ray** really come from “any tier, wave 250”?

**Death Ray now has two competing prints** (so the read is worth recording exactly): game-vault says **“any tier, wave
250”**, Tower Hub's community ladder (`system/icet-s-gem-and-card-priority-list`, 2026-07-29) says **wave 250 cleared on
each of the first 10 tiers**. The two differ only for a player who pushed past wave 250 in a *subset* of the first ten
tiers — exactly the tier-rushing case in [T005](../techniques/T005-tier-rush-then-farm.md). Settle it by noting, after N
tier-sprints, whether the **Cards** panel's pull pool already contains Death Ray and how many of the first ten tiers show
wave ≥ 250 in their tier row: if it drops with fewer than ten tiers at 250, the “any tier” print wins; if it is still
missing at ten-or-more, the stricter one wins.
