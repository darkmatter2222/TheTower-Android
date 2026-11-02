package com.ironsource.adapters.applovin.banner;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.widget.FrameLayout;
import com.applovin.adview.AppLovinAdView;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.adapters.admob.AdMobConstants;
import com.ironsource.adapters.applovin.AppLovinAdapter;
import com.ironsource.adapters.applovin.AppLovinConstants;
import com.ironsource.mediationsdk.AdapterUtils;
import com.ironsource.mediationsdk.ISBannerSize;
import com.ironsource.mediationsdk.adunit.adapter.listener.BannerAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseBanner;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppLovinBannerAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J(\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter;", "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseBanner;", "Lcom/ironsource/adapters/applovin/AppLovinAdapter;", "networkSettings", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", "<init>", "(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V", "mainHandler", "Landroid/os/Handler;", "bannerAdView", "Lcom/applovin/adview/AppLovinAdView;", AdMobConstants.Logs.LOAD_AD, "", "adData", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;", "activity", "Landroid/app/Activity;", "bannerSize", "Lcom/ironsource/mediationsdk/ISBannerSize;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;", "destroyAd", "getBannerSize", "Lcom/applovin/sdk/AppLovinAdSize;", "context", "Landroid/content/Context;", "getBannerLayoutParams", "Landroid/widget/FrameLayout$LayoutParams;", "applovinadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AppLovinBannerAdapter extends LevelPlayBaseBanner<AppLovinAdapter> {
    private AppLovinAdView bannerAdView;
    private final Handler mainHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppLovinBannerAdapter(NetworkSettings networkSettings) {
        super(networkSettings);
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
        this.mainHandler = new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void destroyAd$lambda$1(AppLovinBannerAdapter appLovinBannerAdapter) {
        AppLovinAdView appLovinAdView = appLovinBannerAdapter.bannerAdView;
        if (appLovinAdView != null) {
            appLovinAdView.destroy();
        }
        appLovinBannerAdapter.bannerAdView = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:29:0x0081  */
    /* JADX WARN: Code duplicated, block: B:34:0x00aa  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final FrameLayout.LayoutParams getBannerLayoutParams(Context context, ISBannerSize bannerSize) {
        FrameLayout.LayoutParams layoutParams;
        int height;
        String description = bannerSize.getDescription();
        if (description != null) {
            switch (description.hashCode()) {
                case -387072689:
                    if (description.equals("RECTANGLE")) {
                        layoutParams = new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(context, 300), AdapterUtils.dpToPixels(context, 250));
                    }
                    break;
                case 72205083:
                    if (description.equals("LARGE")) {
                        layoutParams = new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(context, 320), AdapterUtils.dpToPixels(context, 50));
                    }
                    break;
                case 79011241:
                    if (description.equals("SMART")) {
                        if (!AdapterUtils.isLargeScreen(context)) {
                            layoutParams = new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(context, 320), AdapterUtils.dpToPixels(context, 50));
                        } else {
                            layoutParams = new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(context, 728), AdapterUtils.dpToPixels(context, 90));
                        }
                    }
                    break;
                case 1951953708:
                    if (description.equals("BANNER")) {
                        layoutParams = new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(context, 320), AdapterUtils.dpToPixels(context, 50));
                    }
                    break;
                case 1999208305:
                    layoutParams = (!description.equals("CUSTOM") || 40 > (height = bannerSize.getHeight()) || height >= 61) ? new FrameLayout.LayoutParams(0, 0) : new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(context, 320), AdapterUtils.dpToPixels(context, 50));
                    break;
                default:
                    layoutParams = new FrameLayout.LayoutParams(0, 0);
                    break;
            }
        } else {
            layoutParams = new FrameLayout.LayoutParams(0, 0);
        }
        layoutParams.gravity = 17;
        return layoutParams;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002e, code lost:
    
        if (r0.equals("BANNER") == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x004c, code lost:
    
        if (r0.equals("LARGE") == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0051, code lost:
    
        return com.applovin.sdk.AppLovinAdSize.BANNER;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.applovin.sdk.AppLovinAdSize getBannerSize(android.content.Context r4, com.ironsource.mediationsdk.ISBannerSize r5) {
        /*
            r3 = this;
            java.lang.String r0 = r5.getDescription()
            r1 = 0
            if (r0 == 0) goto L5e
            int r2 = r0.hashCode()
            switch(r2) {
                case -387072689: goto L52;
                case 72205083: goto L46;
                case 79011241: goto L31;
                case 1951953708: goto L28;
                case 1999208305: goto Lf;
                default: goto Le;
            }
        Le:
            goto L5e
        Lf:
            java.lang.String r4 = "CUSTOM"
            boolean r4 = r0.equals(r4)
            if (r4 != 0) goto L18
            goto L5e
        L18:
            int r4 = r5.getHeight()
            r5 = 40
            if (r5 > r4) goto L27
            r5 = 61
            if (r4 >= r5) goto L27
            com.applovin.sdk.AppLovinAdSize r4 = com.applovin.sdk.AppLovinAdSize.BANNER
            return r4
        L27:
            return r1
        L28:
            java.lang.String r4 = "BANNER"
            boolean r4 = r0.equals(r4)
            if (r4 != 0) goto L4f
            goto L5e
        L31:
            java.lang.String r5 = "SMART"
            boolean r5 = r0.equals(r5)
            if (r5 != 0) goto L3a
            goto L5e
        L3a:
            boolean r4 = com.ironsource.mediationsdk.AdapterUtils.isLargeScreen(r4)
            if (r4 == 0) goto L43
            com.applovin.sdk.AppLovinAdSize r4 = com.applovin.sdk.AppLovinAdSize.LEADER
            return r4
        L43:
            com.applovin.sdk.AppLovinAdSize r4 = com.applovin.sdk.AppLovinAdSize.BANNER
            return r4
        L46:
            java.lang.String r4 = "LARGE"
            boolean r4 = r0.equals(r4)
            if (r4 != 0) goto L4f
            goto L5e
        L4f:
            com.applovin.sdk.AppLovinAdSize r4 = com.applovin.sdk.AppLovinAdSize.BANNER
            return r4
        L52:
            java.lang.String r4 = "RECTANGLE"
            boolean r4 = r0.equals(r4)
            if (r4 != 0) goto L5b
            goto L5e
        L5b:
            com.applovin.sdk.AppLovinAdSize r4 = com.applovin.sdk.AppLovinAdSize.MREC
            return r4
        L5e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adapters.applovin.banner.AppLovinBannerAdapter.getBannerSize(android.content.Context, com.ironsource.mediationsdk.ISBannerSize):com.applovin.sdk.AppLovinAdSize");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadAd$lambda$0(AppLovinAdSize appLovinAdSize, BannerAdListener bannerAdListener, FrameLayout.LayoutParams layoutParams, AppLovinBannerAdapter appLovinBannerAdapter, AppLovinSdk appLovinSdk, String str) {
        AppLovinAdView appLovinAdView = new AppLovinAdView(appLovinAdSize);
        AppLovinBannerListener appLovinBannerListener = new AppLovinBannerListener(bannerAdListener, appLovinAdView, layoutParams);
        appLovinAdView.setAdDisplayListener(appLovinBannerListener);
        appLovinAdView.setAdClickListener(appLovinBannerListener);
        appLovinAdView.setAdViewEventListener(appLovinBannerListener);
        appLovinBannerAdapter.bannerAdView = appLovinAdView;
        appLovinSdk.getAdService().loadNextAdForZoneId(str, appLovinBannerListener);
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBannerInterface
    public void destroyAd(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        IronLog.ADAPTER_API.verbose();
        this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.applovin.banner.AppLovinBannerAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AppLovinBannerAdapter.destroyAd$lambda$1(this.f$0);
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBannerInterface
    public void loadAd(AdData adData, Activity activity, ISBannerSize bannerSize, final BannerAdListener listener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(bannerSize, "bannerSize");
        Intrinsics.checkNotNullParameter(listener, "listener");
        final String string = adData.getString("zoneId");
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format("zoneId = %s", Arrays.copyOf(new Object[]{string == null ? "" : string}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        String str2 = string;
        if (str2 == null || str2.length() == 0) {
            String str3 = String.format("Missing params - %s", Arrays.copyOf(new Object[]{"zoneId"}, 1));
            Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
            IronLog.INTERNAL.error(str3);
            listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1002, str3);
            return;
        }
        final AppLovinSdk appLovinSdk$applovinadapter_release = AppLovinAdapter.INSTANCE.getAppLovinSdk$applovinadapter_release();
        if (appLovinSdk$applovinadapter_release == null) {
            IronLog.INTERNAL.error(AppLovinConstants.Logs.SDK_NOT_INITIALIZED);
            listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1000, AppLovinConstants.Logs.SDK_NOT_INITIALIZED);
            return;
        }
        Context applicationContext = activity.getApplicationContext();
        Intrinsics.checkNotNull(applicationContext);
        final AppLovinAdSize bannerSize2 = getBannerSize(applicationContext, bannerSize);
        if (bannerSize2 == null) {
            IronLog.INTERNAL.error(AppLovinConstants.Logs.UNSUPPORTED_BANNER_SIZE);
            listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1000, AppLovinConstants.Logs.UNSUPPORTED_BANNER_SIZE);
        } else {
            final FrameLayout.LayoutParams bannerLayoutParams = getBannerLayoutParams(applicationContext, bannerSize);
            this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.applovin.banner.AppLovinBannerAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    AppLovinBannerAdapter.loadAd$lambda$0(bannerSize2, listener, bannerLayoutParams, this, appLovinSdk$applovinadapter_release, string);
                }
            });
        }
    }
}
