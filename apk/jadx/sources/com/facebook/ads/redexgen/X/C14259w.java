package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.common.collect.ParametricNullness;
import java.io.Serializable;
import java.util.Arrays;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9w, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public final class C14259w<F, T> extends AbstractC1954Vc<F> implements Serializable {
    public static byte[] A02;
    public static final long serialVersionUID = 0;
    public final InterfaceC1998Wy<F, ? extends T> A00;
    public final AbstractC1954Vc<T> A01;

    static {
        A01();
    }

    public C14259w(InterfaceC1998Wy<F, ? extends T> interfaceC1998Wy, AbstractC1954Vc<T> abstractC1954Vc) {
        this.A00 = (InterfaceC1998Wy) AbstractC1995Wu.A04(interfaceC1998Wy);
        this.A01 = (AbstractC1954Vc) AbstractC1995Wu.A04(abstractC1954Vc);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 13);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{109, Ascii.NAK, 84, 85, 105, 94, 72, 78, 87, 79, 116, 93, 19};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1954Vc, java.util.Comparator
    public final int compare(@ParametricNullness F f, @ParametricNullness F f2) {
        return this.A01.compare(this.A00.A4c(f), this.A00.A4c(f2));
    }

    @Override // java.util.Comparator
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C14259w)) {
            return false;
        }
        C14259w c14259w = (C14259w) obj;
        return this.A00.equals(c14259w.A00) && this.A01.equals(c14259w.A01);
    }

    public final int hashCode() {
        return A6.A00(this.A00, this.A01);
    }

    public final String toString() {
        return this.A01 + A00(1, 12, 54) + this.A00 + A00(0, 1, 73);
    }
}
