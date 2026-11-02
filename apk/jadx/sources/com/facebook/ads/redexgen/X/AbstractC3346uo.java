package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3346uo {
    public static String[] A00 = {"zHQaRI8Z04iZfuq60cOZ3MtOUQtnyLXk", "Py81lTfXTPvOohagzwztlFMwKgIeaa04", "ZBx", "ff4Sljy7OS0rEQC0yVPpTgSrr8dBXGgO", "WJ7E7dTZMlxiqC9ofw7stZL7dYzOgEyn", "lEp0yqe8iFuZgqtiF5MEL7dQIxoaDf7o", "1LQBU", "K3MGC9Pem9CSlPJADsZARPOkTW1wXgVW"};

    public static AbstractC3345un A00(C3349ur c3349ur, Bundle bundle, boolean z) {
        AbstractC3345un c1533Ea;
        c3349ur.A06().A0H().A00(false);
        C2395fE c2395fEA32 = c3349ur.A05().A32();
        double dA00 = AbstractC3335ud.A00(c2395fEA32);
        boolean zA0U = c3349ur.A05().A32().A0U();
        boolean zA06 = AbstractC3335ud.A06(c3349ur.A00(), c3349ur.A01(), dA00);
        AbstractC2361ef abstractC2361efA00 = C2362eg.A00(c3349ur.A06(), c3349ur.A07(), "", AbstractC3011pP.A00(c3349ur.A05().A32().A0K().A06()), new HashMap(), c3349ur.A05().A33());
        boolean z2 = !TextUtils.isEmpty(c2395fEA32.A0I().A09());
        if (C2863mv.A1z(c3349ur.A06())) {
            c3349ur.A06().A0B().AM7(c3349ur.A02(), c3349ur.A05().A37(), z2);
        }
        if (zA0U && (abstractC2361efA00 instanceof C13887u)) {
            boolean zA01 = A01(c3349ur);
            if (A00[2].length() != 3) {
                throw new RuntimeException();
            }
            String[] strArr = A00;
            strArr[5] = "IYiemLW0pAZJelR9U10I0UE8BphOsSCr";
            strArr[3] = "HZnaFTaa8UnZev8t8IWfBJ4wHjAxjheL";
            c1533Ea = zA01 ? new EE(c3349ur) : new ET(c3349ur);
        } else if (z2) {
            c1533Ea = new C13476f(c3349ur);
        } else {
            if (c3349ur.A05().A2M()) {
                return new C1539Eg(c3349ur);
            }
            if (c3349ur.A05().A2V()) {
                c1533Ea = new C13496h(c3349ur);
            } else if (C2863mv.A2l(c3349ur.A06())) {
                c1533Ea = new C13486g(c3349ur, zA06);
            } else if (zA06) {
                c1533Ea = new C1537Ee(c3349ur, c3349ur.A00() == 2);
            } else {
                c1533Ea = new C1533Ea(c3349ur, AbstractC3335ud.A04(dA00));
            }
        }
        if (z) {
            c1533Ea.A1X(c2395fEA32, c3349ur.A05().A37(), dA00, bundle);
        }
        return c1533Ea;
    }

    public static boolean A01(C3349ur c3349ur) {
        return c3349ur.A05().A2q() || c3349ur.A05().A2M() || c3349ur.A05().A2K();
    }
}
