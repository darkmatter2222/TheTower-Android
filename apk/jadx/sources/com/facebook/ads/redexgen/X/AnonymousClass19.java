package com.facebook.ads.redexgen.X;

import com.google.common.primitives.ElementTypesAreNonnullByDefault;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.19, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class AnonymousClass19 extends AnonymousClass38 {
    public static byte[] A00;
    public static String[] A01 = {"s3nfJFmoB5mLIS4qJGcFpaREKU7XO5Rb", "W0X90hinoLbRugwrlMfBJItOSuTD1fBo", "uLiCYyfmoz81juWzq6c7TRvaokDAgd7K", "UrbhsenRX9EhQgDboPfzNp3nUnf12f", "ow7V3cTX6ZeSu5DLO16", "4lPVtgZcl9Kfu8J0YRCX1yThVB7sLZmz", "FzcBhwomNGOgnlOxXD5Sk", "RZXcs0kqm5Q92DMyM3M2tr0OFsP4PqV8"};

    static {
        A0A();
    }

    public static int A00(int i) {
        return i;
    }

    public static int A01(int i, int i2, int i3) {
        boolean z = i2 <= i3;
        String[] strArr = A01;
        if (strArr[2].charAt(5) == strArr[0].charAt(5)) {
            throw new RuntimeException();
        }
        A01[6] = "EVhdGTJMBuUvG";
        AbstractC1995Wu.A0G(z, A08(16, 47, 31), i2, i3);
        return Math.min(Math.max(i, i2), i3);
    }

    public static int A02(long j) {
        int i = (int) j;
        boolean z = ((long) i) == j;
        String strA08 = A08(0, 16, 50);
        if (A01[7].charAt(30) != 'V') {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[3] = "eSBCOQ7uVTMFBXTC77WmGuoxyDQfcq";
        strArr[4] = "iWJAXWDU80WI8thVFIH";
        AbstractC1995Wu.A0H(z, strA08, j);
        return i;
    }

    public static int A03(long j) {
        if (j > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j;
    }

    public static int A04(int[] iArr, int i, int i2, int i3) {
        while (i2 < i3) {
            int i4 = iArr[i2];
            String[] strArr = A01;
            if (strArr[2].charAt(5) == strArr[0].charAt(5)) {
                throw new RuntimeException();
            }
            A01[6] = "R";
            if (i4 == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static int A05(int[] iArr, int i, int i2, int i3) {
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            if (iArr[i4] == i) {
                return i4;
            }
        }
        return -1;
    }

    public static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 72);
        }
        return new String(bArrCopyOfRange);
    }

    public static List<Integer> A09(int... iArr) {
        return iArr.length == 0 ? Collections.emptyList() : new AnonymousClass39(iArr);
    }

    public static void A0A() {
        A00 = new byte[]{-55, -17, -18, -102, -23, -32, -102, -20, -37, -24, -31, -33, -76, -102, -97, -19, -44, -48, -43, -121, -113, -116, -38, -112, -121, -44, -36, -38, -37, -121, -55, -52, -121, -45, -52, -38, -38, -121, -37, -49, -56, -43, -121, -42, -39, -121, -52, -40, -36, -56, -45, -121, -37, -42, -121, -44, -56, -33, -121, -113, -116, -38, -112};
    }

    public static int[] A0B(Collection<? extends Number> collection) {
        if (collection instanceof AnonymousClass39) {
            return ((AnonymousClass39) collection).A05();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = ((Number) AbstractC1995Wu.A04(array[i])).intValue();
        }
        return iArr;
    }
}
