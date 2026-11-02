package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Vg implements Yg {
    private final Rg a;

    public Vg(Rg waterfallOperations) {
        Intrinsics.checkNotNullParameter(waterfallOperations, "waterfallOperations");
        this.a = waterfallOperations;
    }

    @Override // com.ironsource.Yg
    public void a() {
    }

    @Override // com.ironsource.Yg
    public void a(A it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.a.a(it);
        this.a.a(Z4.b.b);
    }

    @Override // com.ironsource.Yg
    public Pd b() {
        return Pd.FEATURE_DISABLED;
    }

    @Override // com.ironsource.Yg
    public A c() {
        return this.a.a(0);
    }
}
