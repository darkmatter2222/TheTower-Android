package com.ironsource.mediationsdk.ads.nativead;

import android.app.Activity;
import com.ironsource.C3591fc;
import com.ironsource.C3627hc;
import com.ironsource.C3717md;
import com.ironsource.C3801r4;
import com.ironsource.environment.ContextProvider;
import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface;
import com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdInterface;
import com.ironsource.mediationsdk.ads.nativead.internal.InternalNativeAdListener;
import com.ironsource.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinder;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.p;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class LevelPlayNativeAd implements NativeAdInterface, NativeAdDataInterface, InternalNativeAdListener {
    private String a;
    private C3717md b;
    private LevelPlayNativeAdListener c;
    private C3591fc d;
    private AdapterNativeAdData e;
    private AdapterNativeAdViewBinder f;
    private final AtomicBoolean g;

    public static final class Builder {
        private String a;
        private LevelPlayNativeAdListener b;

        public final LevelPlayNativeAd build() {
            return new LevelPlayNativeAd(this, null);
        }

        public final LevelPlayNativeAdListener getMListener$mediationsdk_release() {
            return this.b;
        }

        public final String getMPlacementName$mediationsdk_release() {
            return this.a;
        }

        public final void setMListener$mediationsdk_release(LevelPlayNativeAdListener levelPlayNativeAdListener) {
            this.b = levelPlayNativeAdListener;
        }

        public final void setMPlacementName$mediationsdk_release(String str) {
            this.a = str;
        }

        public final Builder withActivity(Activity activity) {
            ContextProvider.getInstance().updateActivity(activity);
            IronLog.INTERNAL.verbose("activity is updated to: " + (activity != null ? activity.hashCode() : 0));
            return this;
        }

        public final Builder withListener(LevelPlayNativeAdListener listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.b = listener;
            return this;
        }

        public final Builder withPlacementName(String str) {
            this.a = str;
            return this;
        }
    }

    private LevelPlayNativeAd(Builder builder) {
        this.g = new AtomicBoolean(false);
        this.a = builder.getMPlacementName$mediationsdk_release();
        this.c = builder.getMListener$mediationsdk_release();
    }

    public /* synthetic */ LevelPlayNativeAd(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    private final void a() {
        LevelPlayNativeAdListener levelPlayNativeAdListener = this.c;
        if (levelPlayNativeAdListener != null) {
            levelPlayNativeAdListener.onAdLoadFailed(this, ErrorBuilder.buildInitFailedError("init() has failed", IronSourceConstants.NATIVE_AD_UNIT));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(LevelPlayNativeAd levelPlayNativeAd) {
        levelPlayNativeAd.b();
        C3591fc c3591fc = levelPlayNativeAd.d;
        if (c3591fc != null) {
            c3591fc.a(levelPlayNativeAd.b);
        } else {
            levelPlayNativeAd.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(LevelPlayNativeAd levelPlayNativeAd, AdapterNativeAdData adapterNativeAdData, AdapterNativeAdViewBinder adapterNativeAdViewBinder, AdInfo adInfo) {
        levelPlayNativeAd.e = adapterNativeAdData;
        levelPlayNativeAd.f = adapterNativeAdViewBinder;
        LevelPlayNativeAdListener levelPlayNativeAdListener = levelPlayNativeAd.c;
        if (levelPlayNativeAdListener != null) {
            levelPlayNativeAdListener.onAdLoaded(levelPlayNativeAd, adInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(LevelPlayNativeAd levelPlayNativeAd, AdInfo adInfo) {
        LevelPlayNativeAdListener levelPlayNativeAdListener = levelPlayNativeAd.c;
        if (levelPlayNativeAdListener != null) {
            levelPlayNativeAdListener.onAdClicked(levelPlayNativeAd, adInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(LevelPlayNativeAd levelPlayNativeAd, IronSourceError ironSourceError) {
        LevelPlayNativeAdListener levelPlayNativeAdListener = levelPlayNativeAd.c;
        if (levelPlayNativeAdListener != null) {
            levelPlayNativeAdListener.onAdLoadFailed(levelPlayNativeAd, ironSourceError);
        }
    }

    private final void b() {
        if (this.g.compareAndSet(false, true)) {
            C3591fc c3591fcC = p.g().c();
            this.d = c3591fcC;
            if (c3591fcC != null) {
                c3591fcC.a(this);
                C3627hc c3627hcI = p.g().i(this.a);
                Intrinsics.checkNotNullExpressionValue(c3627hcI, "getNativeAdPlacement(...)");
                this.b = new C3717md(c3627hcI);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(LevelPlayNativeAd levelPlayNativeAd, AdInfo adInfo) {
        LevelPlayNativeAdListener levelPlayNativeAdListener = levelPlayNativeAd.c;
        if (levelPlayNativeAdListener != null) {
            levelPlayNativeAdListener.onAdImpression(levelPlayNativeAd, adInfo);
        }
    }

    @Override // com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdInterface
    public void destroyAd() {
        IronLog.API.info(String.valueOf(this));
        try {
            C3591fc c3591fc = this.d;
            if (c3591fc != null) {
                c3591fc.J();
            }
        } catch (Throwable th) {
            C3801r4.d().a(th);
            IronLog.API.error("destroyNativeAd()");
        }
    }

    @Override // com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface
    public String getAdvertiser() {
        AdapterNativeAdData adapterNativeAdData = this.e;
        if (adapterNativeAdData != null) {
            return adapterNativeAdData.getAdvertiser();
        }
        return null;
    }

    @Override // com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface
    public String getBody() {
        AdapterNativeAdData adapterNativeAdData = this.e;
        if (adapterNativeAdData != null) {
            return adapterNativeAdData.getBody();
        }
        return null;
    }

    @Override // com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface
    public String getCallToAction() {
        AdapterNativeAdData adapterNativeAdData = this.e;
        if (adapterNativeAdData != null) {
            return adapterNativeAdData.getCallToAction();
        }
        return null;
    }

    @Override // com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface
    public NativeAdDataInterface.Image getIcon() {
        AdapterNativeAdData adapterNativeAdData = this.e;
        if (adapterNativeAdData != null) {
            return adapterNativeAdData.getIcon();
        }
        return null;
    }

    public final AdapterNativeAdViewBinder getNativeAdViewBinder() {
        return this.f;
    }

    public final UUID getObjectId() {
        C3591fc c3591fc = this.d;
        if (c3591fc != null) {
            return c3591fc.h();
        }
        return null;
    }

    @Override // com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface
    public String getTitle() {
        AdapterNativeAdData adapterNativeAdData = this.e;
        if (adapterNativeAdData != null) {
            return adapterNativeAdData.getTitle();
        }
        return null;
    }

    @Override // com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdInterface
    public void loadAd() {
        IronLog.API.info(String.valueOf(this));
        String strB = p.g().b();
        Intrinsics.checkNotNull(strB);
        if (strB.length() <= 0) {
            IronSourceThreadManager.INSTANCE.getInitHandler().post(new Runnable() { // from class: com.ironsource.mediationsdk.ads.nativead.LevelPlayNativeAd$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    LevelPlayNativeAd.a(this.f$0);
                }
            });
            return;
        }
        LevelPlayNativeAdListener levelPlayNativeAdListener = this.c;
        if (levelPlayNativeAdListener != null) {
            levelPlayNativeAdListener.onAdLoadFailed(this, ErrorBuilder.buildInitFailedError("loadAd(): " + strB, IronSourceConstants.NATIVE_AD_UNIT));
        }
    }

    @Override // com.ironsource.mediationsdk.ads.nativead.internal.InternalNativeAdListener
    public void onNativeAdClicked(final AdInfo adInfo) {
        IronLog.CALLBACK.info(String.valueOf(this));
        IronSourceThreadManager.postOnUiThreadTask$default(IronSourceThreadManager.INSTANCE, new Runnable() { // from class: com.ironsource.mediationsdk.ads.nativead.LevelPlayNativeAd$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                LevelPlayNativeAd.a(this.f$0, adInfo);
            }
        }, 0L, 2, null);
    }

    @Override // com.ironsource.mediationsdk.ads.nativead.internal.InternalNativeAdListener
    public void onNativeAdImpression(final AdInfo adInfo) {
        IronLog.CALLBACK.info(String.valueOf(this));
        IronSourceThreadManager.postOnUiThreadTask$default(IronSourceThreadManager.INSTANCE, new Runnable() { // from class: com.ironsource.mediationsdk.ads.nativead.LevelPlayNativeAd$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                LevelPlayNativeAd.b(this.f$0, adInfo);
            }
        }, 0L, 2, null);
    }

    @Override // com.ironsource.mediationsdk.ads.nativead.internal.InternalNativeAdListener
    public void onNativeAdLoadFailed(final IronSourceError ironSourceError) {
        IronLog.CALLBACK.info(String.valueOf(this));
        IronSourceThreadManager.postOnUiThreadTask$default(IronSourceThreadManager.INSTANCE, new Runnable() { // from class: com.ironsource.mediationsdk.ads.nativead.LevelPlayNativeAd$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                LevelPlayNativeAd.a(this.f$0, ironSourceError);
            }
        }, 0L, 2, null);
    }

    @Override // com.ironsource.mediationsdk.ads.nativead.internal.InternalNativeAdListener
    public void onNativeAdLoaded(final AdInfo adInfo, final AdapterNativeAdData adapterNativeAdData, final AdapterNativeAdViewBinder nativeAdViewBinder) {
        Intrinsics.checkNotNullParameter(adapterNativeAdData, "adapterNativeAdData");
        Intrinsics.checkNotNullParameter(nativeAdViewBinder, "nativeAdViewBinder");
        IronLog.CALLBACK.info(String.valueOf(this));
        IronSourceThreadManager.postOnUiThreadTask$default(IronSourceThreadManager.INSTANCE, new Runnable() { // from class: com.ironsource.mediationsdk.ads.nativead.LevelPlayNativeAd$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                LevelPlayNativeAd.a(this.f$0, adapterNativeAdData, nativeAdViewBinder, adInfo);
            }
        }, 0L, 2, null);
    }

    public final void setListener(LevelPlayNativeAdListener levelPlayNativeAdListener) {
        this.c = levelPlayNativeAdListener;
    }
}
