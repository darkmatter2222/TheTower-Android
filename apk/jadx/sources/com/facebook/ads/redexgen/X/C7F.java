package com.facebook.ads.redexgen.X;

import android.widget.FrameLayout;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7F, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C7F extends IB {
    public InterfaceC2456gD A00;

    public final void A08(NativeAdLayout nativeAdLayout, C1618Hi c1618Hi, NativeAd nativeAd, C2914nk c2914nk) {
        C3321uP c3321uP = new C3321uP(c1618Hi);
        MediaView mediaView = new MediaView(c1618Hi);
        AdOptionsView adOptionsView = new AdOptionsView(c1618Hi, nativeAd, nativeAdLayout);
        c2914nk.A09(adOptionsView, 28);
        this.A00 = new C1466Bl(c1618Hi, nativeAd, c2914nk, GT.A0L(nativeAd.getInternalNativeAd()).A1C(), c3321uP, mediaView, adOptionsView);
        AbstractC3086qc.A0O(nativeAdLayout, c2914nk.A00());
        nativeAd.registerViewForInteraction(nativeAdLayout, mediaView, c3321uP, this.A00.getViewsForInteraction());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        nativeAdLayout.addView(this.A00.getView(), layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.C2666jg, com.facebook.ads.internal.api.AdComponentViewParentApi
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.A00.unregisterView();
    }
}
