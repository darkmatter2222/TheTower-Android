package com.ironsource.adqualitysdk.sdk.i;

import com.yandex.mobile.ads.rewarded.RewardedAd;
import com.yandex.mobile.ads.rewarded.RewardedAdEventListener;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class O0 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ Q0 f152;

    public O0(Q0 q0) {
        this.f152 = q0;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        Q0 q0 = this.f152;
        RewardedAd rewardedAd = (RewardedAd) arrayList.get(0);
        RewardedAdEventListener rewardedAdEventListener = (RewardedAdEventListener) arrayList.get(1);
        q0.getClass();
        rewardedAd.setAdEventListener(rewardedAdEventListener);
        return null;
    }
}
