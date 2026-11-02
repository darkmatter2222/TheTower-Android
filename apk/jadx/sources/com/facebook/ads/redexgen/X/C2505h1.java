package com.facebook.ads.redexgen.X;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.h1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2505h1<T> implements Iterator<T> {
    public int A00;
    public int A01;
    public boolean A02 = false;
    public final int A03;
    public final /* synthetic */ AbstractC2510h6 A04;

    public C2505h1(AbstractC2510h6 abstractC2510h6, int i) {
        this.A04 = abstractC2510h6;
        this.A03 = i;
        this.A01 = abstractC2510h6.A04();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.A00 < this.A01;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        T t = (T) this.A04.A0B(this.A00, this.A03);
        this.A00++;
        this.A02 = true;
        return t;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.A02) {
            throw new IllegalStateException();
        }
        this.A00--;
        this.A01--;
        this.A02 = false;
        this.A04.A0E(this.A00);
    }
}
