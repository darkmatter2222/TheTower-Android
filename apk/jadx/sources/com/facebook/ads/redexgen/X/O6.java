package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.Collections;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class O6 implements InterfaceC2240ch {
    public static byte[] A0E;
    public static String[] A0F = {"CbcqVeMZcITZtFNWimpvuwuahLhtLYXZ", "29kzKeHhA3C3SOqoer3TQXxbA4Kiq9Rh", "i3Hm0CLNouIA5Ct27jLuzhj7sJKKlOu9", "3Mx", "LY", "OmcmlkJq9Di9uclbn5GDfi7kauo8avZP", "EHo2Ng1BpOfM2fD6qAyAT", "rsOVVWfwWvZhLCQOx2FZq2QQaJwyNbVm"};
    public long A01;
    public ZP A02;
    public C2248cp A03;
    public String A04;
    public boolean A05;
    public final C2254cv A0C;
    public final boolean[] A0D = new boolean[3];
    public final C2249cq A0B = new C2249cq(32, 128);
    public final C2249cq A09 = new C2249cq(33, 128);
    public final C2249cq A07 = new C2249cq(34, 128);
    public final C2249cq A08 = new C2249cq(39, 128);
    public final C2249cq A0A = new C2249cq(40, 128);
    public long A00 = -9223372036854775807L;
    public final C1744Mk A06 = new C1744Mk();

    static {
        A03();
    }

    public O6(C2254cv c2254cv) {
        this.A0C = c2254cv;
    }

    public static VC A00(String str, C2249cq c2249cq, C2249cq c2249cq2, C2249cq c2249cq3) {
        byte[] bArr = new byte[c2249cq.A00 + c2249cq2.A00 + c2249cq3.A00];
        System.arraycopy(c2249cq.A01, 0, bArr, 0, c2249cq.A00);
        System.arraycopy(c2249cq2.A01, 0, bArr, c2249cq.A00, c2249cq2.A00);
        System.arraycopy(c2249cq3.A01, 0, bArr, c2249cq.A00 + c2249cq2.A00, c2249cq3.A00);
        ZG zg = new ZG(c2249cq2.A01, 0, c2249cq2.A00);
        zg.A07(44);
        int iA05 = zg.A05(3);
        zg.A06();
        int iA06 = zg.A05(2);
        boolean zA0A = zg.A0A();
        int iA07 = zg.A05(5);
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= 32) {
                break;
            }
            if (zg.A0A()) {
                i |= 1 << i2;
            }
            i2++;
        }
        int[] iArr = new int[6];
        for (int i3 = 0; i3 < iArr.length; i3++) {
            iArr[i3] = zg.A05(8);
        }
        int iA08 = zg.A05(8);
        int i4 = 0;
        for (int i5 = 0; i5 < iA05; i5++) {
            boolean zA0A2 = zg.A0A();
            if (A0F[3].length() == 8) {
                throw new RuntimeException();
            }
            A0F[3] = "YgcM4WqDIjoN50hJZK7BrDzFeKRGf";
            if (zA0A2) {
                i4 += 89;
            }
            if (zg.A0A()) {
                i4 += 8;
            }
        }
        zg.A07(i4);
        if (iA05 > 0) {
            zg.A07((8 - iA05) * 2);
        }
        zg.A04();
        int iA04 = zg.A04();
        if (iA04 == 3) {
            zg.A06();
        }
        int iA09 = zg.A04();
        int iA010 = zg.A04();
        if (zg.A0A()) {
            int iA011 = zg.A04();
            int iA012 = zg.A04();
            int iA013 = zg.A04();
            int iA014 = zg.A04();
            iA09 -= (iA011 + iA012) * ((iA04 == 1 || iA04 == 2) ? 2 : 1);
            iA010 -= (iA013 + iA014) * (iA04 == 1 ? 2 : 1);
        }
        zg.A04();
        zg.A04();
        int iA015 = zg.A04();
        for (int i6 = zg.A0A() ? 0 : iA05; i6 <= iA05; i6++) {
            zg.A04();
            zg.A04();
            zg.A04();
        }
        zg.A04();
        zg.A04();
        zg.A04();
        zg.A04();
        zg.A04();
        zg.A04();
        if (zg.A0A() && zg.A0A()) {
            A06(zg);
        }
        zg.A07(2);
        boolean zA0A3 = zg.A0A();
        String[] strArr = A0F;
        if (strArr[4].length() == strArr[6].length()) {
            throw new RuntimeException();
        }
        A0F[5] = "dYITnwNNekWcLXcH7Glmv1nIaQrxavL4";
        if (zA0A3) {
            zg.A07(8);
            zg.A04();
            zg.A04();
            zg.A06();
        }
        A07(zg);
        if (zg.A0A()) {
            for (int i7 = 0; i7 < zg.A04(); i7++) {
                zg.A07(iA015 + 4 + 1);
            }
        }
        zg.A07(2);
        float f = 1.0f;
        if (zg.A0A()) {
            if (zg.A0A()) {
                int iA016 = zg.A05(8);
                if (iA016 == 255) {
                    int iA017 = zg.A05(16);
                    int iA018 = zg.A05(16);
                    if (iA017 != 0 && iA018 != 0) {
                        f = iA017 / iA018;
                    }
                } else if (iA016 < ZE.A04.length) {
                    f = ZE.A04[iA016];
                } else {
                    MV.A07(A01(0, 10, 94), A01(10, 35, 83) + iA016);
                }
            }
            if (zg.A0A()) {
                zg.A06();
            }
            if (zg.A0A()) {
                zg.A07(4);
                if (zg.A0A()) {
                    zg.A07(24);
                }
            }
            if (zg.A0A()) {
                zg.A04();
                String[] strArr2 = A0F;
                if (strArr2[4].length() != strArr2[6].length()) {
                    A0F[3] = "";
                    zg.A04();
                }
                throw new RuntimeException();
            }
            zg.A06();
            if (zg.A0A()) {
                iA010 *= 2;
            }
        }
        return new C1689Ke().A0y(str).A11(A01(45, 10, 52)).A0w(Lv.A03(iA06, zA0A, iA07, i, iArr, iA08)).A0r(iA09).A0f(iA010).A0Y(f).A12(Collections.singletonList(bArr)).A14();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 121);
        }
        return new String(bArrCopyOfRange);
    }

    @EnsuresNonNull
    private void A02() {
        AbstractC1722Ln.A02(this.A02);
    }

    public static void A03() {
        A0E = new byte[]{Ascii.US, 9, Ascii.CR, Ascii.FF, 41, 60, 56, 59, 60, 73, 33, 58, 49, 68, 60, 49, 47, SignedBytes.MAX_POWER_OF_TWO, 49, 48, -20, 45, 63, 60, 49, 47, SignedBytes.MAX_POWER_OF_TWO, 43, 62, 45, SignedBytes.MAX_POWER_OF_TWO, 53, 59, 43, 53, 48, 47, -20, 66, 45, 56, 65, 49, 6, -20, 35, Ascii.SYN, 17, Ascii.DC2, Ascii.FS, -36, Ascii.NAK, Ascii.DC2, 35, Ascii.DLE};
    }

    @RequiresNonNull
    private void A04(long j, int i, int i2, long j2) {
        this.A03.A05(j, i, this.A05);
        if (!this.A05) {
            this.A0B.A04(i2);
            this.A09.A04(i2);
            this.A07.A04(i2);
            if (this.A0B.A03() && this.A09.A03() && this.A07.A03()) {
                this.A02.A7E(A00(this.A04, this.A0B, this.A09, this.A07));
                this.A05 = true;
            }
        }
        if (this.A08.A04(i2)) {
            int iA02 = ZE.A02(this.A08.A01, this.A08.A00);
            C1744Mk c1744Mk = this.A06;
            if (A0F[5].charAt(29) != 'v') {
                throw new RuntimeException();
            }
            String[] strArr = A0F;
            strArr[4] = "20";
            strArr[6] = "ouyj7ZGHdueUcsFAx6xq9";
            c1744Mk.A0j(this.A08.A01, iA02);
            this.A06.A0g(5);
            this.A0C.A02(j2, this.A06);
        }
        C2249cq c2249cq = this.A0A;
        if (A0F[5].charAt(29) != 'v') {
            throw new RuntimeException();
        }
        String[] strArr2 = A0F;
        strArr2[1] = "neXRZElxjMn6hJ6d25KRCyi4OfcVmles";
        strArr2[0] = "97iYtqDlRXoqBp4YWI39vVXATG2bNt9l";
        if (c2249cq.A04(i2)) {
            this.A06.A0j(this.A0A.A01, ZE.A02(this.A0A.A01, this.A0A.A00));
            this.A06.A0g(5);
            this.A0C.A02(j2, this.A06);
        }
    }

    @RequiresNonNull
    private void A05(long j, int i, int i2, long j2) {
        this.A03.A04(j, i, i2, j2, this.A05);
        if (!this.A05) {
            this.A0B.A01(i2);
            this.A09.A01(i2);
            this.A07.A01(i2);
        }
        this.A08.A01(i2);
        this.A0A.A01(i2);
    }

    public static void A06(ZG zg) {
        int i = 0;
        while (true) {
            String[] strArr = A0F;
            if (strArr[4].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            A0F[5] = "gy4Ab9uqHgQsI8KELBsGaRF1ZFdb2vFi";
            if (i >= 4) {
                return;
            }
            int i2 = 0;
            while (i2 < 6) {
                int i3 = 1;
                if (zg.A0A()) {
                    int iMin = Math.min(64, 1 << ((i << 1) + 4));
                    if (i > 1) {
                        zg.A03();
                    }
                    for (int i4 = 0; i4 < iMin; i4++) {
                        zg.A03();
                    }
                } else {
                    zg.A04();
                }
                if (i == 3) {
                    i3 = 3;
                }
                i2 += i3;
            }
            i++;
        }
    }

    public static void A07(ZG zg) {
        int iA04 = zg.A04();
        boolean zA0A = false;
        int i = 0;
        for (int i2 = 0; i2 < iA04; i2++) {
            if (i2 != 0) {
                zA0A = zg.A0A();
            }
            if (zA0A) {
                zg.A06();
                zg.A04();
                for (int i3 = 0; i3 <= i; i3++) {
                    if (zg.A0A()) {
                        zg.A06();
                    }
                }
            } else {
                int iA05 = zg.A04();
                int iA06 = zg.A04();
                i = iA05 + iA06;
                if (A0F[3].length() == 8) {
                    throw new RuntimeException();
                }
                A0F[3] = "5hTei";
                for (int i4 = 0; i4 < iA05; i4++) {
                    zg.A04();
                    zg.A06();
                }
                for (int i5 = 0; i5 < iA06; i5++) {
                    zg.A04();
                    zg.A06();
                }
            }
        }
    }

    @RequiresNonNull
    private void A08(byte[] bArr, int i, int i2) {
        this.A03.A06(bArr, i, i2);
        if (!this.A05) {
            this.A0B.A02(bArr, i, i2);
            this.A09.A02(bArr, i, i2);
            this.A07.A02(bArr, i, i2);
        }
        this.A08.A02(bArr, i, i2);
        this.A0A.A02(bArr, i, i2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void A5j(C1744Mk c1744Mk) {
        A02();
        while (c1744Mk.A07() > 0) {
            int iA09 = c1744Mk.A09();
            int iA0A = c1744Mk.A0A();
            byte[] bArrA0l = c1744Mk.A0l();
            this.A01 += (long) c1744Mk.A07();
            this.A02.AK9(c1744Mk, c1744Mk.A07());
            while (iA09 < iA0A) {
                int iA04 = ZE.A04(bArrA0l, iA09, iA0A, this.A0D);
                if (iA04 == iA0A) {
                    A08(bArrA0l, iA09, iA0A);
                    return;
                }
                int iA00 = ZE.A00(bArrA0l, iA04);
                int i = iA04 - iA09;
                if (i > 0) {
                    A08(bArrA0l, iA09, iA04);
                }
                int i2 = iA0A - iA04;
                long j = this.A01 - ((long) i2);
                A04(j, i2, i < 0 ? -i : 0, this.A00);
                A05(j, i2, iA00, this.A00);
                iA09 = iA04 + 3;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void A6B(InterfaceC2044Yw interfaceC2044Yw, C2261d2 c2261d2) {
        c2261d2.A05();
        this.A04 = c2261d2.A04();
        this.A02 = interfaceC2044Yw.ALm(c2261d2.A03(), 2);
        this.A03 = new C2248cp(this.A02);
        this.A0C.A03(interfaceC2044Yw, c2261d2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AI2() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AI3(long j, int i) {
        if (j != -9223372036854775807L) {
            this.A00 = j;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AKN() {
        this.A01 = 0L;
        this.A00 = -9223372036854775807L;
        ZE.A0H(this.A0D);
        this.A0B.A00();
        this.A09.A00();
        this.A07.A00();
        this.A08.A00();
        this.A0A.A00();
        if (this.A03 != null) {
            this.A03.A03();
        }
    }
}
