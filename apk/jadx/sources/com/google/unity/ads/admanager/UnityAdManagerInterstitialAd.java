package com.google.unity.ads.admanager;

import android.app.Activity;
import android.util.Log;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAd;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAdLoadCallback;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.unity.ads.PluginUtils;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes4.dex */
public class UnityAdManagerInterstitialAd {
    private final Activity activity;
    private AdManagerInterstitialAd adManagerInterstitialAd;
    private final UnityAdManagerInterstitialAdCallback callback;
    private final ExecutorService service = Executors.newSingleThreadExecutor();
    private final FullScreenContentCallback fullScreenContentCallback = new AnonymousClass1();
    private final OnPaidEventListener onPaidEventListener = new AnonymousClass2();
    private final AppEventListener appEventListener = new AnonymousClass3();

    /* JADX INFO: renamed from: com.google.unity.ads.admanager.UnityAdManagerInterstitialAd$1, reason: invalid class name */
    class AnonymousClass1 extends FullScreenContentCallback {
        AnonymousClass1() {
        }

        /* JADX INFO: renamed from: lambda$onAdClicked$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd$1, reason: not valid java name */
        /* synthetic */ void m1689x65fd5421() {
            if (UnityAdManagerInterstitialAd.this.callback != null) {
                UnityAdManagerInterstitialAd.this.callback.onAdClicked();
            }
        }

        /* JADX INFO: renamed from: lambda$onAdDismissedFullScreenContent$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd$1, reason: not valid java name */
        /* synthetic */ void m1690xe2993d0d() {
            if (UnityAdManagerInterstitialAd.this.callback != null) {
                UnityAdManagerInterstitialAd.this.callback.onAdDismissedFullScreenContent();
            }
        }

        /* JADX INFO: renamed from: lambda$onAdFailedToShowFullScreenContent$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd$1, reason: not valid java name */
        /* synthetic */ void m1691x45742723(AdError adError) {
            if (UnityAdManagerInterstitialAd.this.callback != null) {
                UnityAdManagerInterstitialAd.this.callback.onAdFailedToShowFullScreenContent(adError);
            }
        }

        /* JADX INFO: renamed from: lambda$onAdImpression$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd$1, reason: not valid java name */
        /* synthetic */ void m1692xf41562a1() {
            if (UnityAdManagerInterstitialAd.this.callback != null) {
                UnityAdManagerInterstitialAd.this.callback.onAdImpression();
            }
        }

        /* JADX INFO: renamed from: lambda$onAdShowedFullScreenContent$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd$1, reason: not valid java name */
        /* synthetic */ void m1693x966c591c() {
            if (UnityAdManagerInterstitialAd.this.callback != null) {
                UnityAdManagerInterstitialAd.this.callback.onAdShowedFullScreenContent();
            }
        }

        public void onAdClicked() {
            UnityAdManagerInterstitialAd.this.service.execute(new Runnable() { // from class: com.google.unity.ads.admanager.UnityAdManagerInterstitialAd$1$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1689x65fd5421();
                }
            });
        }

