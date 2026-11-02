package com.ironsource.adqualitysdk.sdk.i;

import com.amazon.device.ads.DTBAdResponse;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.בֿ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0937 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0909 f3343;

    public C0937(C0909 c0909) {
        this.f3343 = c0909;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0909 c0909 = this.f3343;
        DTBAdResponse dTBAdResponse = (DTBAdResponse) arrayList.get(0);
        c0909.getClass();
        return dTBAdResponse.getDTBAds();
    }
}
