package com.facebook.ads.redexgen.X;

import com.google.common.collect.ParametricNullness;
import java.util.Collection;
import java.util.Iterator;
import java.util.NavigableMap;
import java.util.NavigableSet;
import javax.annotation.CheckForNull;

/* JADX INFO: Add missing generic type declarations: [K] */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3R, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3R<K> extends AbstractC12954f<K, V>.SortedKeySet implements NavigableSet<K> {
    public final /* synthetic */ AbstractC12954f A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3R(AbstractC12954f abstractC12954f, NavigableMap<K, Collection<V>> navigableMap) {
        super(abstractC12954f, navigableMap);
        this.A00 = abstractC12954f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final NavigableMap<K, Collection<V>> A04() {
        return (NavigableMap) super.A04();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.NavigableSet, java.util.SortedSet
    /* JADX INFO: renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final NavigableSet<K> headSet(@ParametricNullness K k) {
        return headSet(k, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.NavigableSet, java.util.SortedSet
    /* JADX INFO: renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final NavigableSet<K> tailSet(@ParametricNullness K k) {
        return tailSet(k, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.NavigableSet, java.util.SortedSet
    /* JADX INFO: renamed from: A03, reason: merged with bridge method [inline-methods] */
    public final NavigableSet<K> subSet(@ParametricNullness K k, @ParametricNullness K k2) {
        return subSet(k, true, k2, false);
    }

    @Override // java.util.NavigableSet
    @CheckForNull
    public final K ceiling(@ParametricNullness K k) {
        return A04().ceilingKey(k);
    }

    @Override // java.util.NavigableSet
    public final Iterator<K> descendingIterator() {
        return descendingSet().iterator();
    }

    @Override // java.util.NavigableSet
    public final NavigableSet<K> descendingSet() {
        return new C3R(this.A00, A04().descendingMap());
    }

    @Override // java.util.NavigableSet
    @CheckForNull
    public final K floor(@ParametricNullness K k) {
        return A04().floorKey(k);
    }

    @Override // java.util.NavigableSet
    public final NavigableSet<K> headSet(@ParametricNullness K k, boolean z) {
        return new C3R(this.A00, A04().headMap(k, z));
    }

    @Override // java.util.NavigableSet
    @CheckForNull
    public final K higher(@ParametricNullness K k) {
        return A04().higherKey(k);
    }

    @Override // java.util.NavigableSet
    @CheckForNull
    public final K lower(@ParametricNullness K k) {
        return A04().lowerKey(k);
    }

    @Override // java.util.NavigableSet
    @CheckForNull
    public final K pollFirst() {
        return (K) AbstractC1964Vn.A04(iterator());
    }

    @Override // java.util.NavigableSet
    @CheckForNull
    public final K pollLast() {
        return (K) AbstractC1964Vn.A04(descendingIterator());
    }

    @Override // java.util.NavigableSet
    public final NavigableSet<K> subSet(@ParametricNullness K k, @ParametricNullness boolean z, K k2, boolean z2) {
        return new C3R(this.A00, A04().subMap(k, z, k2, z2));
    }

    @Override // java.util.NavigableSet
    public final NavigableSet<K> tailSet(@ParametricNullness K k, boolean z) {
        return new C3R(this.A00, A04().tailMap(k, z));
    }
}
