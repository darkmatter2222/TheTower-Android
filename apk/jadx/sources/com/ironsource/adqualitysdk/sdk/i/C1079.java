package com.ironsource.adqualitysdk.sdk.i;

import com.amazon.device.ads.DTBAdSize;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﾁ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1079 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0909 f3813;

    public C1079(C0909 c0909) {
        this.f3813 = c0909;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0909 c0909 = this.f3813;
        DTBAdSize dTBAdSize = (DTBAdSize) arrayList.get(0);
        c0909.getClass();
        return dTBAdSize.getSlotUUID();
    }
}
