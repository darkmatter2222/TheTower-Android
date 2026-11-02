package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.rewarded.OnAdMetadataChangedListener;
import com.google.android.libraries.ads.mobile.sdk.rewardedinterstitial.RewardedInterstitialAdEventCallback;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class o73 extends Lambda implements Function1 {
    public final /* synthetic */ un1 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o73(un1 un1Var) {
        super(1);
        this.a = un1Var;
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        p005kotlin.Unit unit;
        RewardedInterstitialAdEventCallback rewardedInterstitialAdEventCallback = (RewardedInterstitialAdEventCallback) obj;
        fm0 fm0VarJ = this.a.j();
        synchronized (fm0VarJ) {
            fm0VarJ.j = rewardedInterstitialAdEventCallback;
            fm0VarJ.a((AdEventCallback) rewardedInterstitialAdEventCallback);
            fm0VarJ.a((OnAdMetadataChangedListener) rewardedInterstitialAdEventCallback);
            unit = p005kotlin.Unit.INSTANCE;
        }
        return unit;
    }
}
