package com.tapjoy.internal;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes5.dex */
final class er<T> extends AbstractList<T> implements Serializable, RandomAccess {
    List<T> a;
    private final List<T> b;

    er(List<T> list) {
        this.b = list;
        this.a = list;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, T t) {
        if (this.a == this.b) {
            this.a = new ArrayList(this.b);
        }
        this.a.add(i, t);
    }

    @Override // java.util.AbstractList, java.util.List
    public final T get(int i) {
        return this.a.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final T remove(int i) {
        if (this.a == this.b) {
            this.a = new ArrayList(this.b);
        }
        return this.a.remove(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public final T set(int i, T t) {
        if (this.a == this.b) {
            this.a = new ArrayList(this.b);
        }
        return this.a.set(i, t);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.a.size();
    }
}
