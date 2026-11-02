package com.google.unity.ads;

import android.app.Activity;
import android.util.Log;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.appopen.AppOpenAd;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes4.dex */
public class UnityAppOpenAd {
    private final Activity activity;
    private AppOpenAd appOpenAd;
    private final UnityAppOpenAdCallback callback;
    private final OnPaidEventListener onPaidEventListener = new AnonymousClass1();
    private final FullScreenContentCallback fullScreenContentCallback = new AnonymousClass2();

    /* JADX INFO: renamed from: com.google.unity.ads.UnityAppOpenAd$1, reason: invalid class name */
    class AnonymousClass1 implements OnPaidEventListener {
        AnonymousClass1() {
        }

        /* JADX INFO: renamed from: lambda$onPaidEvent$0$com-google-unity-ads-UnityAppOpenAd$1, reason: not valid java name */
        /* synthetic */ void m1635lambda$onPaidEvent$0$comgoogleunityadsUnityAppOpenAd$1(AdValue adValue) {
            if (UnityAppOpenAd.this.callback != null) {
                UnityAppOpenAd.this.callback.onPaidEvent(adValue.getPrecisionType(), adValue.getValueMicros(), adValue.getCurrencyCode());
            }
        }

        public void onPaidEvent(final AdValue adValue) {
            UnityAppOpenAd.this.runOnNewThread(new Runnable() { // from class: com.google.unity.ads.UnityAppOpenAd$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1635lambda$onPaidEvent$0$comgoogleunityadsUnityAppOpenAd$1(adValue);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.google.unity.ads.UnityAppOpenAd$2, reason: invalid class name */
    class AnonymousClass2 extends FullScreenContentCallback {
        AnonymousClass2() {
        }

        /* JADX INFO: renamed from: lambda$onAdClicked$0$com-google-unity-ads-UnityAppOpenAd$2, reason: not valid java name */
        /* synthetic */ void m1636lambda$onAdClicked$0$comgoogleunityadsUnityAppOpenAd$2() {
            if (UnityAppOpenAd.this.callback != null) {
                UnityAppOpenAd.this.callback.onAdClicked();
            }
        }

        /* JADX INFO: renamed from: lambda$onAdDismissedFullScreenContent$0$com-google-unity-ads-UnityAppOpenAd$2, reason: not valid java name */
        /* synthetic */ void m1637x202ce680() {
            if (UnityAppOpenAd.this.callback != null) {
                UnityAppOpenAd.this.callback.onAdDismissedFullScreenContent();
            }
        }

        /* JADX INFO: renamed from: lambda$onAdFailedToShowFullScreenContent$0$com-google-unity-ads-UnityAppOpenAd$2, reason: not valid java name */
        /* synthetic */ void m1638xd8053296(AdError adError) {
            if (UnityAppOpenAd.this.callback != null) {
                UnityAppOpenAd.this.callback.onAdFailedToShowFullScreenContent(adError);
            }
        }

        /* JADX INFO: renamed from: lambda$onAdImpression$0$com-google-unity-ads-UnityAppOpenAd$2, reason: not valid java name */
        /* synthetic */ void m1639lambda$onAdImpression$0$comgoogleunityadsUnityAppOpenAd$2() {
            if (UnityAppOpenAd.this.callback != null) {
                UnityAppOpenAd.this.callback.onAdImpression();
            }
        }

        /* JADX INFO: renamed from: lambda$onAdShowedFullScreenContent$0$com-google-unity-ads-UnityAppOpenAd$2, reason: not valid java name */
        /* synthetic */ void m1640x52267f8f() {
            if (UnityAppOpenAd.this.callback != null) {
                UnityAppOpenAd.this.callback.onAdShowedFullScreenContent();
            }
        }

        public void onAdClicked() {
            UnityAppOpenAd.this.runOnNewThread(new Runnable() { // from class: com.google.unity.ads.UnityAppOpenAd$2$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1636lambda$onAdClicked$0$comgoogleunityadsUnityAppOpenAd$2();
                }
            });
        }

        public void onAdDismissedFullScreenContent() {
            UnityAppOpenAd.this.runOnNewThread(new Runnable() { // from class: com.google.unity.ads.UnityAppOpenAd$2$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1637x202ce680();
                }
            });
        }

        public void onAdFailedToShowFullScreenContent(final AdError adError) {
            UnityAppOpenAd.this.runOnNewThread(new Runnable() { // from class: com.google.unity.ads.UnityAppOpenAd$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1638xd8053296(adError);
                }
            });
        }

        public void onAdImpression() {
            UnityAppOpenAd.this.runOnNewThread(new Runnable() { // from class: com.google.unity.ads.UnityAppOpenAd$2$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1639lambda$onAdImpression$0$comgoogleunityadsUnityAppOpenAd$2();
                }
            });
        }

