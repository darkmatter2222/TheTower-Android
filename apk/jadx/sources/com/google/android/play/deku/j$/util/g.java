package com.google.android.play.deku.j$.util;

import com.google.android.play.deku.java.util.function.Consumer;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-bb91944b082bf4b7fbd41b6e2b3f121d681bdc5ad0cdf9802a2430155b14e3ec */
/* JADX INFO: loaded from: classes2.dex */
public final class g extends i {
    private static final long serialVersionUID = 7854390611657943733L;

    @Override // com.google.android.play.deku.j$.util.d, java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        return this.a.contains(new f((Map.Entry) obj));
    }

    @Override // com.google.android.play.deku.j$.util.d, java.util.Collection
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.play.deku.j$.util.i, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (set.size() != this.a.size()) {
            return false;
        }
        return containsAll(set);
    }

    @Override // com.google.android.play.deku.j$.util.d, com.google.android.play.deku.j$.util.b
    public final void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        a.a(this.a, new e(consumer));
    }

    @Override // com.google.android.play.deku.j$.util.d, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new c(this);
    }

    @Override // com.google.android.play.deku.j$.util.d, java.util.Collection
    public final Object[] toArray() {
        Object[] array = this.a.toArray();
        for (int i = 0; i < array.length; i++) {
            array[i] = new f((Map.Entry) array[i]);
        }
        return array;
    }

    @Override // com.google.android.play.deku.j$.util.d, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        Object[] array = this.a.toArray(objArr.length == 0 ? objArr : Arrays.copyOf(objArr, 0));
        for (int i = 0; i < array.length; i++) {
            array[i] = new f((Map.Entry) array[i]);
        }
        if (array.length > objArr.length) {
            return array;
        }
        System.arraycopy(array, 0, objArr, 0, array.length);
        if (objArr.length > array.length) {
            objArr[array.length] = null;
        }
        return objArr;
    }
}
