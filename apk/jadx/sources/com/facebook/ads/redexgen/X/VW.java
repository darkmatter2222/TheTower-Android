package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import java.util.Iterator;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class VW<F, T> implements Iterator<T> {
    public final Iterator<? extends F> A00;

    public VW(Iterator<? extends F> it) {
        this.A00 = (Iterator) AbstractC1995Wu.A04(it);
    }

    @ParametricNullness
    public abstract T A01(@ParametricNullness F f);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.A00.hasNext();
    }

    @Override // java.util.Iterator
    @ParametricNullness
    public final T next() {
        return A01(this.A00.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.A00.remove();
    }
}
