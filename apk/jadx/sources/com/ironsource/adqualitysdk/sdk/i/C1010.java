package com.ironsource.adqualitysdk.sdk.i;

import com.amazon.device.ads.DTBAdResponse;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺟ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1010 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0909 f3573;

    public C1010(C0909 c0909) {
        this.f3573 = c0909;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0909 c0909 = this.f3573;
        DTBAdResponse dTBAdResponse = (DTBAdResponse) arrayList.get(0);
        c0909.getClass();
        return dTBAdResponse.getImpressionUrl();
    }
}
