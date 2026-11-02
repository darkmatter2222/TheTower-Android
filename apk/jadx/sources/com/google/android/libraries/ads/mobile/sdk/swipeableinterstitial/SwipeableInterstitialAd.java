package com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial;

import android.app.Activity;
import android.view.View;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.common.Ad;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadResult;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.android.libraries.ads.mobile.sdk.common.VideoController;
import kotlin.a01;
import kotlin.cm1;
import kotlin.fq;
import kotlin.j53;
import kotlin.jq;
import kotlin.ni0;
import kotlin.pi0;
import kotlin.t03;
import kotlin.tm3;
import kotlin.um3;
import kotlin.v03;
import kotlin.vf0;
import kotlin.wm3;
import kotlin.zm3;
import kotlin.zz0;
import p005kotlin.Deprecated;
import p005kotlin.Metadata;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bg\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aJ\b\u0010\u000e\u001a\u00020\u000fH&J\b\u0010\u0010\u001a\u00020\u0011H&J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H&J\b\u0010\u0016\u001a\u00020\u0017H'J\b\u0010\u0018\u001a\u00020\u0019H'R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u0004\u0018\u00010\tX¦\u000e¢\u0006\f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u001bÀ\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAd;", "Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;", "adEventCallback", "Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdEventCallback;", "getAdEventCallback", "()Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdEventCallback;", "setAdEventCallback", "(Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdEventCallback;)V", "videoLifecycleCallbacks", "Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;", "getVideoLifecycleCallbacks", "()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;", "setVideoLifecycleCallbacks", "(Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;)V", "getAdSize", "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "getScreenHoldDuration", "", "getView", "Landroid/view/View;", "activity", "Landroid/app/Activity;", "isCustomClickGestureEnabled", "", "recordCustomClickGesture", "", "Companion", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface SwipeableInterstitialAd extends Ad {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.a;

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001J%\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0007¢\u0006\u0004\b\b\u0010\tJ!\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\b\u0010\u000bJ%\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\f2\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0007¢\u0006\u0004\b\u000e\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAd$Companion;", "", "Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;", "adRequest", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;", "Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAd;", "adLoadCallback", "", "load", "(Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;", "(Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "adResponse", "loadFromAdResponse", "(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Companion {
        static final /* synthetic */ Companion a = new Companion();

        private Companion() {
        }

        public final Object load(SwipeableInterstitialAdRequest swipeableInterstitialAdRequest, Continuation<? super AdLoadResult<? extends SwipeableInterstitialAd>> continuation) {
            zm3.d.getClass();
            if (swipeableInterstitialAdRequest.getCustomClickGestureEnabled() && swipeableInterstitialAdRequest.getCustomClickSwipeGestureDirection() != null) {
                return new AdLoadResult.Failure(new LoadAdError(LoadAdError.ErrorCode.INVALID_REQUEST, zm3.f, null));
            }
            a01.a.getClass();
            vf0 vf0Var = ((vf0) zz0.a()).c;
            j53 j53Var = j53.l;
            Boolean bool = Boolean.FALSE;
            return jq.a.b((t03) new pi0(vf0Var, swipeableInterstitialAdRequest, j53Var, bool, bool, swipeableInterstitialAdRequest).j.get(), new fq(new um3(null), null), continuation);
        }

        @JvmStatic
        public final void load(SwipeableInterstitialAdRequest adRequest, AdLoadCallback<SwipeableInterstitialAd> adLoadCallback) {
            Intrinsics.checkNotNullParameter(adRequest, "adRequest");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            zm3.d.getClass();
            Intrinsics.checkNotNullParameter(adRequest, "adRequest");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            zz0 zz0Var = a01.a;
            zz0Var.getClass();
            cm1 cm1Var = (cm1) ((vf0) zz0.a()).q3.get();
            zz0Var.getClass();
            vf0 vf0Var = ((vf0) zz0.a()).c;
            j53 j53Var = j53.l;
            adRequest.getClass();
            Boolean bool = Boolean.FALSE;
            pi0 pi0Var = new pi0(vf0Var, adRequest, j53Var, bool, bool, adRequest);
            if (!adRequest.getCustomClickGestureEnabled() || adRequest.getCustomClickSwipeGestureDirection() == null) {
                cm1Var.a((Function1) new tm3(pi0Var, adLoadCallback, null));
            } else {
                adLoadCallback.onAdFailedToLoad(new LoadAdError(LoadAdError.ErrorCode.INVALID_REQUEST, zm3.f, null));
            }
        }

        @JvmStatic
        public final void loadFromAdResponse(String adResponse, AdLoadCallback<SwipeableInterstitialAd> adLoadCallback) {
            Intrinsics.checkNotNullParameter(adResponse, "adResponse");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            zm3.d.getClass();
            Intrinsics.checkNotNullParameter(adResponse, "adResponse");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            a01.a.getClass();
            cm1 cm1Var = (cm1) ((vf0) zz0.a()).q3.get();
            vf0 vf0Var = ((vf0) zz0.a()).c;
            adResponse.getClass();
            cm1Var.a((Function1) new wm3((v03) new ni0(vf0Var, j53.l, adResponse, Boolean.FALSE).h.get(), adLoadCallback, null));
        }
    }

    @JvmStatic
    static void load(SwipeableInterstitialAdRequest swipeableInterstitialAdRequest, AdLoadCallback<SwipeableInterstitialAd> adLoadCallback) {
        INSTANCE.load(swipeableInterstitialAdRequest, adLoadCallback);
    }

    @JvmStatic
    static void loadFromAdResponse(String str, AdLoadCallback<SwipeableInterstitialAd> adLoadCallback) {
        INSTANCE.loadFromAdResponse(str, adLoadCallback);
    }

    SwipeableInterstitialAdEventCallback getAdEventCallback();

    AdSize getAdSize();

    int getScreenHoldDuration();

    VideoController.VideoLifecycleCallbacks getVideoLifecycleCallbacks();

    View getView(Activity activity);

    @Deprecated(message = "Use SwipeableInterstitialAdRequest.Builder.enableCustomClickSwipeGesture(SwipeGestureDirection, Boolean) instead.")
    @KeepForSdk
    boolean isCustomClickGestureEnabled();

    @Deprecated(message = "Use SwipeableInterstitialAdRequest.Builder.enableCustomClickSwipeGesture(SwipeGestureDirection, Boolean) instead.")
    @KeepForSdk
    void recordCustomClickGesture();

    void setAdEventCallback(SwipeableInterstitialAdEventCallback swipeableInterstitialAdEventCallback);

    void setVideoLifecycleCallbacks(VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks);
}
