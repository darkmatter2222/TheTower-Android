package kotlin;

import android.app.Activity;
import com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialAd;
import com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialAdEventCallback;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
public final class mo1 extends eq implements InterstitialAd {
    public final pk1 b;
    public final tn3 c;
    public static final /* synthetic */ KProperty[] e = {kk.a(mo1.class, "adEventCallback", "getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/interstitial/InterstitialAdEventCallback;", 0)};
    public static final ko1 d = new ko1();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mo1(pk1 internalInterstitialAd) {
        super(internalInterstitialAd);
        Intrinsics.checkNotNullParameter(internalInterstitialAd, "internalInterstitialAd");
        this.b = internalInterstitialAd;
        this.c = new tn3(new lo1(this), null);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialAd
    public final InterstitialAdEventCallback getAdEventCallback() {
        return (InterstitialAdEventCallback) this.c.getValue(this, e[0]);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialAd
    public final void setAdEventCallback(InterstitialAdEventCallback interstitialAdEventCallback) {
        this.c.setValue(this, e[0], interstitialAdEventCallback);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialAd
    public final void setImmersiveMode(boolean z) {
        pk1 pk1Var = this.b;
        pk1Var.o = z;
        pk1Var.p = true;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialAd
    public final void show(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.b.a(activity);
    }
}
