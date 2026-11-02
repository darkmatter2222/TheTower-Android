package kotlin;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAd;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRefreshCallback;
import com.google.android.libraries.ads.mobile.sdk.common.VideoController;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.optionals.OptionalsKt;

/* JADX INFO: loaded from: classes.dex */
public class wo extends eq implements BannerAd {
    public final ck1 b;
    public final o53 c;
    public BannerAdRefreshCallback d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wo(ck1 internalBannerAd, o53 adFrame) {
        super(internalBannerAd);
        Intrinsics.checkNotNullParameter(internalBannerAd, "internalBannerAd");
        Intrinsics.checkNotNullParameter(adFrame, "adFrame");
        this.b = internalBannerAd;
        this.c = adFrame;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerAd
    public final void a(AdSize newSize) {
        Intrinsics.checkNotNullParameter(newSize, "newSize");
        this.c.a(newSize);
        ck1 ck1VarB = b();
        Context context = this.c.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        ck1VarB.getClass();
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(newSize, "newSize");
        r31 r31Var = (r31) OptionalsKt.getOrNull(ck1VarB.k());
        if (r31Var == null) {
            return;
        }
        r31Var.a(t14.a(context, newSize));
    }

    public ck1 b() {
        return this.b;
    }

    public BannerAdEventCallback getAdEventCallback() {
        BannerAdEventCallback bannerAdEventCallback;
        fm0 fm0VarJ = b().j();
        synchronized (fm0VarJ) {
            bannerAdEventCallback = fm0VarJ.g;
        }
        return bannerAdEventCallback;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerAd
    public final AdSize getAdSize() {
        return b().m();
    }

    public BannerAdRefreshCallback getBannerAdRefreshCallback() {
        return this.d;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerAd
    public final VideoController getVideoController() {
        r31 r31Var = (r31) OptionalsKt.getOrNull(b().k());
        if (r31Var != null) {
            return r31Var.d();
        }
        return null;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerAd
    public final View getView() {
        return this.c;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerAd
    public final View getView(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        a01.a.getClass();
        ((f0) ((vf0) zz0.a()).E.get()).a(activity, r.CREATED);
        return this.c;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerAd
    public final boolean isCollapsible() {
        return b().b().N;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerAd
    public final void recordManualImpression() {
        b().p();
    }

    public void setAdEventCallback(BannerAdEventCallback bannerAdEventCallback) {
        b().j().a(bannerAdEventCallback);
    }

    public void setBannerAdRefreshCallback(BannerAdRefreshCallback bannerAdRefreshCallback) {
        this.d = bannerAdRefreshCallback;
    }
}
