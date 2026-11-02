package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ov, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2984ov {
    public static String[] A01 = {"vWOWhJ9TqiA1ty478f", "MWb8A3Nd6tPLcAimCp0hVAmYX6QHiaZm", "Xd3YBUkiMhOleC4V056rVyOXhinwtSii", "tT8mJINbcEXXPPmKiWyTepfA0JHaFg93", "WoudJsrKOqRuVhNYSdRTZjqc00A0B3WY", "YTheXaZSxrm1KPF5Yd", "huHeChgRkwF7QVPgKoMeW6tLhEc13T9K", "ASVM8zHOtJrSOKsDwpZwweqDqvgS8KFW"};
    public static final ThreadLocal<C2984ov> A02 = new ThreadLocal<>();
    public final C2967oe A00 = new C2967oe();

    public static C2967oe A00() {
        return A02().A00;
    }

    public static C2967oe A01(C2983ou c2983ou) {
        C2967oe c2967oe = new C2967oe(A00());
        c2967oe.add(c2983ou);
        return c2967oe;
    }

    public static C2984ov A02() {
        C2984ov c2984ov = A02.get();
        String[] strArr = A01;
        if (strArr[6].charAt(1) == strArr[2].charAt(1)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[7] = "JnfSkSuIf6osqUQGv4Nkh0Vi2QZsQFPV";
        strArr2[4] = "e9u3CRl6fKpCeCDR9nRPR0cml03xK1Bs";
        if (c2984ov != null) {
            return c2984ov;
        }
        C2984ov c2984ov2 = new C2984ov();
        A02.set(c2984ov2);
        return c2984ov2;
    }

    public static void A03(AbstractRunnableC2979oq abstractRunnableC2979oq) {
        C2967oe c2967oeA06 = abstractRunnableC2979oq.A06();
        if (c2967oeA06 != null) {
            A02().A00.addAll(c2967oeA06);
        }
    }

    public static void A04(AbstractRunnableC2979oq abstractRunnableC2979oq) {
        C2967oe c2967oeA06 = abstractRunnableC2979oq.A06();
        if (c2967oeA06 != null) {
            A02().A00.removeAll(c2967oeA06);
        }
    }
}