        public void onAdDismissedFullScreenContent() {
            UnityAdManagerInterstitialAd.this.service.execute(new Runnable() { // from class: com.google.unity.ads.admanager.UnityAdManagerInterstitialAd$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1690xe2993d0d();
                }
            });
        }

        public void onAdFailedToShowFullScreenContent(final AdError adError) {
            UnityAdManagerInterstitialAd.this.service.execute(new Runnable() { // from class: com.google.unity.ads.admanager.UnityAdManagerInterstitialAd$1$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1691x45742723(adError);
                }
            });
        }

        public void onAdImpression() {
            UnityAdManagerInterstitialAd.this.service.execute(new Runnable() { // from class: com.google.unity.ads.admanager.UnityAdManagerInterstitialAd$1$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1692xf41562a1();
                }
            });
        }

        public void onAdShowedFullScreenContent() {
            UnityAdManagerInterstitialAd.this.service.execute(new Runnable() { // from class: com.google.unity.ads.admanager.UnityAdManagerInterstitialAd$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1693x966c591c();
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.google.unity.ads.admanager.UnityAdManagerInterstitialAd$2, reason: invalid class name */
    class AnonymousClass2 implements OnPaidEventListener {
        AnonymousClass2() {
        }

        /* JADX INFO: renamed from: lambda$onPaidEvent$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd$2, reason: not valid java name */
        /* synthetic */ void m1694x981544cc(AdValue adValue) {
            if (UnityAdManagerInterstitialAd.this.callback != null) {
                UnityAdManagerInterstitialAd.this.callback.onPaidEvent(adValue.getPrecisionType(), adValue.getValueMicros(), adValue.getCurrencyCode());
            }
        }

        public void onPaidEvent(final AdValue adValue) {
            UnityAdManagerInterstitialAd.this.service.execute(new Runnable() { // from class: com.google.unity.ads.admanager.UnityAdManagerInterstitialAd$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1694x981544cc(adValue);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.google.unity.ads.admanager.UnityAdManagerInterstitialAd$3, reason: invalid class name */
    class AnonymousClass3 implements AppEventListener {
        AnonymousClass3() {
        }

        /* JADX INFO: renamed from: lambda$onAppEvent$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd$3, reason: not valid java name */
        /* synthetic */ void m1695xe2ea2310(String str, String str2) {
            if (UnityAdManagerInterstitialAd.this.callback != null) {
                UnityAdManagerInterstitialAd.this.callback.onAppEvent(str, str2);
            }
        }

        public void onAppEvent(final String str, final String str2) {
            UnityAdManagerInterstitialAd.this.service.execute(new Runnable() { // from class: com.google.unity.ads.admanager.UnityAdManagerInterstitialAd$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1695xe2ea2310(str, str2);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.google.unity.ads.admanager.UnityAdManagerInterstitialAd$4, reason: invalid class name */
    class AnonymousClass4 extends AdManagerInterstitialAdLoadCallback {
        AnonymousClass4() {
        }

        /* JADX INFO: renamed from: lambda$onAdFailedToLoad$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd$4, reason: not valid java name */
        /* synthetic */ void m1696x93f23579(LoadAdError loadAdError) {
            if (UnityAdManagerInterstitialAd.this.callback != null) {
                UnityAdManagerInterstitialAd.this.callback.onInterstitialAdFailedToLoad(loadAdError);
            }
        }

        /* JADX INFO: renamed from: lambda$onAdLoaded$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd$4, reason: not valid java name */
        /* synthetic */ void m1697x8c473820() {
            if (UnityAdManagerInterstitialAd.this.callback != null) {
                UnityAdManagerInterstitialAd.this.callback.onInterstitialAdLoaded();
            }
        }

        public void onAdFailedToLoad(final LoadAdError loadAdError) {
            UnityAdManagerInterstitialAd.this.service.execute(new Runnable() { // from class: com.google.unity.ads.admanager.UnityAdManagerInterstitialAd$4$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1696x93f23579(loadAdError);
                }
            });
        }

        public void onAdLoaded(AdManagerInterstitialAd adManagerInterstitialAd) {
            UnityAdManagerInterstitialAd.this.adManagerInterstitialAd = adManagerInterstitialAd;
            UnityAdManagerInterstitialAd.this.adManagerInterstitialAd.setOnPaidEventListener(UnityAdManagerInterstitialAd.this.onPaidEventListener);
            UnityAdManagerInterstitialAd.this.adManagerInterstitialAd.setAppEventListener(UnityAdManagerInterstitialAd.this.appEventListener);
            UnityAdManagerInterstitialAd.this.adManagerInterstitialAd.setFullScreenContentCallback(UnityAdManagerInterstitialAd.this.fullScreenContentCallback);
            UnityAdManagerInterstitialAd.this.service.execute(new Runnable() { // from class: com.google.unity.ads.admanager.UnityAdManagerInterstitialAd$4$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1697x8c473820();
                }
            });
        }
    }

    public UnityAdManagerInterstitialAd(Activity activity, UnityAdManagerInterstitialAdCallback unityAdManagerInterstitialAdCallback) {
        this.activity = activity;
        this.callback = unityAdManagerInterstitialAdCallback;
    }

    public void destroy() {
    }

    public String getAdUnitId() {
        AdManagerInterstitialAd adManagerInterstitialAd = this.adManagerInterstitialAd;
        if (adManagerInterstitialAd == null) {
            return null;
        }
        return adManagerInterstitialAd.getAdUnitId();
    }

    public ResponseInfo getResponseInfo() {
        FutureTask futureTask = new FutureTask(new Callable() { // from class: com.google.unity.ads.admanager.UnityAdManagerInterstitialAd$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.m1685x5c69eb4();
            }
        });
        this.activity.runOnUiThread(futureTask);
        try {
            return (ResponseInfo) futureTask.get();
        } catch (InterruptedException | ExecutionException e) {
            Log.e(PluginUtils.LOGTAG, String.format("Unable to check Ad Manager interstitial response info: %s", e.getLocalizedMessage()));
            return null;
        }
    }

    public boolean isAdAvailable(String str) {
        return AdManagerInterstitialAd.isAdAvailable(this.activity, str);
    }

    /* JADX INFO: renamed from: lambda$getResponseInfo$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd, reason: not valid java name */
    /* synthetic */ ResponseInfo m1685x5c69eb4() throws Exception {
        return this.adManagerInterstitialAd.getResponseInfo();
    }

    /* JADX INFO: renamed from: lambda$loadAd$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd, reason: not valid java name */
    /* synthetic */ void m1686x872d7532(String str, AdManagerAdRequest adManagerAdRequest) {
        AdManagerInterstitialAd.load(this.activity, str, adManagerAdRequest, new AnonymousClass4());
    }

    /* JADX INFO: renamed from: lambda$pollAd$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd, reason: not valid java name */
    /* synthetic */ void m1687xf6ec000b() {
        this.adManagerInterstitialAd.setOnPaidEventListener(this.onPaidEventListener);
        this.adManagerInterstitialAd.setAppEventListener(this.appEventListener);
    }

    /* JADX INFO: renamed from: lambda$show$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd, reason: not valid java name */
    /* synthetic */ void m1688x525dd4c6() {
        this.adManagerInterstitialAd.show(this.activity);
    }

    public void loadAd(final String str, final AdManagerAdRequest adManagerAdRequest) {
        this.activity.runOnUiThread(new Runnable() { // from class: com.google.unity.ads.admanager.UnityAdManagerInterstitialAd$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1686x872d7532(str, adManagerAdRequest);
            }
        });
    }

    public void pollAd(String str) {
        AdManagerInterstitialAd adManagerInterstitialAdPollAd = AdManagerInterstitialAd.pollAd(this.activity, str);
        this.adManagerInterstitialAd = adManagerInterstitialAdPollAd;
        if (adManagerInterstitialAdPollAd == null) {
            Log.e(PluginUtils.LOGTAG, "Failed to obtain an Ad Manager Interstitial Ad from the preloader.");
        } else {
            this.activity.runOnUiThread(new Runnable() { // from class: com.google.unity.ads.admanager.UnityAdManagerInterstitialAd$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1687xf6ec000b();
                }
            });
            this.adManagerInterstitialAd.setFullScreenContentCallback(this.fullScreenContentCallback);
        }
    }

    public void show() {
        if (this.adManagerInterstitialAd == null) {
            Log.e(PluginUtils.LOGTAG, "Tried to show Ad Manager interstitial ad before it was ready. This should in theory never happen. If it does, please contact the plugin owners.");
        } else {
            this.activity.runOnUiThread(new Runnable() { // from class: com.google.unity.ads.admanager.UnityAdManagerInterstitialAd$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1688x525dd4c6();
                }
            });
        }
    }
}