        public void onAdShowedFullScreenContent() {
            UnityAppOpenAd.this.runOnNewThread(new Runnable() { // from class: com.google.unity.ads.UnityAppOpenAd$2$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1640x52267f8f();
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.google.unity.ads.UnityAppOpenAd$3, reason: invalid class name */
    class AnonymousClass3 extends AppOpenAd.AppOpenAdLoadCallback {
        AnonymousClass3() {
        }

        /* JADX INFO: renamed from: lambda$onAdFailedToLoad$0$com-google-unity-ads-UnityAppOpenAd$3, reason: not valid java name */
        /* synthetic */ void m1641lambda$onAdFailedToLoad$0$comgoogleunityadsUnityAppOpenAd$3(LoadAdError loadAdError) {
            if (UnityAppOpenAd.this.callback != null) {
                UnityAppOpenAd.this.callback.onAppOpenAdFailedToLoad(loadAdError);
            }
        }

        /* JADX INFO: renamed from: lambda$onAdLoaded$0$com-google-unity-ads-UnityAppOpenAd$3, reason: not valid java name */
        /* synthetic */ void m1642lambda$onAdLoaded$0$comgoogleunityadsUnityAppOpenAd$3() {
            if (UnityAppOpenAd.this.callback != null) {
                UnityAppOpenAd.this.callback.onAppOpenAdLoaded();
            }
        }

        public void onAdFailedToLoad(final LoadAdError loadAdError) {
            UnityAppOpenAd.this.runOnNewThread(new Runnable() { // from class: com.google.unity.ads.UnityAppOpenAd$3$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1641lambda$onAdFailedToLoad$0$comgoogleunityadsUnityAppOpenAd$3(loadAdError);
                }
            });
        }

        public void onAdLoaded(AppOpenAd appOpenAd) {
            UnityAppOpenAd.this.appOpenAd = appOpenAd;
            UnityAppOpenAd.this.appOpenAd.setOnPaidEventListener(UnityAppOpenAd.this.onPaidEventListener);
            UnityAppOpenAd.this.appOpenAd.setFullScreenContentCallback(UnityAppOpenAd.this.fullScreenContentCallback);
            UnityAppOpenAd.this.runOnNewThread(new Runnable() { // from class: com.google.unity.ads.UnityAppOpenAd$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1642lambda$onAdLoaded$0$comgoogleunityadsUnityAppOpenAd$3();
                }
            });
        }
    }

    public UnityAppOpenAd(Activity activity, UnityAppOpenAdCallback unityAppOpenAdCallback) {
        this.activity = activity;
        this.callback = unityAppOpenAdCallback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runOnNewThread(Runnable runnable) {
        new Thread(runnable).start();
    }

    public void destroy() {
    }

    public String getAdUnitId() {
        AppOpenAd appOpenAd = this.appOpenAd;
        if (appOpenAd == null) {
            return null;
        }
        return appOpenAd.getAdUnitId();
    }

    public ResponseInfo getResponseInfo() {
        if (this.appOpenAd == null) {
            return null;
        }
        FutureTask futureTask = new FutureTask(new Callable<ResponseInfo>() { // from class: com.google.unity.ads.UnityAppOpenAd.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public ResponseInfo call() {
                return UnityAppOpenAd.this.appOpenAd.getResponseInfo();
            }
        });
        this.activity.runOnUiThread(futureTask);
        try {
            return (ResponseInfo) futureTask.get();
        } catch (InterruptedException | ExecutionException e) {
            Log.e(PluginUtils.LOGTAG, String.format("Unable to check unity app open ad response info: %s", e.getLocalizedMessage()));
            return null;
        }
    }

    public boolean isAdAvailable(String str) {
        return AppOpenAd.isAdAvailable(this.activity, str);
    }

    /* JADX INFO: renamed from: lambda$loadAd$0$com-google-unity-ads-UnityAppOpenAd, reason: not valid java name */
    /* synthetic */ void m1631lambda$loadAd$0$comgoogleunityadsUnityAppOpenAd(String str, AdRequest adRequest) {
        AppOpenAd.load(this.activity, str, adRequest, new AnonymousClass3());
    }

    /* JADX INFO: renamed from: lambda$pollAd$0$com-google-unity-ads-UnityAppOpenAd, reason: not valid java name */
    /* synthetic */ void m1632lambda$pollAd$0$comgoogleunityadsUnityAppOpenAd(LoadAdError loadAdError) {
        UnityAppOpenAdCallback unityAppOpenAdCallback = this.callback;
        if (unityAppOpenAdCallback != null) {
            unityAppOpenAdCallback.onAppOpenAdFailedToLoad(loadAdError);
        }
    }

    /* JADX INFO: renamed from: lambda$pollAd$1$com-google-unity-ads-UnityAppOpenAd, reason: not valid java name */
    /* synthetic */ void m1633lambda$pollAd$1$comgoogleunityadsUnityAppOpenAd() {
        this.appOpenAd.setOnPaidEventListener(this.onPaidEventListener);
    }

    /* JADX INFO: renamed from: lambda$show$0$com-google-unity-ads-UnityAppOpenAd, reason: not valid java name */
    /* synthetic */ void m1634lambda$show$0$comgoogleunityadsUnityAppOpenAd() {
        this.appOpenAd.show(this.activity);
    }

    public void loadAd(final String str, final AdRequest adRequest) {
        this.activity.runOnUiThread(new Runnable() { // from class: com.google.unity.ads.UnityAppOpenAd$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1631lambda$loadAd$0$comgoogleunityadsUnityAppOpenAd(str, adRequest);
            }
        });
    }

