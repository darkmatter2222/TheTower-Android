package com.facebook.ads.redexgen.X;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.h2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2506h2<K, V> implements Set<Map.Entry<K, V>> {
    public final /* synthetic */ AbstractC2510h6 A00;

    public C2506h2(AbstractC2510h6 abstractC2510h6) {
        this.A00 = abstractC2510h6;
    }

    private final boolean A00(@Nullable Map.Entry<K, V> entry) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ /* synthetic */ boolean add(@Nullable Object obj) {
        A00((Map.Entry) obj);
        throw null;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
        int iA04 = this.A00.A04();
        for (Map.Entry<K, V> entry : collection) {
            this.A00.A0F(entry.getKey(), entry.getValue());
        }
        return iA04 != this.A00.A04();
    }

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        this.A00.A0D();
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean contains(@Nullable Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        int iA05 = this.A00.A05(entry.getKey());
        if (iA05 < 0) {
            return false;
        }
        return AbstractC2503gz.A04(this.A00.A0B(iA05, 1), entry.getValue());
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
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
            Object objA0B2 = this.A00.A0B(iA04, 1);
            int iHashCode2 = objA0B == null ? 0 : objA0B.hashCode();
            if (objA0B2 != null) {
                iHashCode = objA0B2.hashCode();
            }
            i += iHashCode ^ iHashCode2;
        }
        return i;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean isEmpty() {
        return this.A00.A04() == 0;
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new C2508h4(this.A00);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public final int size() {
        return this.A00.A04();
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        throw new UnsupportedOperationException();
    }
}
