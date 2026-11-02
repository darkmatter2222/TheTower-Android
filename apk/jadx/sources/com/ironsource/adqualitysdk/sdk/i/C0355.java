package com.ironsource.adqualitysdk.sdk.i;

import com.explorestack.protobuf.adcom.Ad;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ט, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0355 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0261 f1647;

    public C0355(C0261 c0261) {
        this.f1647 = c0261;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0261 c0261 = this.f1647;
        Ad ad = (Ad) arrayList.get(0);
        c0261.getClass();
        return ad.getExtProtoList();
    }
}
