# H034 — Bot Bot's `Bonus` line: 19 levels (cap ×2.00) or 30 levels (cap ×2.55)?

Status: open · Raised: 2026-11-01

**Claim.** **19 levels, cap ×2.00** — Tower Hub's table is internally consistent (1.05 + 19 × 0.05 = 2.00 exactly) and comes
from an account-verified page dated 2026-11-01 ([H015](H015-bot-bot-increment.md) settled the increment at +0.05).

**Alternative.** **30 levels, cap ×2.55** — the fandom `Bot Bot` page says the line “has 30 levels”, which with +0.05 ends at
×2.55. A 30-level line would also change the medal total: `20L² + 80L` gives **20 400** medals for that line instead of
25 × 19 … = `20·19² + 80·19` = 7 220 + 1 520 = **8 740**, i.e. **11 660 medals** of the whole bot.

**Why it matters.** It is the difference between ×2.00 and ×2.55 on *every other bot's* output (Bot Bot multiplies the
other bots), which propagates into both the coin chain (Golden Bot ×8 → ×16 vs ×20.4) and the Elite-Cell chain
(Golden Bot+ × Bot Bot+). It also moves the total medal bill for a fully-maxed Bot Bot by ≈ 11.7 k medals ≈ **10 events**,
so it changes the schedule in [T015](../techniques/T015-bot-economy.md) §2.

**Settling observation (two reads in one screen).** Open **Events → Event Shop → Bot Bot** and read the `Bonus` line:
1. the **level cap** printed next to the line (e.g. “19/19” vs “30/30”), and
2. the value at level 1 (`×1.10` ⇒ +0.05 confirmed) and after the last purchasable level (`×2.00` ⇒ 19 levels;
   `×2.55` ⇒ 30 levels).

**Controls.** Read it **before** spending medals elsewhere on that bot (the panel shows the same three fields for the four
lines and it is easy to mix them up), and compare against the `Duration` line's cap in the same panel — every other Bot Bot
line's cap in both wikis is 30 (Duration) / 15 (Cooldown) / 20 (Range), so a 19-vs-30 disagreement is visible at a glance.

**Falsifier.** If the cap reads 30 **and** the max value is ×2.55, delete the “19 levels” line in T015 §2 and use
`20L² + 80L` at L = 30 (20 400 medals) for that line; if the cap reads 19 but the max value is **not** ×2.00, the increment
is not +0.05 after all and H015 must be reopened with the three printed values.
