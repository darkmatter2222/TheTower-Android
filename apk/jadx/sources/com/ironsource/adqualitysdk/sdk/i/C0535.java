package com.ironsource.adqualitysdk.sdk.i;

import com.tapjoy.TJPlacementData;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᐩ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0535 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0226 f2232;

    public C0535(C0226 c0226) {
        this.f2232 = c0226;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0226 c0226 = this.f2232;
        TJPlacementData tJPlacementData = (TJPlacementData) arrayList.get(0);
        c0226.getClass();
        return tJPlacementData.getHttpResponse();
    }
}
