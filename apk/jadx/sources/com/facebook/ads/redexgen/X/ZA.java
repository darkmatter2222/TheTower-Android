package com.facebook.ads.redexgen.X;

import com.google.android.gms.auth.blockstore.BlockstoreStatusCodes;
import com.google.android.gms.nearby.connection.ConnectionsStatusCodes;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class ZA {
    public static byte[] A00;
    public static String[] A01 = {"REXdgQyfN8K2", "jZv5gDNyIP4NmQkuTkGxaa3Uz7VAicPa", "qumYO81heERej7", "RzOWJ2I2a28CgfW0aJf9LKAspnVDDF3N", "anaX8lyWWDLfxvWcx", "atBIg4LOFdzuCjJQI", "3TwRo3EPYyOgwxlZoixvJf", "LtHqRvcrNEs63EuEYuOQH"};
    public static final int[] A02;
    public static final int[] A03;
    public static final int[] A04;
    public static final int[] A05;
    public static final int[] A06;
    public static final int[] A07;
    public static final String[] A08;

    static {
        A05();
        A08 = new String[]{A04(10, 13, 55), A04(23, 13, 14), A04(0, 10, 69)};
        A07 = new int[]{44100, 48000, 32000};
        A02 = new int[]{32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};
        A06 = new int[]{32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};
        A03 = new int[]{32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};
        A04 = new int[]{32000, BlockstoreStatusCodes.MAX_SIZE_EXCEEDED, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};
        A05 = new int[]{ConnectionsStatusCodes.STATUS_NETWORK_NOT_CONNECTED, 16000, 24000, 32000, BlockstoreStatusCodes.MAX_SIZE_EXCEEDED, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};
    }

    public static int A00(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (!A06(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return -1;
        }
        int i7 = A07[i5];
        if (i2 == 2) {
            i7 /= 2;
        } else if (i2 == 0) {
            i7 /= 4;
        }
        int i8 = (i >>> 9) & 1;
        if (i3 == 3) {
            return ((((i2 == 3 ? A02[i4 - 1] : A06[i4 - 1]) * 12) / i7) + i8) * 4;
        }
        if (i2 != 3) {
            i6 = A05[i4 - 1];
        } else if (i3 == 2) {
            i6 = A03[i4 - 1];
        } else {
            int[] iArr = A04;
            int i9 = i4 - 1;
            if (A01[1].charAt(3) == 'P') {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[4] = "26EO3q6izvhU6pTqY";
            strArr[5] = "BtgZYgs6NCmG30OOA";
            i6 = iArr[i9];
        }
        if (i2 == 3) {
            return ((i6 * 144) / i7) + i8;
        }
        return (((i3 == 1 ? 72 : 144) * i6) / i7) + i8;
    }

    public static int A01(int i) {
        int i2;
        int i3;
        if (!A06(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0) {
            return -1;
        }
        int i4 = (i >>> 12) & 15;
        int i5 = (i >>> 10) & 3;
        if (i4 == 0 || i4 == 15 || i5 == 3) {
            return -1;
        }
        int iA02 = A02(i2, i3);
        String[] strArr = A01;
        if (strArr[0].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[0] = "Zesk7NIJQTHx";
        strArr2[7] = "LIvxfY0UDFK1BhCv6i1Jn";
        return iA02;
    }

    public static int A02(int i, int i2) {
        switch (i2) {
            case 1:
                return i == 3 ? 1152 : 576;
            case 2:
                return 1152;
            case 3:
                return 384;
            default:
                throw new IllegalArgumentException();
        }
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 69);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A00 = new byte[]{-21, -1, -18, -13, -7, -71, -9, -6, -17, -15, -35, -15, -32, -27, -21, -85, -23, -20, -31, -29, -87, -56, -83, -76, -56, -73, -68, -62, -126, -64, -61, -72, -70, -128, -97, -123};
    }

    public static boolean A06(int i) {
        return (i & (-2097152)) == -2097152;
    }

    public static /* synthetic */ String[] A0E() {
        String[] strArr = A08;
        if (A01[1].charAt(3) == 'P') {
            throw new RuntimeException();
        }
        A01[3] = "bO1TDqrS4ZwK4Pf07wZFi65T1IcYdtbw";
        return strArr;
    }
}
