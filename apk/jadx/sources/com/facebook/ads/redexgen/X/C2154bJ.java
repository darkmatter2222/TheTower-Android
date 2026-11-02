package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bJ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2154bJ {
    public static byte[] A0B;
    public static String[] A0C = {"HGPuB8qmuxBgpGTqkkjvYzrCDskUp", "sF6fS75l2Cff0tziaX", "Zza04ks", "dNGMYSaiVbuE60ePOHja3XP4IlV", "q5npa5t", "wgntkRyUJ0qfijEJi4TyzmgID1", "fepOHmymjACox7eFs8FhQnXrtP3Evpqq", "KxtJjVrZLWzYUfpgJdwgfb5Z4AGZ"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public long A05;
    public long A06;
    public long A07;
    public long A08;
    public final int[] A09 = new int[255];
    public final C1744Mk A0A = new C1744Mk(255);

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 20);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A0B = new byte[]{34, 57, 36, 34, 39, 39, 56, 37, 35, 50, 51, 119, 53, 62, 35, 119, 36, 35, 37, 50, 54, 58, 119, 37, 50, 33, 62, 36, 62, 56, 57};
    }

    public final void A02() {
        this.A03 = 0;
        this.A04 = 0;
        this.A05 = 0L;
        this.A08 = 0L;
        this.A07 = 0L;
        this.A06 = 0L;
        this.A02 = 0;
        this.A01 = 0;
        this.A00 = 0;
    }

    public final boolean A03(Q9 q9) throws IOException {
        return A04(q9, -1L);
    }

    public final boolean A04(Q9 q9, long j) throws IOException {
        AbstractC1722Ln.A07(q9.A9Q() == q9.A9L());
        this.A0A.A0d(4);
        while (true) {
            if (j != -1 && q9.A9Q() + 4 >= j) {
                break;
            }
            byte[] bArrA0l = this.A0A.A0l();
            if (A0C[1].length() == 18) {
                A0C[0] = "talPG6FYcHiBUTQzt0zzTBAf7LU39";
                if (!AbstractC2045Yx.A04(q9, bArrA0l, 0, 4, true)) {
                    break;
                }
                this.A0A.A0f(0);
                if (this.A0A.A0Q() == 1332176723) {
                    q9.AK3();
                    return true;
                }
                q9.ALL(1);
            } else {
                throw new RuntimeException();
            }
        }
        do {
            if (j != -1 && q9.A9Q() >= j) {
                break;
            }
        } while (q9.ALI(1) != -1);
        return false;
    }

    public final boolean A05(Q9 q9, boolean z) throws IOException {
        A02();
        this.A0A.A0d(27);
        if (!AbstractC2045Yx.A04(q9, this.A0A.A0l(), 0, 27, z) || this.A0A.A0Q() != 1332176723) {
            return false;
        }
        this.A03 = this.A0A.A0I();
        if (this.A03 != 0) {
            if (z) {
                return false;
            }
            throw L9.A00(A00(0, 31, 67));
        }
        this.A04 = this.A0A.A0I();
        this.A05 = this.A0A.A0N();
        this.A08 = this.A0A.A0O();
        this.A07 = this.A0A.A0O();
        this.A06 = this.A0A.A0O();
        this.A02 = this.A0A.A0I();
        this.A01 = this.A02 + 27;
        this.A0A.A0d(this.A02);
        if (!AbstractC2045Yx.A04(q9, this.A0A.A0l(), 0, this.A02, z)) {
            return false;
        }
        for (int i = 0; i < this.A02; i++) {
            this.A09[i] = this.A0A.A0I();
            this.A00 += this.A09[i];
        }
        return true;
    }
}
