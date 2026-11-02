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
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes4.dex */
public class Interstitial {
    private final Activity activity;
    private final UnityInterstitialAdCallback callback;
    private InterstitialAd interstitialAd;
    private final FullScreenContentCallback fullScreenContentCallback = new AnonymousClass1();
    private final OnPaidEventListener onPaidEventListener = new AnonymousClass2();

    /* JADX INFO: renamed from: com.google.unity.ads.Interstitial$1, reason: invalid class name */
    class AnonymousClass1 extends FullScreenContentCallback {
        AnonymousClass1() {
        }

        /* JADX INFO: renamed from: lambda$onAdClicked$0$com-google-unity-ads-Interstitial$1, reason: not valid java name */
        /* synthetic */ void m1617lambda$onAdClicked$0$comgoogleunityadsInterstitial$1() {
            if (Interstitial.this.callback != null) {
                Interstitial.this.callback.onAdClicked();
            }
        }

        /* JADX INFO: renamed from: lambda$onAdDismissedFullScreenContent$0$com-google-unity-ads-Interstitial$1, reason: not valid java name */
        /* synthetic */ void m1618x35aa5d92() {
            if (Interstitial.this.callback != null) {
                Interstitial.this.callback.onAdDismissedFullScreenContent();
            }
        }

        /* JADX INFO: renamed from: lambda$onAdFailedToShowFullScreenContent$0$com-google-unity-ads-Interstitial$1, reason: not valid java name */
        /* synthetic */ void m1619xee32b728(AdError adError) {
            if (Interstitial.this.callback != null) {
                Interstitial.this.callback.onAdFailedToShowFullScreenContent(adError);
            }
        }

        /* JADX INFO: renamed from: lambda$onAdImpression$0$com-google-unity-ads-Interstitial$1, reason: not valid java name */
        /* synthetic */ void m1620lambda$onAdImpression$0$comgoogleunityadsInterstitial$1() {
            if (Interstitial.this.callback != null) {
                Interstitial.this.callback.onAdImpression();
            }
        }

        /* JADX INFO: renamed from: lambda$onAdShowedFullScreenContent$0$com-google-unity-ads-Interstitial$1, reason: not valid java name */
        /* synthetic */ void m1621x9404ee61() {
            if (Interstitial.this.callback != null) {
                Interstitial.this.callback.onAdShowedFullScreenContent();
            }
        }

        public void onAdClicked() {
            new Thread(new Runnable() { // from class: com.google.unity.ads.Interstitial$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1617lambda$onAdClicked$0$comgoogleunityadsInterstitial$1();
                }
            }).start();
        }

