package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.dr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public enum EnumC2311dr {
    A0D(A00(223, 5, 4)),
    A0B(A00(210, 5, 48)),
    A03(A00(125, 8, 13)),
    A0C(A00(215, 8, 56)),
    A08(A00(182, 10, 19)),
    A0A(A00(201, 9, 108)),
    A09(A00(192, 9, InterfaceC3669k1.d.b.j)),
    A04(A00(133, 7, 27)),
    A06(A00(156, 13, 102)),
    A07(A00(169, 13, 122)),
    A0E(A00(228, 22, 58)),
    A05(A00(140, 16, 80));

    public static byte[] A01;
    public final String A00;

    static {
        A01();
    }

    EnumC2311dr(String str) {
        this.A00 = str;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 50);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{19, 17, 2, Ascii.US, 5, 3, Ascii.NAK, Ascii.FS, Ascii.DLE, Ascii.ESC, Ascii.DC2, Ascii.SUB, Ascii.GS, Ascii.SYN, Ascii.ETB, 115, 120, 113, 121, 126, 117, 116, 111, 115, 113, 98, 127, 101, 99, 117, 124, 17, Ascii.SUB, 19, Ascii.ESC, Ascii.FS, Ascii.ETB, Ascii.SYN, Ascii.CR, Ascii.ESC, Ascii.US, 19, Ascii.NAK, Ascii.ETB, 111, 100, 109, 101, 98, 105, 104, 115, 122, 101, 104, 105, 99, 90, 77, 82, 65, 86, 71, 92, 76, 87, 90, 78, 89, 70, 85, 67, 71, 75, 77, 79, 96, 119, 104, 123, 114, 109, 96, 97, 107, Ascii.DLE, Ascii.DC4, Ascii.CAN, Ascii.RS, Ascii.FS, 90, 70, 75, 83, 75, 72, 70, 79, 2, Ascii.GS, Ascii.DLE, 17, Ascii.ESC, 46, 49, 60, Base64.padSymbol, 55, 39, 52, Base64.padSymbol, 57, 60, 49, 54, 63, 39, 40, 52, 57, 33, 57, 58, 52, Base64.padSymbol, 92, 94, 77, 80, 74, 76, 90, 83, 74, 65, 72, SignedBytes.MAX_POWER_OF_TWO, 71, 76, 77, 1, 10, 3, Ascii.VT, Ascii.FF, 7, 6, Base64.padSymbol, 1, 3, Ascii.DLE, Ascii.CR, Ascii.ETB, 17, 7, Ascii.SO, 55, 60, 53, Base64.padSymbol, 58, 49, 48, Ascii.VT, Base64.padSymbol, 57, 53, 51, 49, 43, 32, 41, 33, 38, 45, 44, Ascii.ETB, 62, 33, 44, 45, 39, 69, 82, 77, 126, 73, 88, 67, 83, 72, 69, 38, 49, 46, Ascii.GS, 43, 47, 35, 37, 39, 58, 45, 50, 1, 40, 55, 58, 59, 49, 107, 111, 99, 101, 103, 122, 102, 107, 115, 107, 104, 102, 111, SignedBytes.MAX_POWER_OF_TWO, 95, 82, 83, 89, 126, 97, 108, 109, 103, 87, 100, 109, 105, 108, 97, 102, 111, 87, 120, 100, 105, 113, 105, 106, 100, 109};
    }

    public final String A03() {
        return this.A00;
    }
}
