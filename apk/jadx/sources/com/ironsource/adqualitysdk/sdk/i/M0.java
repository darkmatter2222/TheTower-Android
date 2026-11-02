package com.ironsource.adqualitysdk.sdk.i;

import com.yandex.mobile.ads.rewarded.Reward;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class M0 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ Q0 f148;

    public M0(Q0 q0) {
        this.f148 = q0;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        Q0 q0 = this.f148;
        Reward reward = (Reward) arrayList.get(0);
        q0.getClass();
        return reward.getType();
    }
}
