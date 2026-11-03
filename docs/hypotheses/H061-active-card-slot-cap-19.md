# H061 — Is the active card-slot cap **19** (16 at v0.14 + 1 at v0.16 + 2 at v0.23)?

Status: **partially resolved by print** (2026-11-03) — the *priced* ladder is settled at **22 rows / Σ 58 400 gems**; the
in-panel **active** count is the one read still outstanding · Raised: 2026-11-02

**Print settlement (Rev 0 → partial).** Three independent prints now agree on the gem ladder, so the *priced* part of the
claim is closed: Tower Hub `wiki/card/cards` (2026-10-13) prints a `Slot | Gem Cost` table with exactly **22 rows**
(`1 = Free`, `2 = 50`, `3 = 100`, `4 = 200`, `5 = 300`, `6 = 400`, `7 = 500`, `8 = 600`, `9 = 750`, `10 = 1 000`,
`11 = 1 200`, `12 = 1 400`, `13 = 1 600`, `14 = 1 800`, `15 = 2 500`, `16 = 3 500`, `17 = 4 500`, `18 = 5 500`,
`19 = 6 500`, `20 = 7 500`, `21 = 8 500`, `22 = 10 000`), cell-for-cell the fandom and game-vault tables already used in
T012 §1 ⇒ **Σ 58 400** with the cumulative marks **3 900 / 15 900 / 32 400 / 48 400** at slots 10 / 16 / 19 / 21 (parsed by
`tools/card-mastery.ps1`). Two consequences: ① the slot-11…22 tail is no longer missing from this corpus — it is
`1 200 → 10 000`, **not** the guessed `1 250, 1 500, 2 000 …`, so T009’s ladder extends by reading the table instead of
extrapolating; ② the patch-note arithmetic (16 at v0.14, +1 at v0.16, +2 at v0.23 = **19**) and the **22**-row price table
cannot both be the whole story — either three more slots were priced in before they were granted, or the later versions
(v0.24 → v0.28, whose notes do not mention slots) raised the active cap silently.

**What is still open (one screen, two reads).**

**Claim.** The number of *buyable* card slots on the **Cards** screen is **19** in the current build, because the three
printed raises are cumulative: **16** at v0.14 (“max card slots raised to 16”), **+1** at v0.16 (“one extra card slot”),
**+2** at v0.23 (“two new active card slots”). Nothing in the v0.24 → v0.28 notes mentions slots again, and the
version pages are the only source that prints the cap at all.

**Why it matters.** T009’s gem ladder stops at **slot 10** (cumulative **9 020** gems through the Tier-8 window), so the
tail — slots **11 … 19** — is unpriced in this corpus even though it is 9 of the 19 possible purchases, and every gem
after slot 10 competes directly with the lab-slot and card-level rows of the same screen. If the cap is 19 the spend
order needs a second band; if it is a different number the derivation (or one of the three prints) is wrong.

**Settling observation (two reads, no purchases needed).**

1. Open **Cards** and count the slot frames: empty frames count, the locked/greyed ones too. Expected **19** (or the
   number the panel shows; the panel’s own header sometimes prints `n/19`).
2. Note the gem price of the **next** slot after the last one you own (e.g. the price shown on slot 11 while 10 are
   owned). With T009’s ladder (`50, 100, 200, 300, 400, 500, 600, 750, 1 000` for slots 2…10) the natural continuation
   is `1 250, 1 500, 2 000, 2 500, 3 000, …`; write down the first two unseen prices exactly — they extend the ladder
   without buying anything.
3. Optional third read: the **level cap** of a common card (T012’s “7th level for all cards” arrived at v0.16 and the
   mastery gate wants **30** cards at **L7**), to confirm the same build vintage as the timeline.

**Falsifier.** If the panel shows **18** or **20** slots, the cumulative reading is wrong (one of the three prints is a
re-set, not a sum, or a later hotfix changed the cap) — then record the printed number plus the last two gem prices and
re-derive the band from the panel instead of from the patch notes. If the *prices* continue a different law (e.g. a flat
2 500 for every slot past 10), T009’s ladder is only valid to slot 10 and the tail must be tabulated row by row.
