package com.applovin.impl;

import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinAdViewDisplayErrorCode;
import com.applovin.adview.AppLovinAdViewEventListener;
import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAd;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdEventListener;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdLoadListener;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdExpirationListener;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRequestListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdReviewListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.nativeAds.MaxNativeAdListener;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinBidTokenCollectionListener;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.ironsource.Yf;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class x2 {
    private static boolean a = true;
    private static boolean b = true;

    private static AppLovinAd a(AppLovinAd appLovinAd) {
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        return appLovinAdImpl.getDummyAd() != null ? appLovinAdImpl.getDummyAd() : appLovinAd;
    }

    public static void a(final AppLovinAdViewEventListener appLovinAdViewEventListener, final AppLovinAd appLovinAd, final AppLovinAdView appLovinAdView) {
        if (appLovinAd == null || appLovinAdViewEventListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                x2.d(appLovinAdViewEventListener, appLovinAd, appLovinAdView);
            }
        });
    }

    public static void a(final AppLovinAdViewEventListener appLovinAdViewEventListener, final AppLovinAd appLovinAd, final AppLovinAdView appLovinAdView, final AppLovinAdViewDisplayErrorCode appLovinAdViewDisplayErrorCode) {
        if (appLovinAd == null || appLovinAdViewEventListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                x2.b(appLovinAdViewEventListener, appLovinAd, appLovinAdView, appLovinAdViewDisplayErrorCode);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(AppLovinNativeAdEventListener appLovinNativeAdEventListener, AppLovinNativeAd appLovinNativeAd) {
        try {
            appLovinNativeAdEventListener.onNativeAdClicked(appLovinNativeAd);
        } catch (Throwable th) {
            com.applovin.impl.sdk.p.c("ListenerCallbackInvoker", "Unable to notify native ad event listener about ad click", th);
            c("nativeAdClicked", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, AppLovinError appLovinError) {
        try {
            appLovinNativeAdLoadListener.onNativeAdLoadFailed(appLovinError);
        } catch (Throwable th) {
            com.applovin.impl.sdk.p.c("ListenerCallbackInvoker", "Unable to notify native ad event listener about ad failing to load", th);
            c("nativeAdLoadFailed", th);
        }
    }

    public static void a(final MaxAdExpirationListener maxAdExpirationListener, final MaxAd maxAd, final MaxAd maxAd2, final boolean z) {
        if (maxAd == null || maxAd2 == null || maxAdExpirationListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                x2.a(z, maxAdExpirationListener, maxAd, maxAd2);
            }
        });
    }

    public static void a(MaxAdListener maxAdListener, MaxAd maxAd) {
        a(maxAdListener, maxAd, false);
    }

    public static void a(MaxAdListener maxAdListener, MaxAd maxAd, MaxError maxError) {
        a(maxAdListener, maxAd, maxError, false);
    }

    public static void a(final MaxAdListener maxAdListener, final MaxAd maxAd, final MaxError maxError, final boolean z) {
        if (maxAd == null || maxAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                x2.a(z, maxAdListener, maxAd, maxError);
            }
        });
    }

    public static void a(MaxAdListener maxAdListener, MaxAd maxAd, MaxReward maxReward) {
        a(maxAdListener, maxAd, maxReward, false);
    }

    public static void a(final MaxAdListener maxAdListener, final MaxAd maxAd, final MaxReward maxReward, final boolean z) {
        if (maxAd == null || !(maxAdListener instanceof MaxRewardedAdListener)) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                x2.a(z, maxAdListener, maxAd, maxReward);
            }
        });
    }

    public static void a(final MaxAdListener maxAdListener, final MaxAd maxAd, final boolean z) {
        if (maxAd == null || maxAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                x2.a(z, maxAdListener, maxAd);
            }
        });
    }

    public static void a(MaxAdListener maxAdListener, String str, MaxError maxError) {
        a(maxAdListener, str, maxError, false);
    }

    public static void a(final MaxAdListener maxAdListener, final String str, final MaxError maxError, final boolean z) {
        if (str == null || maxAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                x2.a(z, maxAdListener, str, maxError);
            }
        });
    }

    public static void a(MaxAdRequestListener maxAdRequestListener, String str) {
        a(maxAdRequestListener, str, false);
    }

    public static void a(final MaxAdRequestListener maxAdRequestListener, final String str, final boolean z) {
        if (str == null || maxAdRequestListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                x2.a(z, maxAdRequestListener, str);
            }
        });
    }

    public static void a(MaxAdRevenueListener maxAdRevenueListener, MaxAd maxAd) {
        a(maxAdRevenueListener, maxAd, false);
    }

    public static void a(final MaxAdRevenueListener maxAdRevenueListener, final MaxAd maxAd, final boolean z) {
        if (maxAd == null || maxAdRevenueListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                x2.a(z, maxAdRevenueListener, maxAd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(MaxAdReviewListener maxAdReviewListener, String str, MaxAd maxAd) {
        try {
            maxAdReviewListener.onCreativeIdGenerated(str, maxAd);
        } catch (Throwable th) {
            com.applovin.impl.sdk.p.c("ListenerCallbackInvoker", "Unable to notify Ad Review creative id generated", th);
            c("adReviewCreativeIdGenerated", th);
        }
    }

    public static void a(final MaxAdReviewListener maxAdReviewListener, final String str, final MaxAd maxAd, boolean z) {
        if (maxAdReviewListener != null) {
            AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda31
                @Override // java.lang.Runnable
                public final void run() {
                    x2.a(maxAdReviewListener, str, maxAd);
                }
            });
        }
    }

    public static void a(final MaxNativeAdListener maxNativeAdListener, final MaxAd maxAd, final boolean z) {
        if (maxAd == null || maxNativeAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                x2.a(z, maxNativeAdListener, maxAd);
            }
        });
    }

    public static void a(final MaxNativeAdListener maxNativeAdListener, final MaxNativeAdView maxNativeAdView, final MaxAd maxAd, final boolean z) {
        if (maxAd == null || maxNativeAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                x2.a(z, maxNativeAdListener, maxNativeAdView, maxAd);
            }
        });
    }

    public static void a(final MaxNativeAdListener maxNativeAdListener, final String str, final MaxError maxError, final boolean z) {
        if (str == null || maxNativeAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                x2.a(z, maxNativeAdListener, str, maxError);
            }
        });
    }

    public static void a(final AppLovinAdClickListener appLovinAdClickListener, final AppLovinAd appLovinAd) {
        if (appLovinAd == null || appLovinAdClickListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                x2.b(appLovinAdClickListener, appLovinAd);
            }
        });
    }

    public static void a(final AppLovinAdDisplayListener appLovinAdDisplayListener, final AppLovinAd appLovinAd) {
        if (appLovinAd == null || appLovinAdDisplayListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                x2.c(appLovinAdDisplayListener, appLovinAd);
            }
        });
    }

    public static void a(final AppLovinAdDisplayListener appLovinAdDisplayListener, final String str) {
        if (appLovinAdDisplayListener instanceof p2) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda34
                @Override // java.lang.Runnable
                public final void run() {
                    x2.b(appLovinAdDisplayListener, str);
                }
            });
        }
    }

    public static void a(final AppLovinAdRewardListener appLovinAdRewardListener, final AppLovinAd appLovinAd, final int i) {
        if (appLovinAd == null || appLovinAdRewardListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                x2.b(appLovinAdRewardListener, appLovinAd, i);
            }
        });
    }

    public static void a(final AppLovinAdRewardListener appLovinAdRewardListener, final AppLovinAd appLovinAd, final Map map) {
        if (appLovinAd == null || appLovinAdRewardListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                x2.d(appLovinAdRewardListener, appLovinAd, map);
            }
        });
    }

    public static void a(final AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, final AppLovinAd appLovinAd) {
        if (appLovinAd == null || appLovinAdVideoPlaybackListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda35
            @Override // java.lang.Runnable
            public final void run() {
                x2.b(appLovinAdVideoPlaybackListener, appLovinAd);
            }
        });
    }

    public static void a(final AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, final AppLovinAd appLovinAd, final double d, final boolean z) {
        if (appLovinAd == null || appLovinAdVideoPlaybackListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                x2.b(appLovinAdVideoPlaybackListener, appLovinAd, d, z);
            }
        });
    }

    public static void a(final AppLovinBidTokenCollectionListener appLovinBidTokenCollectionListener, final String str) {
        if (appLovinBidTokenCollectionListener != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    x2.c(appLovinBidTokenCollectionListener, str);
                }
            });
        }
    }

    public static void a(final AppLovinPostbackListener appLovinPostbackListener, final String str) {
        if (appLovinPostbackListener != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    x2.b(appLovinPostbackListener, str);
                }
            });
        }
    }

    public static void a(final AppLovinPostbackListener appLovinPostbackListener, final String str, final int i) {
        if (appLovinPostbackListener != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    x2.b(appLovinPostbackListener, str, i);
                }
            });
        }
    }

    private static void a(String str, Throwable th) {
        com.applovin.impl.sdk.p.b("ListenerCallbackInvoker", "Error in internal callback '" + str + "'", th);
    }

    private static void a(String str, Throwable th, boolean z) {
        if (z) {
            b(str, th);
        } else {
            a(str, th);
        }
    }

    public static void a(boolean z) {
        b = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z, MaxAdExpirationListener maxAdExpirationListener, MaxAd maxAd, MaxAd maxAd2) {
        if (!c(z)) {
            maxAdExpirationListener.onExpiredAdReloaded(maxAd, maxAd2);
            return;
        }
        try {
            maxAdExpirationListener.onExpiredAdReloaded(maxAd, maxAd2);
        } catch (Throwable th) {
            a("onExpiredAdReloaded", th, z);
            b("maxExpiredAdReloaded", th, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z, MaxAdListener maxAdListener, MaxAd maxAd) {
        if (!c(z)) {
            maxAdListener.onAdClicked(maxAd);
            return;
        }
        try {
            maxAdListener.onAdClicked(maxAd);
        } catch (Throwable th) {
            a(Yf.f, th, z);
            b("maxAdClicked", th, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z, MaxAdListener maxAdListener, MaxAd maxAd, MaxError maxError) {
        if (!c(z)) {
            maxAdListener.onAdDisplayFailed(maxAd, maxError);
            return;
        }
        try {
            maxAdListener.onAdDisplayFailed(maxAd, maxError);
        } catch (Throwable th) {
            a("onAdDisplayFailed", th, z);
            b("maxAdDisplayFailed", th, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z, MaxAdListener maxAdListener, MaxAd maxAd, MaxReward maxReward) {
        if (!c(z)) {
            ((MaxRewardedAdListener) maxAdListener).onUserRewarded(maxAd, maxReward);
            return;
        }
        try {
            ((MaxRewardedAdListener) maxAdListener).onUserRewarded(maxAd, maxReward);
        } catch (Throwable th) {
            a("onUserRewarded", th, z);
            b("maxRewardedUser", th, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z, MaxAdListener maxAdListener, String str, MaxError maxError) {
        if (!c(z)) {
            maxAdListener.onAdLoadFailed(str, maxError);
            return;
        }
        try {
            maxAdListener.onAdLoadFailed(str, maxError);
        } catch (Throwable th) {
            a(Yf.b, th, z);
            b("maxAdLoadFailed", th, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z, MaxAdRequestListener maxAdRequestListener, String str) {
        if (!c(z)) {
            maxAdRequestListener.onAdRequestStarted(str);
            return;
        }
        try {
            maxAdRequestListener.onAdRequestStarted(str);
        } catch (Throwable th) {
            a("onAdRequestStarted", th, z);
            b("maxAdRequestStarted", th, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z, MaxAdRevenueListener maxAdRevenueListener, MaxAd maxAd) {
        if (!c(z)) {
            maxAdRevenueListener.onAdRevenuePaid(maxAd);
            return;
        }
        try {
            maxAdRevenueListener.onAdRevenuePaid(maxAd);
        } catch (Throwable th) {
            a("onAdRevenuePaid", th, z);
            b("maxAdPaidRevenue", th, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z, MaxNativeAdListener maxNativeAdListener, MaxAd maxAd) {
        if (!c(z)) {
            maxNativeAdListener.onNativeAdClicked(maxAd);
            return;
        }
        try {
            maxNativeAdListener.onNativeAdClicked(maxAd);
        } catch (Throwable th) {
            a("onNativeAdClicked", th, z);
            b("maxNativeAdClicked", th, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z, MaxNativeAdListener maxNativeAdListener, MaxNativeAdView maxNativeAdView, MaxAd maxAd) {
        if (!c(z)) {
            maxNativeAdListener.onNativeAdLoaded(maxNativeAdView, maxAd);
            return;
        }
        try {
            maxNativeAdListener.onNativeAdLoaded(maxNativeAdView, maxAd);
        } catch (Throwable th) {
            a("onNativeAdLoaded", th, z);
            b("maxNativeAdLoaded", th, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z, MaxNativeAdListener maxNativeAdListener, String str, MaxError maxError) {
        if (!c(z)) {
            maxNativeAdListener.onNativeAdLoadFailed(str, maxError);
            return;
        }
        try {
            maxNativeAdListener.onNativeAdLoadFailed(str, maxError);
        } catch (Throwable th) {
            a("onNativeAdLoadFailed", th, z);
            b("maxNativeAdLoadFailed", th, z);
        }
    }

    public static void b(final AppLovinAdViewEventListener appLovinAdViewEventListener, final AppLovinAd appLovinAd, final AppLovinAdView appLovinAdView) {
        if (appLovinAd == null || appLovinAdViewEventListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                x2.e(appLovinAdViewEventListener, appLovinAd, appLovinAdView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(AppLovinAdViewEventListener appLovinAdViewEventListener, AppLovinAd appLovinAd, AppLovinAdView appLovinAdView, AppLovinAdViewDisplayErrorCode appLovinAdViewDisplayErrorCode) {
        try {
            appLovinAdViewEventListener.adFailedToDisplay(a(appLovinAd), appLovinAdView, appLovinAdViewDisplayErrorCode);
        } catch (Throwable th) {
            com.applovin.impl.sdk.p.c("ListenerCallbackInvoker", "Unable to notify ad event listener about display failed event", th);
        }
    }

    public static void b(final AppLovinNativeAdEventListener appLovinNativeAdEventListener, final AppLovinNativeAd appLovinNativeAd) {
        if (appLovinNativeAdEventListener != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    x2.a(appLovinNativeAdEventListener, appLovinNativeAd);
                }
            });
        }
    }

    public static void b(final AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, final AppLovinError appLovinError) {
        if (appLovinNativeAdLoadListener != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    x2.a(appLovinNativeAdLoadListener, appLovinError);
                }
            });
        }
    }

    public static void b(MaxAdListener maxAdListener, MaxAd maxAd) {
        b(maxAdListener, maxAd, false);
    }

    public static void b(final MaxAdListener maxAdListener, final MaxAd maxAd, final boolean z) {
        if (maxAd == null || !(maxAdListener instanceof MaxAdViewAdListener)) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                x2.b(z, maxAdListener, maxAd);
            }
        });
    }

    public static void b(MaxAdReviewListener maxAdReviewListener, String str, MaxAd maxAd) {
        a(maxAdReviewListener, str, maxAd, false);
    }

    public static void b(final MaxNativeAdListener maxNativeAdListener, final MaxAd maxAd, final boolean z) {
        if (maxAd == null || maxNativeAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                x2.b(z, maxNativeAdListener, maxAd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(AppLovinAdClickListener appLovinAdClickListener, AppLovinAd appLovinAd) {
        try {
            appLovinAdClickListener.adClicked(a(appLovinAd));
        } catch (Throwable th) {
            com.applovin.impl.sdk.p.c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being clicked", th);
            c("adClicked", th);
        }
    }

    public static void b(final AppLovinAdDisplayListener appLovinAdDisplayListener, final AppLovinAd appLovinAd) {
        if (appLovinAd == null || appLovinAdDisplayListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                x2.d(appLovinAdDisplayListener, appLovinAd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(AppLovinAdDisplayListener appLovinAdDisplayListener, String str) {
        ((p2) appLovinAdDisplayListener).onAdDisplayFailed(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAd appLovinAd, int i) {
        try {
            appLovinAdRewardListener.validationRequestFailed(a(appLovinAd), i);
        } catch (Throwable th) {
            com.applovin.impl.sdk.p.c("ListenerCallbackInvoker", "Unable to notify ad reward listener about reward validation request failing", th);
        }
    }

    public static void b(final AppLovinAdRewardListener appLovinAdRewardListener, final AppLovinAd appLovinAd, final Map map) {
        if (appLovinAd == null || appLovinAdRewardListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                x2.e(appLovinAdRewardListener, appLovinAd, map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAd appLovinAd) {
        try {
            appLovinAdVideoPlaybackListener.videoPlaybackBegan(a(appLovinAd));
        } catch (Throwable th) {
            com.applovin.impl.sdk.p.c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad playback began", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAd appLovinAd, double d, boolean z) {
        try {
            appLovinAdVideoPlaybackListener.videoPlaybackEnded(a(appLovinAd), d, z);
        } catch (Throwable th) {
            com.applovin.impl.sdk.p.c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad playback ended", th);
        }
    }

    public static void b(final AppLovinBidTokenCollectionListener appLovinBidTokenCollectionListener, final String str) {
        if (appLovinBidTokenCollectionListener != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda32
                @Override // java.lang.Runnable
                public final void run() {
                    x2.d(appLovinBidTokenCollectionListener, str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(AppLovinPostbackListener appLovinPostbackListener, String str) {
        try {
            appLovinPostbackListener.onPostbackSuccess(str);
        } catch (Throwable th) {
            com.applovin.impl.sdk.p.c("ListenerCallbackInvoker", "Unable to notify AppLovinPostbackListener about postback URL (" + str + ") executed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(AppLovinPostbackListener appLovinPostbackListener, String str, int i) {
        try {
            appLovinPostbackListener.onPostbackFailure(str, i);
        } catch (Throwable th) {
            com.applovin.impl.sdk.p.c("ListenerCallbackInvoker", "Unable to notify AppLovinPostbackListener about postback URL (" + str + ") failing to execute with error code (" + i + "):", th);
        }
    }

    private static void b(String str, Throwable th) {
        com.applovin.impl.sdk.p.c("ListenerCallbackInvoker", "Error in publisher callback '" + str + "'", th);
    }

    private static void b(String str, Throwable th, boolean z) {
        if (com.applovin.impl.sdk.l.F0 != null) {
            com.applovin.impl.sdk.l.F0.E().a("ListenerCallbackInvoker", str, th, CollectionUtils.hashMap("details", "isPublisherCallback=" + z));
        }
    }

    public static void b(boolean z) {
        a = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(boolean z, MaxAdListener maxAdListener, MaxAd maxAd) {
        if (!c(z)) {
            ((MaxAdViewAdListener) maxAdListener).onAdCollapsed(maxAd);
            return;
        }
        try {
            ((MaxAdViewAdListener) maxAdListener).onAdCollapsed(maxAd);
        } catch (Throwable th) {
            a("onAdCollapsed", th, z);
            b("maxAdCollapsed", th, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(boolean z, MaxNativeAdListener maxNativeAdListener, MaxAd maxAd) {
        if (!c(z)) {
            maxNativeAdListener.onNativeAdExpired(maxAd);
            return;
        }
        try {
            maxNativeAdListener.onNativeAdExpired(maxAd);
        } catch (Throwable th) {
            a("onNativeAdExpired", th, z);
            b("maxNativeAdExpired", th, z);
        }
    }

    public static void c(final AppLovinAdViewEventListener appLovinAdViewEventListener, final AppLovinAd appLovinAd, final AppLovinAdView appLovinAdView) {
        if (appLovinAd == null || appLovinAdViewEventListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                x2.f(appLovinAdViewEventListener, appLovinAd, appLovinAdView);
            }
        });
    }

    public static void c(MaxAdListener maxAdListener, MaxAd maxAd) {
        c(maxAdListener, maxAd, false);
    }

    public static void c(final MaxAdListener maxAdListener, final MaxAd maxAd, final boolean z) {
        if (maxAd == null || maxAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                x2.c(z, maxAdListener, maxAd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAd appLovinAd) {
        try {
            appLovinAdDisplayListener.adDisplayed(a(appLovinAd));
        } catch (Throwable th) {
            com.applovin.impl.sdk.p.c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being displayed", th);
            c("adDisplayed", th);
        }
    }

    public static void c(final AppLovinAdRewardListener appLovinAdRewardListener, final AppLovinAd appLovinAd, final Map map) {
        if (appLovinAd == null || appLovinAdRewardListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                x2.f(appLovinAdRewardListener, appLovinAd, map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(AppLovinBidTokenCollectionListener appLovinBidTokenCollectionListener, String str) {
        try {
            appLovinBidTokenCollectionListener.onBidTokenCollected(str);
        } catch (Throwable th) {
            com.applovin.impl.sdk.p.c("ListenerCallbackInvoker", "Unable to notify bid token listener about successful bid token collection", th);
            c("onBidTokenCollected", th);
        }
    }

    private static void c(String str, Throwable th) {
        com.applovin.impl.sdk.l lVar = com.applovin.impl.sdk.l.F0;
        if (lVar != null) {
            lVar.E().a("ListenerCallbackInvoker", str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(boolean z, MaxAdListener maxAdListener, MaxAd maxAd) {
        if (!c(z)) {
            maxAdListener.onAdDisplayed(maxAd);
            return;
        }
        try {
            maxAdListener.onAdDisplayed(maxAd);
        } catch (Throwable th) {
            a("onAdDisplayed", th, z);
            b("maxAdDisplayed", th, z);
        }
    }

    private static boolean c(boolean z) {
        return z ? a : b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(AppLovinAdViewEventListener appLovinAdViewEventListener, AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
        try {
            appLovinAdViewEventListener.adClosedFullscreen(a(appLovinAd), appLovinAdView);
        } catch (Throwable th) {
            com.applovin.impl.sdk.p.c("ListenerCallbackInvoker", "Unable to notify ad event listener about fullscreen closed event", th);
        }
    }

    public static void d(MaxAdListener maxAdListener, MaxAd maxAd) {
        d(maxAdListener, maxAd, false);
    }

    public static void d(final MaxAdListener maxAdListener, final MaxAd maxAd, final boolean z) {
        if (maxAd == null || !(maxAdListener instanceof MaxAdViewAdListener)) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                x2.d(z, maxAdListener, maxAd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAd appLovinAd) {
        try {
            appLovinAdDisplayListener.adHidden(a(appLovinAd));
        } catch (Throwable th) {
            com.applovin.impl.sdk.p.c("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being hidden", th);
            c("adHidden", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAd appLovinAd, Map map) {
        try {
            appLovinAdRewardListener.userRewardRejected(a(appLovinAd), map);
        } catch (Throwable th) {
            com.applovin.impl.sdk.p.c("ListenerCallbackInvoker", "Unable to notify ad reward listener about reward validation request being rejected", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(AppLovinBidTokenCollectionListener appLovinBidTokenCollectionListener, String str) {
        try {
            appLovinBidTokenCollectionListener.onBidTokenCollectionFailed(str);
        } catch (Throwable th) {
            com.applovin.impl.sdk.p.c("ListenerCallbackInvoker", "Unable to notify bid token listener about bid token collection failure", th);
            c("onBidTokenCollectionFailed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(boolean z, MaxAdListener maxAdListener, MaxAd maxAd) {
        if (!c(z)) {
            ((MaxAdViewAdListener) maxAdListener).onAdExpanded(maxAd);
            return;
        }
        try {
            ((MaxAdViewAdListener) maxAdListener).onAdExpanded(maxAd);
        } catch (Throwable th) {
            a("onAdExpanded", th, z);
            b("maxAdExpanded", th, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(AppLovinAdViewEventListener appLovinAdViewEventListener, AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
        try {
            appLovinAdViewEventListener.adLeftApplication(a(appLovinAd), appLovinAdView);
        } catch (Throwable th) {
            com.applovin.impl.sdk.p.c("ListenerCallbackInvoker", "Unable to notify ad event listener about application leave event", th);
        }
    }

    public static void e(MaxAdListener maxAdListener, MaxAd maxAd) {
        e(maxAdListener, maxAd, false);
    }

    public static void e(final MaxAdListener maxAdListener, final MaxAd maxAd, final boolean z) {
        if (maxAd == null || maxAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                x2.e(z, maxAdListener, maxAd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAd appLovinAd, Map map) {
        try {
            appLovinAdRewardListener.userOverQuota(a(appLovinAd), map);
        } catch (Throwable th) {
            com.applovin.impl.sdk.p.c("ListenerCallbackInvoker", "Unable to notify ad reward listener about exceeding quota", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(boolean z, MaxAdListener maxAdListener, MaxAd maxAd) {
        if (!c(z)) {
            maxAdListener.onAdHidden(maxAd);
            return;
        }
        try {
            maxAdListener.onAdHidden(maxAd);
        } catch (Throwable th) {
            a("onAdHidden", th, z);
            b("maxAdHidden", th, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(AppLovinAdViewEventListener appLovinAdViewEventListener, AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
        try {
            appLovinAdViewEventListener.adOpenedFullscreen(a(appLovinAd), appLovinAdView);
        } catch (Throwable th) {
            com.applovin.impl.sdk.p.c("ListenerCallbackInvoker", "Unable to notify ad event listener about fullscreen opened event", th);
        }
    }

    public static void f(MaxAdListener maxAdListener, MaxAd maxAd) {
        f(maxAdListener, maxAd, false);
    }

    public static void f(final MaxAdListener maxAdListener, final MaxAd maxAd, final boolean z) {
        if (maxAd == null || maxAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.x2$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                x2.f(z, maxAdListener, maxAd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAd appLovinAd, Map map) {
        try {
            appLovinAdRewardListener.userRewardVerified(a(appLovinAd), map);
        } catch (Throwable th) {
            com.applovin.impl.sdk.p.c("ListenerCallbackInvoker", "Unable to notify ad reward listener about successful reward validation request", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(boolean z, MaxAdListener maxAdListener, MaxAd maxAd) {
        if (!c(z)) {
            maxAdListener.onAdLoaded(maxAd);
            return;
        }
        try {
            maxAdListener.onAdLoaded(maxAd);
        } catch (Throwable th) {
            a(Yf.j, th, z);
            b("maxAdLoaded", th, z);
        }
    }
}
