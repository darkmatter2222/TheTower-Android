package com.ironsource.unity.androidbridge;

import android.app.Activity;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.impression.LevelPlayImpressionData;
import com.unity3d.mediation.impression.LevelPlayImpressionDataListener;
import com.unity3d.mediation.interstitial.LevelPlayInterstitialAd;
import com.unity3d.mediation.interstitial.LevelPlayInterstitialAdListener;
import com.unity3d.player.UnityPlayer;

/* JADX INFO: loaded from: classes4.dex */
public class InterstitialAd {
    Activity mActivity = UnityPlayer.currentActivity;
    LevelPlayInterstitialAd mInterstitialAd;

    /* JADX INFO: renamed from: com.ironsource.unity.androidbridge.InterstitialAd$1, reason: invalid class name */
    class AnonymousClass1 implements LevelPlayInterstitialAdListener {
        final /* synthetic */ IUnityInterstitialAdListener val$interstitialAdListener;

        AnonymousClass1(IUnityInterstitialAdListener iUnityInterstitialAdListener) {
            this.val$interstitialAdListener = iUnityInterstitialAdListener;
        }

        @Override // com.unity3d.mediation.interstitial.LevelPlayInterstitialAdListener
        public void onAdClicked(LevelPlayAdInfo levelPlayAdInfo) {
            if (this.val$interstitialAdListener != null) {
                final String strAdInfoToString = LevelPlayUtils.adInfoToString(levelPlayAdInfo);
                final IUnityInterstitialAdListener iUnityInterstitialAdListener = this.val$interstitialAdListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.InterstitialAd$1$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityInterstitialAdListener.onAdClicked(strAdInfoToString);
                    }
                });
            }
        }

        @Override // com.unity3d.mediation.interstitial.LevelPlayInterstitialAdListener
        public void onAdClosed(LevelPlayAdInfo levelPlayAdInfo) {
            if (this.val$interstitialAdListener != null) {
                final String strAdInfoToString = LevelPlayUtils.adInfoToString(levelPlayAdInfo);
                final IUnityInterstitialAdListener iUnityInterstitialAdListener = this.val$interstitialAdListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.InterstitialAd$1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityInterstitialAdListener.onAdClosed(strAdInfoToString);
                    }
                });
            }
        }

        @Override // com.unity3d.mediation.interstitial.LevelPlayInterstitialAdListener
        public void onAdDisplayFailed(LevelPlayAdError levelPlayAdError, LevelPlayAdInfo levelPlayAdInfo) {
            if (this.val$interstitialAdListener != null) {
                final String strAdErrorToString = LevelPlayUtils.adErrorToString(levelPlayAdError);
                final String strAdInfoToString = LevelPlayUtils.adInfoToString(levelPlayAdInfo);
                final IUnityInterstitialAdListener iUnityInterstitialAdListener = this.val$interstitialAdListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.InterstitialAd$1$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityInterstitialAdListener.onAdDisplayFailed(strAdErrorToString, strAdInfoToString);
                    }
                });
            }
        }

        @Override // com.unity3d.mediation.interstitial.LevelPlayInterstitialAdListener
        public void onAdDisplayed(LevelPlayAdInfo levelPlayAdInfo) {
            if (this.val$interstitialAdListener != null) {
                final String strAdInfoToString = LevelPlayUtils.adInfoToString(levelPlayAdInfo);
                final IUnityInterstitialAdListener iUnityInterstitialAdListener = this.val$interstitialAdListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.InterstitialAd$1$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityInterstitialAdListener.onAdDisplayed(strAdInfoToString);
                    }
                });
            }
        }

        @Override // com.unity3d.mediation.interstitial.LevelPlayInterstitialAdListener
        public void onAdInfoChanged(LevelPlayAdInfo levelPlayAdInfo) {
            if (this.val$interstitialAdListener != null) {
                final String strAdInfoToString = LevelPlayUtils.adInfoToString(levelPlayAdInfo);
                final IUnityInterstitialAdListener iUnityInterstitialAdListener = this.val$interstitialAdListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.InterstitialAd$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityInterstitialAdListener.onAdInfoChanged(strAdInfoToString);
                    }
                });
            }
        }

        @Override // com.unity3d.mediation.interstitial.LevelPlayInterstitialAdListener
        public void onAdLoadFailed(LevelPlayAdError levelPlayAdError) {
            if (this.val$interstitialAdListener != null) {
                final String strAdErrorToString = LevelPlayUtils.adErrorToString(levelPlayAdError);
                final IUnityInterstitialAdListener iUnityInterstitialAdListener = this.val$interstitialAdListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.InterstitialAd$1$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityInterstitialAdListener.onAdLoadFailed(strAdErrorToString);
                    }
                });
            }
        }

        @Override // com.unity3d.mediation.interstitial.LevelPlayInterstitialAdListener
        public void onAdLoaded(LevelPlayAdInfo levelPlayAdInfo) {
            if (this.val$interstitialAdListener != null) {
                final String strAdInfoToString = LevelPlayUtils.adInfoToString(levelPlayAdInfo);
                final IUnityInterstitialAdListener iUnityInterstitialAdListener = this.val$interstitialAdListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.InterstitialAd$1$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityInterstitialAdListener.onAdLoaded(strAdInfoToString);
                    }
                });
            }
        }
    }

    public static class ConfigBuilder {
        private final LevelPlayInterstitialAd.Config.Builder builder = new LevelPlayInterstitialAd.Config.Builder();

        public LevelPlayInterstitialAd.Config build() {
            return this.builder.build();
        }

        public void setBidFloor(double d) {
            this.builder.setBidFloor(d);
        }
    }

    public InterstitialAd(String str, LevelPlayInterstitialAd.Config config, IUnityInterstitialAdListener iUnityInterstitialAdListener) {
        this.mInterstitialAd = new LevelPlayInterstitialAd(str, config);
        setupInterstitialListener(iUnityInterstitialAdListener);
    }

    public static boolean isPlacementCapped(String str) {
        return LevelPlayInterstitialAd.isPlacementCapped(str);
    }

    private void setupInterstitialListener(IUnityInterstitialAdListener iUnityInterstitialAdListener) {
        this.mInterstitialAd.setListener(new AnonymousClass1(iUnityInterstitialAdListener));
    }

    public String getAdId() {
        return this.mInterstitialAd.getAdId();
    }

    public boolean isAdReady() {
        return this.mInterstitialAd.isAdReady();
    }

    public void loadAd() {
        this.mInterstitialAd.loadAd();
    }

    public void setImpressionDataListener(final UnityImpressionDataListener unityImpressionDataListener) {
        this.mInterstitialAd.setImpressionDataListener(unityImpressionDataListener == null ? null : new LevelPlayImpressionDataListener() { // from class: com.ironsource.unity.androidbridge.InterstitialAd$$ExternalSyntheticLambda0
            @Override // com.unity3d.mediation.impression.LevelPlayImpressionDataListener
            public final void onImpressionSuccess(LevelPlayImpressionData levelPlayImpressionData) {
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.InterstitialAd$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        unityImpressionDataListener.onImpressionSuccess(AndroidBridgeUtilities.getImpressionDataString(levelPlayImpressionData));
                    }
                });
            }
        });
    }

    public void showAd(String str) {
        this.mInterstitialAd.showAd(this.mActivity, str);
    }
}
