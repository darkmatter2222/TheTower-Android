package com.ironsource.adqualitysdk.sdk.i;

import com.tapjoy.TJPlacement;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ۥ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0426 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0226 f1969;

    public C0426(C0226 c0226) {
        this.f1969 = c0226;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0226 c0226 = this.f1969;
        TJPlacement tJPlacement = (TJPlacement) arrayList.get(0);
        c0226.getClass();
        return tJPlacement.getVideoListener();
    }
}
