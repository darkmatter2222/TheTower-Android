# H003 — The Cash interest cap is a fixed number that Max Interest (Lab) raises

Status: **resolved** (2026-11-01, from published tables — one device check remains) · Raised: 2026-11-01

**Answer.** The claim holds. The cap is a discrete, upgradable number:

* **base cap = $50** with no lab levels (game-vault and fandom both state “Starts at $50”);
* the lab line **`Max Interest`** (Utility research, unlocked by the **Tier 2 Wave 80** milestone) has **15 levels**
  with printed caps **$100, 200, 300, 500, 700, 1 000, 1 500, 2 000, 2 500, 3 500, 5 000, 7 500, 10 000, 12 500,
  15 000** for **250, 910, 2 130, 4 860, 10 330, 20 020, 35 600, 58 900, 91 940, 136 870, 195 990, 271 720, 366 610,
  483 330, 624 680** gems → **2 304 140 gems** total, **28 d 2 h 55 m** of lab time;
* it is therefore **not linear in level** (the steps are 2×, 2×, 1.5×, 1.7×, 1.4×, 1.4×, 1.5×, …) — the practical
  consequence is the efficiency curve in [T001](../techniques/T001-interest-idle-engine.md) §2 (200 → 4 $ of cap per
  1 000 gems), i.e. buy levels 1–4 early, deep levels only in 4 500-wave tiers;
* the indicator is the **`$` icon next to Cash turning bright green** when the paid interest equals the cap
  (“further saving of cash will not increase it”), so the icon is a *cap-binding* indicator, not a “you have cash” one.

**One remaining device check** (cosmetic, does not change the technique): read the `Max Interest` row's `Value` column
at level 3 — fandom prints **$300**, game-vault **$350** — and confirm the icon state at a cash value just above and
just below `cap ÷ rate`. Record both here when captured.

**Why it mattered (fixed now).** T001's optimal cycle length is now computable: the threshold is
`cap ÷ rate − (Cash/Wave × Cash Bonus)`, e.g. 4 167 cash at `Interest/Wave` level 20 with the base $50 cap.
