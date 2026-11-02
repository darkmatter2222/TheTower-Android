package com.ironsource.adqualitysdk.sdk.i;

import com.yandex.mobile.ads.interstitial.InterstitialAd;
import com.yandex.mobile.ads.interstitial.InterstitialAdEventListener;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class P0 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ Q0 f154;

    public P0(Q0 q0) {
        this.f154 = q0;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        Q0 q0 = this.f154;
        InterstitialAd interstitialAd = (InterstitialAd) arrayList.get(0);
        InterstitialAdEventListener interstitialAdEventListener = (InterstitialAdEventListener) arrayList.get(1);
        q0.getClass();
        interstitialAd.setAdEventListener(interstitialAdEventListener);
        return null;
    }
}
