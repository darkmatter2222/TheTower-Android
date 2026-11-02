package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ac, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2111ac {
    public static byte[] A03;
    public static String[] A04 = {"Vs06DC9LHlP6nyu6Er7ul", "jn2l57RtHEsBzWvf", "sK4KgX9TYmFIqf4rNQDI4", "mbkGbmAZhWCeA1cnyzo8UhyYoFRvOSTP", "33xs35lHLZRpHyyr", "7pUFieMu9", "ApWal8vdP111uvOqJz2mkeUtKmBZZfpN", "4x5wKXs3ZKwzqSUsfKBflT081d"};
    public static final long[] A05;
    public int A00;
    public int A01;
    public final byte[] A02 = new byte[8];

    static {
        A03();
        A05 = new long[]{128, 64, 32, 16, 8, 4, 2, 1};
    }

    public static int A00(int i) {
        for (int i2 = 0; i2 < A05.length; i2++) {
            if ((A05[i2] & ((long) i)) != 0) {
                return i2 + 1;
            }
        }
        return -1;
    }

    public static long A01(byte[] bArr, int i, boolean z) {
        long j = ((long) bArr[0]) & 255;
        if (z) {
            j &= ~A05[i - 1];
        }
        for (int i2 = 1; i2 < i; i2++) {
            j = (j << 8) | (((long) bArr[i2]) & 255);
        }
        return j;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] - i3;
            String[] strArr = A04;
            if (strArr[1].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            A04[7] = "22rUvuXjwgyrpPKYGMZNZI1h4r";
            bArrCopyOfRange[i4] = (byte) (i5 - 34);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A03 = new byte[]{-19, Ascii.SO, -65, Ascii.NAK, 0, Ascii.VT, 8, 3, -65, Ascii.NAK, 0, 17, 8, Ascii.CR, 19, -65, Ascii.VT, 4, Ascii.CR, 6, 19, 7, -65, Ascii.FF, 0, Ascii.DC2, 10, -65, 5, Ascii.SO, Ascii.DC4, Ascii.CR, 3};
    }

    public final int A04() {
        return this.A00;
    }

    public final long A05(Q9 q9, boolean z, boolean z2, int i) throws IOException {
        if (this.A01 == 0) {
            if (!q9.AIe(this.A02, 0, 1, z)) {
                if (A04[7].length() != 26) {
                    throw new RuntimeException();
                }
                A04[7] = "1gfFMCzlWRYZYIL0Sl6pryqlN6";
                return -1L;
            }
            this.A00 = A00(this.A02[0] & 255);
            if (this.A00 == -1) {
                throw new IllegalStateException(A02(0, 33, 125));
            }
            this.A01 = 1;
        }
        if (this.A00 > i) {
            this.A01 = 0;
            return -2L;
        }
        if (this.A00 != 1) {
            q9.readFully(this.A02, 1, this.A00 - 1);
        }
        this.A01 = 0;
        return A01(this.A02, this.A00, z2);
    }

    public final void A06() {
        this.A01 = 0;
        this.A00 = 0;
    }
}
