package com.facebook.ads.redexgen.X;

import java.util.AbstractCollection;
import java.util.Iterator;

/* JADX INFO: Add missing generic type declarations: [V] */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class W1<V> extends AbstractCollection<V> {
    public final /* synthetic */ W0 A00;

    public W1(W0 w0) {
        this.A00 = w0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.A00.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator<V> iterator() {
        return this.A00.A0f();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.A00.size();
    }
}
