package com.tapjoy.internal;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public final class bs<T> {
    public WeakReference<T> a;

    public final T a() {
        WeakReference<T> weakReference = this.a;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public final void a(T t) {
        this.a = new WeakReference<>(t);
    }
}
