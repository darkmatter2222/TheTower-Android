package com.ironsource.adqualitysdk.sdk.i;

import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdEventListener;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdImpl;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ⴡ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0504 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0466 f2185;

    public C0504(C0466 c0466) {
        this.f2185 = c0466;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0466 c0466 = this.f2185;
        AppLovinNativeAdImpl appLovinNativeAdImpl = (AppLovinNativeAdImpl) arrayList.get(0);
        AppLovinNativeAdEventListener appLovinNativeAdEventListener = (AppLovinNativeAdEventListener) arrayList.get(1);
        c0466.getClass();
        appLovinNativeAdImpl.setEventListener(appLovinNativeAdEventListener);
        return null;
    }
}
