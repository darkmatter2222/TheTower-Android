package com.ironsource.adqualitysdk.sdk.i;

import com.my.target.ads.Reward;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﻟ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1026 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1009 f3629;

    public C1026(C1009 c1009) {
        this.f3629 = c1009;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C1009 c1009 = this.f3629;
        Reward reward = (Reward) arrayList.get(0);
        c1009.getClass();
        return reward.type;
    }
}
