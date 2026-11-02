package com.ironsource.adqualitysdk.sdk.i;

import com.amazon.aps.ads.ApsAd;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ｉ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1040 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0909 f3672;

    public C1040(C0909 c0909) {
        this.f3672 = c0909;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0909 c0909 = this.f3672;
        ApsAd apsAd = (ApsAd) arrayList.get(0);
        c0909.getClass();
        return apsAd.getApsAdFormat();
    }
}
