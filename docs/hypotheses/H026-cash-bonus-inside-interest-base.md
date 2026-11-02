# H026 — Is the `Cash Bonus` line inside the interest base (two published statements conflict)?

Status: open · Raised: 2026-11-01

**The conflict, verbatim.**

* fandom `Interest`: “Interest is calculated after Cash/Wave. To find interest:
  `(Current Cash + Cash/Wave * Cash Bonus) * Interest/Wave %`.”
* game-vault `Workshop` → `Cash Bonus`: “Cash bonus **does not increase interest** nor will it increase max interest.”

**Reading A (used in T001 §1).** Both are true simultaneously: `Cash Bonus` appears **once, inside** the bracket (it
inflates the Cash/Wave term of the base), and the note means the *resulting* interest payment is not multiplied by
Cash Bonus a second time. ⇒ threshold `cash ≥ cap ÷ rate − Cash/Wave × Cash Bonus`.

**Reading B.** The note is the whole truth: the base is `(Current Cash + Cash/Wave) × rate` and the `Cash Bonus`
workshop line never touches interest. ⇒ threshold `cash ≥ cap ÷ rate − Cash/Wave` (a slightly lower number).

**Why it matters.** Only the size of the *grey-regime* correction: with `Cash/Wave` at 596 and `Cash Bonus` ×2.49 the
term is **1 484 vs 596** cash, i.e. up to ~1.5 % of the $15 000 cap and up to ~35 % of a low-cap threshold. It is the
difference between “the `$` went green one wave earlier than the model predicted” being noise or being a wrong model,
so it is worth one capture; it also tells us whether interest and Cash Bonus are two independent stacks (B) or nested
(A), which matters when comparing gem-vs-coin purchases in T009/T020.

**Settling observation (two runs, three wave-reads each).** Keep `Cash/Wave` at a fixed level; note the interest
percentage from the Workshop `Interest/Wave` row and the `Max Interest` cap.
1. Run 1 with `Cash Bonus` at its current level: at 1× speed, with **no purchases**, write the Cash counter at three
   consecutive waves **while the `$` is still grey** (below the cap). `interest/wave ≈ Δcash − Cash/Wave × CashBonus`.
2. Buy **+10 levels** of `Cash Bonus` (a known Δ multiplier) and repeat the same three-wave read at the same tier.
- If the grey-regime interest grows **more** than `Cash/Wave × ΔCashBonus` alone explains, `Cash Bonus` is inside the
  interest base ⇒ **Reading A**, keep T001 §1 as written.
- If it grows by exactly the plain `Cash/Wave × ΔCashBonus` term, `Cash Bonus` is not in the base ⇒ **Reading B**, drop
  the `× Cash Bonus` from T001 §1's formula.

**Falsifier.** If the Cash counter's per-wave increment is not reproducible between the two runs at the same wave
number (other multipliers moved), redo the test inside a single run: buy one `Cash Bonus` level mid-run — if the game
lets you — and compare the increment before/after within the same run.
