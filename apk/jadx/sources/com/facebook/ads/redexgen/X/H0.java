package com.facebook.ads.redexgen.X;

import android.graphics.Rect;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class H0 {
    public static String[] A02 = {"AMQNzlG2eGPOJo74lPpddO6twtMEce", "8uZuLGh3CZSzV4eSaK74M9a8aAW81o1g", "CYs8BZmCr6kO5jRRUq4laItl384RlovT", "PO4hUmmCpilEicL1R3sLdD9hI0Kiey5Z", "WmgRsP13YsLJamj9MMjVCco3tjnpIVCq", "0ErvOAeoLZJf3MJzf6jF5Cw5BrHPqp", "S0kgbIpbc64QMPj8XCJtTK8zDrzNpUnW", "MO6xPizLQkqntlkNHRrNVg7dZ2stU5UP"};
    public final Rect A00 = new Rect();
    public final Rect A01 = new Rect();

    public static boolean A00(C12512l<C2870n2, C2875n7> c12512l) {
        if (c12512l.A06.A05()) {
            return c12512l.A07.A07();
        }
        if (!c12512l.A06.A06()) {
            return true;
        }
        C2875n7 c2875n7 = c12512l.A07;
        String[] strArr = A02;
        if (strArr[3].charAt(7) != strArr[2].charAt(7)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[3] = "8O0EOVeCMdEJdeSbYPFIeNjJXhTUSITs";
        strArr2[2] = "Km62DwbCV8Ma1ecjtuIU72b1y8KakI9d";
        return c2875n7.A06();
    }

    private boolean A01(C12512l<C2870n2, C2875n7> c12512l, C2Z c2z) {
        float fAAB = -1.0f;
        try {
            fAAB = c2z.AAB(c12512l);
        } catch (IllegalStateException unused) {
        }
        if (fAAB > 0.0f && A00(c12512l)) {
            return true;
        }
        if (c12512l.A06.A00().getGlobalVisibleRect(this.A01) && this.A01.bottom - this.A01.top > 0 && A00(c12512l)) {
            return true;
        }
        c2z.AAA(this.A00);
        c2z.A8o(c12512l, this.A01);
        return (this.A00.bottom - this.A00.top > 0 && this.A01.bottom - this.A00.top > 0) && A00(c12512l);
    }

    public final void A02(C12512l<C2870n2, C2875n7> c12512l, C2Z c2z) {
        if (c12512l.A07.A04() && A01(c12512l, c2z)) {
            c12512l.A07.A01();
            c12512l.A06.A02().ACn(c12512l.A06.A03(), c12512l.A06.A04());
        }
        if (c12512l.A07.A05() && C2863mv.A1l(c12512l.A06.A01())) {
            c12512l.A07.A02();
            c12512l.A06.A02().AC9(c12512l.A06.A03(), c12512l.A06.A04());
        }
    }
}
