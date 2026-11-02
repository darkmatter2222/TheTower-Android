package com.ironsource.adqualitysdk.sdk.i;

import io.bidmachine.rewarded.RewardedAd;
import io.bidmachine.rewarded.RewardedListener;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ף, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0364 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0261 f1668;

    public C0364(C0261 c0261) {
        this.f1668 = c0261;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0261 c0261 = this.f1668;
        RewardedAd rewardedAd = (RewardedAd) arrayList.get(0);
        RewardedListener rewardedListener = (RewardedListener) arrayList.get(1);
        c0261.getClass();
        rewardedAd.setListener(rewardedListener);
        return null;
    }
}
