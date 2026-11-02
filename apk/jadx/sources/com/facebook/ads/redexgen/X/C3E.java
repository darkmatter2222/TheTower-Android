package com.facebook.ads.redexgen.X;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.math.ElementTypesAreNonnullByDefault;
import com.unity3d.services.UnityAdsConstants;
import java.math.RoundingMode;
import java.util.Arrays;
import p005kotlin.time.DurationKt;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3E, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class C3E {
    public static int[] A00;
    public static byte[] A01;
    public static String[] A02 = {"3UTkfwn6K7hub3oSykDR4YWc4JYZPG6B", "bBZzgUXqdJt0bIhPLXTZPSKPZqrRCxQc", "LN0PxDb", "rv9BRS9egSNnouL6XGxaWxl8aaFKUaGh", "c0VUAQb", "IFPSnDIjLqN07mJ9dnRJCEZ58x", "JBc5EwwssPT7nZDSNoBNSDq4zcJOv5mi", "eMc8QEGJeDPknecFPTmxaVoTObn48C1Z"};
    public static final byte[] A03;
    public static final int[] A04;
    public static final int[] A05;
    public static final int[] A06;

    static {
        A02();
        A03 = new byte[]{9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0};
        A05 = new int[]{1, 10, 100, 1000, UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS, 100000, DurationKt.NANOS_IN_MILLIS, 10000000, 100000000, 1000000000};
        A04 = new int[]{3, 31, TypedValues.AttributesType.TYPE_PATH_ROTATE, 3162, 31622, 316227, 3162277, 31622776, 316227766, Integer.MAX_VALUE};
        A06 = new int[]{1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600};
        A00 = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE, 65536, 2345, 477, 193, 110, 75, 58, 49, 43, 39, 37, 35, 34, 34, 33};
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0082  */
    /* JADX WARN: Code duplicated, block: B:50:? A[RETURN, SYNTHETIC] */
    public static int A00(int i, int i2, RoundingMode roundingMode) {
        AbstractC1995Wu.A04(roundingMode);
        if (i2 == 0) {
            throw new ArithmeticException(A01(0, 9, 65));
        }
        int i3 = i / i2;
        int i4 = i - (i2 * i3);
        if (i4 == 0) {
            return i3;
        }
        boolean z = true;
        int i5 = ((i ^ i2) >> 31) | 1;
        switch (C3F.A00[roundingMode.ordinal()]) {
            case 1:
                C3D.A02(i4 == 0);
            case 2:
                z = false;
                if (z) {
                    return i3 + i5;
                }
                return i3;
            case 3:
                if (i5 >= 0) {
                    z = false;
                }
                if (z) {
                    return i3 + i5;
                }
                return i3;
            case 4:
                z = true;
                if (z) {
                    return i3 + i5;
                }
                return i3;
            case 5:
                if (i5 <= 0) {
                    z = false;
                }
                if (z) {
                    return i3 + i5;
                }
                return i3;
            case 6:
            case 7:
            case 8:
                int iAbs = Math.abs(i4);
                int iAbs2 = iAbs - (Math.abs(i2) - iAbs);
                if (iAbs2 == 0) {
                    if (roundingMode != RoundingMode.HALF_UP) {
                        RoundingMode roundingMode2 = RoundingMode.HALF_EVEN;
                        if (A02[3].charAt(18) != 'x') {
                            throw new RuntimeException();
                        }
                        String[] strArr = A02;
                        strArr[6] = "AzJBOuukzTnanyKlIQNVu2JNI20j7ONA";
                        strArr[7] = "HWLYW3FSSeuUnArC75ETIJeUAFyLzkLa";
                        if (!((roundingMode == roundingMode2) & ((i3 & 1) != 0))) {
                            z = false;
                        }
                    }
                } else if (iAbs2 <= 0) {
                    z = false;
                }
                if (z) {
                    return i3 + i5;
                }
                return i3;
            default:
                throw new AssertionError();
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A02[1].charAt(28) == '5') {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[6] = "BDIiZFGi6hgSnKmuGtSqDB6yHVUb97Qx";
            strArr[7] = "6in5GNkPaOW1nchr315bnpnxufKtPvky";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 126);
            i4++;
        }
    }

    public static void A02() {
        byte[] bArr = {-18, -33, 33, 56, -33, 57, 36, 49, 46};
        String[] strArr = A02;
        if (strArr[6].charAt(12) != strArr[7].charAt(12)) {
            throw new RuntimeException();
        }
        A02[5] = "lJxR098gmGx4fTGNNjNIxN1tgVh8b";
        A01 = bArr;
    }
}
