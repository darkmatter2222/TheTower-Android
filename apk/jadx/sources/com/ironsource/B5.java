package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.ironsourceads.rewarded.RewardedAdRequest;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class B5 implements Gb {
    private final RewardedAdRequest a;
    private final C3575ee b;
    private final InterfaceC3798r1 c;
    private final IronSourceError d;

    public B5(RewardedAdRequest adRequest, C3575ee adLoadTaskListener, InterfaceC3798r1 analytics, IronSourceError error) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(adLoadTaskListener, "adLoadTaskListener");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(error, "error");
        this.a = adRequest;
        this.b = adLoadTaskListener;
        this.c = analytics;
        this.d = error;
    }

    public final IronSourceError a() {
        return this.d;
    }

    @Override // com.ironsource.Gb
    public void start() {
        C3894w5 c3894w5 = new C3894w5(this.c, this.a.getAdId$mediationsdk_release(), this.a.getProviderName$mediationsdk_release());
        c3894w5.a();
        c3894w5.a(this.d);
        this.b.a(this.d);
    }
}
