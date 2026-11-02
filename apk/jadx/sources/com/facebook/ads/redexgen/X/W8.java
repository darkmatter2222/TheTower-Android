package com.facebook.ads.redexgen.X;

import java.util.AbstractCollection;
import java.util.Iterator;
import javax.annotation.CheckForNull;

/* JADX INFO: Add missing generic type declarations: [V] */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class W8<V> extends AbstractCollection<V> {
    public final /* synthetic */ AbstractC14269x A00;

    public W8(AbstractC14269x abstractC14269x) {
        this.A00 = abstractC14269x;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.A00.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        return this.A00.A03(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator<V> iterator() {
        return this.A00.A0C();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.A00.size();
    }
}