        public void onAdDismissedFullScreenContent() {
            new Thread(new Runnable() { // from class: com.google.unity.ads.Interstitial$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1618x35aa5d92();
                }
            }).start();
        }

        public void onAdFailedToShowFullScreenContent(final AdError adError) {
            new Thread(new Runnable() { // from class: com.google.unity.ads.Interstitial$1$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1619xee32b728(adError);
                }
            }).start();
        }

        public void onAdImpression() {
            new Thread(new Runnable() { // from class: com.google.unity.ads.Interstitial$1$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1620lambda$onAdImpression$0$comgoogleunityadsInterstitial$1();
                }
            }).start();
        }

        public void onAdShowedFullScreenContent() {
            new Thread(new Runnable() { // from class: com.google.unity.ads.Interstitial$1$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1621x9404ee61();
                }
            }).start();
        }
    }

    /* JADX INFO: renamed from: com.google.unity.ads.Interstitial$2, reason: invalid class name */
    class AnonymousClass2 implements OnPaidEventListener {
        AnonymousClass2() {
        }

        /* JADX INFO: renamed from: lambda$onPaidEvent$0$com-google-unity-ads-Interstitial$2, reason: not valid java name */
        /* synthetic */ void m1622lambda$onPaidEvent$0$comgoogleunityadsInterstitial$2(AdValue adValue) {
            if (Interstitial.this.callback != null) {
                Interstitial.this.callback.onPaidEvent(adValue.getPrecisionType(), adValue.getValueMicros(), adValue.getCurrencyCode());
            }
        }

        public void onPaidEvent(final AdValue adValue) {
            new Thread(new Runnable() { // from class: com.google.unity.ads.Interstitial$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1622lambda$onPaidEvent$0$comgoogleunityadsInterstitial$2(adValue);
                }
            }).start();
        }
    }

    /* JADX INFO: renamed from: com.google.unity.ads.Interstitial$3, reason: invalid class name */
    class AnonymousClass3 extends InterstitialAdLoadCallback {
        AnonymousClass3() {
        }

        /* JADX INFO: renamed from: lambda$onAdFailedToLoad$0$com-google-unity-ads-Interstitial$3, reason: not valid java name */
        /* synthetic */ void m1623lambda$onAdFailedToLoad$0$comgoogleunityadsInterstitial$3(LoadAdError loadAdError) {
            if (Interstitial.this.callback != null) {
                Interstitial.this.callback.onInterstitialAdFailedToLoad(loadAdError);
            }
        }

        /* JADX INFO: renamed from: lambda$onAdLoaded$0$com-google-unity-ads-Interstitial$3, reason: not valid java name */
        /* synthetic */ void m1624lambda$onAdLoaded$0$comgoogleunityadsInterstitial$3() {
            if (Interstitial.this.callback != null) {
                Interstitial.this.callback.onInterstitialAdLoaded();
            }
        }

        public void onAdFailedToLoad(final LoadAdError loadAdError) {
            new Thread(new Runnable() { // from class: com.google.unity.ads.Interstitial$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1623lambda$onAdFailedToLoad$0$comgoogleunityadsInterstitial$3(loadAdError);
                }
            }).start();
        }

        public void onAdLoaded(InterstitialAd interstitialAd) {
            Interstitial.this.interstitialAd = interstitialAd;
            Interstitial.this.interstitialAd.setOnPaidEventListener(Interstitial.this.onPaidEventListener);
            Interstitial.this.interstitialAd.setFullScreenContentCallback(Interstitial.this.fullScreenContentCallback);
            new Thread(new Runnable() { // from class: com.google.unity.ads.Interstitial$3$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1624lambda$onAdLoaded$0$comgoogleunityadsInterstitial$3();
                }
            }).start();
        }
    }

    public Interstitial(Activity activity, UnityInterstitialAdCallback unityInterstitialAdCallback) {
        this.activity = activity;
        this.callback = unityInterstitialAdCallback;
    }

    public void destroy() {
    }

    public String getAdUnitId() {
        InterstitialAd interstitialAd = this.interstitialAd;
        if (interstitialAd == null) {
            return null;
        }
        return interstitialAd.getAdUnitId();
    }

    public ResponseInfo getResponseInfo() {
        FutureTask futureTask = new FutureTask(new Callable<ResponseInfo>() { // from class: com.google.unity.ads.Interstitial.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public ResponseInfo call() {
                return Interstitial.this.interstitialAd.getResponseInfo();
            }
        });
        this.activity.runOnUiThread(futureTask);
        try {
            return (ResponseInfo) futureTask.get();
        } catch (InterruptedException e) {
            Log.e(PluginUtils.LOGTAG, String.format("Unable to check interstitial response info: %s", e.getLocalizedMessage()));
            return null;
        } catch (ExecutionException e2) {
            Log.e(PluginUtils.LOGTAG, String.format("Unable to check interstitial response info: %s", e2.getLocalizedMessage()));
            return null;
        }
    }

    public boolean isAdAvailable(String str) {
        return InterstitialAd.isAdAvailable(this.activity, str);
    }

    /* JADX INFO: renamed from: lambda$loadAd$0$com-google-unity-ads-Interstitial, reason: not valid java name */
    /* synthetic */ void m1613lambda$loadAd$0$comgoogleunityadsInterstitial(String str, AdRequest adRequest) {
        InterstitialAd.load(this.activity, str, adRequest, new AnonymousClass3());
    }

    /* JADX INFO: renamed from: lambda$pollAd$0$com-google-unity-ads-Interstitial, reason: not valid java name */
    /* synthetic */ void m1614lambda$pollAd$0$comgoogleunityadsInterstitial(LoadAdError loadAdError) {
        UnityInterstitialAdCallback unityInterstitialAdCallback = this.callback;
        if (unityInterstitialAdCallback != null) {
            unityInterstitialAdCallback.onInterstitialAdFailedToLoad(loadAdError);
        }
    }

    /* JADX INFO: renamed from: lambda$pollAd$1$com-google-unity-ads-Interstitial, reason: not valid java name */
    /* synthetic */ void m1615lambda$pollAd$1$comgoogleunityadsInterstitial() {
        this.interstitialAd.setOnPaidEventListener(this.onPaidEventListener);
    }

    /* JADX INFO: renamed from: lambda$show$0$com-google-unity-ads-Interstitial, reason: not valid java name */
    /* synthetic */ void m1616lambda$show$0$comgoogleunityadsInterstitial() {
        this.interstitialAd.show(this.activity);
    }

    public void loadAd(final String str, final AdRequest adRequest) {
        this.activity.runOnUiThread(new Runnable() { // from class: com.google.unity.ads.Interstitial$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1613lambda$loadAd$0$comgoogleunityadsInterstitial(str, adRequest);
            }
        });
    }

    public void pollAd(String str) {
        InterstitialAd interstitialAdPollAd = InterstitialAd.pollAd(this.activity, str);
        this.interstitialAd = interstitialAdPollAd;
        if (interstitialAdPollAd == null) {
            Log.e(PluginUtils.LOGTAG, "Failed to obtain an Interstitial Ad from the preloader.");
            final LoadAdError loadAdError = new LoadAdError(0, "Failed to obtain an Interstitial Ad from the preloader.", "com.google.android.gms.ads", (AdError) null, (ResponseInfo) null);
            new Thread(new Runnable() { // from class: com.google.unity.ads.Interstitial$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1614lambda$pollAd$0$comgoogleunityadsInterstitial(loadAdError);
                }
            }).start();
        } else {
            this.activity.runOnUiThread(new Runnable() { // from class: com.google.unity.ads.Interstitial$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1615lambda$pollAd$1$comgoogleunityadsInterstitial();
                }
            });
            this.interstitialAd.setFullScreenContentCallback(this.fullScreenContentCallback);
            UnityInterstitialAdCallback unityInterstitialAdCallback = this.callback;
            if (unityInterstitialAdCallback != null) {
                unityInterstitialAdCallback.onInterstitialAdLoaded();
            }
        }
    }

    public void show() {
        if (this.interstitialAd == null) {
            Log.e(PluginUtils.LOGTAG, "Tried to show interstitial ad before it was ready. This should in theory never happen. If it does, please contact the plugin owners.");
        } else {
            this.activity.runOnUiThread(new Runnable() { // from class: com.google.unity.ads.Interstitial$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1616lambda$show$0$comgoogleunityadsInterstitial();
                }
            });
        }
    }
}
