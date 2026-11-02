package com.ironsource.adqualitysdk.sdk.i;

import com.bytedance.sdk.openadsdk.api.reward.PAGRewardItem;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ƫ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0150 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0105 f860;

    public C0150(C0105 c0105) {
        this.f860 = c0105;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0105 c0105 = this.f860;
        PAGRewardItem pAGRewardItem = (PAGRewardItem) arrayList.get(0);
        c0105.getClass();
        return Integer.valueOf(pAGRewardItem.getRewardAmount());
    }
}
