package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.y5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3930y5 implements Gb {
    private final IronSourceError a;
    private final C3653j3 b;
    private final InterfaceC3798r1 c;

    public C3930y5(IronSourceError error, C3653j3 adLoadTaskListener, InterfaceC3798r1 analytics) {
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(adLoadTaskListener, "adLoadTaskListener");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        this.a = error;
        this.b = adLoadTaskListener;
        this.c = analytics;
    }

    public final IronSourceError a() {
        return this.a;
    }

    @Override // com.ironsource.Gb
    public void start() {
        InterfaceC3669k1.c.a aVar = InterfaceC3669k1.c.a;
        aVar.a().a(this.c);
        aVar.a(new C3723n1.j(this.a.getErrorCode()), new C3723n1.k(this.a.getErrorMessage()), new C3723n1.f(0L)).a(this.c);
        this.b.a(this.a);
    }
}
