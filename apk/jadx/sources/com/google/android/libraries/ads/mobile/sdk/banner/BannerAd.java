package com.google.android.libraries.ads.mobile.sdk.banner;

import android.app.Activity;
import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.common.Ad;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadResult;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.VideoController;
import kotlin.a01;
import kotlin.bz2;
import kotlin.cm1;
import kotlin.cz2;
import kotlin.fq;
import kotlin.j53;
import kotlin.jq;
import kotlin.qo;
import kotlin.ro;
import kotlin.vf0;
import kotlin.vo;
import kotlin.wy2;
import kotlin.xh0;
import kotlin.zz0;
import p005kotlin.Deprecated;
import p005kotlin.Metadata;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u0000  2\u00020\u0001:\u0001 J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH&¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH&¢\u0006\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u00108&@&X¦\u000e¢\u0006\f\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u00168&@&X¦\u000e¢\u0006\f\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u0004\u0018\u00010\u001c8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006!À\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;", "Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;", "Landroid/app/Activity;", "activity", "Landroid/view/View;", "getView", "(Landroid/app/Activity;)Landroid/view/View;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "getAdSize", "()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "", "recordManualImpression", "()V", "", "isCollapsible", "()Z", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;", "getAdEventCallback", "()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;", "setAdEventCallback", "(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;)V", "adEventCallback", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRefreshCallback;", "getBannerAdRefreshCallback", "()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRefreshCallback;", "setBannerAdRefreshCallback", "(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRefreshCallback;)V", "bannerAdRefreshCallback", "Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;", "getVideoController", "()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;", "videoController", "Companion", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public interface BannerAd extends Ad {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.a;

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001J%\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0007¢\u0006\u0004\b\b\u0010\tJ!\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0087@ø\u0001\u0000¢\u0006\u0004\b\b\u0010\u000bJ%\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\f2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0007¢\u0006\u0004\b\u000e\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd$Companion;", "", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;", "adRequest", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;", "adLoadCallback", "", "load", "(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;", "(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "adResponse", "loadFromAdResponse", "(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Companion {
        static final /* synthetic */ Companion a = new Companion();

        private Companion() {
        }

        @Deprecated(message = "Use AdView.loadAd() or BannerAdPreloader instead.")
        public final Object load(BannerAdRequest bannerAdRequest, Continuation<? super AdLoadResult<? extends BannerAd>> continuation) {
            a01.a.getClass();
            xh0 xh0Var = new xh0(((vf0) zz0.a()).c);
            xh0Var.d = j53.f;
            wy2 wy2VarA = ((bz2) ((bz2) ((bz2) ((bz2) xh0Var.a((AdRequest) bannerAdRequest)).a((BaseRequest) bannerAdRequest)).a((BannerRequest) bannerAdRequest).a(bannerAdRequest).b(false)).a(false)).a().a();
            return jq.a.b(wy2VarA, new fq(new ro(wy2VarA, null), null), continuation);
        }

        @Deprecated(message = "Use AdView.loadAd() or BannerAdPreloader instead.")
        @JvmStatic
        public final void load(BannerAdRequest adRequest, AdLoadCallback<BannerAd> adLoadCallback) {
            Intrinsics.checkNotNullParameter(adRequest, "adRequest");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            Intrinsics.checkNotNullParameter(adRequest, "adRequest");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            zz0 zz0Var = a01.a;
            zz0Var.getClass();
            cm1 cm1Var = (cm1) ((vf0) zz0.a()).q3.get();
            zz0Var.getClass();
            xh0 xh0Var = new xh0(((vf0) zz0.a()).c);
            xh0Var.d = j53.f;
            cz2 cz2VarA = ((bz2) ((bz2) ((bz2) ((bz2) xh0Var.a((AdRequest) adRequest)).a((BaseRequest) adRequest)).a((BannerRequest) adRequest).a(adRequest).b(false)).a(false)).a();
            cm1Var.a((Function1) new qo(cz2VarA, adLoadCallback, null, false, null));
            cz2VarA.c();
        }

        @Deprecated(message = "Use AdView.loadAd() or BannerAdPreloader instead.")
        @JvmStatic
        public final void loadFromAdResponse(String adResponse, AdLoadCallback<BannerAd> adLoadCallback) {
            Intrinsics.checkNotNullParameter(adResponse, "adResponse");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            vo.a(adResponse, adLoadCallback);
        }
    }

    @Deprecated(message = "Use AdView.loadAd() or BannerAdPreloader instead.")
    @JvmStatic
    static void load(BannerAdRequest bannerAdRequest, AdLoadCallback<BannerAd> adLoadCallback) {
        INSTANCE.load(bannerAdRequest, adLoadCallback);
    }

    @Deprecated(message = "Use AdView.loadAd() or BannerAdPreloader instead.")
    @JvmStatic
    static void loadFromAdResponse(String str, AdLoadCallback<BannerAd> adLoadCallback) {
        INSTANCE.loadFromAdResponse(str, adLoadCallback);
    }

    void a(AdSize adSize);

    BannerAdEventCallback getAdEventCallback();

    AdSize getAdSize();

    BannerAdRefreshCallback getBannerAdRefreshCallback();

    VideoController getVideoController();

    View getView();

    @Deprecated(message = "Use AdView.registerBannerAd() instead.")
    View getView(Activity activity);

    boolean isCollapsible();

    void recordManualImpression();

    void setAdEventCallback(BannerAdEventCallback bannerAdEventCallback);

    void setBannerAdRefreshCallback(BannerAdRefreshCallback bannerAdRefreshCallback);
}
