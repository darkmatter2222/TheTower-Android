package com.ironsource.adqualitysdk.sdk.i;

import com.bytedance.sdk.openadsdk.api.reward.PAGRewardItem;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ƨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0149 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0105 f859;

    public C0149(C0105 c0105) {
        this.f859 = c0105;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0105 c0105 = this.f859;
        PAGRewardItem pAGRewardItem = (PAGRewardItem) arrayList.get(0);
        c0105.getClass();
        return pAGRewardItem.getRewardName();
    }
}
