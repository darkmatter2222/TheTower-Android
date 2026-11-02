package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.be, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2175be {
    public static byte[] A00;
    public static String[] A01 = {"48XKwvEfJwcBdJlmydZ9q3zfkin", "6Eo7i0CZW1196XN", "aXowqGz1hBflQs7Fuf7fRoRGcNLFrTNx", "gAAFCtpqIzP3FTGJKsRiwumwgWIAbR0S", "PLtPm1eHapmuYi4h4OX7mFr2OXf", "6zIbnojHGkgqELK", "waa5U278dWyFSUddW0JUuxhgYdzAs96v", "yzz8W9jxPw0m7asRAapG6VLaofjK"};

    static {
        A02();
    }

    public static int A00(C1744Mk c1744Mk) {
        int i = 0;
        while (c1744Mk.A07() != 0) {
            int iA0I = c1744Mk.A0I();
            i += iA0I;
            if (iA0I != 255) {
                return i;
            }
        }
        return -1;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 26);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{83, 117, 113, 69, 100, 121, 124, 2, 58, 56, 33, 33, 56, 63, 54, 113, 35, 52, 60, 48, 56, 63, 53, 52, 35, 113, 62, 55, 113, 60, 48, Base64.padSymbol, 55, 62, 35, 60, 52, 53, 113, 2, Ascii.DC4, Ascii.CAN, 113, Ascii.US, Ascii.DLE, Ascii.GS, 113, 36, 63, 56, 37, 127};
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0039  */
    public static void A03(long j, C1744Mk c1744Mk, ZP[] zpArr) {
        while (true) {
            if (c1744Mk.A07() <= 1) {
                return;
            }
            int iA00 = A00(c1744Mk);
            int iA01 = A00(c1744Mk);
            int iA09 = c1744Mk.A09() + iA01;
            if (iA01 != -1) {
                int iA07 = c1744Mk.A07();
                if (A01[6].charAt(29) != '9') {
                    throw new RuntimeException();
                }
                A01[7] = "BK517ofCJita5znccar4agPI4WAj";
                if (iA01 > iA07) {
                    MV.A07(A01(0, 7, 10), A01(7, 45, 75));
                    iA09 = c1744Mk.A0A();
                } else if (iA00 == 4 && iA01 >= 8) {
                    int iA0I = c1744Mk.A0I();
                    int iA0M = c1744Mk.A0M();
                    int iA0C = iA0M == 49 ? c1744Mk.A0C() : 0;
                    int iA0I2 = c1744Mk.A0I();
                    if (iA0M == 47) {
                        c1744Mk.A0g(1);
                    }
                    boolean z = iA0I == 181 && (iA0M == 49 || iA0M == 47) && iA0I2 == 3;
                    if (iA0M == 49) {
                        z &= iA0C == 1195456820;
                    }
                    if (z) {
                        A04(j, c1744Mk, zpArr);
                    }
                }
            } else {
                MV.A07(A01(0, 7, 10), A01(7, 45, 75));
                iA09 = c1744Mk.A0A();
            }
            c1744Mk.A0f(iA09);
        }
    }

    public static void A04(long j, C1744Mk c1744Mk, ZP[] zpArr) {
        int iA0I = c1744Mk.A0I();
        if ((iA0I & 64) != 0) {
            c1744Mk.A0g(1);
            int i = (iA0I & 31) * 3;
            int iA09 = c1744Mk.A09();
            for (ZP zp : zpArr) {
                c1744Mk.A0f(iA09);
                zp.AK9(c1744Mk, i);
                zp.AKC(j, 1, i, 0, null);
            }
        }
    }
}
