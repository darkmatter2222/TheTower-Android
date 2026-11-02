# H050 — Is the Lab table's `Time` column per-level or cumulative?

Status: open · Raised: 2026-11-02

**Claim.** The wiki lab tables print one `Time` number per level next to the price. For the `Max Interest` line the series
is **non-monotone** — `… L9 = 3 d 21 h 10 m · L10 = 5 d 20 h 40 m · L11 = 1 d 4 h 50 m · L12 = 2 d 1 h 30 m …` — which is
only possible if the column is **per-level** (a cumulative column cannot decrease). Under that reading the bills are:

| Ladder | Σ of the printed times (= slot cost) |
|---|---|
| `Max Interest` L1–L4 | **8 h 33 m** |
| `Max Interest` L1–L10 | **15 d 10 h** (22 212 min) |
| `Max Interest` all 15 | **≈ 44 d 6 h** (63 762 min) at 1× ⇒ **≈ 12 d** at the ×3.725 stacked bonus ([T006](../techniques/T006-lab-queue-packing.md)) |
| `Interest` L1–L10 | **≈ 24 h 7 m** |

If instead the panel turns out to display a **running total**, the same rows mean ≈ 5.9 d for `Max Interest` L1–L10 and
≈ 78 d for the whole ladder, and every “days of a slot” figure in T001 / T006 / T020 must be replaced by the panel total.

**Why it matters.** It is the difference between “`Max Interest` L1–4 fits in one evening” (8 h 33 m either way — that row
is 42 m / 1 h 10 m / 2 h 8 m / 4 h 33 m, whose sum and last term are both small) and “the 15-level ladder is a 3-week or a
2.5-month project”, which changes whether a sub-Tier-11 player starts it before or after the 5-slot lab bill
([T009](../techniques/T009-gem-spend-order.md)).

**Settling observation (device, two reads, no run needed).** Open **Lab** → the same line twice:
1. start level 1 and read its displayed timer; then read level 2's timer **without finishing level 1** (the panel shows the
   next level's price and time);
2. if the two numbers differ (e.g. 42 m then 1 h 10 m) the column is **per-level**; if the panel shows a single
   “remaining” figure that grows when a second level is queued, the wiki column is a **cumulative** total.
Record: `L1 timer = ___, L2 timer = ___, Σ of the two = ___`.

**Kill condition.** A third behaviour (e.g. the panel shows the *queue* total, so L2 reads 1 h 52 m) → the tables are
queue-aggregated; then use the panel totals as the authoritative bill and mark the wiki column as derived.
