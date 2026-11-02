package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class G2<T> extends AbstractRunnableC2979oq {
    public final WeakReference<T> A00;

    public G2(T t) {
        this.A00 = new WeakReference<>(t);
    }

    public final T A08() {
        return this.A00.get();
    }
}
