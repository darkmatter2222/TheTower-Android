# H015 — Bot Bot's Bonus increment: +0.05 or +0.5 per level?

Status: **resolved** (2026-11-01) · Raised: 2026-11-01

**Answer: +0.05 per level.** Tower Hub's `wiki/bot/bot-bot` (last verified 2026-11-01, from a live Legend account) prints
the line as “starts at ×1.05 and has **19 levels**, each adding **0.05**, up to **×2.00**”, and its per-level table shows
`x1.10` at level 1, `x1.15` at level 2 … — i.e. +0.05 per level. That table is **internally consistent**, which is the
decisive part: 1.05 + 19 × 0.05 = **2.00**, exactly the stated cap.

With `+0.5` the same arithmetic would give 1.05 + 19 × 0.5 = **10.55**, matching neither the printed ×2.00 cap nor any
other bot's range (every other bot line ends between ×2 and ×290 in one or two orders of magnitude). So the fandom page's
“each level increases bonus by 0.5” is the stale/incorrect entry.

**Consequence for the technique.** [T015](../techniques/T015-bot-economy.md) §2/§4 use **×2.00** (or ×2.25 for the Bot+
`Maximum Power` line) as the Bot Bot multiplier, so the coin chain reads
`kills-in-range × Golden Bot bonus × 2.00 (Bot Bot) × (GT window)` rather than the impossible ×10.55.

**What stayed open (moved to [H034](H034-botbot-level-count.md)).** The **level count**: fandom says 30 levels (which with
+0.05 would end at ×2.55), Tower Hub says 19 (ending at ×2.00). The one read that settles it is the Bonus line's cap in
the bot panel.

**Cross-checks already satisfied:** the normal-line ladder `100 + 40(n−1)` appears in both wikis and reproduces the
independently printed **56 100**-medal total for Golden Bot exactly (§1 of T015), so the panel's price column itself is
confirmed.
