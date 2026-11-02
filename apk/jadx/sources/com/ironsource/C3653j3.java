package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.ironsourceads.banner.BannerAdLoaderListener;
import com.unity3d.ironsourceads.banner.BannerAdView;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.j3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3653j3 implements U<BannerAdView> {
    private final InterfaceC3631hg a;
    private final BannerAdLoaderListener b;

    public C3653j3(InterfaceC3631hg threadManager, BannerAdLoaderListener publisherListener) {
        Intrinsics.checkNotNullParameter(threadManager, "threadManager");
        Intrinsics.checkNotNullParameter(publisherListener, "publisherListener");
        this.a = threadManager;
        this.b = publisherListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(IronSourceError ironSourceError, C3653j3 c3653j3) {
        IronLog.CALLBACK.info("BannerAdLoaderListener.onBannerAdLoadFailed error: " + ironSourceError);
        c3653j3.b.onBannerAdLoadFailed(ironSourceError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(BannerAdView bannerAdView, C3653j3 c3653j3) {
        IronLog.CALLBACK.info("BannerAdLoaderListener.onBannerAdLoaded adInfo: " + bannerAdView.getAdInfo());
        c3653j3.b.onBannerAdLoaded(bannerAdView);
    }

    @Override // com.ironsource.U
    public void a(final IronSourceError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.a(new Runnable() { // from class: com.ironsource.j3$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3653j3.a(error, this);
            }
        });
    }

    @Override // com.ironsource.U
    public void a(final BannerAdView adObject) {
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        this.a.a(new Runnable() { // from class: com.ironsource.j3$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3653j3.a(adObject, this);
            }
        });
    }
}
