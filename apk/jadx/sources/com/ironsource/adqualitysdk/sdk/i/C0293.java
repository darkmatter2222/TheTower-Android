package com.ironsource.adqualitysdk.sdk.i;

import com.explorestack.protobuf.adcom.Ad;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.к, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0293 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0261 f1494;

    public C0293(C0261 c0261) {
        this.f1494 = c0261;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0261 c0261 = this.f1494;
        Ad.Display.Banner banner = (Ad.Display.Banner) arrayList.get(0);
        c0261.getClass();
        return banner.getExtProtoList();
    }
}
