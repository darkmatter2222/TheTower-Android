package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class O8 implements InterfaceC2240ch {
    public static byte[] A0F;
    public static String[] A0G = {"5E2Ruv", "As2lK0wpv7EAotnDV0zySIEdp7rDAuRR", "zJq1SqXcVRZcYNSBAed6ZEYj5mJqLWdW", "HU", "Au", "wBYdOmQ4YddSL8awfUza1VzNpagTxGES", "j0tpPR2yAFbckVJ9RgjjaoWQaPtBZ6oF", "tmCUrPRgE7mum4Ug"};
    public long A01;
    public ZP A02;
    public C2247co A03;
    public String A04;
    public boolean A05;
    public boolean A06;
    public final C2254cv A0B;
    public final boolean A0C;
    public final boolean A0D;
    public final boolean[] A0E = new boolean[3];
    public final C2249cq A0A = new C2249cq(7, 128);
    public final C2249cq A08 = new C2249cq(8, 128);
    public final C2249cq A09 = new C2249cq(6, 128);
    public long A00 = -9223372036854775807L;
    public final C1744Mk A07 = new C1744Mk();

    static {
        A02();
    }

    public O8(C2254cv c2254cv, boolean z, boolean z2) {
        this.A0B = c2254cv;
        this.A0C = z;
        this.A0D = z2;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A0G;
            if (strArr[1].charAt(18) != strArr[5].charAt(18)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0G;
            strArr2[4] = "uL";
            strArr2[3] = "GM";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 8);
            i4++;
        }
    }

    @EnsuresNonNull
    private void A01() {
        AbstractC1722Ln.A02(this.A02);
    }

    public static void A02() {
        A0F = new byte[]{-26, -39, -44, -43, -33, -97, -47, -26, -45};
    }

    /* JADX WARN: Code duplicated, block: B:17:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:27:0x0143  */
    /* JADX WARN: Code duplicated, block: B:30:0x017e  */
    /* JADX WARN: Code duplicated, block: B:32:? A[RETURN, SYNTHETIC] */
    @RequiresNonNull
    private void A03(long j, int i, int i2, long j2) {
        C2249cq c2249cq;
        String[] strArr;
        if (this.A05 && !this.A03.A06()) {
            if (this.A09.A04(i2)) {
                c2249cq = this.A09;
                strArr = A0G;
                if (strArr[4].length() == strArr[3].length()) {
                    String[] strArr2 = A0G;
                    strArr2[4] = "yn";
                    strArr2[3] = "8M";
                    this.A07.A0j(this.A09.A01, ZE.A02(c2249cq.A01, this.A09.A00));
                    this.A07.A0f(4);
                    this.A0B.A02(j2, this.A07);
                }
            }
            if (this.A03.A07(j, i, this.A05, this.A06)) {
                this.A06 = false;
                return;
            }
            return;
        }
        this.A0A.A04(i2);
        this.A08.A04(i2);
        if (this.A05) {
            if (this.A0A.A03()) {
                this.A03.A04(ZE.A09(this.A0A.A01, 3, this.A0A.A00));
                this.A0A.A00();
            } else if (this.A08.A03()) {
                this.A03.A03(ZE.A07(this.A08.A01, 3, this.A08.A00));
                this.A08.A00();
            }
        } else if (this.A0A.A03()) {
            C2249cq c2249cq2 = this.A08;
            String[] strArr3 = A0G;
            if (strArr3[2].charAt(16) != strArr3[6].charAt(16)) {
                String[] strArr4 = A0G;
                strArr4[4] = "6Y";
                strArr4[3] = "7O";
                if (c2249cq2.A03()) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(Arrays.copyOf(this.A0A.A01, this.A0A.A00));
                    arrayList.add(Arrays.copyOf(this.A08.A01, this.A08.A00));
                    ZD zdA09 = ZE.A09(this.A0A.A01, 3, this.A0A.A00);
                    ZC zcA07 = ZE.A07(this.A08.A01, 3, this.A08.A00);
                    this.A02.A7E(new C1689Ke().A0y(this.A04).A11(A00(0, 9, 104)).A0w(Lv.A01(zdA09.A08, zdA09.A01, zdA09.A04)).A0r(zdA09.A0A).A0f(zdA09.A03).A0Y(zdA09.A00).A12(arrayList).A14());
                    this.A05 = true;
                    this.A03.A04(zdA09);
                    this.A03.A03(zcA07);
                    this.A0A.A00();
                    this.A08.A00();
                }
            }
        }
        if (this.A09.A04(i2)) {
            c2249cq = this.A09;
            strArr = A0G;
            if (strArr[4].length() == strArr[3].length()) {
                String[] strArr5 = A0G;
                strArr5[4] = "yn";
                strArr5[3] = "8M";
                this.A07.A0j(this.A09.A01, ZE.A02(c2249cq.A01, this.A09.A00));
                this.A07.A0f(4);
                this.A0B.A02(j2, this.A07);
            }
        }
        if (this.A03.A07(j, i, this.A05, this.A06)) {
            this.A06 = false;
            return;
        }
        return;
        throw new RuntimeException();
    }

    @RequiresNonNull
    private void A04(long j, int i, long j2) {
        if (!this.A05 || this.A03.A06()) {
            this.A0A.A01(i);
            this.A08.A01(i);
        }
        this.A09.A01(i);
        this.A03.A02(j, i, j2);
    }

    @RequiresNonNull
    private void A05(byte[] bArr, int i, int i2) {
        if (!this.A05 || this.A03.A06()) {
            this.A0A.A02(bArr, i, i2);
            this.A08.A02(bArr, i, i2);
        }
        this.A09.A02(bArr, i, i2);
        this.A03.A05(bArr, i, i2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void A5j(C1744Mk c1744Mk) {
        int i;
        A01();
        int iA09 = c1744Mk.A09();
        int iA0A = c1744Mk.A0A();
        byte[] bArrA0l = c1744Mk.A0l();
        this.A01 += (long) c1744Mk.A07();
        this.A02.AK9(c1744Mk, c1744Mk.A07());
        while (true) {
            int iA04 = ZE.A04(bArrA0l, iA09, iA0A, this.A0E);
            if (iA04 == iA0A) {
                A05(bArrA0l, iA09, iA0A);
                return;
            }
            int iA01 = ZE.A01(bArrA0l, iA04);
            int i2 = iA04 - iA09;
            if (i2 > 0) {
                A05(bArrA0l, iA09, iA04);
            }
            int i3 = iA0A - iA04;
            long j = this.A01 - ((long) i3);
            if (i2 < 0) {
                i = -i2;
                String[] strArr = A0G;
                if (strArr[1].charAt(18) != strArr[5].charAt(18)) {
                    throw new RuntimeException();
                }
                A0G[7] = "QwZGDBNPEFP2lUdc";
            } else {
                i = 0;
            }
            A03(j, i3, i, this.A00);
            A04(j, iA01, this.A00);
            iA09 = iA04 + 3;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void A6B(InterfaceC2044Yw interfaceC2044Yw, C2261d2 c2261d2) {
        c2261d2.A05();
        this.A04 = c2261d2.A04();
        this.A02 = interfaceC2044Yw.ALm(c2261d2.A03(), 2);
        this.A03 = new C2247co(this.A02, this.A0C, this.A0D);
        this.A0B.A03(interfaceC2044Yw, c2261d2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AI2() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AI3(long j, int i) {
        if (j != -9223372036854775807L) {
            this.A00 = j;
        }
        this.A06 |= (i & 2) != 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AKN() {
        this.A01 = 0L;
        this.A06 = false;
        this.A00 = -9223372036854775807L;
        ZE.A0H(this.A0E);
        this.A0A.A00();
        this.A08.A00();
        this.A09.A00();
        if (this.A03 != null) {
            this.A03.A01();
        }
    }
}
