package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.collect.ElementTypesAreNonnullByDefault;
import java.util.Arrays;
import javax.annotation.CheckForNull;
import p005kotlin.UShort;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class AbstractC1975Vz {
    public static byte[] A00;
    public static String[] A01 = {"zBmpvFh5L8hFLKhmuaIFuJbG4blHASwK", "36OcPr1vue", "PyZWi5qqlEvHNZundVaO8tNzy4Zvs7vW", "oQy2wC5BESVA1KPeLLFlD7lrEfkT5mlJ", "c76oENASBGNcoZuqdldaO", "5Ec5aPb6ZN4lztoIgv8H6tVzA6lwMksY", "7ORF3ukj5Iy", "pobdu"};

    static {
        A09();
    }

    public static int A00(int i) {
        return (i < 32 ? 4 : 2) * (i + 1);
    }

    public static int A01(int i) {
        return Math.max(4, AbstractC1972Vv.A01(i + 1, 1.0d));
    }

    public static int A02(int i, int i2) {
        return (~i2) & i;
    }

    public static int A03(int i, int i2) {
        return i & i2;
    }

    public static int A04(int i, int i2, int i3) {
        return ((~i3) & i) | (i2 & i3);
    }

    public static int A05(Object obj, int i) {
        if (obj instanceof byte[]) {
            return ((byte[]) obj)[i] & 255;
        }
        return obj instanceof short[] ? ((short[]) obj)[i] & UShort.MAX_VALUE : ((int[]) obj)[i];
    }

    public static int A06(@CheckForNull Object obj, @CheckForNull Object obj2, @CheckForNull int i, Object obj3, int[] iArr, Object[] objArr, Object[] objArr2) {
        int iA02 = AbstractC1972Vv.A02(obj);
        int i2 = iA02 & i;
        int iA05 = A05(obj3, i2);
        if (iA05 == 0) {
            return -1;
        }
        int iA03 = A02(iA02, i);
        if (A01[4].length() != 21) {
            throw new RuntimeException();
        }
        A01[4] = "5R5dORbzDzi4uIBMBVlti";
        int i3 = -1;
        do {
            int i4 = iA05 - 1;
            int i5 = iArr[i4];
            if (A02(i5, i) == iA03 && A6.A01(obj, objArr[i4]) && (objArr2 == null || A6.A01(obj2, objArr2[i4]))) {
                int iA04 = A03(i5, i);
                if (i3 == -1) {
                    A0B(obj3, i2, iA04);
                } else {
                    iArr[i3] = A04(iArr[i3], iA04, i);
                }
                return i4;
            }
            i3 = i4;
            iA05 = A03(i5, i);
        } while (iA05 != 0);
        return -1;
    }

    public static Object A07(int i) {
        if (i < 2 || i > 1073741824 || Integer.highestOneBit(i) != i) {
            throw new IllegalArgumentException(A08(0, 41, 127) + i);
        }
        if (i > 256) {
            return i <= 65536 ? new short[i] : new int[i];
        }
        byte[] bArr = new byte[i];
        if (A01[7].length() == 8) {
            throw new RuntimeException();
        }
        A01[7] = "qgtA4";
        return bArr;
    }

    public static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 65);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A09() {
        A00 = new byte[]{45, 53, 51, 52, -32, 34, 37, -32, 48, 47, 55, 37, 50, -32, 47, 38, -32, -14, -32, 34, 37, 52, 55, 37, 37, 46, -32, -14, Ascii.RS, -15, -32, 33, 46, 36, -32, -14, Ascii.RS, -13, -16, -6, -32};
    }

    public static void A0A(Object obj) {
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
    }

    public static void A0B(Object obj, int i, int i2) {
        if (!(obj instanceof byte[])) {
            if (obj instanceof short[]) {
                ((short[]) obj)[i] = (short) i2;
                return;
            } else {
                ((int[]) obj)[i] = i2;
                return;
            }
        }
        byte[] bArr = (byte[]) obj;
        if (A01[2].charAt(0) == 'm') {
            throw new RuntimeException();
        }
        A01[4] = "yRBzgKgf39J0pWEvhQ3tH";
        bArr[i] = (byte) i2;
    }
}
