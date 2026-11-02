package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ث, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0378 extends FullScreenContentCallback implements InterfaceC0513 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0370 f1835;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0943 f1836;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final FullScreenContentCallback f1837;

    public C0378(C0370 c0370, FullScreenContentCallback fullScreenContentCallback, C0943 c0943) {
        this.f1835 = c0370;
        this.f1837 = fullScreenContentCallback;
        this.f1836 = c0943;
    }

    public final void onAdClicked() {
        this.f1835.m2030(this, this.f1836, StringFog.decrypt("da/5SyawigVWtNZIG6edDkeZ9EsZsZkDWPT6STS3uwxauf5CEQ==\n", "M9qVJ3XT+GA=\n"), new Object[0]);
        FullScreenContentCallback fullScreenContentCallback = this.f1837;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdClicked();
        }
    }

    public final void onAdDismissedFullScreenContent() {
        this.f1835.m2030(this, this.f1836, StringFog.decrypt("WSDH5LOp+yV6O+jnjr7sLmsWyuSMqOgjdHvE5qGuzSlsOML7k6/tBmo5x9uDuOwlcRbE5pSv5zQ=\n", "H1WriODKiUA=\n"), new Object[0]);
        FullScreenContentCallback fullScreenContentCallback = this.f1837;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdDismissedFullScreenContent();
        }
    }

    public final void onAdFailedToShowFullScreenContent(AdError adError) {
        this.f1835.m2030(this, this.f1836, StringFog.decrypt("q/9JK1oXvwKI5GYoZwCoCZnJRCtlFqwEhqRKKUgQiwaE5kAjXRueD4L9YzJlGJ4En+9AKUoboxOI\n5FE=\n", "7YolRwl0zWc=\n"), adError);
        FullScreenContentCallback fullScreenContentCallback = this.f1837;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdFailedToShowFullScreenContent(adError);
        }
    }

    public final void onAdImpression() {
        this.f1835.m2030(this, this.f1836, StringFog.decrypt("uEdIMloelAKbXGcxZwmDCYpxRTJlH4cElRxLMEgZrwqOQEEtehSJCQ==\n", "/jIkXgl95mc=\n"), new Object[0]);
        FullScreenContentCallback fullScreenContentCallback = this.f1837;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdImpression();
        }
    }

    public final void onAdShowedFullScreenContent() {
        this.f1835.m2030(this, this.f1836, StringFog.decrypt("qy7BMAgu3DaINe4zNTnLPZkYzDA3L88whnXCMhop/TuCLMg4HTjCP7443zk+I+08gy/IMi8=\n", "7VutXFtNrlM=\n"), new Object[0]);
        FullScreenContentCallback fullScreenContentCallback = this.f1837;
        if (fullScreenContentCallback != null) {
            fullScreenContentCallback.onAdShowedFullScreenContent();
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0513
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1868() {
        return this.f1837;
    }
}
