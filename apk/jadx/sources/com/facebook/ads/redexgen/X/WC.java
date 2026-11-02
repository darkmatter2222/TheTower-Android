package com.facebook.ads.redexgen.X;

import com.google.common.collect.ParametricNullness;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;

/* JADX INFO: Add missing generic type declarations: [V] */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class WC<V> implements Iterator<V> {
    public final Collection<V> A00;
    public final Iterator<V> A01;
    public final /* synthetic */ WA A02;

    public WC(WA wa) {
        this.A02 = wa;
        this.A00 = this.A02.A00;
        this.A01 = AbstractC12954f.A05(wa.A00);
    }

    public WC(WA wa, Iterator<V> it) {
        this.A02 = wa;
        this.A00 = this.A02.A00;
        this.A01 = it;
    }

    private final void A01() {
        this.A02.A04();
        if (this.A02.A00 != this.A00) {
            throw new ConcurrentModificationException();
        }
    }

    public final Iterator<V> A02() {
        A01();
        return this.A01;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        A01();
        return this.A01.hasNext();
    }

    @Override // java.util.Iterator
    @ParametricNullness
    public final V next() {
        A01();
        return this.A01.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.A01.remove();
        AbstractC12954f.A01(this.A02.A04);
        this.A02.A05();
    }
}
