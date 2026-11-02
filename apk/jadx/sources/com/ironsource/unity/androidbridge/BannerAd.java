package com.ironsource.unity.androidbridge;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.LevelPlayAdSize;
import com.unity3d.mediation.banner.LevelPlayBannerAdView;
import com.unity3d.mediation.banner.LevelPlayBannerAdViewListener;
import com.unity3d.mediation.impression.LevelPlayImpressionData;
import com.unity3d.mediation.impression.LevelPlayImpressionDataListener;
import com.unity3d.player.UnityPlayer;

/* JADX INFO: loaded from: classes4.dex */
public class BannerAd {
    LevelPlayBannerAdView mBannerAdView;
    int mBannerAdViewVisibilityState = 4;
    Activity mActivity = UnityPlayer.currentActivity;

    /* JADX INFO: renamed from: com.ironsource.unity.androidbridge.BannerAd$1, reason: invalid class name */
    class AnonymousClass1 implements LevelPlayBannerAdViewListener {
        final /* synthetic */ IUnityBannerAdListener val$bannerListener;

        AnonymousClass1(IUnityBannerAdListener iUnityBannerAdListener) {
            this.val$bannerListener = iUnityBannerAdListener;
        }

        @Override // com.unity3d.mediation.banner.LevelPlayBannerAdViewListener
        public void onAdClicked(LevelPlayAdInfo levelPlayAdInfo) {
            if (this.val$bannerListener != null) {
                final String strAdInfoToString = LevelPlayUtils.adInfoToString(levelPlayAdInfo);
                final IUnityBannerAdListener iUnityBannerAdListener = this.val$bannerListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.BannerAd$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityBannerAdListener.onAdClicked(strAdInfoToString);
                    }
                });
            }
        }

        @Override // com.unity3d.mediation.banner.LevelPlayBannerAdViewListener
        public void onAdCollapsed(LevelPlayAdInfo levelPlayAdInfo) {
            if (this.val$bannerListener != null) {
                final String strAdInfoToString = LevelPlayUtils.adInfoToString(levelPlayAdInfo);
                final IUnityBannerAdListener iUnityBannerAdListener = this.val$bannerListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.BannerAd$1$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityBannerAdListener.onAdCollapsed(strAdInfoToString);
                    }
                });
            }
        }

        @Override // com.unity3d.mediation.banner.LevelPlayBannerAdViewListener
        public void onAdDisplayFailed(LevelPlayAdInfo levelPlayAdInfo, LevelPlayAdError levelPlayAdError) {
            if (this.val$bannerListener != null) {
                final String strAdInfoToString = LevelPlayUtils.adInfoToString(levelPlayAdInfo);
                final String strAdErrorToString = LevelPlayUtils.adErrorToString(levelPlayAdError);
                final IUnityBannerAdListener iUnityBannerAdListener = this.val$bannerListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.BannerAd$1$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityBannerAdListener.onAdDisplayFailed(strAdInfoToString, strAdErrorToString);
                    }
                });
            }
        }

        @Override // com.unity3d.mediation.banner.LevelPlayBannerAdViewListener
        public void onAdDisplayed(LevelPlayAdInfo levelPlayAdInfo) {
            if (this.val$bannerListener != null) {
                final String strAdInfoToString = LevelPlayUtils.adInfoToString(levelPlayAdInfo);
                final IUnityBannerAdListener iUnityBannerAdListener = this.val$bannerListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.BannerAd$1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityBannerAdListener.onAdDisplayed(strAdInfoToString);
                    }
                });
            }
        }

        @Override // com.unity3d.mediation.banner.LevelPlayBannerAdViewListener
        public void onAdExpanded(LevelPlayAdInfo levelPlayAdInfo) {
            if (this.val$bannerListener != null) {
                final String strAdInfoToString = LevelPlayUtils.adInfoToString(levelPlayAdInfo);
                final IUnityBannerAdListener iUnityBannerAdListener = this.val$bannerListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.BannerAd$1$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityBannerAdListener.onAdExpanded(strAdInfoToString);
                    }
                });
            }
        }

        @Override // com.unity3d.mediation.banner.LevelPlayBannerAdViewListener
        public void onAdLeftApplication(LevelPlayAdInfo levelPlayAdInfo) {
            if (this.val$bannerListener != null) {
                final String strAdInfoToString = LevelPlayUtils.adInfoToString(levelPlayAdInfo);
                final IUnityBannerAdListener iUnityBannerAdListener = this.val$bannerListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.BannerAd$1$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityBannerAdListener.onAdLeftApplication(strAdInfoToString);
                    }
                });
            }
        }

        @Override // com.unity3d.mediation.banner.LevelPlayBannerAdViewListener
        public void onAdLoadFailed(LevelPlayAdError levelPlayAdError) {
            if (this.val$bannerListener != null) {
                final String strAdErrorToString = LevelPlayUtils.adErrorToString(levelPlayAdError);
                final IUnityBannerAdListener iUnityBannerAdListener = this.val$bannerListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.BannerAd$1$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityBannerAdListener.onAdLoadFailed(strAdErrorToString);
                    }
                });
            }
        }

        @Override // com.unity3d.mediation.banner.LevelPlayBannerAdViewListener
        public void onAdLoaded(LevelPlayAdInfo levelPlayAdInfo) {
            if (this.val$bannerListener != null) {
                final String strAdInfoToString = LevelPlayUtils.adInfoToString(levelPlayAdInfo);
                final IUnityBannerAdListener iUnityBannerAdListener = this.val$bannerListener;
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.BannerAd$1$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        iUnityBannerAdListener.onAdLoaded(strAdInfoToString);
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.unity.androidbridge.BannerAd$4, reason: invalid class name */
    class AnonymousClass4 implements Runnable {
        final /* synthetic */ String val$position;
        final /* synthetic */ boolean val$respectSafeArea;
        final /* synthetic */ float val$x;
        final /* synthetic */ float val$y;

        AnonymousClass4(String str, float f, float f2, boolean z) {
            this.val$position = str;
            this.val$x = f;
            this.val$y = f2;
            this.val$respectSafeArea = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BannerAd.this.mBannerAdView.getParent() == null) {
                BannerAd.this.mActivity.addContentView(BannerAd.this.mBannerAdView, new FrameLayout.LayoutParams(-2, -2));
            }
            BannerAd.this.setPositionInternal(this.val$position, this.val$x, this.val$y, this.val$respectSafeArea);
            BannerAd.this.mBannerAdView.setOnHierarchyChangeListener(new ViewGroup.OnHierarchyChangeListener() { // from class: com.ironsource.unity.androidbridge.BannerAd.4.1
                @Override // android.view.ViewGroup.OnHierarchyChangeListener
                public void onChildViewAdded(View view, View view2) {
                    BannerAd.this.mActivity.runOnUiThread(new Runnable() { // from class: com.ironsource.unity.androidbridge.BannerAd.4.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (BannerAd.this.mBannerAdView != null) {
                                BannerAd.this.mBannerAdView.setVisibility(BannerAd.this.mBannerAdViewVisibilityState);
                            }
                            BannerAd.this.mBannerAdView.requestLayout();
                        }
                    });
                }

                @Override // android.view.ViewGroup.OnHierarchyChangeListener
                public void onChildViewRemoved(View view, View view2) {
                }
            });
        }
    }

    public static class Config {
        final LevelPlayBannerAdView.Config config;
        final String description;
        final boolean displayOnLoad;
        final boolean respectSafeArea;
        final float x;
        final float y;

        public static class Builder {
            private LevelPlayBannerAdView.Config.Builder builder = new LevelPlayBannerAdView.Config.Builder();
            private String description = AndroidBridgeConstants.BANNER_POSITION_BOTTOMCENTER;
            private boolean displayOnLoad = true;
            private boolean respectSafeArea = false;
            private float x;
            private float y;

            public Config build() {
                return new Config(this.builder.build(), this.description, this.x, this.y, this.displayOnLoad, this.respectSafeArea, null);
            }

            public void setBidFloor(double d) {
                this.builder.setBidFloor(d);
            }

            public void setDisplayOnLoad(boolean z) {
                this.displayOnLoad = z;
            }

            public void setPlacementName(String str) {
                this.builder.setPlacementName(str);
            }

            public void setPosition(String str, float f, float f2) {
                this.description = str;
                this.x = f;
                this.y = f2;
            }

            public void setRespectSafeArea(boolean z) {
                this.respectSafeArea = z;
            }

            public void setSize(LevelPlayAdSize levelPlayAdSize) {
                this.builder.setAdSize(levelPlayAdSize);
            }
        }

        private Config(LevelPlayBannerAdView.Config config, String str, float f, float f2, boolean z, boolean z2) {
            this.config = config;
            this.description = str;
            this.x = f;
            this.y = f2;
            this.displayOnLoad = z;
            this.respectSafeArea = z2;
        }

        /* synthetic */ Config(LevelPlayBannerAdView.Config config, String str, float f, float f2, boolean z, boolean z2, AnonymousClass1 anonymousClass1) {
            this(config, str, f, f2, z, z2);
        }
    }

    public BannerAd(String str, Config config, IUnityBannerAdListener iUnityBannerAdListener) {
        this.mBannerAdView = new LevelPlayBannerAdView(this.mActivity, str, config.config);
        setup(config.description, config.x, config.y, config.displayOnLoad, config.respectSafeArea, iUnityBannerAdListener);
    }

    private float pixelsToDp(float f) {
        return f / Resources.getSystem().getDisplayMetrics().density;
    }

    private void setPosition(String str, float f, float f2, boolean z) {
        this.mActivity.runOnUiThread(new AnonymousClass4(str, f, f2, z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPositionInternal(String str, float f, float f2, boolean z) {
        int systemWindowInsetBottom;
        int systemWindowInsetLeft;
        int systemWindowInsetTop;
        int systemWindowInsetRight;
        WindowInsets rootWindowInsets;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mBannerAdView.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        byte b = 0;
        layoutParams.leftMargin = 0;
        layoutParams.topMargin = 0;
        layoutParams.rightMargin = 0;
        layoutParams.bottomMargin = 0;
        if (!z || Build.VERSION.SDK_INT < 28 || (rootWindowInsets = this.mActivity.getWindow().getDecorView().getRootWindowInsets()) == null) {
            systemWindowInsetBottom = 0;
            systemWindowInsetLeft = 0;
            systemWindowInsetTop = 0;
            systemWindowInsetRight = 0;
        } else {
            systemWindowInsetLeft = rootWindowInsets.getSystemWindowInsetLeft();
            systemWindowInsetTop = rootWindowInsets.getSystemWindowInsetTop();
            systemWindowInsetRight = rootWindowInsets.getSystemWindowInsetRight();
            systemWindowInsetBottom = rootWindowInsets.getSystemWindowInsetBottom();
        }
        str.hashCode();
        switch (str.hashCode()) {
            case -1139766756:
                if (!str.equals(AndroidBridgeConstants.BANNER_POSITION_CENTERLEFT)) {
                    b = -1;
                }
                break;
            case -967370073:
                b = !str.equals(AndroidBridgeConstants.BANNER_POSITION_CENTERRIGHT) ? (byte) -1 : (byte) 1;
                break;
            case -913702425:
                b = !str.equals(AndroidBridgeConstants.BANNER_POSITION_TOPRIGHT) ? (byte) -1 : (byte) 2;
                break;
            case 310672626:
                b = !str.equals(AndroidBridgeConstants.BANNER_POSITION_BOTTOMLEFT) ? (byte) -1 : (byte) 3;
                break;
            case 524532444:
                b = !str.equals(AndroidBridgeConstants.BANNER_POSITION_TOPLEFT) ? (byte) -1 : (byte) 4;
                break;
            case 1046577809:
                b = !str.equals(AndroidBridgeConstants.BANNER_POSITION_BOTTOMRIGHT) ? (byte) -1 : (byte) 5;
                break;
            case 1307084266:
                b = !str.equals(AndroidBridgeConstants.BANNER_POSITION_TOPCENTER) ? (byte) -1 : (byte) 6;
                break;
            case 2014820469:
                b = !str.equals(AndroidBridgeConstants.BANNER_POSITION_CENTER) ? (byte) -1 : (byte) 7;
                break;
            case 2029746065:
                b = !str.equals("Custom") ? (byte) -1 : (byte) 8;
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                layoutParams.gravity = 8388627;
                if (z) {
                    layoutParams.leftMargin = systemWindowInsetLeft;
                }
                break;
            case 1:
                layoutParams.gravity = 8388629;
                if (z) {
                    layoutParams.rightMargin = systemWindowInsetRight;
                }
                break;
            case 2:
                layoutParams.gravity = 8388661;
                if (z) {
                    layoutParams.rightMargin = systemWindowInsetRight;
                    layoutParams.topMargin = systemWindowInsetTop;
                }
                break;
            case 3:
                layoutParams.gravity = 8388691;
                if (z) {
                    layoutParams.leftMargin = systemWindowInsetLeft;
                    layoutParams.bottomMargin = systemWindowInsetBottom;
                }
                break;
            case 4:
                layoutParams.gravity = 8388659;
                if (z) {
                    layoutParams.leftMargin = systemWindowInsetLeft;
                    layoutParams.topMargin = systemWindowInsetTop;
                }
                break;
            case 5:
                layoutParams.gravity = 8388693;
                if (z) {
                    layoutParams.rightMargin = systemWindowInsetRight;
                    layoutParams.bottomMargin = systemWindowInsetBottom;
                }
                break;
            case 6:
                layoutParams.gravity = 49;
                if (z) {
                    layoutParams.topMargin = systemWindowInsetTop;
                }
                break;
            case 7:
                layoutParams.gravity = 17;
                break;
            case 8:
                layoutParams.gravity = 8388659;
                int iRound = Math.round(f);
                int iRound2 = Math.round(f2);
                if (z) {
                    iRound += systemWindowInsetLeft;
                    iRound2 += systemWindowInsetTop;
                }
                layoutParams.leftMargin = iRound;
                layoutParams.topMargin = iRound2;
                break;
            default:
                layoutParams.gravity = 81;
                if (z) {
                    layoutParams.bottomMargin = systemWindowInsetBottom;
                }
                break;
        }
        this.mBannerAdView.setLayoutParams(layoutParams);
    }

    private void setup(final String str, final float f, final float f2, boolean z, boolean z2, IUnityBannerAdListener iUnityBannerAdListener) {
        this.mBannerAdView.setBackgroundColor(0);
        if (z) {
            this.mBannerAdView.setVisibility(0);
            this.mBannerAdViewVisibilityState = 0;
        } else {
            this.mBannerAdView.setVisibility(8);
            this.mBannerAdViewVisibilityState = 8;
        }
        if (z2 && Build.VERSION.SDK_INT >= 28) {
            this.mBannerAdView.setFitsSystemWindows(true);
            this.mBannerAdView.setSystemUiVisibility(1280);
            this.mBannerAdView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.ironsource.unity.androidbridge.BannerAd$$ExternalSyntheticLambda2
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    return this.f$0.m2709lambda$setup$0$comironsourceunityandroidbridgeBannerAd(str, f, f2, view, windowInsets);
                }
            });
        }
        setPosition(str, f, f2, z2);
        this.mBannerAdView.setBannerListener(new AnonymousClass1(iUnityBannerAdListener));
    }

    public void destroy() {
        this.mBannerAdView.destroy();
    }

    public String getAdId() {
        return this.mBannerAdView.getAdId();
    }

    public void hideAd() {
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.ironsource.unity.androidbridge.BannerAd.3
            @Override // java.lang.Runnable
            public void run() {
                if (BannerAd.this.mBannerAdView != null) {
                    BannerAd.this.mBannerAdView.setVisibility(8);
                }
                BannerAd.this.mBannerAdViewVisibilityState = 8;
            }
        });
    }

    /* JADX INFO: renamed from: lambda$setup$0$com-ironsource-unity-androidbridge-BannerAd, reason: not valid java name */
    /* synthetic */ WindowInsets m2709lambda$setup$0$comironsourceunityandroidbridgeBannerAd(String str, float f, float f2, View view, WindowInsets windowInsets) {
        setPosition(str, f, f2, true);
        return windowInsets;
    }

    public void load() {
        this.mBannerAdView.loadAd();
    }

    public void pauseAutoRefresh() {
        this.mBannerAdView.pauseAutoRefresh();
    }

    public void resumeAutoRefresh() {
        this.mBannerAdView.resumeAutoRefresh();
    }

    public void setImpressionDataListener(final UnityImpressionDataListener unityImpressionDataListener) {
        this.mBannerAdView.setImpressionDataListener(unityImpressionDataListener == null ? null : new LevelPlayImpressionDataListener() { // from class: com.ironsource.unity.androidbridge.BannerAd$$ExternalSyntheticLambda1
            @Override // com.unity3d.mediation.impression.LevelPlayImpressionDataListener
            public final void onImpressionSuccess(LevelPlayImpressionData levelPlayImpressionData) {
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.BannerAd$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        unityImpressionDataListener.onImpressionSuccess(AndroidBridgeUtilities.getImpressionDataString(levelPlayImpressionData));
                    }
                });
            }
        });
    }

    public void showAd() {
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.ironsource.unity.androidbridge.BannerAd.2
            @Override // java.lang.Runnable
            public void run() {
                if (BannerAd.this.mBannerAdView != null) {
                    BannerAd.this.mBannerAdView.setVisibility(0);
                }
                BannerAd.this.mBannerAdViewVisibilityState = 0;
            }
        });
    }
}
