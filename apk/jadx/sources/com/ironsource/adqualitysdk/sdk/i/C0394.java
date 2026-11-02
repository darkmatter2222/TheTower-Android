package com.ironsource.adqualitysdk.sdk.i;

import io.bidmachine.AdRequestParameters;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ٻ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0394 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0261 f1910;

    public C0394(C0261 c0261) {
        this.f1910 = c0261;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0261 c0261 = this.f1910;
        AdRequestParameters adRequestParameters = (AdRequestParameters) arrayList.get(0);
        c0261.getClass();
        return adRequestParameters.getAdsType().getName();
    }
}
