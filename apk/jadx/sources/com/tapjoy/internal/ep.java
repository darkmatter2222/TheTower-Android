package com.tapjoy.internal;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes5.dex */
final class ep<T> extends AbstractList<T> implements Serializable, RandomAccess {
    private final ArrayList<T> a;

    ep(List<T> list) {
        this.a = new ArrayList<>(list);
    }

    @Override // java.util.AbstractList, java.util.List
    public final T get(int i) {
        return this.a.get(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return this.a.toArray();
    }
}
