package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.google.errorprone.annotations.concurrent.LazyInit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.CheckForNull;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9k, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class AbstractC14139k<E> extends AbstractC1970Vt<E> implements Set<E> {
    public static byte[] A01 = null;
    public static final long serialVersionUID = 912559;

    @CheckForNull
    @LazyInit
    public transient AbstractC14149l<E> A00;

    static {
        A0C();
    }

    public static int A03(int i) {
        int iMax = Math.max(i, 2);
        if (iMax >= 751619276) {
            AbstractC1995Wu.A0E(iMax < 1073741824, A0B(18, 20, 117));
            return 1073741824;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (((double) iHighestOneBit) * 0.7d < iMax) {
            iHighestOneBit <<= 1;
        }
        return iHighestOneBit;
    }

    public static <E> AbstractC14139k<E> A04(int i, Object... objArr) {
        Object[] objArrCopyOf = objArr;
        switch (i) {
            case 0:
                return A09();
            case 1:
                return A0A(Objects.requireNonNull(objArrCopyOf[0]));
            default:
                int iA03 = A03(i);
                Object[] objArr2 = new Object[iA03];
                int i2 = iA03 - 1;
                int i3 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < i; i5++) {
                    Object objA00 = AbstractC1955Vd.A00(objArrCopyOf[i5], i5);
                    int iHashCode = objA00.hashCode();
                    int iA00 = AbstractC1972Vv.A00(iHashCode);
                    while (true) {
                        int i6 = iA00 & i2;
                        Object obj = objArr2[i6];
                        if (obj == null) {
                            objArrCopyOf[i4] = objA00;
                            objArr2[i6] = objA00;
                            i3 += iHashCode;
                            i4++;
                        }
                        if (obj.equals(objA00)) {
                        }
                        iA00++;
                        break;
                        break;
                    }
                }
                Arrays.fill(objArrCopyOf, i4, i, (Object) null);
                if (i4 == 1) {
                    return new C4P(Objects.requireNonNull(objArrCopyOf[0]));
                }
                if (A03(i4) < iA03 / 2) {
                    return A04(i4, objArrCopyOf);
                }
                if (A0D(i4, objArrCopyOf.length)) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, i4);
                }
                return new C4T(objArrCopyOf, i3, objArr2, i2, i4);
        }
    }

    public static <E> AbstractC14139k<E> A05(E e, E e2) {
        return A04(2, e, e2);
    }

    public static <E> AbstractC14139k<E> A06(E e, E e2, E e3) {
        return A04(3, e, e2, e3);
    }

    public static <E> AbstractC14139k<E> A07(Collection<? extends E> collection) {
        if ((collection instanceof AbstractC14139k) && !(collection instanceof SortedSet)) {
            AbstractC14139k<E> abstractC14139k = (AbstractC14139k) collection;
            if (!abstractC14139k.A0K()) {
                return abstractC14139k;
            }
        }
        Object[] array = collection.toArray();
        return A04(array.length, array);
    }

    public static <E> AbstractC14139k<E> A08(E[] eArr) {
        switch (eArr.length) {
            case 0:
                return A09();
            case 1:
                return A0A(eArr[0]);
            default:
                return A04(eArr.length, (Object[]) eArr.clone());
        }
    }

    public static <E> AbstractC14139k<E> A09() {
        return C4T.A05;
    }

    public static <E> AbstractC14139k<E> A0A(E e) {
        return new C4P(e);
    }

    public static String A0B(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 97);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0C() {
        A01 = new byte[]{9, 47, 57, 124, Ascii.SI, 57, 46, 53, Base64.padSymbol, 48, 53, 38, 57, 56, Ascii.SUB, 51, 46, 49, 119, 123, 120, 120, 113, 119, 96, 125, 123, 122, 52, 96, 123, 123, 52, 120, 117, 102, 115, 113};
    }

    public static boolean A0D(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException(A0B(0, 18, 61));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1970Vt
    public AbstractC14149l<E> A0J() {
        AbstractC14149l<E> abstractC14149l = this.A00;
        if (abstractC14149l != null) {
            return abstractC14149l;
        }
        AbstractC14149l<E> abstractC14149lA0M = A0M();
        this.A00 = abstractC14149lA0M;
        return abstractC14149lA0M;
    }

    public AbstractC14149l<E> A0M() {
        return AbstractC14149l.A06(toArray());
    }

    /* JADX INFO: renamed from: A0N */
    public abstract VV<E> iterator();

    public boolean A0O() {
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof AbstractC14139k) && A0O() && ((AbstractC14139k) obj).A0O() && hashCode() != obj.hashCode()) {
            return false;
        }
        return VX.A09(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return VX.A00(this);
    }
}
