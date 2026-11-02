package com.facebook.ads.redexgen.X;

import com.ironsource.InterfaceC3669k1;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Nb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1761Nb implements InterfaceC2266d7 {
    public static byte[] A0C;
    public static String[] A0D = {"xgqBqbU1XML8MXuRXE4S7UmkN", "kb50toKDVAzxYsngbeDc9BGJqZef", "PGCQuAERcngW9jWlLyuZZy", "T3TROYLJmY5zk4R", "KehPbga1IBYQXhYvCr7BlOXMomub", "y47SMef1vKWEbtVOrFSLXbM9LHV6ysDN", "9RD3pOa8CandyoHHIXY9O0kMIUxxMIgb", "xRKTiYi6sdeRaVW0V14xq888HcEdA0Ww"};
    public static final int[] A0E;
    public static final int[] A0F;
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public final int A04;
    public final int A05;
    public final VC A06;
    public final C1744Mk A07;
    public final InterfaceC2044Yw A08;
    public final ZP A09;
    public final C2268d9 A0A;
    public final byte[] A0B;

    static {
        A04();
        A0E = new int[]{-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
        A0F = new int[]{7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, kotlin.fh.h1, 118, 130, 143, 157, 173, 190, 209, 230, 253, 279, 307, 337, 371, InterfaceC3669k1.a.b.h, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
    }

    public C1761Nb(InterfaceC2044Yw interfaceC2044Yw, ZP zp, C2268d9 c2268d9) throws L9 {
        this.A08 = interfaceC2044Yw;
        this.A09 = zp;
        this.A0A = c2268d9;
        this.A05 = Math.max(1, c2268d9.A04 / 10);
        C1744Mk c1744Mk = new C1744Mk(c2268d9.A06);
        c1744Mk.A0G();
        this.A04 = c1744Mk.A0G();
        int i = c2268d9.A05;
        int i2 = (((c2268d9.A02 - (i * 4)) * 8) / (c2268d9.A01 * i)) + 1;
        if (this.A04 != i2) {
            throw L9.A01(A03(7, 27, 117) + i2 + A03(0, 7, 102) + this.A04, null);
        }
        int iA05 = N1.A05(this.A05, this.A04);
        this.A0B = new byte[c2268d9.A02 * iA05];
        this.A07 = new C1744Mk(A02(this.A04, i) * iA05);
        int i3 = ((c2268d9.A04 * c2268d9.A02) * 8) / this.A04;
        this.A06 = new C1689Ke().A11(A03(34, 9, 62)).A0a(i3).A0j(i3).A0h(A02(this.A05, i)).A0b(c2268d9.A05).A0m(c2268d9.A04).A0i(2).A14();
    }

    private int A00(int i) {
        return i / (this.A0A.A05 * 2);
    }

    private int A01(int i) {
        return A02(i, this.A0A.A05);
    }

    public static int A02(int i, int i2) {
        return i * 2 * i2;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 101);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A0C = new byte[]{56, 35, 100, 108, 119, 57, 35, 85, 104, 96, 117, 115, 100, 117, 116, 48, 118, 98, 113, 125, 117, 99, 48, 96, 117, 98, 48, 114, 124, 127, 115, 123, 42, 48, 58, 46, 63, 50, 52, 116, 41, 58, 44};
    }

    private void A05(int i) {
        long jA0U = this.A03 + N1.A0U(this.A02, 1000000L, this.A0A.A04);
        int iA01 = A01(i);
        this.A09.AKC(jA0U, 1, iA01, this.A01 - iA01, null);
        this.A02 += (long) i;
        this.A01 -= iA01;
    }

    private void A06(byte[] bArr, int i, int i2, byte[] bArr2) {
        int i3 = this.A0A.A02;
        int i4 = this.A0A.A05;
        int i5 = (i2 * 4) + (i * i3);
        int i6 = (i4 * 4) + i5;
        int i7 = (i3 / i4) - 4;
        int iA07 = ((bArr[i5 + 1] & 255) << 8) | (bArr[i5] & 255);
        int iMin = Math.min(bArr[i5 + 2] & 255, 88);
        int i8 = A0F[iMin];
        int i9 = ((this.A04 * i * i4) + i2) * 2;
        bArr2[i9] = (byte) (iA07 & 255);
        bArr2[i9 + 1] = (byte) (iA07 >> 8);
        for (int i10 = 0; i10 < i7 * 2; i10++) {
            int i11 = bArr[((i10 / 8) * i4 * 4) + i6 + ((i10 / 2) % 4)] & 255;
            int i12 = i10 % 2 == 0 ? i11 & 15 : i11 >> 4;
            int i13 = ((((i12 & 7) * 2) + 1) * i8) >> 3;
            if ((i12 & 8) != 0) {
                i13 = -i13;
            }
            iA07 = N1.A07(iA07 + i13, -32768, 32767);
            i9 += i4 * 2;
            bArr2[i9] = (byte) (iA07 & 255);
            bArr2[i9 + 1] = (byte) (iA07 >> 8);
            iMin = N1.A07(iMin + A0E[i12], 0, A0F.length - 1);
            i8 = A0F[iMin];
        }
    }

    private void A07(byte[] bArr, int i, C1744Mk c1744Mk) {
        for (int i2 = 0; i2 < i; i2++) {
            for (int i3 = 0; i3 < this.A0A.A05; i3++) {
                A06(bArr, i2, i3, c1744Mk.A0l());
                if (A0D[2].length() == 5) {
                    throw new RuntimeException();
                }
                String[] strArr = A0D;
                strArr[1] = "u6iJIXJ735wojqn9STyQG7ng6git";
                strArr[4] = "U0vZmzHfLPML8OPqR4VTMum7AlsS";
            }
        }
        int iA01 = A01(this.A04 * i);
        c1744Mk.A0f(0);
        c1744Mk.A0e(iA01);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2266d7
    public final void AAm(int i, long j) {
        this.A08.AKP(new NR(this.A0A, this.A04, i, j));
        this.A09.A7E(this.A06);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2266d7
    public final void AK2(long j) {
        this.A00 = 0;
        this.A03 = j;
        this.A01 = 0;
        this.A02 = 0L;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2266d7
    public final boolean AKB(Q9 q9, long j) throws IOException {
        int iA00;
        int iA05 = this.A0A.A02 * N1.A05(this.A05 - A00(this.A01), this.A04);
        boolean z = j == 0;
        while (!z && this.A00 < iA05) {
            int i = q9.read(this.A0B, this.A00, (int) Math.min(iA05 - this.A00, j));
            if (i == -1) {
                z = true;
            } else {
                this.A00 += i;
            }
        }
        int i2 = this.A00 / this.A0A.A02;
        if (i2 > 0) {
            A07(this.A0B, i2, this.A07);
            this.A00 -= this.A0A.A02 * i2;
            int iA0A = this.A07.A0A();
            this.A09.AK9(this.A07, iA0A);
            this.A01 += iA0A;
            if (A00(this.A01) >= this.A05) {
                A05(this.A05);
            }
        }
        if (z && (iA00 = A00(this.A01)) > 0) {
            A05(iA00);
        }
        return z;
    }
}
