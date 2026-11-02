package com.facebook.ads.redexgen.X;

import com.google.common.base.ElementTypesAreNonnullByDefault;
import com.google.common.base.ParametricNullness;
import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class XD<T> implements Iterator<T> {
    public XJ A00 = XJ.A05;

    @CheckForNull
    public T A01;

    private boolean A01() {
        this.A00 = XJ.A04;
        this.A01 = A03();
        if (this.A00 == XJ.A03) {
            return false;
        }
        this.A00 = XJ.A06;
        return true;
    }

    @CheckForNull
    public final T A02() {
        this.A00 = XJ.A03;
        return null;
    }

    @CheckForNull
    public abstract T A03();

    @Override // java.util.Iterator
    public final boolean hasNext() {
        AbstractC1995Wu.A0D(this.A00 != XJ.A04);
        switch (this.A00.ordinal()) {
            case 0:
                return true;
            case 1:
            default:
                return A01();
            case 2:
                return false;
        }
    }

    @Override // java.util.Iterator
    @ParametricNullness
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.A00 = XJ.A05;
        T t = (T) AbstractC1996Ww.A00(this.A01);
        this.A01 = null;
        return t;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
