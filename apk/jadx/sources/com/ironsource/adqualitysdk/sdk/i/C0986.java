package com.ironsource.adqualitysdk.sdk.i;

import com.qq.e.ads.rewardvideo.RewardVideoAD;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﹶ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0986 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0756 f3509;

    public C0986(C0756 c0756) {
        this.f3509 = c0756;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0756 c0756 = this.f3509;
        RewardVideoAD rewardVideoAD = (RewardVideoAD) arrayList.get(0);
        c0756.getClass();
        return Integer.valueOf(rewardVideoAD.getRewardAdType());
    }
}
