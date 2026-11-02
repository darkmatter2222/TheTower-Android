package com.ironsource.unity.androidbridge;

import android.app.Activity;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.impression.LevelPlayImpressionData;
import com.unity3d.mediation.impression.LevelPlayImpressionDataListener;
import com.unity3d.mediation.rewarded.LevelPlayReward;
import com.unity3d.mediation.rewarded.LevelPlayRewardedAd;
import com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener;
import com.unity3d.player.UnityPlayer;

/* JADX INFO: loaded from: classes4.dex */
public class RewardedAd {
    Activity mActivity = UnityPlayer.currentActivity;
    LevelPlayRewardedAd mRewardedAd;

    /* JADX INFO: renamed from: com.ironsource.unity.androidbridge.RewardedAd$1, reason: invalid class name */
    class AnonymousClass1 implements LevelPlayRewardedAdListener {
        final /* synthetic */ IUnityRewardedAdListener val$rewardedAdListener;

        AnonymousClass1(IUnityRewardedAdListener iUnityRewardedAdListener) {
            this.val$rewardedAdListener = iUnityRewardedAdListener;
        }

        @Override // com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener
        public void onAdClicked(LevelPlayAdInfo levelPlayAdInfo) {
            if (this.val$rewardedAdListener != null) {
                final String strAdInfoToString = LevelPlayUtils.adInfoToString(levelPlayAdInfo);
                final IUnityRewardedAdListener iUnityRewardedAdListener = this.val$rewardedAdListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.RewardedAd$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityRewardedAdListener.onAdClicked(strAdInfoToString);
                    }
                });
            }
        }

        @Override // com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener
        public void onAdClosed(LevelPlayAdInfo levelPlayAdInfo) {
            if (this.val$rewardedAdListener != null) {
                final String strAdInfoToString = LevelPlayUtils.adInfoToString(levelPlayAdInfo);
                final IUnityRewardedAdListener iUnityRewardedAdListener = this.val$rewardedAdListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.RewardedAd$1$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityRewardedAdListener.onAdClosed(strAdInfoToString);
                    }
                });
            }
        }

        @Override // com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener
        public void onAdDisplayFailed(LevelPlayAdError levelPlayAdError, LevelPlayAdInfo levelPlayAdInfo) {
            if (this.val$rewardedAdListener != null) {
                final String strAdErrorToString = LevelPlayUtils.adErrorToString(levelPlayAdError);
                final String strAdInfoToString = LevelPlayUtils.adInfoToString(levelPlayAdInfo);
                final IUnityRewardedAdListener iUnityRewardedAdListener = this.val$rewardedAdListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.RewardedAd$1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityRewardedAdListener.onAdDisplayFailed(strAdErrorToString, strAdInfoToString);
                    }
                });
            }
        }

        @Override // com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener
        public void onAdDisplayed(LevelPlayAdInfo levelPlayAdInfo) {
            if (this.val$rewardedAdListener != null) {
                final String strAdInfoToString = LevelPlayUtils.adInfoToString(levelPlayAdInfo);
                final IUnityRewardedAdListener iUnityRewardedAdListener = this.val$rewardedAdListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.RewardedAd$1$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityRewardedAdListener.onAdDisplayed(strAdInfoToString);
                    }
                });
            }
        }

        @Override // com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener
        public void onAdInfoChanged(LevelPlayAdInfo levelPlayAdInfo) {
            if (this.val$rewardedAdListener != null) {
                final String strAdInfoToString = LevelPlayUtils.adInfoToString(levelPlayAdInfo);
                final IUnityRewardedAdListener iUnityRewardedAdListener = this.val$rewardedAdListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.RewardedAd$1$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityRewardedAdListener.onAdInfoChanged(strAdInfoToString);
                    }
                });
            }
        }

        @Override // com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener
        public void onAdLoadFailed(LevelPlayAdError levelPlayAdError) {
            if (this.val$rewardedAdListener != null) {
                final String strAdErrorToString = LevelPlayUtils.adErrorToString(levelPlayAdError);
                final IUnityRewardedAdListener iUnityRewardedAdListener = this.val$rewardedAdListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.RewardedAd$1$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityRewardedAdListener.onAdLoadFailed(strAdErrorToString);
                    }
                });
            }
        }

        @Override // com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener
        public void onAdLoaded(LevelPlayAdInfo levelPlayAdInfo) {
            if (this.val$rewardedAdListener != null) {
                final String strAdInfoToString = LevelPlayUtils.adInfoToString(levelPlayAdInfo);
                final IUnityRewardedAdListener iUnityRewardedAdListener = this.val$rewardedAdListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.RewardedAd$1$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityRewardedAdListener.onAdLoaded(strAdInfoToString);
                    }
                });
            }
        }

        @Override // com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener
        public void onAdRewarded(LevelPlayReward levelPlayReward, LevelPlayAdInfo levelPlayAdInfo) {
            if (this.val$rewardedAdListener != null) {
                final String strAdInfoToString = LevelPlayUtils.adInfoToString(levelPlayAdInfo);
                final String name = levelPlayReward.getName();
                final int amount = levelPlayReward.getAmount();
                final IUnityRewardedAdListener iUnityRewardedAdListener = this.val$rewardedAdListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.RewardedAd$1$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityRewardedAdListener.onAdRewarded(strAdInfoToString, name, amount);
                    }
                });
            }
        }
    }

    public static class ConfigBuilder {
        private final LevelPlayRewardedAd.Config.Builder builder = new LevelPlayRewardedAd.Config.Builder();

        public LevelPlayRewardedAd.Config build() {
            return this.builder.build();
        }

        public void setBidFloor(double d) {
            this.builder.setBidFloor(d);
        }
    }

    public RewardedAd(String str, LevelPlayRewardedAd.Config config, IUnityRewardedAdListener iUnityRewardedAdListener) {
        this.mRewardedAd = new LevelPlayRewardedAd(str, config);
        setupRewardedListener(iUnityRewardedAdListener);
    }

    public static boolean isPlacementCapped(String str) {
        return LevelPlayRewardedAd.isPlacementCapped(str);
    }

    private void setupRewardedListener(IUnityRewardedAdListener iUnityRewardedAdListener) {
        this.mRewardedAd.setListener(new AnonymousClass1(iUnityRewardedAdListener));
    }

    public String getAdId() {
        return this.mRewardedAd.getAdId();
    }

    public LevelPlayReward getReward(String str) {
        return this.mRewardedAd.getReward(str);
    }

    public boolean isAdReady() {
        return this.mRewardedAd.isAdReady();
    }

    public void loadAd() {
        this.mRewardedAd.loadAd();
    }

    public void setImpressionDataListener(final UnityImpressionDataListener unityImpressionDataListener) {
        this.mRewardedAd.setImpressionDataListener(unityImpressionDataListener == null ? null : new LevelPlayImpressionDataListener() { // from class: com.ironsource.unity.androidbridge.RewardedAd$$ExternalSyntheticLambda0
            @Override // com.unity3d.mediation.impression.LevelPlayImpressionDataListener
            public final void onImpressionSuccess(LevelPlayImpressionData levelPlayImpressionData) {
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.RewardedAd$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        unityImpressionDataListener.onImpressionSuccess(AndroidBridgeUtilities.getImpressionDataString(levelPlayImpressionData));
                    }
                });
            }
        });
    }

    public void showAd(String str) {
        this.mRewardedAd.showAd(this.mActivity, str);
    }
}
