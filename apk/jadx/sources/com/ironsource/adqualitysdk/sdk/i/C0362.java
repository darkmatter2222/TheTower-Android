package com.ironsource.adqualitysdk.sdk.i;

import io.bidmachine.banner.BannerListener;
import io.bidmachine.banner.BannerView;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ס, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0362 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0261 f1663;

    public C0362(C0261 c0261) {
        this.f1663 = c0261;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0261 c0261 = this.f1663;
        BannerView bannerView = (BannerView) arrayList.get(0);
        BannerListener bannerListener = (BannerListener) arrayList.get(1);
        c0261.getClass();
        bannerView.setListener(bannerListener);
        return null;
    }
}
