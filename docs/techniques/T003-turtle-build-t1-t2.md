# T003 — Turtle build: clear Tier 1–2 almost for free

Rev: 1 · Status: **Unverified**
Value: ★★ (fast tier unlocks → bigger daily/weekly coin rewards) · Ease: 10 min · Prerequisite: Tier 1

## Why it works

Enemy damage scales by roughly 4 % per consecutive hit, while **Defense Absolute** is a flat
subtraction. At low tiers a big Absolute-Defense number reduces incoming damage to almost
nothing, so the tower survives nearly indefinitely, and **Thorns** (which reflects a % of
incoming damage on every hit) does all the killing — no coin-heavy Attack investment needed.
This is the cheapest known path through Tier 1–2 and the base for the later Blender build.

## Steps

1. Open the **Workshop** and spend Coins only on these four, in this order:
   1. **Defense Absolute** — ~50 levels gets you out of Tier 1 (it costs ~2× Health, stop climbing it once expensive; a few hundred levels max over the whole game).
   2. **Health** — 1–2 levels per run, nothing more.
   3. **Defense %** — start once Absolute Defense is at 50–100 levels.
   4. **Thorns** — stop at the **11 % → 21 % → 26 % → 34 % breakpoints**; these are the levels where Thorns jumps.
2. Add **Health Regen** a few levels only until **Lifesteal** unlocks; afterwards Lifesteal replaces it and should cost ~2× the HP upgrades.
3. Keep **Knockback** at the same purchase cost as **Attack Speed** until Knockback Force is maxed (enemies get pushed back into your orbs).
4. In-run: follow [T002](T002-run-phase-order.md); add Absolute Defense and Def % as the survival phase.
5. Do **not** buy Range, Damage-per-Meter, or Crit Factor yet.

## When to leave Turtle

Once Lifesteal is unlocked, start Attack Speed; when you can max Attack Speed inside a run, add
Multishot → Rapid Fire → Bounce Shot. That transition *is* the Blender build. Before attempting
Tier 2, Knockback / Lifesteal / Orbs / Attack Speed / Multishot should each be about half-maxed.

## Reproduction checklist

- [ ] Thorns sits exactly on a breakpoint (11/21/26/34 %) rather than an in-between level
- [ ] Health costs ≈ half of Defense Absolute cost at the same level count
- [ ] Wave reached at Tier 1 rises versus your control without buying Damage

## Falsification

If raw Damage levels clearly out-rank Thorns at equal coin cost on Tier 1–2, note the wave
numbers here and re-test after Lifesteal unlocks (Turtle is expected to decay after Tier ~3).

## Sources

game-vault `Guide:Beginners_Guide` §Health / §Turtle Build Guide; oslink.io strategy summary (4 % per-hit damage scaling, Thorns priority).
