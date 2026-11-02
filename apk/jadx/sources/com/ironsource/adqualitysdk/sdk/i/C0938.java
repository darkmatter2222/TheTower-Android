package com.ironsource.adqualitysdk.sdk.i;

import com.facebook.ads.AdListener;
import com.facebook.ads.AdView;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.כֿ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0938 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0808 f3344;

    public C0938(C0808 c0808) {
        this.f3344 = c0808;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0808 c0808 = this.f3344;
        AdView adView = (AdView) arrayList.get(0);
        AdListener adListener = (AdListener) arrayList.get(1);
        c0808.getClass();
        adView.setAdListener(adListener);
        return null;
    }
}
