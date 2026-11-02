package com.facebook.ads.redexgen.X;

import com.google.common.collect.ParametricNullness;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class W6<E> extends AbstractCollection<E> {
    public final InterfaceC1994Wt<? super E> A00;
    public final Collection<E> A01;

    public W6(Collection<E> collection, InterfaceC1994Wt<? super E> interfaceC1994Wt) {
        this.A01 = collection;
        this.A00 = interfaceC1994Wt;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(@ParametricNullness E e) {
        AbstractC1995Wu.A0C(this.A00.A4d(e));
        return this.A01.add(e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection<? extends E> collection) {
        Iterator<? extends E> it = collection.iterator();
        while (it.hasNext()) {
            AbstractC1995Wu.A0C(this.A00.A4d(it.next()));
        }
        return this.A01.addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        AbstractC1966Vp.A03(this.A01, this.A00);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        if (W5.A03(this.A01, obj)) {
            return this.A00.A4d(obj);
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection<?> collection) {
        return W5.A04(this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        return !AbstractC1966Vp.A02(this.A01, this.A00);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator<E> iterator() {
        return AbstractC1964Vn.A01(this.A01.iterator(), this.A00);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(@CheckForNull Object obj) {
        return contains(obj) && this.A01.remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection<?> collection) {
        boolean z = false;
        Iterator<E> it = this.A01.iterator();
        while (it.hasNext()) {
            E next = it.next();
            if (this.A00.A4d(next) && collection.contains(next)) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        boolean z = false;
        Iterator<E> it = this.A01.iterator();
        while (it.hasNext()) {
            E next = it.next();
            if (this.A00.A4d(next) && !collection.contains(next)) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        int i = 0;
        Iterator<E> it = this.A01.iterator();
        while (it.hasNext()) {
            if (this.A00.A4d(it.next())) {
                i++;
            }
        }
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return AbstractC1963Vm.A05(iterator()).toArray();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        return (T[]) AbstractC1963Vm.A05(iterator()).toArray(tArr);
    }
}
