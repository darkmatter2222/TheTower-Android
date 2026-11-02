package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Yo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2036Yo {
    public static byte[] A04;
    public C2031Yi A00;
    public final int A01;
    public final QL A02;
    public final InterfaceC2035Yn A03;

    static {
        A05();
    }

    public AbstractC2036Yo(InterfaceC2032Yj interfaceC2032Yj, InterfaceC2035Yn interfaceC2035Yn, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.A03 = interfaceC2035Yn;
        this.A01 = i;
        this.A02 = new QL(interfaceC2032Yj, j, j2, j3, j4, j5, j6);
    }

    private final int A02(Q9 q9, long j, ZH zh) {
        if (j == q9.A9Q()) {
            return 0;
        }
        zh.A00 = j;
        return 1;
    }

    private final C2031Yi A03(long j) {
        return new C2031Yi(j, this.A02.A05(j), this.A02.A05, this.A02.A02, this.A02.A04, this.A02.A01, this.A02.A00);
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 126);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A04 = new byte[]{51, Ascii.DC4, Ascii.FF, Ascii.ESC, Ascii.SYN, 19, Ascii.RS, 90, Ascii.EM, Ascii.ESC, 9, Ascii.US};
    }

    private final void A06(boolean z, long j) {
        this.A00 = null;
        this.A03.AGz();
    }

    private final boolean A07(Q9 q9, long j) throws IOException {
        long jA9Q = j - q9.A9Q();
        if (jA9Q < 0 || jA9Q > 262144) {
            return false;
        }
        q9.ALL((int) jA9Q);
        return true;
    }

    public final int A08(Q9 q9, ZH zh) throws IOException {
        while (true) {
            C2031Yi c2031Yi = (C2031Yi) AbstractC1722Ln.A02(this.A00);
            long jA01 = c2031Yi.A01();
            long jA00 = c2031Yi.A00();
            long jA02 = c2031Yi.A02();
            if (jA00 - jA01 <= this.A01) {
                A06(false, jA01);
                return A02(q9, jA01, zh);
            }
            if (!A07(q9, jA02)) {
                return A02(q9, jA02, zh);
            }
            q9.AK3();
            C2033Yl c2033YlAKE = this.A03.AKE(q9, c2031Yi.A04());
            switch (c2033YlAKE.A00) {
                case -3:
                    A06(false, jA02);
                    return A02(q9, jA02, zh);
                case -2:
                    c2031Yi.A0D(c2033YlAKE.A02, c2033YlAKE.A01);
                    break;
                case -1:
                    c2031Yi.A0C(c2033YlAKE.A02, c2033YlAKE.A01);
                    break;
                case 0:
                    A07(q9, c2033YlAKE.A01);
                    A06(true, c2033YlAKE.A01);
                    return A02(q9, c2033YlAKE.A01, zh);
                default:
                    throw new IllegalStateException(A04(0, 12, 4));
            }
        }
    }

    public final QL A09() {
        return this.A02;
    }

    public final void A0A(long j) {
        if (this.A00 == null || this.A00.A03() != j) {
            this.A00 = A03(j);
        }
    }

    public final boolean A0B() {
        return this.A00 != null;
    }
}
