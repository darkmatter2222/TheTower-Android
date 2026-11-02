package com.google.unity.ads;

import android.app.Activity;
import android.util.Log;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes4.dex */
public class UnityRewardedAd {
    private final Activity activity;
    private UnityRewardedAdCallback callback;
    private RewardedAd rewardedAd;
    private final OnPaidEventListener onPaidEventListener = new AnonymousClass1();
    private final FullScreenContentCallback fullScreenContentCallback = new AnonymousClass2();

    /* JADX INFO: renamed from: com.google.unity.ads.UnityRewardedAd$1, reason: invalid class name */
    class AnonymousClass1 implements OnPaidEventListener {
        AnonymousClass1() {
        }

        /* JADX INFO: renamed from: lambda$onPaidEvent$0$com-google-unity-ads-UnityRewardedAd$1, reason: not valid java name */
        /* synthetic */ void m1653lambda$onPaidEvent$0$comgoogleunityadsUnityRewardedAd$1(AdValue adValue) {
            if (UnityRewardedAd.this.callback != null) {
                UnityRewardedAd.this.callback.onPaidEvent(adValue.getPrecisionType(), adValue.getValueMicros(), adValue.getCurrencyCode());
            }
        }

        public void onPaidEvent(final AdValue adValue) {
            new Thread(new Runnable() { // from class: com.google.unity.ads.UnityRewardedAd$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1653lambda$onPaidEvent$0$comgoogleunityadsUnityRewardedAd$1(adValue);
                }
            }).start();
        }
    }

    /* JADX INFO: renamed from: com.google.unity.ads.UnityRewardedAd$2, reason: invalid class name */
    class AnonymousClass2 extends FullScreenContentCallback {
        AnonymousClass2() {
        }

        /* JADX INFO: renamed from: lambda$onAdClicked$0$com-google-unity-ads-UnityRewardedAd$2, reason: not valid java name */
        /* synthetic */ void m1654lambda$onAdClicked$0$comgoogleunityadsUnityRewardedAd$2() {
            if (UnityRewardedAd.this.callback != null) {
                UnityRewardedAd.this.callback.onAdClicked();
            }
        }

        /* JADX INFO: renamed from: lambda$onAdDismissedFullScreenContent$0$com-google-unity-ads-UnityRewardedAd$2, reason: not valid java name */
        /* synthetic */ void m1655xaa98d9bb() {
            if (UnityRewardedAd.this.callback != null) {
                UnityRewardedAd.this.callback.onAdDismissedFullScreenContent();
            }
        }

        /* JADX INFO: renamed from: lambda$onAdFailedToShowFullScreenContent$0$com-google-unity-ads-UnityRewardedAd$2, reason: not valid java name */
        /* synthetic */ void m1656xedca1065(AdError adError) {
            if (UnityRewardedAd.this.callback != null) {
                UnityRewardedAd.this.callback.onAdFailedToShowFullScreenContent(adError);
            }
        }

        /* JADX INFO: renamed from: lambda$onAdImpression$0$com-google-unity-ads-UnityRewardedAd$2, reason: not valid java name */
        /* synthetic */ void m1657lambda$onAdImpression$0$comgoogleunityadsUnityRewardedAd$2() {
            if (UnityRewardedAd.this.callback != null) {
                UnityRewardedAd.this.callback.onAdImpression();
            }
        }

        /* JADX INFO: renamed from: lambda$onAdShowedFullScreenContent$0$com-google-unity-ads-UnityRewardedAd$2, reason: not valid java name */
        /* synthetic */ void m1658xb7d2628c() {
            if (UnityRewardedAd.this.callback != null) {
                UnityRewardedAd.this.callback.onAdShowedFullScreenContent();
            }
        }

        public void onAdClicked() {
            new Thread(new Runnable() { // from class: com.google.unity.ads.UnityRewardedAd$2$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1654lambda$onAdClicked$0$comgoogleunityadsUnityRewardedAd$2();
                }
            }).start();
        }

        public void onAdDismissedFullScreenContent() {
            new Thread(new Runnable() { // from class: com.google.unity.ads.UnityRewardedAd$2$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1655xaa98d9bb();
                }
            }).start();
        }

        public void onAdFailedToShowFullScreenContent(final AdError adError) {
            new Thread(new Runnable() { // from class: com.google.unity.ads.UnityRewardedAd$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1656xedca1065(adError);
                }
            }).start();
        }

        public void onAdImpression() {
            new Thread(new Runnable() { // from class: com.google.unity.ads.UnityRewardedAd$2$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1657lambda$onAdImpression$0$comgoogleunityadsUnityRewardedAd$2();
                }
            }).start();
        }

        public void onAdShowedFullScreenContent() {
            new Thread(new Runnable() { // from class: com.google.unity.ads.UnityRewardedAd$2$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1658xb7d2628c();
                }
            }).start();
        }
    }

    /* JADX INFO: renamed from: com.google.unity.ads.UnityRewardedAd$3, reason: invalid class name */
    class AnonymousClass3 extends RewardedAdLoadCallback {
        AnonymousClass3() {
        }

        /* JADX INFO: renamed from: lambda$onAdFailedToLoad$0$com-google-unity-ads-UnityRewardedAd$3, reason: not valid java name */
        /* synthetic */ void m1659lambda$onAdFailedToLoad$0$comgoogleunityadsUnityRewardedAd$3(LoadAdError loadAdError) {
            if (UnityRewardedAd.this.callback != null) {
                UnityRewardedAd.this.callback.onRewardedAdFailedToLoad(loadAdError);
            }
        }

        /* JADX INFO: renamed from: lambda$onAdLoaded$0$com-google-unity-ads-UnityRewardedAd$3, reason: not valid java name */
        /* synthetic */ void m1660lambda$onAdLoaded$0$comgoogleunityadsUnityRewardedAd$3() {
            if (UnityRewardedAd.this.callback != null) {
                UnityRewardedAd.this.callback.onRewardedAdLoaded();
            }
        }

        public void onAdFailedToLoad(final LoadAdError loadAdError) {
            new Thread(new Runnable() { // from class: com.google.unity.ads.UnityRewardedAd$3$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1659lambda$onAdFailedToLoad$0$comgoogleunityadsUnityRewardedAd$3(loadAdError);
                }
            }).start();
        }

        public void onAdLoaded(RewardedAd rewardedAd) {
            UnityRewardedAd.this.rewardedAd = rewardedAd;
            UnityRewardedAd.this.rewardedAd.setOnPaidEventListener(UnityRewardedAd.this.onPaidEventListener);
            UnityRewardedAd.this.rewardedAd.setFullScreenContentCallback(UnityRewardedAd.this.fullScreenContentCallback);
            new Thread(new Runnable() { // from class: com.google.unity.ads.UnityRewardedAd$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1660lambda$onAdLoaded$0$comgoogleunityadsUnityRewardedAd$3();
                }
            }).start();
        }
    }

    /* JADX INFO: renamed from: com.google.unity.ads.UnityRewardedAd$4, reason: invalid class name */
    class AnonymousClass4 implements OnUserEarnedRewardListener {
        AnonymousClass4() {
        }

        /* JADX INFO: renamed from: lambda$onUserEarnedReward$0$com-google-unity-ads-UnityRewardedAd$4, reason: not valid java name */
        /* synthetic */ void m1661xe1b880e4(RewardItem rewardItem) {
            if (UnityRewardedAd.this.callback != null) {
                UnityRewardedAd.this.callback.onUserEarnedReward(rewardItem.getType(), rewardItem.getAmount());
            }
        }

        public void onUserEarnedReward(final RewardItem rewardItem) {
            new Thread(new Runnable() { // from class: com.google.unity.ads.UnityRewardedAd$4$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1661xe1b880e4(rewardItem);
                }
            }).start();
        }
    }

    public UnityRewardedAd(Activity activity, UnityRewardedAdCallback unityRewardedAdCallback) {
        this.activity = activity;
        this.callback = unityRewardedAdCallback;
    }

    public void destroy() {
    }

    public String getAdUnitId() {
        RewardedAd rewardedAd = this.rewardedAd;
        if (rewardedAd == null) {
            return null;
        }
        return rewardedAd.getAdUnitId();
    }

    public ResponseInfo getResponseInfo() {
        FutureTask futureTask = new FutureTask(new Callable<ResponseInfo>() { // from class: com.google.unity.ads.UnityRewardedAd.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public ResponseInfo call() {
                return UnityRewardedAd.this.rewardedAd.getResponseInfo();
            }
        });
        this.activity.runOnUiThread(futureTask);
        try {
            return (ResponseInfo) futureTask.get();
        } catch (InterruptedException e) {
            Log.e(PluginUtils.LOGTAG, String.format("Unable to check unity rewarded ad response info: %s", e.getLocalizedMessage()));
            return null;
        } catch (ExecutionException e2) {
            Log.e(PluginUtils.LOGTAG, String.format("Unable to check unity rewarded ad response info: %s", e2.getLocalizedMessage()));
            return null;
        }
    }

    public RewardItem getRewardItem() {
        if (this.rewardedAd == null) {
            Log.e(PluginUtils.LOGTAG, "Tried to get reward item before it was ready. This should in theory never happen. If it does, please contact the plugin owners.");
            return null;
        }
        FutureTask futureTask = new FutureTask(new Callable<RewardItem>() { // from class: com.google.unity.ads.UnityRewardedAd.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public RewardItem call() {
                return UnityRewardedAd.this.rewardedAd.getRewardItem();
            }
        });
        this.activity.runOnUiThread(futureTask);
        try {
            return (RewardItem) futureTask.get();
        } catch (InterruptedException e) {
            Log.e(PluginUtils.LOGTAG, String.format("Unable to get reward item: %s", e.getLocalizedMessage()));
            return null;
        } catch (ExecutionException e2) {
            Log.e(PluginUtils.LOGTAG, String.format("Unable to get reward item: %s", e2.getLocalizedMessage()));
            return null;
        }
    }

    public boolean isAdAvailable(String str) {
        return RewardedAd.isAdAvailable(this.activity, str);
    }

    /* JADX INFO: renamed from: lambda$loadAd$0$com-google-unity-ads-UnityRewardedAd, reason: not valid java name */
    /* synthetic */ void m1648lambda$loadAd$0$comgoogleunityadsUnityRewardedAd(String str, AdRequest adRequest) {
        RewardedAd.load(this.activity, str, adRequest, new AnonymousClass3());
    }

    /* JADX INFO: renamed from: lambda$pollAd$0$com-google-unity-ads-UnityRewardedAd, reason: not valid java name */
    /* synthetic */ void m1649lambda$pollAd$0$comgoogleunityadsUnityRewardedAd(LoadAdError loadAdError) {
        UnityRewardedAdCallback unityRewardedAdCallback = this.callback;
        if (unityRewardedAdCallback != null) {
            unityRewardedAdCallback.onRewardedAdFailedToLoad(loadAdError);
        }
    }

    /* JADX INFO: renamed from: lambda$pollAd$1$com-google-unity-ads-UnityRewardedAd, reason: not valid java name */
    /* synthetic */ void m1650lambda$pollAd$1$comgoogleunityadsUnityRewardedAd() {
        this.rewardedAd.setOnPaidEventListener(this.onPaidEventListener);
    }

    /* JADX INFO: renamed from: lambda$setServerSideVerificationOptions$0$com-google-unity-ads-UnityRewardedAd, reason: not valid java name */
    /* synthetic */ void m1651x441f36fd(ServerSideVerificationOptions serverSideVerificationOptions) {
        this.rewardedAd.setServerSideVerificationOptions(serverSideVerificationOptions);
    }

    /* JADX INFO: renamed from: lambda$show$0$com-google-unity-ads-UnityRewardedAd, reason: not valid java name */
    /* synthetic */ void m1652lambda$show$0$comgoogleunityadsUnityRewardedAd() {
        this.rewardedAd.show(this.activity, new AnonymousClass4());
    }

    public void loadAd(final String str, final AdRequest adRequest) {
        this.activity.runOnUiThread(new Runnable() { // from class: com.google.unity.ads.UnityRewardedAd$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1648lambda$loadAd$0$comgoogleunityadsUnityRewardedAd(str, adRequest);
            }
        });
    }

    public void pollAd(String str) {
        RewardedAd rewardedAdPollAd = RewardedAd.pollAd(this.activity, str);
        this.rewardedAd = rewardedAdPollAd;
        if (rewardedAdPollAd != null) {
            this.activity.runOnUiThread(new Runnable() { // from class: com.google.unity.ads.UnityRewardedAd$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1650lambda$pollAd$1$comgoogleunityadsUnityRewardedAd();
                }
            });
            this.rewardedAd.setFullScreenContentCallback(this.fullScreenContentCallback);
        } else {
            Log.e(PluginUtils.LOGTAG, "Failed to obtain a Rewarded Ad from the preloader.");
            final LoadAdError loadAdError = new LoadAdError(0, "Failed to obtain a Rewarded Ad from the preloader.", "com.google.android.gms.ads", (AdError) null, (ResponseInfo) null);
            new Thread(new Runnable() { // from class: com.google.unity.ads.UnityRewardedAd$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1649lambda$pollAd$0$comgoogleunityadsUnityRewardedAd(loadAdError);
                }
            }).start();
        }
    }

    public void setServerSideVerificationOptions(final ServerSideVerificationOptions serverSideVerificationOptions) {
        if (this.rewardedAd == null) {
            Log.e(PluginUtils.LOGTAG, "Tried set server side verification before it was ready. This should in theory never happen. If it does, please contact the plugin owners.");
        } else {
            this.activity.runOnUiThread(new Runnable() { // from class: com.google.unity.ads.UnityRewardedAd$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1651x441f36fd(serverSideVerificationOptions);
                }
            });
        }
    }

    public void show() {
        if (this.rewardedAd == null) {
            Log.e(PluginUtils.LOGTAG, "Tried to show rewarded ad before it was ready. This should in theory never happen. If it does, please contact the plugin owners.");
        } else {
            this.activity.runOnUiThread(new Runnable() { // from class: com.google.unity.ads.UnityRewardedAd$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1652lambda$show$0$comgoogleunityadsUnityRewardedAd();
                }
            });
        }
    }
}
