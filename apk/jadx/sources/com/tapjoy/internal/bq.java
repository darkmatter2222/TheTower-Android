package com.tapjoy.internal;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public final class bq<N, T> extends WeakReference<T> {
    public final N a;

    public bq(N n, T t, ReferenceQueue<? super T> referenceQueue) {
        super(t, referenceQueue);
        this.a = n;
    }
}
