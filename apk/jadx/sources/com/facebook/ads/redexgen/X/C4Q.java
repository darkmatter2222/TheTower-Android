package com.facebook.ads.redexgen.X;

import com.google.common.collect.ParametricNullness;
import java.util.Comparator;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4Q, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C4Q<E> extends C9S<E> implements SortedSet<E> {
    public C4Q(SortedSet<E> sortedSet, InterfaceC1994Wt<? super E> interfaceC1994Wt) {
        super(sortedSet, interfaceC1994Wt);
    }

    @Override // java.util.SortedSet
    @CheckForNull
    public final Comparator<? super E> comparator() {
        return ((SortedSet) this.A01).comparator();
    }

    @Override // java.util.SortedSet
    @ParametricNullness
    public final E first() {
        return (E) AbstractC1964Vn.A05(this.A01.iterator(), this.A00);
    }

    @Override // java.util.SortedSet
    public final SortedSet<E> headSet(@ParametricNullness E e) {
        return new C4Q(((SortedSet) this.A01).headSet(e), this.A00);
    }

    @Override // java.util.SortedSet
    @ParametricNullness
    public E last() {
        SortedSet sortedSetHeadSet = (SortedSet) this.A01;
        while (true) {
            E e = (Object) sortedSetHeadSet.last();
            if (this.A00.A4d(e)) {
                return e;
            }
            sortedSetHeadSet = sortedSetHeadSet.headSet(e);
        }
    }

    @Override // java.util.SortedSet
    public final SortedSet<E> subSet(@ParametricNullness E e, @ParametricNullness E e2) {
        return new C4Q(((SortedSet) this.A01).subSet(e, e2), this.A00);
    }

    @Override // java.util.SortedSet
    public final SortedSet<E> tailSet(@ParametricNullness E e) {
        return new C4Q(((SortedSet) this.A01).tailSet(e), this.A00);
    }
}
