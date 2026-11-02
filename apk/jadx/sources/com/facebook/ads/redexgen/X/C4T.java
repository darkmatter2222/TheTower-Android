package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4T, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public final class C4T<E> extends AbstractC14139k<E> {
    public final transient Object[] A00;
    public final transient Object[] A01;
    public final transient int A02;
    public final transient int A03;
    public final transient int A04;
    public static final Object[] A06 = new Object[0];
    public static final C4T<Object> A05 = new C4T<>(A06, 0, A06, 0, 0);

    public C4T(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.A00 = objArr;
        this.A02 = i;
        this.A01 = objArr2;
        this.A03 = i2;
        this.A04 = i3;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt
    public final int A0G() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt
    public final int A0H() {
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt
    public final int A0I(Object[] objArr, int i) {
        System.arraycopy(this.A00, 0, objArr, i, this.A04);
        return this.A04 + i;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt
    public final boolean A0K() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt
    public final Object[] A0L() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC14139k
    public final AbstractC14149l<E> A0M() {
        return AbstractC14149l.A09(this.A00, this.A04);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* JADX INFO: renamed from: A0N */
    public final VV<E> iterator() {
        return A0J().iterator();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC14139k
    public final boolean A0O() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        Object[] objArr = this.A01;
        if (obj == null || objArr.length == 0) {
            return false;
        }
        int iA02 = AbstractC1972Vv.A02(obj);
        while (true) {
            int i = iA02 & this.A03;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iA02 = i + 1;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC14139k, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.A02;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.A04;
    }
}
