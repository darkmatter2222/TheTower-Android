package com.google.android.play.deku.j$.util.concurrent;

import com.google.android.play.deku.java.util.function.Consumer;
import com.google.android.play.deku.java.util.function.IntFunction;
import com.google.android.play.deku.java.util.function.Predicate;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-bb91944b082bf4b7fbd41b6e2b3f121d681bdc5ad0cdf9802a2430155b14e3ec */
/* JADX INFO: loaded from: classes2.dex */
public final class e extends b implements Set, com.google.android.play.deku.j$.util.b {
    private static final long serialVersionUID = 2249069246763182397L;

    @Override // java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        return this.a.e(entry.getKey(), entry.getValue(), false) == null;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        Iterator it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (this.a.e(entry.getKey(), entry.getValue(), false) == null) {
                z = true;
            }
        }
        return z;
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
                consumer.accept(new i(jVarA.b, jVarA.c, this.a));
            }
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        j[] jVarArr = this.a.a;
        int iHashCode = 0;
        if (jVarArr != null) {
            n nVar = new n(jVarArr, jVarArr.length, jVarArr.length);
            while (true) {
                j jVarA = nVar.a();
                if (jVarA == null) {
                    break;
                }
                iHashCode += jVarA.hashCode();
            }
        }
        return iHashCode;
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
