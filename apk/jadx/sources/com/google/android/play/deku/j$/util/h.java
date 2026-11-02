package com.google.android.play.deku.j$.util;

import com.google.android.play.deku.java.util.function.BiConsumer;
import com.google.android.play.deku.java.util.function.BiFunction;
import com.google.android.play.deku.java.util.function.Function;
import java.io.Serializable;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: compiled from: r8-map-id-bb91944b082bf4b7fbd41b6e2b3f121d681bdc5ad0cdf9802a2430155b14e3ec */
/* JADX INFO: loaded from: classes2.dex */
public final class h implements Map, Serializable, j {
    private static final long serialVersionUID = -1034234728574286014L;
    public final Map a;
    public transient i b;
    public transient g c;
    public transient d d;

    public h(Map map) {
        map.getClass();
        this.a = map;
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    public final Object compute(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }

    public final Object computeIfAbsent(Object obj, Function function) {
        throw new UnsupportedOperationException();
    }

    public final Object computeIfPresent(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return this.a.containsKey(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return this.a.containsValue(obj);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        g gVar = this.c;
        if (gVar != null) {
            return gVar;
        }
        g gVar2 = new g(this.a.entrySet());
        this.c = gVar2;
        return gVar2;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return obj == this || this.a.equals(obj);
    }

    @Override // com.google.android.play.deku.j$.util.j
    public final void forEach(BiConsumer biConsumer) {
        Map map = this.a;
        BiConsumer biConsumer2 = null;
        if (map instanceof j) {
            ((j) map).forEach(null);
            return;
        }
        if (map instanceof ConcurrentMap) {
            Objects.requireNonNull(null);
            for (Map.Entry entry : ((ConcurrentMap) map).entrySet()) {
                try {
                    biConsumer2.accept(entry.getKey(), entry.getValue());
                    throw null;
                } catch (IllegalStateException unused) {
                }
            }
            return;
        }
        Objects.requireNonNull(null);
        Iterator it = map.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            try {
                biConsumer2.accept(entry2.getKey(), entry2.getValue());
                throw null;
            } catch (IllegalStateException e) {
                throw new ConcurrentModificationException(e);
            }
        }
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        return this.a.get(obj);
    }

    @Override // java.util.Map, com.google.android.play.deku.j$.util.j
    public final Object getOrDefault(Object obj, Object obj2) {
        Map map = this.a;
        if (map instanceof j) {
            return ((j) map).getOrDefault(obj, obj2);
        }
        if (map instanceof ConcurrentMap) {
            Object obj3 = ((ConcurrentMap) map).get(obj);
            if (obj3 != null) {
                return obj3;
            }
        } else {
            Object obj4 = map.get(obj);
            if (obj4 != null || map.containsKey(obj)) {
                return obj4;
            }
        }
        return obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.a.isEmpty();
    }

    @Override // java.util.Map
    public final Set keySet() {
        i iVar = this.b;
        if (iVar != null) {
            return iVar;
        }
        i iVar2 = new i(this.a.keySet());
        this.b = iVar2;
        return iVar2;
    }

    public final Object merge(Object obj, Object obj2, BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final Object putIfAbsent(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final Object replace(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        throw new UnsupportedOperationException();
    }

    public final void replaceAll(BiFunction biFunction) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final int size() {
        return this.a.size();
    }

    public final String toString() {
        return this.a.toString();
    }

    @Override // java.util.Map
    public final Collection values() {
        d dVar = this.d;
        if (dVar != null) {
            return dVar;
        }
        d dVar2 = new d(this.a.values());
        this.d = dVar2;
        return dVar2;
    }
}
