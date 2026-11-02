# H044 — How many assist module slots exist, and do all cost 1 000 stones?

Status: open · Raised: 2026-11-02

**Claim.** There are **4 assist slots** (one per module type: Cannon / Armor / Generator / Core), each unlocked for
**1 000 stones**, so the whole assist layer costs **4 × 28 711 = 114 844 stones** fully maxed
([T010 §7](../techniques/T010-module-merge-chain.md)). The fandom page only says “unlocking an assist slot costs 1 000
stones each” and never prints the count, so the multiplier on the per-slot budget is unknown.

**Why it matters.** The per-slot bill (28 711 stones) is now a verified closed form; the *number of slots* is the only
missing factor in the stone-plan totals. With 4 slots the layer is ~25 % of the ≈ 453 k stone ledger (T008); with 6 slots
it would be ~38 %, which changes whether the tail of the main-effect ladder (265.5 stones/point) is worth buying at all.

**Settling observation (device, Tier 19+).** Open the **Modules** panel → scroll past the 4 primary slots and count the
assist slots, then read the stone price on each unlock button. Record: `assist slots = N`, prices = `1 000 / 1 000 / …`.
If N ≠ 4 or a price differs from 1 000, replace the `4 ×` above with the read value.

**Binary hint.** `tools/gm_strings.txt` has `AssistModuleSlot` (line 12 412) and `AssistModule.cs` (line 11 636) plus the
panel strings `Assist Modules` / `.Assist Modules Unlocked` — a per-slot object, so the count is a data-list length, not
a constant; no count is visible in the string table.
