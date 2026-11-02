package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.dF, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2274dF<T> {
    public final T A00;
    public final Throwable A01;
    public final boolean A02;

    public C2274dF(boolean z, T t) {
        this.A02 = z;
        this.A00 = t;
        this.A01 = null;
    }

    public C2274dF(boolean z, T t, Throwable th) {
        this.A02 = z;
        this.A00 = t;
        this.A01 = th;
    }

    public final T A00() {
        return this.A00;
    }

    public final boolean A01() {
        return this.A02;
    }
}
