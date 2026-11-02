package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import java.util.Objects;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4Y, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public final class C4Y<E> extends AbstractC14149l<E> {
    public static final AbstractC14149l<Object> A02 = new C4Y(new Object[0], 0);
    public final transient Object[] A00;
    public final transient int A01;

    public C4Y(Object[] objArr, int i) {
        this.A00 = objArr;
        this.A01 = i;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt
    public final int A0G() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt
    public final int A0H() {
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC14149l, com.facebook.ads.redexgen.X.AbstractC1970Vt
    public final int A0I(Object[] objArr, int i) {
        System.arraycopy(this.A00, 0, objArr, i, this.A01);
        return this.A01 + i;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt
    public final boolean A0K() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt
    public final Object[] A0L() {
        return this.A00;
    }

    @Override // java.util.List
    public final E get(int i) {
        AbstractC1995Wu.A00(i, this.A01);
        return (E) Objects.requireNonNull(this.A00[i]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.A01;
    }
}
