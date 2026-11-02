package com.ironsource.adqualitysdk.sdk.i;

import com.mbridge.msdk.out.RewardInfo;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ر, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0381 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0279 f1841;

    public C0381(C0279 c0279) {
        this.f1841 = c0279;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0279 c0279 = this.f1841;
        RewardInfo rewardInfo = (RewardInfo) arrayList.get(0);
        c0279.getClass();
        return rewardInfo.getRewardAmount();
    }
}
