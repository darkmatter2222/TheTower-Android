package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.mediationsdk.ads.nativead.LevelPlayNativeAd;
import com.ironsource.mediationsdk.ads.nativead.LevelPlayNativeAdListener;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｲ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1069 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1058 f3804;

    public C1069(C1058 c1058) {
        this.f3804 = c1058;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C1058 c1058 = this.f3804;
        LevelPlayNativeAd levelPlayNativeAd = (LevelPlayNativeAd) arrayList.get(0);
        LevelPlayNativeAdListener levelPlayNativeAdListener = (LevelPlayNativeAdListener) arrayList.get(1);
        c1058.getClass();
        levelPlayNativeAd.setListener(levelPlayNativeAdListener);
        return null;
    }
}
