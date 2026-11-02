package com.ironsource.adqualitysdk.sdk.i;

import com.amazon.device.ads.DTBAdResponse;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﭞ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0947 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0909 f3366;

    public C0947(C0909 c0909) {
        this.f3366 = c0909;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0909 c0909 = this.f3366;
        DTBAdResponse dTBAdResponse = (DTBAdResponse) arrayList.get(0);
        c0909.getClass();
        return dTBAdResponse.getRenderingBundle();
    }
}
