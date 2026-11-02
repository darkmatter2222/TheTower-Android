package com.facebook.ads.redexgen.X;

import com.google.common.collect.ParametricNullness;
import java.util.ListIterator;

/* JADX INFO: Add missing generic type declarations: [V] */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9z, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C14289z<V> extends AbstractC12954f<K, V>.WrappedCollection.WrappedIterator implements ListIterator<V> {
    public final /* synthetic */ C14279y A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14289z(C14279y c14279y) {
        super(c14279y);
        this.A00 = c14279y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14289z(C14279y c14279y, int i) {
        super(c14279y, c14279y.A06().listIterator(i));
        this.A00 = c14279y;
    }

    private ListIterator<V> A00() {
        return (ListIterator) A02();
    }

    @Override // java.util.ListIterator
    public final void add(@ParametricNullness V v) {
        boolean zIsEmpty = this.A00.isEmpty();
        A00().add(v);
        AbstractC12954f.A00(this.A00.A00);
        if (zIsEmpty) {
            this.A00.A03();
        }
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return A00().hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return A00().nextIndex();
    }

    @Override // java.util.ListIterator
    @ParametricNullness
    public final V previous() {
        return A00().previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return A00().previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(@ParametricNullness V v) {
        A00().set(v);
    }
}
