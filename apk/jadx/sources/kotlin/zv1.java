package kotlin;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class zv1 implements MediationInterstitialAdCallback {
    public final /* synthetic */ hm0 a;

    public zv1(hm0 hm0Var) {
        this.a = hm0Var;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdClosed() throws InterruptedException {
        this.a.b();
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdCallback
    public final void onAdFailedToShow(AdError adError) {
        Intrinsics.checkNotNullParameter(adError, "adError");
        this.a.a(adError);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdCallback
    public final void onAdFailedToShow(String errorDescription) {
        Intrinsics.checkNotNullParameter(errorDescription, "errorDescription");
        AdError adError = new AdError(0, errorDescription, "undefined");
        Intrinsics.checkNotNullParameter(adError, "adError");
        this.a.a(adError);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdCallback
    public final void onAdLeftApplication() {
        this.a.a();
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void onAdOpened() throws InterruptedException {
        this.a.c();
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void reportAdClicked() {
        this.a.d();
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    public final void reportAdImpression() {
        this.a.e();
    }
}
