package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Na implements Sa {
    private final Ja a;
    private final S2 b;
    private boolean c;

    public Na(Ja strategy, S2 currentAdUnit, boolean z) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        Intrinsics.checkNotNullParameter(currentAdUnit, "currentAdUnit");
        this.a = strategy;
        this.b = currentAdUnit;
        this.c = z;
    }

    @Override // com.ironsource.L0
    public void a(C3853u0 adUnitCallback) {
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
        this.a.a(adUnitCallback, this.b, (S2) null, new AbstractC3707m3.a(AbstractC3707m3.b.C1113b.a), this.c, (Long) null);
    }

    @Override // com.ironsource.Sa
    public void b() {
        this.a.a("Loading an ad while loading");
    }

    @Override // com.ironsource.L0
    public void b(IronSourceError ironSourceError) {
        this.a.a(ironSourceError, this.b, (AbstractC3707m3) new AbstractC3707m3.a(AbstractC3707m3.b.a.a), false, this.c, (Long) null);
    }

    @Override // com.ironsource.Sa
    public void c() {
        this.b.a(true);
        Ja ja = this.a;
        ja.a((Sa) new La(ja));
    }

    @Override // com.ironsource.Sa
    public void d() {
        this.c = true;
    }

    @Override // com.ironsource.Sa
    public void f() {
        this.c = false;
    }
}
