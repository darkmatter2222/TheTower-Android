package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ٽ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0395 extends AppOpenAd.AppOpenAdLoadCallback implements InterfaceC0513 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0370 f1911;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0943 f1912;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AppOpenAd.AppOpenAdLoadCallback f1913;

    public C0395(C0370 c0370, AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback, C0943 c0943) {
        this.f1911 = c0370;
        this.f1913 = appOpenAdLoadCallback;
        this.f1912 = c0943;
    }

    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.f1911.m2030(this, this.f1912, StringFog.decrypt("OAyRQvp57+cdMI5s7l/gyhUegG7hMu7IOBinbONw5MItE61i63g=\n", "eXzhDYocgaY=\n"), loadAdError);
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.f1913;
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.onAdFailedToLoad(loadAdError);
        }
    }

    public final void onAdLoaded(Object obj) {
        AppOpenAd appOpenAd = (AppOpenAd) obj;
        this.f1911.m2030(this, this.f1912, StringFog.decrypt("gfEKCTgdxsykzRUnLDvJ4azjGyUjVsfjgeU2KSkczek=\n", "wIF6Rkh4qI0=\n"), appOpenAd);
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.f1913;
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.onAdLoaded(appOpenAd);
        }
    }

    public final void onAppOpenAdFailedToLoad(int i) {
        this.f1911.m2030(this, this.f1912, StringFog.decrypt("BvZ2LD1GG+ojymkCKWAUxyvkZwAmDRrFBvZ2LD1GG+ojwGcKIUYR/yjKaQIp\n", "R4YGY00jdas=\n"), Integer.valueOf(i));
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.f1913;
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.onAppOpenAdFailedToLoad(i);
        }
    }

    public final void onAppOpenAdFailedToLoad(LoadAdError loadAdError) {
        this.f1911.m2030(this, this.f1912, StringFog.decrypt("UY9+yRhF20B0s2HnDGPUbXydb+UDDtpvUY9+yRhF20B0uW/vBEXRVX+zYecMd9x1eLp89AdS\n", "EP8OhmggtQE=\n"), loadAdError);
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.f1913;
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.onAppOpenAdFailedToLoad(loadAdError);
        }
    }

    public final void onAppOpenAdLoaded(AppOpenAd appOpenAd) {
        this.f1911.m2030(this, this.f1912, StringFog.decrypt("HmYTB/6fbmk7Wgwp6rlhRDN0Aivl1G9GHmYTB/6fbmk7Wgwp6p9k\n", "XxZjSI76ACg=\n"), appOpenAd);
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.f1913;
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.onAppOpenAdLoaded(appOpenAd);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0513
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1868() {
        return this.f1913;
    }
}
