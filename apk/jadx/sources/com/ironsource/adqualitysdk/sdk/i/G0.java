package com.ironsource.adqualitysdk.sdk.i;

import com.yandex.mobile.ads.banner.BannerAdEventListener;
import com.yandex.mobile.ads.banner.BannerAdView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class G0 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ Q0 f101;

    public G0(Q0 q0) {
        this.f101 = q0;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        Q0 q0 = this.f101;
        BannerAdView bannerAdView = (BannerAdView) arrayList.get(0);
        BannerAdEventListener bannerAdEventListener = (BannerAdEventListener) arrayList.get(1);
        q0.getClass();
        bannerAdView.setBannerAdEventListener(bannerAdEventListener);
        return null;
    }
}
