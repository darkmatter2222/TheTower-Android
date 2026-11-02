package com.ironsource.adqualitysdk.sdk.i;

import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressView;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ŷ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0139 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0105 f820;

    public C0139(C0105 c0105) {
        this.f820 = c0105;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0105 c0105 = this.f820;
        BannerExpressView bannerExpressView = (BannerExpressView) arrayList.get(0);
        PAGBannerAdWrapperListener pAGBannerAdWrapperListener = (PAGBannerAdWrapperListener) arrayList.get(1);
        c0105.getClass();
        bannerExpressView.setExpressInteractionListener(pAGBannerAdWrapperListener);
        return null;
    }
}
