package com.ironsource.adqualitysdk.sdk.i;

import com.yandex.mobile.ads.common.AdInfo;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class H0 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ Q0 f103;

    public H0(Q0 q0) {
        this.f103 = q0;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        Q0 q0 = this.f103;
        AdInfo adInfo = (AdInfo) arrayList.get(0);
        q0.getClass();
        return adInfo.getAdUnitId();
    }
}
