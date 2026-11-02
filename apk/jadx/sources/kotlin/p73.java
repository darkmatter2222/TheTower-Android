package kotlin;

import com.google.android.libraries.ads.mobile.sdk.rewardedinterstitial.RewardedInterstitialAd;
import com.google.android.libraries.ads.mobile.sdk.rewardedinterstitial.RewardedInterstitialAdEventCallback;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes.dex */
public final class p73 extends gs implements RewardedInterstitialAd {
    public final tn3 c;
    public static final /* synthetic */ KProperty[] e = {kk.a(p73.class, "adEventCallback", "getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/rewardedinterstitial/RewardedInterstitialAdEventCallback;", 0)};
    public static final n73 d = new n73();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p73(un1 internalRewardedAd) {
        super(internalRewardedAd);
        Intrinsics.checkNotNullParameter(internalRewardedAd, "internalRewardedAd");
        this.c = new tn3(new o73(internalRewardedAd), null);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.rewardedinterstitial.RewardedInterstitialAd
    public final RewardedInterstitialAdEventCallback getAdEventCallback() {
        return (RewardedInterstitialAdEventCallback) this.c.getValue(this, e[0]);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.rewardedinterstitial.RewardedInterstitialAd
    public final void setAdEventCallback(RewardedInterstitialAdEventCallback rewardedInterstitialAdEventCallback) {
        this.c.setValue(this, e[0], rewardedInterstitialAdEventCallback);
    }
}
