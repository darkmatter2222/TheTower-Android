package com.facebook.ads.redexgen.X;

import com.google.common.collect.ParametricNullness;
import java.util.Collection;
import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

/* JADX INFO: Add missing generic type declarations: [K] */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3b, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3b<K> extends AbstractC12954f<K, V>.KeySet implements SortedSet<K> {
    public final /* synthetic */ AbstractC12954f A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3b(AbstractC12954f abstractC12954f, SortedMap<K, Collection<V>> sortedMap) {
        super(abstractC12954f, sortedMap);
        this.A00 = abstractC12954f;
    }

    public SortedMap<K, Collection<V>> A04() {
        return (SortedMap) super.A00();
    }

    @Override // java.util.SortedSet
    @CheckForNull
    public final Comparator<? super K> comparator() {
        return A04().comparator();
    }

    @Override // java.util.SortedSet
    @ParametricNullness
    public final K first() {
        return A04().firstKey();
    }

    @Override // java.util.SortedSet
    public SortedSet<K> headSet(@ParametricNullness K k) {
        return new C3b(this.A00, A04().headMap(k));
    }

    @Override // java.util.SortedSet
    @ParametricNullness
    public final K last() {
        return A04().lastKey();
    }

    @Override // java.util.SortedSet
    public SortedSet<K> subSet(@ParametricNullness K k, @ParametricNullness K k2) {
        return new C3b(this.A00, A04().subMap(k, k2));
    }

    @Override // java.util.SortedSet
    public SortedSet<K> tailSet(@ParametricNullness K k) {
        return new C3b(this.A00, A04().tailMap(k));
    }
}
