package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.پ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0396 extends AdListener implements InterfaceC0513 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0370 f1914;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0943 f1915;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AdListener f1916;

    public C0396(C0370 c0370, AdListener adListener, C0943 c0943) {
        this.f1914 = c0370;
        this.f1916 = adListener;
        this.f1915 = c0943;
    }

    public final void onAdClosed() {
        this.f1914.m2030(this, this.f1915, StringFog.decrypt("z7aGcZ43B9ProOR3gwIG/uK9uX2J\n", "jtLKGO1DYr0=\n"), new Object[0]);
        AdListener adListener = this.f1916;
        if (adListener != null) {
            adListener.onAdClosed();
        }
    }

    public final void onAdFailedToLoad(int i) {
        this.f1914.m2030(this, this.f1915, StringFog.decrypt("MKGTqnbKdyMUt/Gsa/92CxCss6Zh6n0BHqS7\n", "ccXfwwW+Ek0=\n"), Integer.valueOf(i));
        AdListener adListener = this.f1916;
        if (adListener != null) {
            adListener.onAdFailedToLoad(i);
        }
    }

    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.f1914.m2030(this, this.f1915, StringFog.decrypt("hFmdlg1QRaygT/+QEGVEhKRUvZoacE+Oqly1qBdQSIOheKONEVY=\n", "xT3R/34kIMI=\n"), loadAdError);
        AdListener adListener = this.f1916;
        if (adListener != null) {
            adListener.onAdFailedToLoad(loadAdError);
        }
    }

    public final void onAdImpression() {
        this.f1914.m2030(this, this.f1915, StringFog.decrypt("NpsdRoEsC+QSjX9AnBkKwxqPI0qBKwflGQ==\n", "d/9RL/JYboo=\n"), new Object[0]);
        AdListener adListener = this.f1916;
        if (adListener != null) {
            adListener.onAdImpression();
        }
    }

    public final void onAdLeftApplication() {
        this.f1914.m2030(this, this.f1915, StringFog.decrypt("S4LEnwSc2UJvlKaZGanYYG+A/LcHmNBFaYf8nxiG\n", "CuaI9nfovCw=\n"), new Object[0]);
        AdListener adListener = this.f1916;
        if (adListener != null) {
            adListener.onAdLeftApplication();
        }
    }

    public final void onAdLoaded() {
        this.f1914.m2030(this, this.f1915, StringFog.decrypt("Yx8taOCfQH9HCU9u/apBXU0aBWT3\n", "InthAZPrJRE=\n"), new Object[0]);
        AdListener adListener = this.f1916;
        if (adListener != null) {
            adListener.onAdLoaded();
        }
    }

    public final void onAdOpened() {
        this.f1914.m2030(this, this.f1915, StringFog.decrypt("OkFxIEapKiEeVxMmW5wrAAtAUyxR\n", "eyU9STXdT08=\n"), new Object[0]);
        AdListener adListener = this.f1916;
        if (adListener != null) {
            adListener.onAdOpened();
        }
    }

    public final void onAdSwipeGestureClicked() {
        this.f1914.m2030(this, this.f1915, StringFog.decrypt("0fSkF0mzefH14sYRVIZ4zOf5mBt9om/r5eKNPVauf/T19A==\n", "kJDofjrHHJ8=\n"), new Object[0]);
        AdListener adListener = this.f1916;
        if (adListener != null) {
            adListener.onAdSwipeGestureClicked();
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0513
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1868() {
        return this.f1916;
    }
}
