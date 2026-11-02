package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.dB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2270dB {
    public static byte[] A00;

    static {
        A05();
    }

    public static long A00(Q9 q9) throws IOException {
        C1744Mk c1744Mk = new C1744Mk(8);
        C2269dA c2269dAA00 = C2269dA.A00(q9, c1744Mk);
        if (c2269dAA00.A00 != 1685272116) {
            q9.AK3();
            return -1L;
        }
        q9.A4X(8);
        c1744Mk.A0f(0);
        q9.AI6(c1744Mk.A0l(), 0, 8);
        long jA0N = c1744Mk.A0N();
        q9.ALL(((int) c2269dAA00.A01) + 8);
        return jA0N;
    }

    public static Pair<Long, Long> A01(Q9 q9) throws IOException {
        q9.AK3();
        C2269dA c2269dAA03 = A03(1684108385, q9, new C1744Mk(8));
        q9.ALL(8);
        return Pair.create(Long.valueOf(q9.A9Q()), Long.valueOf(c2269dAA03.A01));
    }

    public static C2268d9 A02(Q9 q9) throws IOException {
        byte[] bArr;
        C1744Mk c1744Mk = new C1744Mk(16);
        C2269dA c2269dAA03 = A03(1718449184, q9, c1744Mk);
        AbstractC1722Ln.A08(c2269dAA03.A01 >= 16);
        q9.AI6(c1744Mk.A0l(), 0, 16);
        c1744Mk.A0f(0);
        int iA0G = c1744Mk.A0G();
        int iA0G2 = c1744Mk.A0G();
        int iA0F = c1744Mk.A0F();
        int iA0F2 = c1744Mk.A0F();
        int iA0G3 = c1744Mk.A0G();
        int iA0G4 = c1744Mk.A0G();
        int i = ((int) c2269dAA03.A01) - 16;
        if (i > 0) {
            bArr = new byte[i];
            q9.AI6(bArr, 0, i);
        } else {
            bArr = N1.A07;
        }
        q9.ALL((int) (q9.A9L() - q9.A9Q()));
        return new C2268d9(iA0G, iA0G2, iA0F, iA0F2, iA0G3, iA0G4, bArr);
    }

    public static C2269dA A03(int i, Q9 q9, C1744Mk c1744Mk) throws IOException {
        C2269dA c2269dAA00 = C2269dA.A00(q9, c1744Mk);
        while (c2269dAA00.A00 != i) {
            MV.A07(A04(91, 15, 2), A04(40, 28, 10) + c2269dAA00.A00);
            long j = c2269dAA00.A01 + 8;
            if (j > 2147483647L) {
                throw L9.A00(A04(0, 40, 76) + c2269dAA00.A00);
            }
            q9.ALL((int) j);
            c2269dAA00 = C2269dA.A00(q9, c1744Mk);
        }
        return c2269dAA00;
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 102);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A00 = new byte[]{105, 66, 95, 68, 65, 10, 67, 89, 10, 94, 69, 69, 10, 70, 75, 88, 77, 79, 10, 2, 84, Ascii.CAN, 109, 104, 1, 3, 10, 94, 69, 10, 89, 65, 67, 90, 17, 10, 67, 78, Ascii.DLE, 10, 37, Ascii.VT, 2, 3, Ascii.RS, 5, 2, Ascii.VT, 76, Ascii.EM, 2, 7, 2, 3, Ascii.ESC, 2, 76, 59, 45, 58, 76, Ascii.SI, 4, Ascii.EM, 2, 7, 86, 76, 55, Ascii.FF, 17, Ascii.ETB, Ascii.DC2, Ascii.DC2, Ascii.CR, Ascii.DLE, Ascii.SYN, 7, 6, 66, 4, Ascii.CR, Ascii.DLE, Ascii.SI, 66, Ascii.SYN, Ascii.ESC, Ascii.DC2, 7, 88, 66, 51, 5, Ascii.DC2, 44, 1, 5, 0, 1, Ascii.SYN, 54, 1, 5, 0, 1, Ascii.SYN};
    }

    public static boolean A06(Q9 q9) throws IOException {
        C1744Mk c1744Mk = new C1744Mk(8);
        C2269dA c2269dAA00 = C2269dA.A00(q9, c1744Mk);
        if (c2269dAA00.A00 != 1380533830 && c2269dAA00.A00 != 1380333108) {
            return false;
        }
        q9.AI6(c1744Mk.A0l(), 0, 4);
        c1744Mk.A0f(0);
        int iA0C = c1744Mk.A0C();
        if (iA0C == 1463899717) {
            return true;
        }
        MV.A05(A04(91, 15, 2), A04(68, 23, 4) + iA0C);
        return false;
    }
}
