package com.ironsource.adqualitysdk.sdk.i;

import com.mbridge.msdk.out.BannerAdListener;
import com.mbridge.msdk.out.MBBannerView;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.с, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0298 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0279 f1532;

    public C0298(C0279 c0279) {
        this.f1532 = c0279;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0279 c0279 = this.f1532;
        MBBannerView mBBannerView = (MBBannerView) arrayList.get(0);
        BannerAdListener bannerAdListener = (BannerAdListener) arrayList.get(1);
        c0279.getClass();
        mBBannerView.setBannerAdListener(bannerAdListener);
        return null;
    }
}
