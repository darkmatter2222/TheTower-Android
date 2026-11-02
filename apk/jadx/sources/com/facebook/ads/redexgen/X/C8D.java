package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8D, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C8D implements PG {
    public static byte[] A06;
    public static String[] A07 = {"2icu", "B1mvOt7GkHbPF2TtK7X", "pwBOz21jQxIaXXFUVlm8ueXuTAny3iEF", "ISgGsIP", "UZOBFuQkU6lCREC17idqsI9J9nMogxu1", "jF2Onx4fIdhG58rhfua", "ifZhvt9ghZ", "suE1VeL5mSWFetVzskM26xFxAQQfG2iy"};
    public final int A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final long A04;
    public final long[] A05;

    static {
        A03();
    }

    public C8D(long j, int i, long j2) {
        this(j, i, j2, -1L, null);
    }

    public C8D(long j, int i, long j2, long j3, long[] jArr) {
        this.A03 = j;
        this.A00 = i;
        this.A04 = j2;
        this.A05 = jArr;
        this.A02 = j3;
        this.A01 = j3 != -1 ? j + j3 : -1L;
    }

    private long A00(int i) {
        return (this.A04 * ((long) i)) / 100;
    }

    public static C8D A01(long j, long j2, Z9 z9, C1744Mk c1744Mk) {
        int iA0L;
        int i = z9.A04;
        int i2 = z9.A03;
        int iA0C = c1744Mk.A0C();
        if ((iA0C & 1) != 1 || (iA0L = c1744Mk.A0L()) == 0) {
            return null;
        }
        long jA0U = N1.A0U(iA0L, ((long) i) * 1000000, i2);
        if ((iA0C & 6) != 6) {
            return new C8D(j2, z9.A02, jA0U);
        }
        long jA0Q = c1744Mk.A0Q();
        long[] jArr = new long[100];
        for (int i3 = 0; i3 < 100; i3++) {
            long jA0I = c1744Mk.A0I();
            String[] strArr = A07;
            if (strArr[7].charAt(12) == strArr[4].charAt(12)) {
                throw new RuntimeException();
            }
            A07[2] = "bCdxHBjEQ3bU3PwRoZGtHXPzNO9Tmadn";
            jArr[i3] = jA0I;
        }
        if (j != -1 && j != j2 + jA0Q) {
            MV.A07(A02(27, 10, 73), A02(2, 25, 82) + j + A02(0, 2, 36) + (j2 + jA0Q));
        }
        return new C8D(j2, z9.A02, jA0U, jA0Q, jArr);
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 61);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A06 = new byte[]{53, 57, 55, 38, 33, 40, 79, Ascii.VT, Ascii.SO, Ascii.ESC, Ascii.SO, 79, Ascii.FS, 6, Ascii.NAK, 10, 79, 2, 6, Ascii.FS, 2, Ascii.SO, Ascii.ESC, Ascii.FF, 7, 85, 79, 44, Ascii.GS, Ascii.SUB, 19, 39, 17, 17, Ascii.US, 17, 6};
    }

    @Override // com.facebook.ads.redexgen.X.PG
    public final long A8K() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final long A8U() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final ZJ A9e(long j) {
        double d;
        if (!ABR()) {
            return new ZJ(new ZL(0L, this.A03 + ((long) this.A00)));
        }
        long jA0T = N1.A0T(j, 0L, this.A04);
        double d2 = (jA0T * 100.0d) / this.A04;
        String[] strArr = A07;
        if (strArr[1].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A07;
        strArr2[7] = "nxnS3Iyg9PiuUdWtqhBJQvBJGWbhZfSg";
        strArr2[4] = "1oEjCPIpwi3C7MyFSVvQFWTEeeNlBH3O";
        if (d2 <= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            d = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        } else if (d2 >= 100.0d) {
            d = 256.0d;
        } else {
            int i = (int) d2;
            long[] jArr = (long[]) AbstractC1722Ln.A02(this.A05);
            double d3 = jArr[i];
            d = (((i == 99 ? 256.0d : jArr[i + 1]) - d3) * (d2 - ((double) i))) + d3;
        }
        return new ZJ(new ZL(jA0T, this.A03 + N1.A0T(Math.round((d / 256.0d) * this.A02), this.A00, this.A02 - 1)));
    }

    @Override // com.facebook.ads.redexgen.X.PG
    public final long A9u(long j) {
        double d;
        long j2 = j - this.A03;
        if (!ABR() || j2 <= this.A00) {
            return 0L;
        }
        long[] jArr = (long[]) AbstractC1722Ln.A02(this.A05);
        double d2 = (j2 * 256.0d) / this.A02;
        int iA0L = N1.A0L(jArr, (long) d2, true, true);
        long jA00 = A00(iA0L);
        long j3 = jArr[iA0L];
        long jA01 = A00(iA0L + 1);
        long j4 = iA0L == 99 ? 256L : jArr[iA0L + 1];
        if (j3 == j4) {
            d = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            if (A07[2].charAt(1) == 'Q') {
                throw new RuntimeException();
            }
            A07[0] = "ueEX";
        } else {
            double d3 = d2 - j3;
            String[] strArr = A07;
            if (strArr[3].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[1] = "dAQlRgg5QkuGXjliK7E";
            strArr2[5] = "DLUTf60wXPxv8TEoq0F";
            d = d3 / (j4 - j3);
        }
        return Math.round((jA01 - jA00) * d) + jA00;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final boolean ABR() {
        return this.A05 != null;
    }
}
