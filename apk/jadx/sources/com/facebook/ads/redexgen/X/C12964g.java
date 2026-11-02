package com.facebook.ads.redexgen.X;

import com.google.common.collect.ParametricNullness;
import java.util.Collection;
import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4g, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C12964g<K, V> extends AbstractC12954f<K, V>.AsMap implements SortedMap<K, Collection<V>> {

    @CheckForNull
    public SortedSet<K> A00;
    public final /* synthetic */ AbstractC12954f A01;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12964g(AbstractC12954f abstractC12954f, SortedMap<K, Collection<V>> sortedMap) {
        super(abstractC12954f, sortedMap);
        this.A01 = abstractC12954f;
    }

    public SortedMap<K, Collection<V>> A0B() {
        return (SortedMap) this.A00;
    }

    public SortedSet<K> A0C() {
        return new C3b(this.A01, A0B());
    }

    @Override // java.util.SortedMap, java.util.Map
    /* JADX INFO: renamed from: A0D, reason: merged with bridge method [inline-methods] */
    public SortedSet<K> keySet() {
        SortedSet<K> sortedSet = this.A00;
        if (sortedSet != null) {
            return sortedSet;
        }
        SortedSet<K> sortedSetA0C = A0C();
        this.A00 = sortedSetA0C;
        return sortedSetA0C;
    }

    @Override // java.util.SortedMap
    @CheckForNull
    public final Comparator<? super K> comparator() {
        return A0B().comparator();
    }

    @Override // java.util.SortedMap
    @ParametricNullness
    public final K firstKey() {
        return A0B().firstKey();
    }

    @Override // java.util.SortedMap
    public SortedMap<K, Collection<V>> headMap(@ParametricNullness K k) {
        return new C12964g(this.A01, A0B().headMap(k));
    }

    @Override // java.util.SortedMap
    @ParametricNullness
    public final K lastKey() {
        return A0B().lastKey();
    }

    @Override // java.util.SortedMap
    public SortedMap<K, Collection<V>> subMap(@ParametricNullness K k, @ParametricNullness K k2) {
        return new C12964g(this.A01, A0B().subMap(k, k2));
    }

    @Override // java.util.SortedMap
    public SortedMap<K, Collection<V>> tailMap(@ParametricNullness K k) {
        return new C12964g(this.A01, A0B().tailMap(k));
    }
}
