package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｷ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1072 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0909 f3807;

    public C1072(C0909 c0909) {
        this.f3807 = c0909;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0909 c0909 = this.f3807;
        HashMap map = (HashMap) arrayList.get(0);
        c0909.getClass();
        return new C0917(c0909, map, c0943);
    }
}
