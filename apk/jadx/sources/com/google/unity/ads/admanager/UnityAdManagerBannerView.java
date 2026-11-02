package com.google.unity.ads.admanager;

import android.app.Activity;
import android.util.Log;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.unity.ads.Banner;
import com.google.unity.ads.PluginUtils;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes4.dex */
public class UnityAdManagerBannerView extends Banner {
    private final ExecutorService service;

    /* JADX INFO: renamed from: com.google.unity.ads.admanager.UnityAdManagerBannerView$1, reason: invalid class name */
    class AnonymousClass1 extends AdListener {
        AnonymousClass1() {
        }

        /* JADX INFO: renamed from: lambda$onAdClicked$0$com-google-unity-ads-admanager-UnityAdManagerBannerView$1, reason: not valid java name */
        /* synthetic */ void m1670xe76a19a3() {
            if (UnityAdManagerBannerView.this.unityListener != null) {
                UnityAdManagerBannerView.this.unityListener.onAdClicked();
            }
        }

        /* JADX INFO: renamed from: lambda$onAdClosed$0$com-google-unity-ads-admanager-UnityAdManagerBannerView$1, reason: not valid java name */
        /* synthetic */ void m1671x272a2086() {
            if (UnityAdManagerBannerView.this.unityListener != null) {
                UnityAdManagerBannerView.this.unityListener.onAdClosed();
            }
        }

        /* JADX INFO: renamed from: lambda$onAdFailedToLoad$0$com-google-unity-ads-admanager-UnityAdManagerBannerView$1, reason: not valid java name */
        /* synthetic */ void m1672x3a46ed78(LoadAdError loadAdError) {
            if (UnityAdManagerBannerView.this.unityListener != null) {
                UnityAdManagerBannerView.this.unityListener.onAdFailedToLoad(loadAdError);
            }
        }

        /* JADX INFO: renamed from: lambda$onAdImpression$0$com-google-unity-ads-admanager-UnityAdManagerBannerView$1, reason: not valid java name */
        /* synthetic */ void m1673x8ccd6823() {
            if (UnityAdManagerBannerView.this.unityListener != null) {
                UnityAdManagerBannerView.this.unityListener.onAdImpression();
            }
        }

        /* JADX INFO: renamed from: lambda$onAdLoaded$0$com-google-unity-ads-admanager-UnityAdManagerBannerView$1, reason: not valid java name */
        /* synthetic */ void m1674x9d5d5b9f() {
            if (UnityAdManagerBannerView.this.unityListener != null) {
                UnityAdManagerBannerView.this.unityListener.onAdLoaded();
            }
        }

        /* JADX INFO: renamed from: lambda$onAdOpened$0$com-google-unity-ads-admanager-UnityAdManagerBannerView$1, reason: not valid java name */
        /* synthetic */ void m1675xa6caa603() {
            if (UnityAdManagerBannerView.this.unityListener != null) {
                UnityAdManagerBannerView.this.unityListener.onAdOpened();
            }
        }

        public void onAdClicked() {
            UnityAdManagerBannerView.this.service.execute(new Runnable() { // from class: com.google.unity.ads.admanager.UnityAdManagerBannerView$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1670xe76a19a3();
                }
            });
        }

