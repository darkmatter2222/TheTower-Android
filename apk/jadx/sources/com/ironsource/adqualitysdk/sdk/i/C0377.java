package com.ironsource.adqualitysdk.sdk.i;

import io.bidmachine.interstitial.InterstitialAd;
import io.bidmachine.interstitial.InterstitialListener;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ت, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0377 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0261 f1834;

    public C0377(C0261 c0261) {
        this.f1834 = c0261;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0261 c0261 = this.f1834;
        InterstitialAd interstitialAd = (InterstitialAd) arrayList.get(0);
        InterstitialListener interstitialListener = (InterstitialListener) arrayList.get(1);
        c0261.getClass();
        interstitialAd.setListener(interstitialListener);
        return null;
    }
}
