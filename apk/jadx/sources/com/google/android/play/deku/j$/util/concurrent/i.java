package com.google.android.play.deku.j$.util.concurrent;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-bb91944b082bf4b7fbd41b6e2b3f121d681bdc5ad0cdf9802a2430155b14e3ec */
/* JADX INFO: loaded from: classes2.dex */
public final class i implements Map.Entry {
    public final Object a;
    public Object b;
    public final ConcurrentHashMap c;

    public i(Object obj, Object obj2, ConcurrentHashMap concurrentHashMap) {
        this.a = obj;
        this.b = obj2;
        this.c = concurrentHashMap;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        Map.Entry entry;
        Object key;
        Object value;
        if (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || (value = entry.getValue()) == null) {
            return false;
        }
        Object obj2 = this.a;
        if (key != obj2 && !key.equals(obj2)) {
            return false;
        }
        Object obj3 = this.b;
        return value == obj3 || value.equals(obj3);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.b.hashCode() ^ this.a.hashCode();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        obj.getClass();
        Object obj2 = this.b;
        this.b = obj;
        this.c.e(this.a, obj, false);
        return obj2;
    }

    public final String toString() {
        return com.google.android.play.deku.j$.util.a.c(this.a, this.b);
    }
}
