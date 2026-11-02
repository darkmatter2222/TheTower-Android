package com.google.android.play.deku.j$.util.concurrent;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-bb91944b082bf4b7fbd41b6e2b3f121d681bdc5ad0cdf9802a2430155b14e3ec */
/* JADX INFO: loaded from: classes2.dex */
public class j implements Map.Entry {
    public final int a;
    public final Object b;
    public volatile Object c;
    public volatile j d;

    public j(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    public j(int i, Object obj, Object obj2, j jVar) {
        this(i, obj, obj2);
        this.d = jVar;
    }

    public j a(int i, Object obj) {
        Object obj2;
        do {
            if (this.a == i && ((obj2 = this.b) == obj || (obj2 != null && obj.equals(obj2)))) {
                return this;
            }
            this = this.d;
        } while (this != null);
        return null;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        Map.Entry entry;
        Object key;
        Object value;
        if (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || (value = entry.getValue()) == null) {
            return false;
        }
        Object obj2 = this.b;
        if (key != obj2 && !key.equals(obj2)) {
            return false;
        }
        Object obj3 = this.c;
        return value == obj3 || value.equals(obj3);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.b;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.c;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.c.hashCode() ^ this.b.hashCode();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        return com.google.android.play.deku.j$.util.a.c(this.b, this.c);
    }
}
