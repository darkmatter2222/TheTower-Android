package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ps, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3040ps {
    public static String[] A05 = {"W6VRHda5gtLUaPITsfC2cAClSG72uAjU", "InoKloHDgq0CcxOKOjQiUbO9bflNgMc6", "vgOlHPB", "HwmPNB85GvgAoMoeYjamrZVzdR67lGy5", "97hqk2lgYZuMaDxZXyhsH", "HXsRqxuQhTkLhvYebPxTHkiqTIKIJvDr", "Ck564rSLCSvbweXx55nzkdwgcjUocV6X", ""};
    public boolean A00 = false;
    public final Handler A01 = new Handler(Looper.getMainLooper());
    public final LA A02;
    public final C1618Hi A03;
    public final InterfaceC3038pq A04;

    public C3040ps(C1618Hi c1618Hi, LA la, InterfaceC3038pq interfaceC3038pq) {
        this.A03 = c1618Hi;
        this.A04 = interfaceC3038pq;
        this.A02 = la;
    }

    public static C3040ps A00(C1618Hi c1618Hi, LA la, InterfaceC3038pq interfaceC3038pq) {
        Object objA0I = c1618Hi.A0I();
        if (objA0I == null) {
            objA0I = new C3040ps(c1618Hi, la, interfaceC3038pq);
            c1618Hi.A0P(objA0I);
        }
        C3040ps c3040ps = (C3040ps) objA0I;
        if (A05[7].length() == 7) {
            throw new RuntimeException();
        }
        String[] strArr = A05;
        strArr[1] = "ORnMxFNfeMb5MzGsY9WSDmc8ng0pMJPu";
        strArr[4] = "9RL1elpbdMmSftIqEAaOH";
        return c3040ps;
    }

    public static boolean A01(C1618Hi c1618Hi) {
        if (C2863mv.A1g(c1618Hi)) {
            boolean zA0J = C3007pK.A0J(c1618Hi);
            if (A05[7].length() == 7) {
                throw new RuntimeException();
            }
            A05[5] = "ksJFyNHjKkO0Jin5EGXZGwAyRPDGXujW";
            if (zA0J) {
                return true;
            }
        }
        return false;
    }

    public final C3039pr A02(LA la) {
        if (C2863mv.A1m(this.A03)) {
            boolean z = la.A2O() && A01(this.A03);
            return new C3039pr(z, z);
        }
        boolean zA2O = la.A2O();
        return new C3039pr(zA2O, zA2O && A01(this.A03));
    }

    public final void A03() {
        this.A00 = false;
        this.A01.removeCallbacksAndMessages(null);
    }
}
