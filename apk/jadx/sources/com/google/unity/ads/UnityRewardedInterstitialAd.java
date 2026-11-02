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
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes4.dex */
public class UnityRewardedInterstitialAd {
    private Activity activity;
    private UnityRewardedInterstitialAdCallback callback;
    private RewardedInterstitialAd rewardedInterstitialAd;

    /* JADX INFO: renamed from: com.google.unity.ads.UnityRewardedInterstitialAd$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ UnityRewardedInterstitialAd this$0;
        final /* synthetic */ String val$adUnitId;
        final /* synthetic */ AdRequest val$request;

        /* JADX INFO: renamed from: com.google.unity.ads.UnityRewardedInterstitialAd$1$1, reason: invalid class name and collision with other inner class name */
        class C00741 extends RewardedInterstitialAdLoadCallback {
            C00741() {
            }

            public void onAdFailedToLoad(final LoadAdError loadAdError) {
                new Thread(new Runnable(this) { // from class: com.google.unity.ads.UnityRewardedInterstitialAd.1.1.4
                    final /* synthetic */ C00741 this$2;

                    {
                        this.this$2 = this;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        if (AnonymousClass1.this.this$0.callback != null) {
                            AnonymousClass1.this.this$0.callback.onRewardedInterstitialAdFailedToLoad(loadAdError);
                        }
                    }
                }).start();
            }

