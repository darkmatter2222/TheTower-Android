package com.tapjoy.internal;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class at<K, V> extends AbstractMap<K, V> {
    private final HashMap<K, bq<K, V>> a = new HashMap<>();
    private final br<K, V> b = new br<>();

    public static <K, V> at<K, V> a() {
        return new at<>();
    }

    private static V a(bq<K, V> bqVar) {
        if (bqVar != null) {
            return (V) bqVar.get();
        }
        return null;
    }

    private void b() {
        while (true) {
            bq<K, V> bqVarA = this.b.a();
            if (bqVarA == null) {
                return;
            } else {
                this.a.remove(bqVarA.a);
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.a.clear();
        while (this.b.a() != null) {
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        b();
        return this.a.containsKey(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        b();
        Iterator<bq<K, V>> it = this.a.values().iterator();
        while (it.hasNext()) {
            if (obj.equals(it.next().get())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        b();
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        b();
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        b();
        return (V) a(this.a.get(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        b();
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        b();
        return this.a.keySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        b();
        return (V) a(this.a.put(k, new bq<>(k, v, this.b)));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        b();
        return (V) a(this.a.remove(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        b();
        return this.a.size();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        b();
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        b();
        throw new UnsupportedOperationException();
    }
}