    public void pollAd(String str) {
        AppOpenAd appOpenAdPollAd = AppOpenAd.pollAd(this.activity, str);
        this.appOpenAd = appOpenAdPollAd;
        if (appOpenAdPollAd != null) {
            this.activity.runOnUiThread(new Runnable() { // from class: com.google.unity.ads.UnityAppOpenAd$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1633lambda$pollAd$1$comgoogleunityadsUnityAppOpenAd();
                }
            });
            this.appOpenAd.setFullScreenContentCallback(this.fullScreenContentCallback);
        } else {
            Log.e(PluginUtils.LOGTAG, "Failed to obtain an App Open Ad from the preloader.");
            final LoadAdError loadAdError = new LoadAdError(0, "Failed to obtain an App Open Ad from the preloader.", "com.google.android.gms.ads", (AdError) null, (ResponseInfo) null);
            new Thread(new Runnable() { // from class: com.google.unity.ads.UnityAppOpenAd$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1632lambda$pollAd$0$comgoogleunityadsUnityAppOpenAd(loadAdError);
                }
            }).start();
        }
    }

    public void show() {
        if (this.appOpenAd == null) {
            Log.e(PluginUtils.LOGTAG, "Tried to show app open ad before it was ready. This should in theory never happen. If it does, please contact the plugin owners.");
        } else {
            this.activity.runOnUiThread(new Runnable() { // from class: com.google.unity.ads.UnityAppOpenAd$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1634lambda$show$0$comgoogleunityadsUnityAppOpenAd();
                }
            });
        }
    }
}
