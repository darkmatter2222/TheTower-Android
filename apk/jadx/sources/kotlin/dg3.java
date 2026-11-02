package kotlin;

import com.google.android.libraries.ads.mobile.sdk.appopen.AppOpenSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardedSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.rewardedinterstitial.RewardedInterstitialSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialSignalRequest;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class dg3 implements jr0 {
    public final dw2 a;

    public dg3(vh1 vh1Var) {
        this.a = vh1Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        SignalRequest signalRequest = (SignalRequest) this.a.get();
        Intrinsics.checkNotNullParameter(signalRequest, "signalRequest");
        if (signalRequest instanceof AppOpenSignalRequest) {
            return j53.e;
        }
        if (signalRequest instanceof BannerSignalRequest) {
            return j53.f;
        }
        if (signalRequest instanceof IconSignalRequest) {
            return j53.g;
        }
        if (signalRequest instanceof InterstitialSignalRequest) {
            return j53.h;
        }
        if (signalRequest instanceof NativeSignalRequest) {
            return j53.i;
        }
        if (signalRequest instanceof RewardedSignalRequest) {
            return j53.j;
        }
        if (signalRequest instanceof RewardedInterstitialSignalRequest) {
            return j53.k;
        }
        return signalRequest instanceof SwipeableInterstitialSignalRequest ? j53.l : j53.d;
    }
}
