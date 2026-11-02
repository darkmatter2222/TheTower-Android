package com.ironsource.adqualitysdk.sdk.i;

import com.explorestack.protobuf.adcom.Ad;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ӭ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0328 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0261 f1580;

    public C0328(C0261 c0261) {
        this.f1580 = c0261;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0261 c0261 = this.f1580;
        Ad ad = (Ad) arrayList.get(0);
        int iIntValue = ((Integer) arrayList.get(1)).intValue();
        c0261.getClass();
        return ad.getBundle(iIntValue);
    }
}
