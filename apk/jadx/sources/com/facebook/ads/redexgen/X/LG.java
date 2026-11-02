package com.facebook.ads.redexgen.X;

import com.facebook.ads.RewardData;
import com.facebook.ads.internal.protocol.AdPlacementType;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class LG implements InterfaceC2368en {
    public int A00;
    public long A01;
    public RewardData A02;

    public final void A00(int i) {
        this.A00 = i;
    }

    public final void A01(long j) {
        this.A01 = j;
    }

    public final void A02(RewardData rewardData) {
        this.A02 = rewardData;
    }

    public abstract int A0I();

    public abstract AbstractC2394fD A0J();

    public abstract boolean A0K();

    @Override // com.facebook.ads.redexgen.X.InterfaceC2368en
    public final AdPlacementType A9N() {
        return AdPlacementType.REWARDED_VIDEO;
    }
}
