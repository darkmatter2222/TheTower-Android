package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import java.io.Serializable;
import java.util.Arrays;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9V, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public final class C9V<T> extends AbstractC1954Vc<T> implements Serializable {
    public static byte[] A01;
    public static final long serialVersionUID = 0;
    public final AbstractC1954Vc<? super T> A00;

    static {
        A01();
    }

    public C9V(AbstractC1954Vc<? super T> abstractC1954Vc) {
        this.A00 = (AbstractC1954Vc) AbstractC1995Wu.A04(abstractC1954Vc);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 49);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{33, 125, 106, 121, 106, 125, 124, 106, 39, 38};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1954Vc
    public final <S extends T> AbstractC1954Vc<S> A06() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1954Vc, java.util.Comparator
    public final int compare(@ParametricNullness T t, @ParametricNullness T t2) {
        return this.A00.compare(t2, t);
    }

    @Override // java.util.Comparator
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C9V) {
            return this.A00.equals(((C9V) obj).A00);
        }
        return false;
    }

    public final int hashCode() {
        return -this.A00.hashCode();
    }

    public final String toString() {
        return this.A00 + A00(0, 10, 62);
    }
}
