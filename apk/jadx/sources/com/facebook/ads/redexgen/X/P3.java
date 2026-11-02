package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.facebook.ads.androidx.media3.common.Timeline;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class P3 {
    public static String[] A0B = {"GnEroV9tf25Q74Q4AIL815Rx44kgHmvG", "P063YvyLaUd0U", "1FPz0jD6XCd9GEIx4t71guCP2wVgzCU9", "QppZ1G", "WD4Rw8prweBW9nCmOnoOZ9eITxQmD", "TAEnBdP9yWi256YM1FToN", "eMROy8fWhWETrw9YRXGKpKUkohzw49Ix", "FZX8WufoEexGN39WNk9SO4rP"};
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public C1811Oz A04;
    public C1811Oz A05;
    public C1811Oz A06;
    public Object A07;
    public boolean A08;
    public final UM A09 = new UM();
    public final UK A0A = new UK();

    private long A00(Timeline timeline, Object obj) {
        int iA0A;
        int i = timeline.A0J(obj, this.A09).A00;
        if (this.A07 != null && (iA0A = timeline.A0A(this.A07)) != -1 && timeline.A0H(iA0A, this.A09).A00 == i) {
            return this.A03;
        }
        for (C1811Oz c1811OzA0D = A0D(); c1811OzA0D != null; c1811OzA0D = c1811OzA0D.A0I()) {
            if (c1811OzA0D.A08.equals(obj)) {
                return c1811OzA0D.A00.A04.A03;
            }
        }
        for (C1811Oz c1811OzA0D2 = A0D(); c1811OzA0D2 != null; c1811OzA0D2 = c1811OzA0D2.A0I()) {
            int iA0A2 = timeline.A0A(c1811OzA0D2.A08);
            if (iA0A2 != -1 && timeline.A0H(iA0A2, this.A09).A00 == i) {
                return c1811OzA0D2.A00.A04.A03;
            }
        }
        long j = this.A02;
        this.A02 = 1 + j;
        return j;
    }

    private P0 A01(Timeline timeline, C1811Oz c1811Oz, long j) {
        long jLongValue;
        P3 p3 = this;
        P0 p0 = c1811Oz.A00;
        if (p0.A07) {
            int iA09 = timeline.A09(timeline.A0A(p0.A04.A04), p3.A09, p3.A0A, p3.A01, p3.A08);
            if (iA09 == -1) {
                return null;
            }
            int i = timeline.A0I(iA09, p3.A09, true).A00;
            Object obj = p3.A09.A04;
            long j2 = p0.A04.A03;
            if (timeline.A0K(i, p3.A0A).A00 == iA09) {
                Pair<Object, Long> pairA0F = timeline.A0F(p3.A0A, p3.A09, i, -9223372036854775807L, Math.max(0L, (c1811Oz.A0B() + p0.A00) - j));
                if (pairA0F == null) {
                    return null;
                }
                obj = pairA0F.first;
                jLongValue = ((Long) pairA0F.second).longValue();
                C1811Oz c1811OzA0I = c1811Oz.A0I();
                if (A0B[3].length() == 6) {
                    A0B[1] = "EUsp1qGPNfBUG";
                    if (c1811OzA0I == null || !c1811OzA0I.A08.equals(obj)) {
                        p3 = this;
                        j2 = p3.A02;
                        p3.A02 = 1 + j2;
                    } else {
                        j2 = c1811OzA0I.A00.A04.A03;
                        p3 = this;
                    }
                }
            } else {
                jLongValue = 0;
            }
            return A02(timeline, A06(timeline, obj, jLongValue, j2, p3.A09), jLongValue, jLongValue);
        }
        C1862Rk c1862Rk = p0.A04;
        timeline.A0J(c1862Rk.A04, p3.A09);
        if (c1862Rk.A00()) {
            int i2 = c1862Rk.A00;
            int iA04 = p3.A09.A04(i2);
            if (iA04 == -1) {
                return null;
            }
            int iA06 = p3.A09.A06(i2, c1862Rk.A01);
            if (iA06 >= iA04) {
                return A04(timeline, c1862Rk.A04, p0.A02, c1862Rk.A03);
            }
            if (p3.A09.A0I(i2, iA06)) {
                return A03(timeline, c1862Rk.A04, i2, iA06, p0.A02, c1862Rk.A03);
            }
            return null;
        }
        long j3 = p0.A01;
        if (A0B[0].charAt(22) != 'b') {
            A0B[5] = "J1GWsAdRIVS2ayMBQJ";
            if (j3 == Long.MIN_VALUE) {
                int iA03 = p3.A09.A03();
                if (iA03 == 0) {
                    return null;
                }
                int i3 = iA03 - 1;
                UM um = p3.A09;
                if (A0B[5].length() == 7) {
                    throw new RuntimeException();
                }
                A0B[3] = "CbLoUs";
                if (um.A0D(i3) != Long.MIN_VALUE || p3.A09.A0H(i3)) {
                    return null;
                }
                int iA05 = p3.A09.A05(i3);
                if (!p3.A09.A0I(i3, iA05)) {
                    return null;
                }
                return A03(timeline, c1862Rk.A04, i3, iA05, p3.A09.A0A(), c1862Rk.A03);
            }
            int iA08 = p3.A09.A08(p0.A01);
            if (iA08 == -1) {
                return A04(timeline, c1862Rk.A04, p0.A01, c1862Rk.A03);
            }
            int iA07 = p3.A09.A05(iA08);
            UM um2 = p3.A09;
            if (A0B[0].charAt(22) == 'b') {
                throw new RuntimeException();
            }
            A0B[5] = "uhXbdG";
            if (!um2.A0I(iA08, iA07)) {
                return null;
            }
            Object obj2 = c1862Rk.A04;
            long j4 = p0.A01;
            String[] strArr = A0B;
            if (strArr[7].length() != strArr[4].length()) {
                String[] strArr2 = A0B;
                strArr2[7] = "Lcz6O6fEnk1Q5jWM2W5E02Xu";
                strArr2[4] = "tfP1uCtFNo7pxKOt8bVF0piC6TJYH";
                return A03(timeline, obj2, iA08, iA07, j4, c1862Rk.A03);
            }
        }
        throw new RuntimeException();
    }

    private P0 A02(Timeline timeline, C1862Rk c1862Rk, long j, long j2) {
        timeline.A0J(c1862Rk.A04, this.A09);
        if (!c1862Rk.A00()) {
            return A04(timeline, c1862Rk.A04, j2, c1862Rk.A03);
        }
        UM um = this.A09;
        int i = c1862Rk.A00;
        if (A0B[2].charAt(26) == 'F') {
            throw new RuntimeException();
        }
        A0B[1] = "ItczLf1d2nJIc";
        if (um.A0I(i, c1862Rk.A01)) {
            return A03(timeline, c1862Rk.A04, c1862Rk.A00, c1862Rk.A01, j, c1862Rk.A03);
        }
        return null;
    }

    private P0 A03(Timeline timeline, Object obj, int i, int i2, long j, long j2) {
        long jA09;
        C1862Rk c1862Rk = new C1862Rk(obj, i, i2, j2);
        boolean zA08 = A08(timeline, c1862Rk, Long.MIN_VALUE);
        boolean zA09 = A09(timeline, c1862Rk, zA08);
        long jA0E = timeline.A0J(c1862Rk.A04, this.A09).A0E(c1862Rk.A00, c1862Rk.A01);
        if (i2 == this.A09.A05(i)) {
            UM um = this.A09;
            if (A0B[1].length() != 13) {
                throw new RuntimeException();
            }
            String[] strArr = A0B;
            strArr[7] = "irlSq0v10zByQDiXm9i8jont";
            strArr[4] = "UKqJqhXwK0uP7TFoy7H6yLR2FGRqi";
            jA09 = um.A09();
        } else {
            jA09 = 0;
        }
        return new P0(c1862Rk, jA09, Long.MIN_VALUE, j, jA0E, zA08, zA09);
    }

    private P0 A04(Timeline timeline, Object obj, long j, long j2) {
        C1862Rk c1862Rk = new C1862Rk(obj, j2);
        timeline.A0J(c1862Rk.A04, this.A09);
        int iA07 = this.A09.A07(j);
        long jA0D = iA07 == -1 ? Long.MIN_VALUE : this.A09.A0D(iA07);
        boolean zA08 = A08(timeline, c1862Rk, jA0D);
        return new P0(c1862Rk, j, jA0D, -9223372036854775807L, jA0D == Long.MIN_VALUE ? this.A09.A0A() : jA0D, zA08, A09(timeline, c1862Rk, zA08));
    }

    private P0 A05(PO po) {
        return A02(po.A03, po.A05, po.A01, po.A02);
    }

    public static C1862Rk A06(Timeline timeline, Object obj, long j, long j2, UM um) {
        timeline.A0J(obj, um);
        int iA08 = um.A08(j);
        return iA08 == -1 ? new C1862Rk(obj, j2) : new C1862Rk(obj, iA08, um.A05(iA08), j2);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x004d  */
    /* JADX WARN: Code duplicated, block: B:15:0x0053 A[LOOP:1: B:9:0x0031->B:15:0x0053, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:39:0x005b A[EDGE_INSN: B:39:0x005b->B:18:0x005b BREAK  A[LOOP:1: B:9:0x0031->B:15:0x0053], SYNTHETIC] */
    private boolean A07(Timeline timeline) {
        C1811Oz c1811OzA0D = A0D();
        if (c1811OzA0D == null) {
            return true;
        }
        int iA0A = timeline.A0A(c1811OzA0D.A08);
        while (true) {
            UM um = this.A09;
            UK uk = this.A0A;
            int i = this.A01;
            boolean z = this.A08;
            if (A0B[2].charAt(26) == 'F') {
                throw new RuntimeException();
            }
            A0B[6] = "aKuQ9ueHtOksulQgEbalhQiU7zzzAfgD";
            iA0A = timeline.A09(iA0A, um, uk, i, z);
            while (true) {
                C1811Oz c1811OzA0I = c1811OzA0D.A0I();
                if (A0B[2].charAt(26) == 'F') {
                    if (c1811OzA0I == null) {
                        break;
                    }
                    if (!c1811OzA0D.A00.A07) {
                        break;
                        break;
                    }
                    c1811OzA0D = c1811OzA0D.A0I();
                } else {
                    A0B[3] = "Ixtp3Q";
                    if (c1811OzA0I == null) {
                        break;
                    }
                    if (!c1811OzA0D.A00.A07) {
                        break;
                    }
                    c1811OzA0D = c1811OzA0D.A0I();
                }
            }
            C1811Oz c1811OzA0I2 = c1811OzA0D.A0I();
            if (iA0A == -1 || c1811OzA0I2 == null || timeline.A0A(c1811OzA0I2.A08) != iA0A) {
                boolean zA0S = A0S(c1811OzA0D);
                c1811OzA0D.A00 = A0I(timeline, c1811OzA0D.A00);
                return (zA0S && A0N()) ? false : true;
            }
            c1811OzA0D = c1811OzA0I2;
        }
    }

    private boolean A08(Timeline timeline, C1862Rk c1862Rk, long j) {
        int iA03 = timeline.A0J(c1862Rk.A04, this.A09).A03();
        if (iA03 == 0) {
            return true;
        }
        int i = iA03 - 1;
        boolean zA00 = c1862Rk.A00();
        if (this.A09.A0D(i) != Long.MIN_VALUE) {
            return !zA00 && j == Long.MIN_VALUE;
        }
        int iA04 = this.A09.A04(i);
        if (iA04 == -1) {
            return false;
        }
        if (zA00 && c1862Rk.A00 == i && c1862Rk.A01 == iA04 + (-1)) {
            return true;
        }
        if (!zA00) {
            int iA05 = this.A09.A05(i);
            if (A0B[6].charAt(21) == 'n') {
                throw new RuntimeException();
            }
            String[] strArr = A0B;
            strArr[7] = "9fN1GtT7csoOtzuVOZGTkJkv";
            strArr[4] = "l5pQsPxk6IT0oV754sDRXb3Ilyc1S";
            if (iA05 == iA04) {
                return true;
            }
        }
        return false;
    }

    private boolean A09(Timeline timeline, C1862Rk c1862Rk, boolean z) {
        int iA0A = timeline.A0A(c1862Rk.A04);
        return !timeline.A0K(timeline.A0H(iA0A, this.A09).A00, this.A0A).A0D && timeline.A0O(iA0A, this.A09, this.A0A, this.A01, this.A08) && z;
    }

    private boolean A0A(C1811Oz c1811Oz, P0 p0) {
        P0 p1 = c1811Oz.A00;
        if (p1.A03 == p0.A03 && p1.A01 == p0.A01) {
            boolean zEquals = p1.A04.equals(p0.A04);
            if (A0B[0].charAt(22) == 'b') {
                throw new RuntimeException();
            }
            A0B[3] = "TRWx01";
            if (zEquals) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0052  */
    public final C1811Oz A0B() {
        if (this.A05 != null) {
            C1811Oz c1811Oz = this.A05;
            if (A0B[5].length() == 7) {
                throw new RuntimeException();
            }
            A0B[6] = "BzNnK6vZGZJzhJ0cKUk4sgiDsSKmw8OE";
            if (c1811Oz == this.A06) {
                this.A06 = this.A05.A0I();
            }
            C1811Oz c1811Oz2 = this.A05;
            if (A0B[2].charAt(26) != 'F') {
                A0B[1] = "VaAQRmMnxrRkq";
                c1811Oz2.A0M();
                this.A05 = this.A05.A0I();
                this.A00--;
                if (this.A00 == 0) {
                    this.A04 = null;
                }
            } else {
                A0B[3] = "lvc6uI";
                c1811Oz2.A0M();
                this.A05 = this.A05.A0I();
                this.A00--;
                if (this.A00 == 0) {
                    this.A04 = null;
                }
            }
        } else {
            this.A05 = this.A04;
            this.A06 = this.A04;
        }
        C1811Oz c1811Oz3 = this.A05;
        if (A0B[3].length() != 6) {
            A0B[0] = "qeaxpnVrjOAzgdW4zxdWcB8fNL6cs9UO";
            return c1811Oz3;
        }
        A0B[1] = "yTcBq02tmy8sK";
        return c1811Oz3;
    }

    public final C1811Oz A0C() {
        AbstractC1722Ln.A08((this.A06 == null || this.A06.A0I() == null) ? false : true);
        this.A06 = this.A06.A0I();
        return this.A06;
    }

    public final C1811Oz A0D() {
        return A0N() ? this.A05 : this.A04;
    }

    public final C1811Oz A0E() {
        return this.A04;
    }

    public final C1811Oz A0F() {
        return this.A05;
    }

    public final C1811Oz A0G() {
        return this.A06;
    }

    public final P0 A0H(long j, PO po) {
        return this.A04 == null ? A05(po) : A01(po.A03, this.A04, j);
    }

    public final P0 A0I(Timeline timeline, P0 p0) {
        long jA0A;
        long j = p0.A01;
        boolean zA08 = A08(timeline, p0.A04, j);
        boolean zA09 = A09(timeline, p0.A04, zA08);
        timeline.A0J(p0.A04.A04, this.A09);
        if (p0.A04.A00()) {
            jA0A = this.A09.A0E(p0.A04.A00, p0.A04.A01);
        } else if (j == Long.MIN_VALUE) {
            jA0A = this.A09.A0A();
            if (A0B[6].charAt(21) == 'n') {
                throw new RuntimeException();
            }
            A0B[3] = "zmmIrK";
        } else {
            jA0A = j;
        }
        return new P0(p0.A04, p0.A03, j, p0.A02, jA0A, zA08, zA09);
    }

    public final InterfaceC1863Rl A0J(InterfaceC1813Pe[] interfaceC1813PeArr, long j, AbstractC1983Wi abstractC1983Wi, InterfaceC1987Wm interfaceC1987Wm, InterfaceC1936Uj interfaceC1936Uj, P0 p0, C1984Wj c1984Wj) {
        C1811Oz c1811Oz = new C1811Oz(interfaceC1813PeArr, this.A04 == null ? p0.A03 + j : this.A04.A0B() + this.A04.A00.A00, abstractC1983Wi, interfaceC1987Wm, interfaceC1936Uj, p0, c1984Wj);
        if (this.A04 != null) {
            AbstractC1722Ln.A08(A0N());
            this.A04.A0Q(c1811Oz);
        }
        this.A07 = null;
        this.A04 = c1811Oz;
        this.A00++;
        InterfaceC1863Rl interfaceC1863Rl = c1811Oz.A07;
        String[] strArr = A0B;
        if (strArr[7].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        A0B[6] = "PhVPZKDAM7fppeQiWsfcSWBqFhBUAWSX";
        return interfaceC1863Rl;
    }

    public final C1862Rk A0K(Timeline timeline, Object obj, long j) {
        return A06(timeline, obj, j, A00(timeline, obj), this.A09);
    }

    public final void A0L(long j) {
        if (this.A04 != null) {
            this.A04.A0P(j);
        }
    }

    public final void A0M(boolean z) {
        C1811Oz c1811OzA0D = A0D();
        if (c1811OzA0D != null) {
            this.A07 = z ? c1811OzA0D.A08 : null;
            this.A03 = c1811OzA0D.A00.A04.A03;
            c1811OzA0D.A0M();
            A0S(c1811OzA0D);
        } else if (!z) {
            this.A07 = null;
        }
        this.A05 = null;
        this.A04 = null;
        this.A06 = null;
        this.A00 = 0;
    }

    public final boolean A0N() {
        return this.A05 != null;
    }

    public final boolean A0O() {
        return this.A04 == null || (!this.A04.A00.A05 && this.A04.A0R() && this.A04.A00.A00 != -9223372036854775807L && this.A00 < 100);
    }

    public final boolean A0P(Timeline timeline, int i) {
        this.A01 = i;
        return A07(timeline);
    }

    public final boolean A0Q(Timeline timeline, C1862Rk c1862Rk, long j) {
        int iA0A = timeline.A0A(c1862Rk.A04);
        C1811Oz c1811Oz = null;
        for (C1811Oz c1811OzA0D = A0D(); c1811OzA0D != null; c1811OzA0D = c1811OzA0D.A0I()) {
            if (c1811Oz == null) {
                c1811OzA0D.A00 = A0I(timeline, c1811OzA0D.A00);
            } else {
                if (iA0A == -1 || !c1811OzA0D.A08.equals(timeline.A0M(iA0A))) {
                    boolean zA0S = A0S(c1811Oz);
                    if (A0B[5].length() == 7) {
                        throw new RuntimeException();
                    }
                    A0B[2] = "DCZOFO6lnt1pg3dDOgZnxlf9qk01Ij2m";
                    return true ^ zA0S;
                }
                P0 p0A01 = A01(timeline, c1811Oz, j);
                if (p0A01 == null) {
                    return true ^ A0S(c1811Oz);
                }
                c1811OzA0D.A00 = A0I(timeline, c1811OzA0D.A00);
                if (!A0A(c1811OzA0D, p0A01)) {
                    return true ^ A0S(c1811Oz);
                }
            }
            if (c1811OzA0D.A00.A07) {
                iA0A = timeline.A09(iA0A, this.A09, this.A0A, this.A01, this.A08);
            }
            c1811Oz = c1811OzA0D;
        }
        return true;
    }

    public final boolean A0R(Timeline timeline, boolean z) {
        this.A08 = z;
        return A07(timeline);
    }

    public final boolean A0S(C1811Oz c1811Oz) {
        AbstractC1722Ln.A08(c1811Oz != null);
        boolean z = false;
        this.A04 = c1811Oz;
        while (c1811Oz.A0I() != null) {
            c1811Oz = c1811Oz.A0I();
            if (c1811Oz == this.A06) {
                this.A06 = this.A05;
                z = true;
            }
            c1811Oz.A0M();
            this.A00--;
        }
        this.A04.A0Q(null);
        return z;
    }

    public final boolean A0T(InterfaceC1863Rl interfaceC1863Rl) {
        return this.A04 != null && this.A04.A07 == interfaceC1863Rl;
    }
}
