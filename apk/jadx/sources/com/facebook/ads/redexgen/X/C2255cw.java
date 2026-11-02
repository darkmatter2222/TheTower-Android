package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.io.IOException;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2255cw {
    public static byte[] A09;
    public boolean A03;
    public boolean A04;
    public boolean A05;
    public final int A06;
    public final C1752Ms A08 = new C1752Ms(0);
    public long A01 = -9223372036854775807L;
    public long A02 = -9223372036854775807L;
    public long A00 = -9223372036854775807L;
    public final C1744Mk A07 = new C1744Mk();

    static {
        A06();
    }

    public C2255cw(int i) {
        this.A06 = i;
    }

    private int A00(Q9 q9) {
        this.A07.A0i(N1.A07);
        this.A03 = true;
        q9.AK3();
        return 0;
    }

    private int A01(Q9 q9, ZH zh, int i) throws IOException {
        int iMin = (int) Math.min(this.A06, q9.A90());
        if (q9.A9Q() != 0) {
            zh.A00 = 0;
            return 1;
        }
        this.A07.A0d(iMin);
        q9.AK3();
        q9.AI6(this.A07.A0l(), 0, iMin);
        this.A01 = A03(this.A07, i);
        this.A04 = true;
        return 0;
    }

    private int A02(Q9 q9, ZH zh, int i) throws IOException {
        long jA90 = q9.A90();
        int iMin = (int) Math.min(this.A06, jA90);
        long j = jA90 - ((long) iMin);
        if (q9.A9Q() != j) {
            zh.A00 = j;
            return 1;
        }
        this.A07.A0d(iMin);
        q9.AK3();
        q9.AI6(this.A07.A0l(), 0, iMin);
        this.A02 = A04(this.A07, i);
        this.A05 = true;
        return 0;
    }

    private long A03(C1744Mk c1744Mk, int i) {
        int iA0A = c1744Mk.A0A();
        for (int iA09 = c1744Mk.A09(); iA09 < iA0A; iA09++) {
            if (c1744Mk.A0l()[iA09] == 71) {
                long jA01 = AbstractC2263d4.A01(c1744Mk, iA09, i);
                if (jA01 != -9223372036854775807L) {
                    return jA01;
                }
            }
        }
        return -9223372036854775807L;
    }

    private long A04(C1744Mk c1744Mk, int i) {
        int iA09 = c1744Mk.A09();
        int iA0A = c1744Mk.A0A();
        for (int i2 = iA0A - 188; i2 >= iA09; i2--) {
            if (AbstractC2263d4.A03(c1744Mk.A0l(), iA09, iA0A, i2)) {
                long jA01 = AbstractC2263d4.A01(c1744Mk, i2, i);
                if (jA01 != -9223372036854775807L) {
                    return jA01;
                }
            }
        }
        return -9223372036854775807L;
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 95);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A09 = new byte[]{-104, -118, -65, -35, -45, -40, -47, -118, -66, -77, -73, -81, -55, -65, -72, -67, -81, -66, -118, -45, -40, -35, -34, -49, -53, -50, -104, 37, 74, 82, Base64.padSymbol, 72, 69, SignedBytes.MAX_POWER_OF_TWO, -4, SignedBytes.MAX_POWER_OF_TWO, 81, 78, Base64.padSymbol, 80, 69, 75, 74, Ascii.SYN, -4, 35, 66, 19, 68, 65, 48, 67, 56, 62, Base64.padSymbol, 33, 52, 48, 51, 52, 65};
    }

    public final int A07(Q9 q9, ZH zh, int i) throws IOException {
        if (i <= 0) {
            return A00(q9);
        }
        if (!this.A05) {
            return A02(q9, zh, i);
        }
        if (this.A02 == -9223372036854775807L) {
            return A00(q9);
        }
        if (!this.A04) {
            return A01(q9, zh, i);
        }
        if (this.A01 == -9223372036854775807L) {
            return A00(q9);
        }
        this.A00 = this.A08.A06(this.A02) - this.A08.A06(this.A01);
        if (this.A00 < 0) {
            MV.A07(A05(45, 16, InterfaceC3669k1.d.b.j), A05(27, 18, 125) + this.A00 + A05(0, 27, 11));
            this.A00 = -9223372036854775807L;
        }
        return A00(q9);
    }

    public final long A08() {
        return this.A00;
    }

    public final C1752Ms A09() {
        return this.A08;
    }

    public final boolean A0A() {
        return this.A03;
    }
}
