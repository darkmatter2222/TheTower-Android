package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.collect.ElementTypesAreNonnullByDefault;
import java.util.Arrays;
import javax.annotation.CheckForNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class AbstractC1955Vd {
    public static byte[] A00;

    static {
        A02();
    }

    public static Object A00(@CheckForNull Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(A01(0, 9, 54) + i);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 91);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{Ascii.FF, Ascii.EM, 77, 4, 3, 9, 8, Ascii.NAK, 77};
    }

    public static Object[] A03(Object... objArr) {
        A04(objArr, objArr.length);
        return objArr;
    }

    public static Object[] A04(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            A00(objArr[i2], i2);
        }
        return objArr;
    }

    public static <T> T[] A05(T[] tArr, int i) {
        return (T[]) AbstractC1953Va.A01(tArr, i);
    }
}
