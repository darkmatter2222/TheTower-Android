package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.ironsourceads.rewarded.RewardedAd;
import com.unity3d.ironsourceads.rewarded.RewardedAdLoaderListener;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ee, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3575ee implements U<RewardedAd> {
    private final InterfaceC3631hg a;
    private final RewardedAdLoaderListener b;

    public C3575ee(InterfaceC3631hg threadManager, RewardedAdLoaderListener publisherListener) {
        Intrinsics.checkNotNullParameter(threadManager, "threadManager");
        Intrinsics.checkNotNullParameter(publisherListener, "publisherListener");
        this.a = threadManager;
        this.b = publisherListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3575ee c3575ee, IronSourceError ironSourceError) {
        c3575ee.b.onRewardedAdLoadFailed(ironSourceError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(RewardedAd rewardedAd, C3575ee c3575ee) {
        IronLog.CALLBACK.info("RewardedAdLoaderListener.onRewardedAdLoaded adInfo: " + rewardedAd.getAdInfo());
        c3575ee.b.onRewardedAdLoaded(rewardedAd);
    }

    @Override // com.ironsource.U
    public void a(final IronSourceError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        IronLog.CALLBACK.info("RewardedAdLoaderListener.onRewardedAdLoadFailed error: " + error);
        this.a.a(new Runnable() { // from class: com.ironsource.ee$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3575ee.a(this.f$0, error);
            }
        });
    }

    @Override // com.ironsource.U
    public void a(final RewardedAd adObject) {
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        this.a.a(new Runnable() { // from class: com.ironsource.ee$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3575ee.a(adObject, this);
            }
        });
    }
}
