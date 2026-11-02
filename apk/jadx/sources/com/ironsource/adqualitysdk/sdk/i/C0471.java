package com.ironsource.adqualitysdk.sdk.i;

import com.applovin.mediation.MaxAd;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ค, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0471 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0466 f2138;

    public C0471(C0466 c0466) {
        this.f2138 = c0466;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0466 c0466 = this.f2138;
        MaxAd maxAd = (MaxAd) arrayList.get(0);
        c0466.getClass();
        return maxAd.getCreativeId();
    }
}
