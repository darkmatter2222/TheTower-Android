package com.ironsource.adqualitysdk.sdk.i;

import com.qq.e.ads.interstitial2.UnifiedInterstitialAD;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵢ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0769 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0756 f2834;

    public C0769(C0756 c0756) {
        this.f2834 = c0756;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0756 c0756 = this.f2834;
        UnifiedInterstitialAD unifiedInterstitialAD = (UnifiedInterstitialAD) arrayList.get(0);
        c0756.getClass();
        return unifiedInterstitialAD.getExt();
    }
}