        public void onAdClosed() {
            UnityAdManagerBannerView.this.service.execute(new Runnable() { // from class: com.google.unity.ads.admanager.UnityAdManagerBannerView$1$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1671x272a2086();
                }
            });
        }

        public void onAdFailedToLoad(final LoadAdError loadAdError) {
            UnityAdManagerBannerView.this.service.execute(new Runnable() { // from class: com.google.unity.ads.admanager.UnityAdManagerBannerView$1$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1672x3a46ed78(loadAdError);
                }
            });
        }

        public void onAdImpression() {
            UnityAdManagerBannerView.this.service.execute(new Runnable() { // from class: com.google.unity.ads.admanager.UnityAdManagerBannerView$1$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1673x8ccd6823();
                }
            });
        }

        public void onAdLoaded() {
            if (!UnityAdManagerBannerView.this.hidden) {
                UnityAdManagerBannerView.this.show();
            }
            UnityAdManagerBannerView.this.service.execute(new Runnable() { // from class: com.google.unity.ads.admanager.UnityAdManagerBannerView$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1674x9d5d5b9f();
                }
            });
        }

        public void onAdOpened() {
            UnityAdManagerBannerView.this.service.execute(new Runnable() { // from class: com.google.unity.ads.admanager.UnityAdManagerBannerView$1$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1675xa6caa603();
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.google.unity.ads.admanager.UnityAdManagerBannerView$2, reason: invalid class name */
    class AnonymousClass2 implements OnPaidEventListener {
        AnonymousClass2() {
        }

        /* JADX INFO: renamed from: lambda$onPaidEvent$0$com-google-unity-ads-admanager-UnityAdManagerBannerView$2, reason: not valid java name */
        /* synthetic */ void m1676x1d98ef4e(AdValue adValue) {
            if (UnityAdManagerBannerView.this.unityListener != null) {
                UnityAdManagerBannerView.this.unityListener.onPaidEvent(adValue.getPrecisionType(), adValue.getValueMicros(), adValue.getCurrencyCode());
            }
        }

        public void onPaidEvent(final AdValue adValue) {
            UnityAdManagerBannerView.this.service.execute(new Runnable() { // from class: com.google.unity.ads.admanager.UnityAdManagerBannerView$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1676x1d98ef4e(adValue);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.google.unity.ads.admanager.UnityAdManagerBannerView$3, reason: invalid class name */
    class AnonymousClass3 implements AppEventListener {
        AnonymousClass3() {
        }

        /* JADX INFO: renamed from: lambda$onAppEvent$0$com-google-unity-ads-admanager-UnityAdManagerBannerView$3, reason: not valid java name */
        /* synthetic */ void m1677x46c56712(String str, String str2) {
            if (UnityAdManagerBannerView.this.unityListener != null) {
                ((UnityAdManagerAdListener) UnityAdManagerBannerView.this.unityListener).onAppEvent(str, str2);
            }
        }

        public void onAppEvent(final String str, final String str2) {
            UnityAdManagerBannerView.this.service.execute(new Runnable() { // from class: com.google.unity.ads.admanager.UnityAdManagerBannerView$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1677x46c56712(str, str2);
                }
            });
        }
    }

    public UnityAdManagerBannerView(Activity activity, UnityAdManagerAdListener unityAdManagerAdListener) {
        this.unityPlayerActivity = activity;
        this.unityListener = unityAdManagerAdListener;
        this.service = Executors.newSingleThreadExecutor();
    }

    @Override // com.google.unity.ads.Banner
    protected void createAdView(String str, AdSize adSize) {
        this.adView = new AdManagerAdView(this.unityPlayerActivity);
        this.adView.setBackgroundColor(0);
        this.adView.setAdUnitId(str);
        this.adView.setAdSize(adSize);
        this.adView.setVisibility(8);
        this.adView.setDescendantFocusability(393216);
        this.unityPlayerActivity.addContentView(this.adView, getLayoutParams());
        this.adView.setAdListener(new AnonymousClass1());
        this.adView.setOnPaidEventListener(new AnonymousClass2());
        this.adView.setAppEventListener(new AnonymousClass3());
        setLayoutChangeListener();
    }

    public List<AdSize> getAdSizes() {
        FutureTask futureTask = new FutureTask(new Callable() { // from class: com.google.unity.ads.admanager.UnityAdManagerBannerView$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.m1667x51b59a04();
            }
        });
        this.unityPlayerActivity.runOnUiThread(futureTask);
        AdSize[] adSizeArr = new AdSize[0];
        try {
            adSizeArr = (AdSize[]) futureTask.get();
        } catch (InterruptedException | ExecutionException e) {
            Log.e(PluginUtils.LOGTAG, String.format("Failed to get ad sizes: %s", e.getLocalizedMessage()));
        }
        return Arrays.asList(adSizeArr);
    }

    /* JADX INFO: renamed from: lambda$getAdSizes$0$com-google-unity-ads-admanager-UnityAdManagerBannerView, reason: not valid java name */
    /* synthetic */ AdSize[] m1667x51b59a04() throws Exception {
        return this.adView.getAdSizes();
    }

    /* JADX INFO: renamed from: lambda$loadAd$0$com-google-unity-ads-admanager-UnityAdManagerBannerView, reason: not valid java name */
    /* synthetic */ void m1668x49beb234(AdManagerAdRequest adManagerAdRequest) {
        this.adView.loadAd(adManagerAdRequest);
    }

    /* JADX INFO: renamed from: lambda$setAdSizes$0$com-google-unity-ads-admanager-UnityAdManagerBannerView, reason: not valid java name */
    /* synthetic */ void m1669xa6dd6e78(List list) {
        this.adView.setAdSizes((AdSize[]) list.toArray(new AdSize[list.size()]));
    }

    public void loadAd(final AdManagerAdRequest adManagerAdRequest) {
        this.unityPlayerActivity.runOnUiThread(new Runnable() { // from class: com.google.unity.ads.admanager.UnityAdManagerBannerView$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1668x49beb234(adManagerAdRequest);
            }
        });
    }

    public void setAdSizes(final List<AdSize> list) {
        if (list == null || list.size() < 1) {
            throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
        }
        this.unityPlayerActivity.runOnUiThread(new Runnable() { // from class: com.google.unity.ads.admanager.UnityAdManagerBannerView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1669xa6dd6e78(list);
            }
        });
    }
}
