package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bI, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2153bI {
    public static String[] A05 = {"7HPX5QbBl7E5EbUQPcKmEzjWCG4LrmwT", "ygyGCkLJvoZBhmle1B6JVDDau9ImKpku", "DHdl1NsMKs5M8l", "rSeDRL8ka", "MxStOy49MCB4pDgnTOrwxDHe8KkSLg5r", "7C69duVQ4AUme6rB11qfzHoDidqUT7yE", "uwct2hFMWSb4Fkjvm", "vR4EpVshYRBKG4fumVmPB58VuXbddHmx"};
    public int A01;
    public boolean A02;
    public final C2154bJ A04 = new C2154bJ();
    public final C1744Mk A03 = new C1744Mk(new byte[65025], 0);
    public int A00 = -1;

    private int A00(int i) {
        this.A01 = 0;
        int i2 = 0;
        while (this.A01 + i < this.A04.A02) {
            int[] iArr = this.A04.A09;
            int i3 = this.A01;
            this.A01 = i3 + 1;
            int i4 = iArr[i3 + i];
            i2 += i4;
            if (i4 != 255) {
                break;
            }
        }
        return i2;
    }

    public final C1744Mk A01() {
        return this.A03;
    }

    public final C2154bJ A02() {
        return this.A04;
    }

    public final void A03() {
        this.A04.A02();
        this.A03.A0d(0);
        this.A00 = -1;
        this.A02 = false;
    }

    public final void A04() {
        if (this.A03.A0l().length == 65025) {
            return;
        }
        this.A03.A0j(Arrays.copyOf(this.A03.A0l(), Math.max(65025, this.A03.A0A())), this.A03.A0A());
    }

    /* JADX WARN: Code duplicated, block: B:20:0x005f  */
    /* JADX WARN: Code duplicated, block: B:25:0x006b  */
    /* JADX WARN: Code duplicated, block: B:33:0x008e  */
    /* JADX WARN: Code duplicated, block: B:53:0x0067 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x008d A[SYNTHETIC] */
    public final boolean A05(Q9 q9) throws IOException {
        int i;
        int iA00;
        AbstractC1722Ln.A08(q9 != null);
        if (this.A02) {
            this.A02 = false;
            this.A03.A0d(0);
        }
        while (true) {
            boolean z = this.A02;
            String[] strArr = A05;
            if (strArr[1].charAt(21) != strArr[4].charAt(21)) {
                throw new RuntimeException();
            }
            A05[2] = "bWktL1Cb6EOJU2";
            if (z) {
                return true;
            }
            if (this.A00 < 0) {
                boolean zA03 = this.A04.A03(q9);
                String[] strArr2 = A05;
                if (strArr2[5].charAt(27) != strArr2[0].charAt(27)) {
                    A05[2] = "dPJCyuH";
                    if (zA03) {
                        if (!this.A04.A05(q9, true)) {
                            i = 0;
                            iA00 = this.A04.A01;
                            if ((this.A04.A04 & 1) == 1 && this.A03.A0A() == 0) {
                                iA00 += A00(0);
                                i = 0 + this.A01;
                            }
                            if (!AbstractC2045Yx.A02(q9, iA00)) {
                                return false;
                            }
                            this.A00 = i;
                        }
                    }
                } else if (zA03) {
                    if (!this.A04.A05(q9, true)) {
                        i = 0;
                        iA00 = this.A04.A01;
                        if ((this.A04.A04 & 1) == 1) {
                            iA00 += A00(0);
                            i = 0 + this.A01;
                        }
                        if (!AbstractC2045Yx.A02(q9, iA00)) {
                            return false;
                        }
                        this.A00 = i;
                    }
                }
                return false;
            }
            int iA01 = A00(this.A00);
            int i2 = this.A00 + this.A01;
            if (iA01 > 0) {
                this.A03.A0c(this.A03.A0A() + iA01);
                if (!AbstractC2045Yx.A03(q9, this.A03.A0l(), this.A03.A0A(), iA01)) {
                    return false;
                }
                this.A03.A0e(this.A03.A0A() + iA01);
                this.A02 = this.A04.A09[i2 + (-1)] != 255;
            }
            if (i2 == this.A04.A02) {
                i2 = -1;
            }
            this.A00 = i2;
        }
    }
}
