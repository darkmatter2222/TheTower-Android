package com.tapjoy.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class ag<K, V> implements ai<V> {
    public final K a;
    protected V b = null;

    public ag(K k) {
        this.a = k;
    }

    @Override // com.tapjoy.internal.ai
    public final V a() {
        return this.b;
    }

    @Override // com.tapjoy.internal.ai
    public final void a(V v) {
        this.b = v;
    }
}
