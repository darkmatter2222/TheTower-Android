package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Wg implements Yg {
    private final Rg a;
    private int b;

    public Wg(Rg waterfallOperations) {
        Intrinsics.checkNotNullParameter(waterfallOperations, "waterfallOperations");
        this.a = waterfallOperations;
    }

    @Override // com.ironsource.Yg
    public void a() {
        this.a.a(Z4.c.b);
    }

    @Override // com.ironsource.Yg
    public void a(A it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.b++;
        this.a.a(it);
    }

    @Override // com.ironsource.Yg
    public Pd b() {
        if (this.b >= 2) {
            return Pd.MAX_ATTEMPTS_REACHED;
        }
        return !this.a.a() ? Pd.NO_LOADED_ADS : Pd.CAN_RECOVER;
    }

    @Override // com.ironsource.Yg
    public A c() {
        return this.a.a(this.b);
    }
}
