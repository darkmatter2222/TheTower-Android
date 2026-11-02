package com.google.android.play.deku.j$.util.concurrent;

import com.google.android.play.deku.j$.util.Objects;
import com.google.android.play.deku.java.util.function.Consumer;
import com.google.android.play.deku.java.util.function.IntFunction;
import com.google.android.play.deku.java.util.function.Predicate;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-bb91944b082bf4b7fbd41b6e2b3f121d681bdc5ad0cdf9802a2430155b14e3ec */
/* JADX INFO: loaded from: classes2.dex */
public final class h extends b implements Set, com.google.android.play.deku.j$.util.b {
    private static final long serialVersionUID = 7249069246763182397L;

    @Override // java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.play.deku.j$.util.concurrent.b, java.util.Collection
    public final boolean contains(Object obj) {
        return this.a.containsKey(obj);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (set != this) {
            return containsAll(set) && set.containsAll(this);
        }
        return true;
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
                consumer.accept(jVarA.b);
            }
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        Object it = iterator();
        int iHashCode = 0;
        while (((a) it).hasNext()) {
            iHashCode += ((g) it).next().hashCode();
        }
        return iHashCode;
    }

    @Override // com.google.android.play.deku.j$.util.concurrent.b, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        ConcurrentHashMap concurrentHashMap = this.a;
        j[] jVarArr = concurrentHashMap.a;
        int length = jVarArr == null ? 0 : jVarArr.length;
        return new g(jVarArr, length, length, concurrentHashMap, (byte) 0);
    }

    @Override // com.google.android.play.deku.j$.util.concurrent.b, java.util.Collection
    public final boolean remove(Object obj) {
        return this.a.f(obj, null, null) != null;
    }

    public final boolean removeIf(Predicate predicate) {
        Predicate predicate2 = null;
        Objects.requireNonNull(null);
        Object it = iterator();
        if (!((a) it).hasNext()) {
            return false;
        }
        predicate2.test(((g) it).next());
        throw null;
    }

    public final Object[] toArray(IntFunction intFunction) {
        IntFunction intFunction2 = null;
        intFunction2.apply(0);
        throw null;
    }
}
