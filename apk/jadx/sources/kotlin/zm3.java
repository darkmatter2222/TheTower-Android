package kotlin;

import android.app.Activity;
import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.common.VideoController;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialAd;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialAdEventCallback;
import com.google.common.base.Splitter;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.optionals.OptionalsKt;
import p005kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
public final class zm3 extends eq implements SwipeableInterstitialAd {
    public static final String f;
    public final zn1 b;
    public final tn3 c;
    public static final /* synthetic */ KProperty[] e = {kk.a(zm3.class, "adEventCallback", "getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdEventCallback;", 0)};
    public static final xm3 d = new xm3();

    static {
        ir0 ir0Var = ir0.b;
        f = "Both SDK and publisher determined Custom Click Gesture are enabled on this request. Pick one to enable and make sure your ad unit is eligible.";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zm3(zn1 internalSwipeableInterstitialAd) {
        super(internalSwipeableInterstitialAd);
        Intrinsics.checkNotNullParameter(internalSwipeableInterstitialAd, "internalSwipeableInterstitialAd");
        this.b = internalSwipeableInterstitialAd;
        this.c = new tn3(new ym3(this), null);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialAd
    public final SwipeableInterstitialAdEventCallback getAdEventCallback() {
        return (SwipeableInterstitialAdEventCallback) this.c.getValue(this, e[0]);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialAd
    public final AdSize getAdSize() {
        return this.b.o;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialAd
    public final int getScreenHoldDuration() {
        qm3 qm3Var = this.b.b().v0;
        if (qm3Var != null) {
            return qm3Var.a;
        }
        return 0;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialAd
    public final VideoController.VideoLifecycleCallbacks getVideoLifecycleCallbacks() {
        q41 q41VarD;
        r31 r31Var = (r31) OptionalsKt.getOrNull(this.b.k());
        if (r31Var == null || (q41VarD = r31Var.d()) == null) {
            return null;
        }
        return q41VarD.getVideoLifecycleCallbacks();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialAd
    public final View getView(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        a01.a.getClass();
        ((f0) ((vf0) zz0.a()).E.get()).a(activity, r.CREATED);
        return this.b.n;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialAd
    public final boolean isCustomClickGestureEnabled() {
        return ((rv0) this.b.p).e.getCustomClickGestureEnabled();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialAd
    public final void recordCustomClickGesture() {
        if (!isCustomClickGestureEnabled()) {
            Splitter splitter = f01.a;
            f01.c("Custom click reporting failed. enableCustomClickGesture is not set through the SwipeableInterstitialAdRequest.", null);
            return;
        }
        rv0 rv0Var = (rv0) this.b.p;
        r31 r31Var = rv0Var.m;
        if (r31Var == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(rv0Var.a, null, null, new iv0(r31Var, rv0Var, null), 3, null);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialAd
    public final void setAdEventCallback(SwipeableInterstitialAdEventCallback swipeableInterstitialAdEventCallback) {
        this.c.setValue(this, e[0], swipeableInterstitialAdEventCallback);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialAd
    public final void setVideoLifecycleCallbacks(VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks) {
        r31 r31Var = (r31) OptionalsKt.getOrNull(this.b.k());
        q41 q41VarD = r31Var != null ? r31Var.d() : null;
        if (q41VarD == null) {
            return;
        }
        q41VarD.setVideoLifecycleCallbacks(videoLifecycleCallbacks);
    }
}