            public void onAdLoaded(RewardedInterstitialAd rewardedInterstitialAd) {
                AnonymousClass1.this.this$0.rewardedInterstitialAd = rewardedInterstitialAd;
                AnonymousClass1.this.this$0.rewardedInterstitialAd.setOnPaidEventListener(new OnPaidEventListener() { // from class: com.google.unity.ads.UnityRewardedInterstitialAd.1.1.1
                    public void onPaidEvent(final AdValue adValue) {
                        new Thread(new Runnable(this) { // from class: com.google.unity.ads.UnityRewardedInterstitialAd.1.1.1.1
                            final /* synthetic */ C00751 this$3;

                            {
                                this.this$3 = this;
                            }

                            @Override // java.lang.Runnable
                            public void run() {
                                if (AnonymousClass1.this.this$0.callback != null) {
                                    AnonymousClass1.this.this$0.callback.onPaidEvent(adValue.getPrecisionType(), adValue.getValueMicros(), adValue.getCurrencyCode());
                                }
                            }
                        }).start();
                    }
                });
                AnonymousClass1.this.this$0.rewardedInterstitialAd.setFullScreenContentCallback(new FullScreenContentCallback() { // from class: com.google.unity.ads.UnityRewardedInterstitialAd.1.1.2
                    public void onAdClicked() {
                        new Thread(new Runnable() { // from class: com.google.unity.ads.UnityRewardedInterstitialAd.1.1.2.5
                            @Override // java.lang.Runnable
                            public void run() {
                                if (AnonymousClass1.this.this$0.callback != null) {
                                    AnonymousClass1.this.this$0.callback.onAdClicked();
                                }
                            }
                        }).start();
                    }

                    public void onAdDismissedFullScreenContent() {
                        new Thread(new Runnable() { // from class: com.google.unity.ads.UnityRewardedInterstitialAd.1.1.2.3
                            @Override // java.lang.Runnable
                            public void run() {
                                if (AnonymousClass1.this.this$0.callback != null) {
                                    AnonymousClass1.this.this$0.callback.onAdDismissedFullScreenContent();
                                }
                            }
                        }).start();
                    }

                    public void onAdFailedToShowFullScreenContent(final AdError adError) {
                        new Thread(new Runnable(this) { // from class: com.google.unity.ads.UnityRewardedInterstitialAd.1.1.2.1
                            final /* synthetic */ AnonymousClass2 this$3;

                            {
                                this.this$3 = this;
                            }

                            @Override // java.lang.Runnable
                            public void run() {
                                if (AnonymousClass1.this.this$0.callback != null) {
                                    AnonymousClass1.this.this$0.callback.onAdFailedToShowFullScreenContent(adError);
                                }
                            }
                        }).start();
                    }

                    public void onAdImpression() {
                        new Thread(new Runnable() { // from class: com.google.unity.ads.UnityRewardedInterstitialAd.1.1.2.4
                            @Override // java.lang.Runnable
                            public void run() {
                                if (AnonymousClass1.this.this$0.callback != null) {
                                    AnonymousClass1.this.this$0.callback.onAdImpression();
                                }
                            }
                        }).start();
                    }

                    public void onAdShowedFullScreenContent() {
                        new Thread(new Runnable() { // from class: com.google.unity.ads.UnityRewardedInterstitialAd.1.1.2.2
                            @Override // java.lang.Runnable
                            public void run() {
                                if (AnonymousClass1.this.this$0.callback != null) {
                                    AnonymousClass1.this.this$0.callback.onAdShowedFullScreenContent();
                                }
                            }
                        }).start();
                    }
                });
                new Thread(new Runnable() { // from class: com.google.unity.ads.UnityRewardedInterstitialAd.1.1.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (AnonymousClass1.this.this$0.callback != null) {
                            AnonymousClass1.this.this$0.callback.onRewardedInterstitialAdLoaded();
                        }
                    }
                }).start();
            }
        }

        AnonymousClass1(UnityRewardedInterstitialAd unityRewardedInterstitialAd, String str, AdRequest adRequest) {
            this.val$adUnitId = str;
            this.val$request = adRequest;
            this.this$0 = unityRewardedInterstitialAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            RewardedInterstitialAd.load(this.this$0.activity, this.val$adUnitId, this.val$request, new C00741());
        }
    }

    /* JADX INFO: renamed from: com.google.unity.ads.UnityRewardedInterstitialAd$2, reason: invalid class name */
    class AnonymousClass2 implements Runnable {
        AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UnityRewardedInterstitialAd.this.rewardedInterstitialAd.show(UnityRewardedInterstitialAd.this.activity, new OnUserEarnedRewardListener() { // from class: com.google.unity.ads.UnityRewardedInterstitialAd.2.1
                public void onUserEarnedReward(final RewardItem rewardItem) {
                    new Thread(new Runnable(this) { // from class: com.google.unity.ads.UnityRewardedInterstitialAd.2.1.1
                        final /* synthetic */ AnonymousClass1 this$2;

                        {
                            this.this$2 = this;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            if (UnityRewardedInterstitialAd.this.callback != null) {
                                UnityRewardedInterstitialAd.this.callback.onUserEarnedReward(rewardItem.getType(), rewardItem.getAmount());
                            }
                        }
                    }).start();
                }
            });
        }
    }

    public UnityRewardedInterstitialAd(Activity activity, UnityRewardedInterstitialAdCallback unityRewardedInterstitialAdCallback) {
        this.activity = activity;
        this.callback = unityRewardedInterstitialAdCallback;
    }

    public void destroy() {
    }

    public String getAdUnitId() {
        RewardedInterstitialAd rewardedInterstitialAd = this.rewardedInterstitialAd;
        if (rewardedInterstitialAd == null) {
            return null;
        }
        return rewardedInterstitialAd.getAdUnitId();
    }

    public ResponseInfo getResponseInfo() {
        if (this.rewardedInterstitialAd == null) {
            return null;
        }
        FutureTask futureTask = new FutureTask(new Callable<ResponseInfo>() { // from class: com.google.unity.ads.UnityRewardedInterstitialAd.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public ResponseInfo call() {
                return UnityRewardedInterstitialAd.this.rewardedInterstitialAd.getResponseInfo();
            }
        });
        this.activity.runOnUiThread(futureTask);
        try {
            return (ResponseInfo) futureTask.get();
        } catch (InterruptedException e) {
            Log.e(PluginUtils.LOGTAG, String.format("Unable to check unity rewarded interstitial ad response info: %s", e.getLocalizedMessage()));
            return null;
        } catch (ExecutionException e2) {
            Log.e(PluginUtils.LOGTAG, String.format("Unable to check unity rewarded interstitial ad response info: %s", e2.getLocalizedMessage()));
            return null;
        }
    }

    public RewardItem getRewardItem() {
        if (this.rewardedInterstitialAd == null) {
            Log.e(PluginUtils.LOGTAG, "Tried to get reward item before it was ready. This should in theory never happen. If it does, please contact the plugin owners.");
            return null;
        }
        FutureTask futureTask = new FutureTask(new Callable<RewardItem>() { // from class: com.google.unity.ads.UnityRewardedInterstitialAd.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public RewardItem call() {
                return UnityRewardedInterstitialAd.this.rewardedInterstitialAd.getRewardItem();
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

    public void loadAd(String str, AdRequest adRequest) {
        this.activity.runOnUiThread(new AnonymousClass1(this, str, adRequest));
    }

    public void setServerSideVerificationOptions(final ServerSideVerificationOptions serverSideVerificationOptions) {
        if (this.rewardedInterstitialAd == null) {
            Log.e(PluginUtils.LOGTAG, "Tried set server side verification before it was ready. This should in theory never happen. If it does, please contact the plugin owners.");
        } else {
            this.activity.runOnUiThread(new Runnable(this) { // from class: com.google.unity.ads.UnityRewardedInterstitialAd.3
                final /* synthetic */ UnityRewardedInterstitialAd this$0;

                {
                    this.this$0 = this;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.this$0.rewardedInterstitialAd.setServerSideVerificationOptions(serverSideVerificationOptions);
                }
            });
        }
    }

    public void show() {
        if (this.rewardedInterstitialAd == null) {
            Log.e(PluginUtils.LOGTAG, "Tried to show rewarded interstitial ad before it was ready. This should in theory never happen. If it does, please contact the plugin owners.");
        } else {
            this.activity.runOnUiThread(new AnonymousClass2());
        }
    }
}
