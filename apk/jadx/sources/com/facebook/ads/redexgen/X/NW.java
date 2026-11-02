package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class NW implements InterfaceC2266d7 {
    public static byte[] A08;
    public static String[] A09 = {"JmEbsc8PDIuthiYKkH927G3BUWnJaP", "AoS2xoUqPeDJxRZl9pEgdbhuIqWYsB2Q", "F9cqkCdM8SYm49ifZFpeQEBtOJaYGkWc", "jdTLEoVAH6GIXf3Hn6jlrOvChCkZAAXh", "S7HRxukEAS0DUjdBUU2afpPMC5bFJhxA", "AJVmxyUuXqXRBdqQBLZJH1X0zO", "lnjpNFr4aNvAKLxzoZlBd7PZNaYuCQBL", "JB3FHxgyiSdGs9kxjZQrWdixlPQaTJlo"};
    public int A00;
    public long A01;
    public long A02;
    public final int A03;
    public final VC A04;
    public final InterfaceC2044Yw A05;
    public final ZP A06;
    public final C2268d9 A07;

    static {
        A01();
    }

    public NW(InterfaceC2044Yw interfaceC2044Yw, ZP zp, C2268d9 c2268d9, String str, int i) throws L9 {
        this.A05 = interfaceC2044Yw;
        this.A06 = zp;
        this.A07 = c2268d9;
        int i2 = (c2268d9.A05 * c2268d9.A01) / 8;
        if (c2268d9.A02 != i2) {
            throw L9.A01(A00(7, 21, 86) + i2 + A00(0, 7, 90) + c2268d9.A02, null);
        }
        int i3 = c2268d9.A04 * i2 * 8;
        this.A03 = Math.max(i2, (c2268d9.A04 * i2) / 10);
        this.A04 = new C1689Ke().A11(str).A0a(i3).A0j(i3).A0h(this.A03).A0b(c2268d9.A05).A0m(c2268d9.A04).A0i(i).A14();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A09[5].length() == 31) {
                throw new RuntimeException();
            }
            String[] strArr = A09;
            strArr[1] = "ajAP1O2s8IsFdfezAfqxXs3o2iZOeNt6";
            strArr[6] = "lIP31p4SA4mTRvHnkwRI3tuxM4jTsagG";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 116);
            i4++;
        }
    }

    public static void A01() {
        A08 = new byte[]{Ascii.NAK, Ascii.SO, 73, 65, 90, Ascii.DC4, Ascii.SO, 103, 90, 82, 71, 65, 86, 71, 70, 2, SignedBytes.MAX_POWER_OF_TWO, 78, 77, 65, 73, 2, 81, 75, 88, 71, Ascii.CAN, 2};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2266d7
    public final void AAm(int i, long j) {
        this.A05.AKP(new NR(this.A07, 1, i, j));
        this.A06.A7E(this.A04);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2266d7
    public final void AK2(long j) {
        this.A02 = j;
        this.A00 = 0;
        this.A01 = 0L;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2266d7
    public final boolean AKB(Q9 q9, long j) throws IOException {
        long j2 = j;
        while (j2 > 0 && this.A00 < this.A03) {
            int iAK7 = this.A06.AK7(q9, (int) Math.min(this.A03 - this.A00, j2), true);
            if (iAK7 == -1) {
                j2 = 0;
            } else {
                this.A00 += iAK7;
                j2 -= (long) iAK7;
            }
        }
        int i = this.A07.A02;
        int i2 = this.A00 / i;
        if (i2 > 0) {
            long jA0U = this.A02 + N1.A0U(this.A01, 1000000L, this.A07.A04);
            int i3 = i2 * i;
            int i4 = this.A00 - i3;
            this.A06.AKC(jA0U, 1, i3, i4, null);
            this.A01 += (long) i2;
            this.A00 = i4;
        }
        String[] strArr = A09;
        if (strArr[3].charAt(25) == strArr[2].charAt(25)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A09;
        strArr2[1] = "tf7tnqUHUUocL5c3MJMWRmKs6w1tO8Vx";
        strArr2[6] = "teeYafaDrcuEaZLMHqDTHop6vGWCR1YA";
        return j2 <= 0;
    }
}
