package com.facebook.ads.redexgen.X;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: Add missing generic type declarations: [K] */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.h3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2507h3<K> implements Set<K> {
    public final /* synthetic */ AbstractC2510h6 A00;

    public C2507h3(AbstractC2510h6 abstractC2510h6) {
        this.A00 = abstractC2510h6;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean add(@Nullable K k) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean addAll(Collection<? extends K> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        this.A00.A0D();
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean contains(@Nullable Object obj) {
        return this.A00.A05(obj) >= 0;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean containsAll(Collection<?> collection) {
        return AbstractC2510h6.A00(this.A00.A07(), collection);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean equals(Object obj) {
        return AbstractC2510h6.A03(this, obj);
    }

    @Override // java.util.Set, java.util.Collection
    public final int hashCode() {
        int i = 0;
        for (int iA04 = this.A00.A04() - 1; iA04 >= 0; iA04--) {
            int iHashCode = 0;
            Object objA0B = this.A00.A0B(iA04, 0);
            if (objA0B != null) {
                iHashCode = objA0B.hashCode();
            }
            i += iHashCode;
        }
        return i;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean isEmpty() {
        return this.A00.A04() == 0;
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public final Iterator<K> iterator() {
        return new C2505h1(this.A00, 0);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        int iA05 = this.A00.A05(obj);
        if (iA05 < 0) {
            return false;
        }
        this.A00.A0E(iA05);
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean removeAll(Collection<?> collection) {
        return AbstractC2510h6.A01(this.A00.A07(), collection);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        return AbstractC2510h6.A02(this.A00.A07(), collection);
    }

    @Override // java.util.Set, java.util.Collection
    public final int size() {
        return this.A00.A04();
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray() {
        return this.A00.A0G(0);
    }

    @Override // java.util.Set, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        return (T[]) this.A00.A0H(tArr, 0);
    }
}
