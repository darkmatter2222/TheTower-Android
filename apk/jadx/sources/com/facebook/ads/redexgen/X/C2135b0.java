package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.b0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2135b0 {
    public static byte[] A05;
    public static String[] A06 = {"62zPkRZ7qDvAsxVWJCXfIikRvQRMbbxe", "1ZZPOPyQl", "pLRx6zCrX", "QayRPU9tLH84cK0drErDk1Ig5LL1omtA", "sBeoOmQCHygigd3c57PuQ", "oppJdrD8ZGAhJbEqRSESrz19nmtKW69m", "njsmR3KXoNdoZ1EbRFKp4", "DilasQUje3bijE85HccTZn0KYYyixyhF"};
    public int A00;
    public final ZP A01;
    public final ZQ A02;
    public final C2145bA A03;
    public final C2148bD A04;

    static {
        A01();
    }

    public C2135b0(C2145bA c2145bA, C2148bD c2148bD, ZP zp) {
        this.A03 = c2145bA;
        this.A04 = c2148bD;
        this.A01 = zp;
        this.A02 = A00(0, 13, 78).equals(c2145bA.A07.A0W) ? new ZQ() : null;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = bArrCopyOfRange[i4];
            String[] strArr = A06;
            if (strArr[4].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            A06[5] = "IOrZE0Uk6Qvc1ZEm0XmmfqLvDORjdaFm";
            bArrCopyOfRange[i4] = (byte) ((b ^ i3) ^ 118);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{89, 77, 92, 81, 87, Ascii.ETB, 76, 74, 77, 93, Ascii.NAK, 80, 92};
    }
}
