package com.ironsource.adqualitysdk.sdk.i;

import com.facebook.ads.Ad;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﮈ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0962 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0808 f3450;

    public C0962(C0808 c0808) {
        this.f3450 = c0808;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0808 c0808 = this.f3450;
        Ad ad = (Ad) arrayList.get(0);
        c0808.getClass();
        return ad.getPlacementId();
    }
}
