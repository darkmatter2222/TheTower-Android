package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.DrmInitData;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.at, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2128at {
    public static String[] A0A = {"hn1FHZJnLh3thuxxKEIhZTqnlh5aWEbw", "qDjh889adJz1MC", "vY3CRqHO1bVmmLT8Hq7gqQ8FFHoNB", "cMHnnSo25D50Rxc59rDVSvzIsgO5hE1C", "TK2vIC7x9g9unoc", "GEWgj", "ZHEG6A7QvYcS4oy88WRiW8fDIFxtCxmZ", "QYDDDh5QI"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public C2122an A04;
    public C2145bA A05;
    public final ZP A06;
    public final C2147bC A07 = new C2147bC();
    public final C1744Mk A09 = new C1744Mk(1);
    public final C1744Mk A08 = new C1744Mk();

    public C2128at(ZP zp) {
        this.A06 = zp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C2146bB A00() {
        C2146bB c2146bBA00 = this.A07.A07 != null ? this.A07.A07 : this.A05.A00(this.A07.A06.A02);
        if (c2146bBA00 != null) {
            boolean z = c2146bBA00.A03;
            String[] strArr = A0A;
            if (strArr[1].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            A0A[6] = "M7WQN7echjzu5PJ9kXxaPiCmmnvjA1W3";
            if (z) {
                return c2146bBA00;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02() {
        C2146bB c2146bBA00 = A00();
        if (c2146bBA00 == null) {
            return;
        }
        C2147bC c2147bC = this.A07;
        if (A0A[3].charAt(17) != 'r') {
            throw new RuntimeException();
        }
        A0A[6] = "2xb7HPeFQWra9WDOakKd0dOCmGEctuq2";
        C1744Mk c1744Mk = c2147bC.A0H;
        if (c2146bBA00.A00 != 0) {
            c1744Mk.A0g(c2146bBA00.A00);
        }
        if (this.A07.A06(this.A01)) {
            c1744Mk.A0g(c1744Mk.A0M() * 6);
        }
    }

    public final int A04() {
        C1744Mk c1744Mk;
        int length;
        C2146bB c2146bBA00 = A00();
        if (c2146bBA00 == null) {
            return 0;
        }
        if (c2146bBA00.A00 != 0) {
            c1744Mk = this.A07.A0H;
            length = c2146bBA00.A00;
        } else {
            byte[] bArr = c2146bBA00.A04;
            this.A08.A0j(bArr, bArr.length);
            c1744Mk = this.A08;
            length = bArr.length;
        }
        boolean zA06 = this.A07.A06(this.A01);
        this.A09.A00[0] = (byte) ((zA06 ? 128 : 0) | length);
        this.A09.A0f(0);
        this.A06.AK9(this.A09, 1);
        this.A06.AK9(c1744Mk, length);
        if (!zA06) {
            return length + 1;
        }
        C1744Mk c1744Mk2 = this.A07.A0H;
        int iA0M = c1744Mk2.A0M();
        c1744Mk2.A0g(-2);
        int i = (iA0M * 6) + 2;
        this.A06.AK9(c1744Mk2, i);
        return length + 1 + i;
    }

    public final void A05() {
        this.A07.A01();
        this.A01 = 0;
        this.A02 = 0;
        this.A00 = 0;
        this.A03 = 0;
    }

    public final void A06(long j) {
        for (int i = this.A01; i < this.A07.A00 && this.A07.A00(i) < j; i++) {
            C2147bC c2147bC = this.A07;
            if (A0A[6].charAt(17) == 'a') {
                throw new RuntimeException();
            }
            String[] strArr = A0A;
            strArr[5] = "UiDsF";
            strArr[7] = "D9RX4x7Ey";
            if (c2147bC.A0G[i]) {
                this.A03 = i;
            }
        }
    }

    public final void A07(DrmInitData drmInitData) {
        C2146bB c2146bBA00 = this.A05.A00(this.A07.A06.A02);
        this.A06.A7E(this.A05.A07.A09(drmInitData.A01(c2146bBA00 != null ? c2146bBA00.A02 : null)));
    }

    public final void A08(C2145bA c2145bA, C2122an c2122an) {
        this.A05 = (C2145bA) AbstractC1722Ln.A01(c2145bA);
        this.A04 = (C2122an) AbstractC1722Ln.A01(c2122an);
        this.A06.A7E(c2145bA.A07);
        A05();
    }

    public final boolean A09() {
        this.A01++;
        this.A00++;
        if (this.A00 != this.A07.A0C[this.A02]) {
            return true;
        }
        this.A02++;
        this.A00 = 0;
        return false;
    }
}
