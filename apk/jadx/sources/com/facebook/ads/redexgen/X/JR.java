package com.facebook.ads.redexgen.X;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class JR<K, V> extends C2513h9<K, V> implements Map<K, V> {
    public AbstractC2510h6<K, V> A00;

    private AbstractC2510h6<K, V> A00() {
        if (this.A00 == null) {
            this.A00 = new JS(this);
        }
        return this.A00;
    }

    @Override // java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return A00().A08();
    }

    @Override // java.util.Map
    public final Set<K> keySet() {
        return A00().A09();
    }

    @Override // java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        A0E(super.A00 + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final Collection<V> values() {
        return A00().A0A();
    }
}
