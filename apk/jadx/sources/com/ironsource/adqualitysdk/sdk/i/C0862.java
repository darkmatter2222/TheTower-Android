package com.ironsource.adqualitysdk.sdk.i;

import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ⅈ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0862 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0808 f3135;

    public C0862(C0808 c0808) {
        this.f3135 = c0808;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0808 c0808 = this.f3135;
        InterstitialAd interstitialAd = (InterstitialAd) arrayList.get(0);
        InterstitialAdListener interstitialAdListener = (InterstitialAdListener) arrayList.get(1);
        c0808.getClass();
        interstitialAd.setAdListener(interstitialAdListener);
        return null;
    }
}
