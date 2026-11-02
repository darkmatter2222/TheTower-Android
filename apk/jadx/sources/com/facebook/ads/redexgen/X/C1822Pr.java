package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Pr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1822Pr implements InterfaceC2043Yv {
    public static String[] A0G = {"ZOmDgtZXmbFplr4c", "6ifjKlWOi9qvORbA9AVWUceA2bCMNiC7", "iEnYLP6UxGmGKJn1fOE", "AGvE2CL8JEBQx1euKr4BMx1GEB8reAkr", "pwFgt2PbV7oDiKWKDjaxKcLr059crOAE", "6BIprHsiJ0DYPURFpCJrGC", "G7oyaBjMYnTwXAC1EzLODbaBAwZ3L", "6NoG64DO59zvCB139pJVMaDXP65Qg"};
    public static final InterfaceC2047Yz A0H = new InterfaceC2047Yz() { // from class: com.facebook.ads.redexgen.X.Ps
        @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
        public final InterfaceC2043Yv[] A5w() {
            return C1822Pr.A07();
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
        public final /* synthetic */ InterfaceC2043Yv[] A5x(Uri uri, Map map) {
            return AbstractC2046Yy.A01(this, uri, map);
        }
    };
    public int A00;
    public int A02;
    public int A03;
    public long A04;
    public long A05;
    public InterfaceC2044Yw A06;
    public C1824Pt A07;
    public C1819Po A08;
    public boolean A09;
    public boolean A0A;
    public final C1744Mk A0C = new C1744Mk(4);
    public final C1744Mk A0B = new C1744Mk(9);
    public final C1744Mk A0E = new C1744Mk(11);
    public final C1744Mk A0D = new C1744Mk();
    public final C1821Pq A0F = new C1821Pq();
    public int A01 = 1;

    private long A00() {
        if (this.A09) {
            return this.A04 + this.A05;
        }
        if (this.A0F.A0D() == -9223372036854775807L) {
            return 0L;
        }
        return this.A05;
    }

    private C1744Mk A01(Q9 q9) throws IOException {
        if (this.A02 > this.A0D.A08()) {
            this.A0D.A0j(new byte[Math.max(this.A0D.A08() * 2, this.A02)], 0);
        } else {
            this.A0D.A0f(0);
        }
        this.A0D.A0e(this.A02);
        q9.readFully(this.A0D.A0l(), 0, this.A02);
        return this.A0D;
    }

    @RequiresNonNull
    private void A02() {
        if (this.A0A) {
            return;
        }
        this.A06.AKP(new Q4(-9223372036854775807L));
        this.A0A = true;
    }

    private void A03(Q9 q9) throws IOException {
        q9.ALL(this.A00);
        this.A00 = 0;
        this.A01 = 3;
    }

    @RequiresNonNull
    private boolean A04(Q9 q9) throws IOException {
        if (!q9.AIe(this.A0B.A0l(), 0, 9, true)) {
            return false;
        }
        this.A0B.A0f(0);
        this.A0B.A0g(4);
        int iA0I = this.A0B.A0I();
        boolean z = (iA0I & 4) != 0;
        boolean z2 = (iA0I & 1) != 0;
        if (z && this.A07 == null) {
            this.A07 = new C1824Pt(this.A06.ALm(8, 1));
        }
        if (z2) {
            C1819Po c1819Po = this.A08;
            if (A0G[3].charAt(19) == 'h') {
                throw new RuntimeException();
            }
            String[] strArr = A0G;
            strArr[4] = "Khy5rYPINuKpMGIOp9isTczNww9cV1Ap";
            strArr[1] = "30smAkr6jQBG63zglwQ3OcXDj5jlu3KR";
            if (c1819Po == null) {
                this.A08 = new C1819Po(this.A06.ALm(9, 2));
            }
        }
        this.A06.A6x();
        this.A00 = (this.A0B.A0C() - 9) + 4;
        this.A01 = 2;
        return true;
    }

    @RequiresNonNull
    private boolean A05(Q9 q9) throws IOException {
        boolean z = true;
        boolean zA00 = false;
        long jA00 = A00();
        if (this.A03 == 8 && this.A07 != null) {
            A02();
            zA00 = this.A07.A00(A01(q9), jA00);
        } else if (this.A03 == 9 && this.A08 != null) {
            A02();
            zA00 = this.A08.A00(A01(q9), jA00);
        } else if (this.A03 != 18 || this.A0A) {
            q9.ALL(this.A02);
            z = false;
        } else {
            zA00 = this.A0F.A00(A01(q9), jA00);
            long jA0D = this.A0F.A0D();
            if (jA0D != -9223372036854775807L) {
                this.A06.AKP(new Q5(this.A0F.A0E(), this.A0F.A0F(), jA0D));
                this.A0A = true;
            }
        }
        boolean z2 = this.A09;
        String[] strArr = A0G;
        if (strArr[4].charAt(21) != strArr[1].charAt(21)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0G;
        strArr2[0] = "wqdT2H3TTMqi8Bli";
        strArr2[5] = "zAA6sZzKbZJelK7aosqVbg";
        if (!z2 && zA00) {
            this.A09 = true;
            this.A04 = this.A0F.A0D() == -9223372036854775807L ? -this.A05 : 0L;
        }
        this.A00 = 4;
        this.A01 = 2;
        return z;
    }

    private boolean A06(Q9 q9) throws IOException {
        if (!q9.AIe(this.A0E.A0l(), 0, 11, true)) {
            return false;
        }
        this.A0E.A0f(0);
        this.A03 = this.A0E.A0I();
        this.A02 = this.A0E.A0K();
        this.A05 = this.A0E.A0K();
        this.A05 = (((long) (this.A0E.A0I() << 24)) | this.A05) * 1000;
        this.A0E.A0g(3);
        this.A01 = 4;
        return true;
    }

    public static /* synthetic */ InterfaceC2043Yv[] A07() {
        return new InterfaceC2043Yv[]{new C1822Pr()};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AAq(InterfaceC2044Yw interfaceC2044Yw) {
        this.A06 = interfaceC2044Yw;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final int AIY(Q9 q9, ZH zh) throws IOException {
        AbstractC1722Ln.A02(this.A06);
        while (true) {
            switch (this.A01) {
                case 1:
                    if (!A04(q9)) {
                        return -1;
                    }
                    break;
                    break;
                case 2:
                    A03(q9);
                    break;
                case 3:
                    if (!A06(q9)) {
                        return -1;
                    }
                    break;
                    break;
                case 4:
                    if (A05(q9)) {
                        return 0;
                    }
                    break;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AKO(long j, long j2) {
        if (j == 0) {
            this.A01 = 1;
            this.A09 = false;
        } else {
            this.A01 = 3;
        }
        this.A00 = 0;
        String[] strArr = A0G;
        if (strArr[0].length() == strArr[5].length()) {
            throw new RuntimeException();
        }
        A0G[2] = "rlYOLfOM7omH4Sms69M";
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final boolean ALN(Q9 q9) throws IOException {
        q9.AI6(this.A0C.A0l(), 0, 3);
        this.A0C.A0f(0);
        if (this.A0C.A0K() != 4607062) {
            return false;
        }
        q9.AI6(this.A0C.A0l(), 0, 2);
        this.A0C.A0f(0);
        if ((this.A0C.A0M() & 250) != 0) {
            return false;
        }
        q9.AI6(this.A0C.A0l(), 0, 4);
        this.A0C.A0f(0);
        int iA0C = this.A0C.A0C();
        q9.AK3();
        q9.A4X(iA0C);
        q9.AI6(this.A0C.A0l(), 0, 4);
        this.A0C.A0f(0);
        return this.A0C.A0C() == 0;
    }
}
