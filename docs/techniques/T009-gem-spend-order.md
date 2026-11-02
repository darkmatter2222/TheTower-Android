# T009 — Gem spend order: Enemy Balance first, then alternate Card Slots and Labs

Rev: 2 (2026-11-01) · Status: **Unverified**
Value: ★★★★ (compounds every other source) · Ease: 3 taps per purchase · Prerequisite: Gems > first card cost

> **Rev 2 addition — the numeric tie-breaker between the two ladders.** Card level-ups have a fixed
> copy price per step (2 / 5 / 8 / 12 / 20 / 32 copies = 40 / 100 / 160 / 240 / 400 / 640 gems) while the
> percentage points they give differ per card, so the two purchase ladders can be compared directly in
> **gems per +1 percentage point** — e.g. Cash card L1→2 = 2, Enemy Balance L1→2 = 4, Coins L1→2 = 8,
> but the Coins card's **L6→7 costs 128** while card **slot 7 costs 500 gems for a whole extra card**.
> Rule of thumb: take every currency card to **L4**, then buy the next slot, then come back for L5–7.
> Full table, pull mechanics and the pool-shrink effect: [T012](T012-card-deck-order.md). Use **Buy x10**
> (200 gems) to spend the same gems in a tenth of the taps.

## Why it works

Gems buy exactly three things that matter early: **Cards**, **Card Slots**, and **Lab unlocks**.
All three multiply your Coins/min rather than adding to it, so the *order* changes how fast the
snowball forms. Enemy Balance is the one card that lifts Coins/min for every subsequent run
(more enemies alive = more kills = more Coins), so it should be the first paid card in either path.

## Steps

1. Open **Cards** → keep buying until you own **Enemy Balance**. Equip it.
2. Then choose a path and follow it strictly:

**A — Active player (you can run thousands of waves/day)**
1. 2nd Card Slot — **Cash**/**Coins**
2. **2nd Lab unlock**
3. 3rd card — **Cash**/**Coins**
4. **3rd Lab unlock**
5. 4th slot — **Health**/**Attack Speed**
6. 5th slot — **Health**/**Attack Speed**
7. **4th Lab**, then **5th Lab**
8. further slots/cards → then Modules

**B — Casual player (fewer, longer sessions)**
1. 2nd Card Slot — Cash/Coins
2. **2nd → 3rd → 4th → 5th Lab unlocks** back to back
3. only then extra slots/cards → then Modules

3. After 5 Labs **and** 5–6 card slots: split gems between cards, modules and slots. Open a new slot
   only when you already own a card worth putting in it.
4. Before that point, use boss-dropped **Common** modules and merge them ([T010](T010-module-merge-chain.md)).
5. Do **not** convert Gems into: research speedups, Event-shop medals, or cosmetic bundles — all three are the weakest conversions at this stage.

## Reproduction checklist

- [ ] Enemy Balance equipped before any other gem purchase
- [ ] Number of equipped cards × Lab count both increased since the last session
- [ ] No Gem spend on speedups in the log

## Falsification

If the account's Coins/min does not rise measurably after the 2nd Lab unlock versus the 3rd card slot,
record both values here and flip the order for the next tier band.

## Sources

game-vault `Guide:Gem_Guide` §Gem Spending Priority (both paths, verbatim order), §Buying Modules.
