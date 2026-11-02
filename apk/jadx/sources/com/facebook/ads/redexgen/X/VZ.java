package com.facebook.ads.redexgen.X;

import java.util.AbstractSet;
import java.util.Collection;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class VZ<E> extends AbstractSet<E> {
    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        return VX.A0A(this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        return super.retainAll((Collection) AbstractC1995Wu.A04(collection));
    }
}
