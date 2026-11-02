package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.w5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3894w5 {
    private final InterfaceC3798r1 a;

    public C3894w5(InterfaceC3798r1 analytics, String adRequestAdId, Jd adRequestProviderName) {
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(adRequestAdId, "adRequestAdId");
        Intrinsics.checkNotNullParameter(adRequestProviderName, "adRequestProviderName");
        this.a = analytics;
        analytics.a(new C3723n1.s(adRequestProviderName.value()), new C3723n1.b(adRequestAdId));
    }

    public final void a() {
        InterfaceC3669k1.c.a.a().a(this.a);
    }

    public final void a(IronSourceError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        InterfaceC3669k1.c.a.a(new C3723n1.j(error.getErrorCode()), new C3723n1.k(error.getErrorMessage()), new C3723n1.f(0L)).a(this.a);
    }
}
