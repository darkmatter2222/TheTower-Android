package com.ironsource.adqualitysdk.sdk.i;

import com.smaato.sdk.banner.widget.BannerView;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᔊ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0630 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0117 f2507;

    public C0630(C0117 c0117) {
        this.f2507 = c0117;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0117 c0117 = this.f2507;
        BannerView bannerView = (BannerView) arrayList.get(0);
        BannerView.EventListener eventListener = (BannerView.EventListener) arrayList.get(1);
        c0117.getClass();
        bannerView.setEventListener(eventListener);
        return null;
    }
}
