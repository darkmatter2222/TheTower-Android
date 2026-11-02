package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class OO implements InterfaceC2043Yv {
    public static String[] A03 = {"p1adl8IUa2eu0dGTxXaFBoizQYd7cPnt", "diieC9oxRTogf9RAHnBNHRXejOvyxJpx", "kkGExPJisKikUUo7ZDcfbH9eFAUyqfDV", "2geYVKGa9pxxi", "e3gpZ7RPdMBGV", "CWc2mkArbCBB2hcEx2xbuCazULuXgshm", "ST", "5pjvfoGpqYOAvBfOrVKaLDy7mxDFLaNl"};
    public static final InterfaceC2047Yz A04 = new InterfaceC2047Yz() { // from class: com.facebook.ads.redexgen.X.OP
        @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
        public final InterfaceC2043Yv[] A5w() {
            return OO.A00();
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
        public final /* synthetic */ InterfaceC2043Yv[] A5x(Uri uri, Map map) {
            return AbstractC2046Yy.A01(this, uri, map);
        }
    };
    public boolean A00;
    public final ON A02 = new ON();
    public final C1744Mk A01 = new C1744Mk(2786);

    public static /* synthetic */ InterfaceC2043Yv[] A00() {
        return new InterfaceC2043Yv[]{new OO()};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AAq(InterfaceC2044Yw interfaceC2044Yw) {
        this.A02.A6B(interfaceC2044Yw, new C2261d2(0, 1));
        interfaceC2044Yw.A6x();
        interfaceC2044Yw.AKP(new Q4(-9223372036854775807L));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final int AIY(Q9 q9, ZH zh) throws IOException {
        int i = q9.read(this.A01.A0l(), 0, 2786);
        if (i == -1) {
            return -1;
        }
        this.A01.A0f(0);
        this.A01.A0e(i);
        if (!this.A00) {
            this.A02.AI3(0L, 4);
            this.A00 = true;
        }
        this.A02.A5j(this.A01);
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AKO(long j, long j2) {
        this.A00 = false;
        this.A02.AKN();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final boolean ALN(Q9 q9) throws IOException {
        C1744Mk c1744Mk = new C1744Mk(10);
        int i = 0;
        while (true) {
            q9.AI6(c1744Mk.A0l(), 0, 10);
            c1744Mk.A0f(0);
            if (c1744Mk.A0K() != 4801587) {
                break;
            }
            c1744Mk.A0g(3);
            int iA0H = c1744Mk.A0H();
            i += iA0H + 10;
            q9.A4X(iA0H);
        }
        q9.AK3();
        q9.A4X(i);
        int i2 = i;
        int i3 = 0;
        while (true) {
            q9.AI6(c1744Mk.A0l(), 0, 6);
            c1744Mk.A0f(0);
            int iA0M = c1744Mk.A0M();
            if (A03[6].length() == 14) {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[3] = "NUA0WGqxCkDWZ";
            strArr[4] = "likpFnC3j04t3";
            if (iA0M != 2935) {
                i3 = 0;
                q9.AK3();
                i2++;
                if (i2 - i >= 8192) {
                    return false;
                }
                q9.A4X(i2);
            } else {
                i3++;
                if (i3 >= 4) {
                    return true;
                }
                int iA05 = AbstractC2026Yd.A05(c1744Mk.A0l());
                if (iA05 == -1) {
                    return false;
                }
                q9.A4X(iA05 - 6);
            }
        }
    }
}
