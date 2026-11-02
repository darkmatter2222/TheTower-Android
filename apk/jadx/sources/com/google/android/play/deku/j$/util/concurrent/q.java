package com.google.android.play.deku.j$.util.concurrent;

import com.google.android.play.deku.java.util.function.Consumer;
import com.google.android.play.deku.java.util.function.IntFunction;
import com.google.android.play.deku.java.util.function.Predicate;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-bb91944b082bf4b7fbd41b6e2b3f121d681bdc5ad0cdf9802a2430155b14e3ec */
/* JADX INFO: loaded from: classes2.dex */
public final class q extends b implements com.google.android.play.deku.j$.util.b {
    private static final long serialVersionUID = 2249069246763182397L;

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.play.deku.j$.util.concurrent.b, java.util.Collection
    public final boolean contains(Object obj) {
        return this.a.containsValue(obj);
    }

    @Override // com.google.android.play.deku.j$.util.b
    public final void forEach(Consumer consumer) {
        consumer.getClass();
        j[] jVarArr = this.a.a;
        if (jVarArr == null) {
            return;
        }
        n nVar = new n(jVarArr, jVarArr.length, jVarArr.length);
        while (true) {
            j jVarA = nVar.a();
            if (jVarA == null) {
                return;
            } else {
                consumer.accept(jVarA.c);
            }
        }
    }

    @Override // com.google.android.play.deku.j$.util.concurrent.b, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        ConcurrentHashMap concurrentHashMap = this.a;
        j[] jVarArr = concurrentHashMap.a;
        int length = jVarArr == null ? 0 : jVarArr.length;
        return new g(jVarArr, length, length, concurrentHashMap, (byte) 1);
    }

    @Override // com.google.android.play.deku.j$.util.concurrent.b, java.util.Collection
    public final boolean remove(Object obj) {
        a aVar;
        if (obj == null) {
            return false;
        }
        Object it = iterator();
        do {
            aVar = (a) it;
            if (!aVar.hasNext()) {
                return false;
            }
        } while (!obj.equals(((g) it).next()));
        aVar.remove();
        return true;
    }

    @Override // com.google.android.play.deku.j$.util.concurrent.b, java.util.Collection
    public final boolean removeAll(Collection collection) {
        collection.getClass();
        Object it = iterator();
        boolean z = false;
        while (true) {
            a aVar = (a) it;
            if (!aVar.hasNext()) {
                return z;
            }
            if (collection.contains(((g) it).next())) {
                aVar.remove();
                z = true;
            }
        }
    }

    public final boolean removeIf(Predicate predicate) {
        throw null;
    }

    public final Object[] toArray(IntFunction intFunction) {
        IntFunction intFunction2 = null;
        intFunction2.apply(0);
        throw null;
    }
}
