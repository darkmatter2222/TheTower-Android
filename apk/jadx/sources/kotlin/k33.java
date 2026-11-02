package kotlin;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRefreshCallback;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class k33 extends wo {
    public final wy2 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k33(ck1 internalBannerAd, o53 view, wy2 adLoader) {
        super(internalBannerAd, view);
        Intrinsics.checkNotNullParameter(internalBannerAd, "internalBannerAd");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(adLoader, "adLoader");
        this.e = adLoader;
    }

    @Override // kotlin.eq
    public final zh1 a() {
        return (zh1) this.e.u.a("The backing field has not yet been initialized.");
    }

    @Override // kotlin.wo
    public final ck1 b() {
        return (ck1) this.e.u.a("The backing field has not yet been initialized.");
    }

    @Override // kotlin.eq, com.google.android.libraries.ads.mobile.sdk.common.Ad
    public final void destroy() {
        this.e.b();
    }

    @Override // kotlin.wo, com.google.android.libraries.ads.mobile.sdk.banner.BannerAd
    public final BannerAdEventCallback getAdEventCallback() {
        BannerAdEventCallback bannerAdEventCallback;
        fm0 fm0VarJ = b().j();
        synchronized (fm0VarJ) {
            bannerAdEventCallback = fm0VarJ.g;
        }
        return bannerAdEventCallback;
    }

    @Override // kotlin.wo, com.google.android.libraries.ads.mobile.sdk.banner.BannerAd
    public final BannerAdRefreshCallback getBannerAdRefreshCallback() {
        wy2 wy2Var = this.e;
        return (BannerAdRefreshCallback) wy2Var.v.getValue(wy2Var, wy2.C[0]);
    }

    @Override // kotlin.wo, com.google.android.libraries.ads.mobile.sdk.banner.BannerAd
    public final void setAdEventCallback(BannerAdEventCallback bannerAdEventCallback) {
        b().j().a(bannerAdEventCallback);
    }

    @Override // kotlin.wo, com.google.android.libraries.ads.mobile.sdk.banner.BannerAd
    public final void setBannerAdRefreshCallback(BannerAdRefreshCallback bannerAdRefreshCallback) {
        wy2 wy2Var = this.e;
        wy2Var.v.setValue(wy2Var, wy2.C[0], bannerAdRefreshCallback);
    }
}
