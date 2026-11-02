package com.ironsource.adqualitysdk.sdk.i;

import com.facebook.ads.internal.adapters.AdAdapter;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ἴ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0830 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0808 f3088;

    public C0830(C0808 c0808) {
        this.f3088 = c0808;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0808 c0808 = this.f3088;
        AdAdapter adAdapter = (AdAdapter) arrayList.get(0);
        c0808.getClass();
        return adAdapter.getPlacementType();
    }
}
