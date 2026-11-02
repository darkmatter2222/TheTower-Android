package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ud, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3335ud {
    public static float A00(C2395fE c2395fE) {
        int iA01 = c2395fE.A0I().A01();
        int iA00 = c2395fE.A0I().A00();
        if (iA00 > 0) {
            return iA01 / iA00;
        }
        return -1.0f;
    }

    public static int A01(double d) {
        return (int) (((double) (AbstractC3044pw.A00().widthPixels - (AbstractC3345un.A09 * 2))) / d);
    }

    public static int A02(int i) {
        return (AbstractC3044pw.A00().heightPixels - i) - ((AbstractC3086qc.A01(16) + (AbstractC3312uG.A0B * 2)) + (AbstractC3345un.A09 * 2));
    }

    public static ViewOnClickListenerC3334uc A03(ViewOnClickListenerC1544El viewOnClickListenerC1544El, String str) {
        return new ViewOnClickListenerC3334uc(viewOnClickListenerC1544El, str);
    }

    public static boolean A04(double d) {
        return d < 0.9d;
    }

    public static boolean A05(double d, int i) {
        return A02(i) < A01(d);
    }

    public static boolean A06(int i, int i2, double d) {
        return i == 2 || A05(d, i2);
    }
}
