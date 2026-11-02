package com.ironsource.adqualitysdk.sdk.i;

import com.fyber.fairbid.ads.Rewarded;
import com.fyber.fairbid.ads.rewarded.RewardedListener;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᔮ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0640 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0597 f2519;

    public C0640(C0597 c0597) {
        this.f2519 = c0597;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0597 c0597 = this.f2519;
        RewardedListener rewardedListener = (RewardedListener) arrayList.get(0);
        c0597.getClass();
        Rewarded.setRewardedListener(rewardedListener);
        return null;
    }
}
