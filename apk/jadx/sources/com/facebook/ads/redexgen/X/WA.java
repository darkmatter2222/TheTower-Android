package com.facebook.ads.redexgen.X;

import com.google.common.collect.ParametricNullness;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import javax.annotation.CheckForNull;

/* JADX INFO: Add missing generic type declarations: [V] */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class WA<V> extends AbstractCollection<V> {
    public static String[] A05 = {"hAKsIPREBwvb1ph2MU4g11phNTOhrko4", "fZHlxnJImuFrwRZMjWBgdoWYIrFojPHg", "C8ik00q", "cBq9Ux8kTvo4CGVS7gbnYEXe2xnQSvgt", "h1VWh76mYtGF9mOosL5WpzReHjb0yPxr", "vksan3l0tiq8e7QtqT31ToCQuT2wIfeJ", "GlsRgUvJdphSZxaGndpdzYK6LFAZFcf9", "WF39wDJVpxrezVU4gxWdxtxi"};
    public Collection<V> A00;

    /* JADX WARN: Incorrect inner types in field signature: Lcom/facebook/ads/redexgen/X/4f<TK;TV;>.WrappedCollection; */
    @CheckForNull
    public final WA A01;

    @ParametricNullness
    public final K A02;

    @CheckForNull
    public final Collection<V> A03;
    public final /* synthetic */ AbstractC12954f A04;

    /* JADX WARN: Incorrect inner types in method signature: (TK;Ljava/util/Collection<TV;>;Lcom/facebook/ads/redexgen/X/4f<TK;TV;>.WrappedCollection;)V */
    /* JADX WARN: Multi-variable type inference failed */
    public WA(@ParametricNullness AbstractC12954f abstractC12954f, @CheckForNull Object obj, Collection collection, WA wa) {
        this.A04 = abstractC12954f;
        this.A02 = obj;
        this.A00 = collection;
        this.A01 = wa;
        this.A03 = wa == null ? null : wa.A02();
    }

    /* JADX WARN: Incorrect inner types in method signature: ()Lcom/facebook/ads/redexgen/X/4f<TK;TV;>.WrappedCollection; */
    @CheckForNull
    public final WA A00() {
        return this.A01;
    }

    @ParametricNullness
    public final K A01() {
        return this.A02;
    }

    public final Collection<V> A02() {
        return this.A00;
    }

    public final void A03() {
        if (this.A01 != null) {
            this.A01.A03();
        } else {
            this.A04.A01.put(this.A02, this.A00);
        }
    }

    public final void A04() {
        Collection<V> collection;
        if (this.A01 != null) {
            this.A01.A04();
            if (this.A01.A02() != this.A03) {
                throw new ConcurrentModificationException();
            }
        } else {
            if (!this.A00.isEmpty() || (collection = (Collection) this.A04.A01.get(this.A02)) == null) {
                return;
            }
            this.A00 = collection;
        }
    }

    public final void A05() {
        if (this.A01 != null) {
            this.A01.A05();
        } else if (this.A00.isEmpty()) {
            this.A04.A01.remove(this.A02);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(@ParametricNullness V v) {
        A04();
        boolean zIsEmpty = this.A00.isEmpty();
        boolean zAdd = this.A00.add(v);
        if (zAdd) {
            AbstractC12954f.A00(this.A04);
            if (zIsEmpty) {
                A03();
            }
        }
        return zAdd;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection<? extends V> collection) {
        if (collection.isEmpty()) {
            if (A05[5].charAt(6) != 'l') {
                throw new RuntimeException();
            }
            A05[5] = "x0OCRKlqzqKIlSwWVID68fWzrWPKd3Ke";
            return false;
        }
        int size = size();
        boolean zAddAll = this.A00.addAll(collection);
        if (zAddAll) {
            AbstractC12954f.A02(this.A04, this.A00.size() - size);
            if (size == 0) {
                A03();
            }
        }
        return zAddAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        int size = size();
        if (size == 0) {
            return;
        }
        this.A00.clear();
        AbstractC12954f.A03(this.A04, size);
        A05();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        A04();
        return this.A00.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection<?> collection) {
        A04();
        return this.A00.containsAll(collection);
    }

    @Override // java.util.Collection
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        A04();
        return this.A00.equals(obj);
    }

    @Override // java.util.Collection
    public final int hashCode() {
        A04();
        return this.A00.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator<V> iterator() {
        A04();
        return new WC(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(@CheckForNull Object obj) {
        A04();
        boolean zRemove = this.A00.remove(obj);
        if (zRemove) {
            AbstractC12954f.A01(this.A04);
            A05();
        }
        return zRemove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zRemoveAll = this.A00.removeAll(collection);
        if (zRemoveAll) {
            AbstractC12954f.A02(this.A04, this.A00.size() - size);
            A05();
        }
        return zRemoveAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        AbstractC1995Wu.A04(collection);
        int size = size();
        boolean zRetainAll = this.A00.retainAll(collection);
        if (zRetainAll) {
            AbstractC12954f.A02(this.A04, this.A00.size() - size);
            A05();
        }
        return zRetainAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        A04();
        return this.A00.size();
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        A04();
        return this.A00.toString();
    }
}
