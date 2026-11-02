package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ἳ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0829 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0808 f3087;

    public C0829(C0808 c0808) {
        this.f3087 = c0808;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0808 c0808 = this.f3087;
        WeakHashMap weakHashMap = (WeakHashMap) arrayList.get(0);
        c0808.getClass();
        return new C0828(c0808, weakHashMap, c0943);
    }
}
