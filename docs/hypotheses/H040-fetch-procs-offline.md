# H040 — Does Fetch's cooldown advance while the app is closed?

Status: open · Raised: 2026-11-02

**Claim.** Yes — the chip's cooldown is wall-clock based, so a maxed Fetch keeps proccing overnight and the day really does
contain **1 440 procs** (⇒ 720 finds, [T023](../techniques/T023-guardian-economy.md) §3). If instead only *uptime* counts,
an 8-h day gives 480 procs and every §3 expectation must be scaled by uptime ÷ 24.

**Why it matters.** It is the difference between ≈ 50 and ≈ 17 shard-units/day from one chip (and between 20 and ≈ 7 gems),
i.e. whether Fetch is the second-largest gem source after the ad icon or a rounding error — and whether “leave the app
running all night” (T022 §4.2's long-run advice) is worth the battery.

**Settling observation (two mornings, four reads).**
1. Evening: with Fetch equipped, read the counters on the **Modules** panel (shard counts per type) and the **gem** counter
   → `S0`, `G0`; also note the time.
2. Close the app completely (swipe away). Leave it closed for a known interval `T` hours.
3. Morning: re-read the same counters → `S1`, `G1`, and compute the per-hour rates.
- `G1 − G0` ≈ `min(20, T × 1440/24 × 0.04 × …)` following the §3 table ⇒ wall-clock cooldown (claim);
- `G1 − G0` ≈ 0 while the *idle coin* counter did move ⇒ the chip only procs during active play (claim killed) — then
  re-derive §3 with `procs = uptime/60`.
4. Repeat once with the app **open on the home screen** for the same `T` to separate “app open, idle” from “app closed”.

**Controls.** Same chip levels and the same 3 equipped chips in both runs (a preset swap changes the chip set: the
bit-refund mechanic means levels move with the preset); claim nothing else that grants gems/medals between the two reads, or
list each source separately; note whether a **Daily Mission** or the **Store** free claim landed inside the window
(subtract their known 3/20 gems — T022 §1).

**Falsifier.** If `G1 − G0` is neither the wall-clock nor the uptime prediction, a third mechanism is in play (e.g. procs
queued up to a stored maximum, like the ad icon's 5× bank in T007) — record `T`, the deltas and the number of app opens so
the bank size can be identified.
