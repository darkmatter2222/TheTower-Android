package com.facebook.ads.redexgen.X;

import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.qt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3103qt {
    public static C3103qt A02;
    public final C1583Fz A00;
    public final C3105qv A01;

    public C3103qt(C1618Hi c1618Hi, Executor executor, C2805ly c2805ly) {
        this.A01 = new C3105qv(c1618Hi);
        this.A00 = new C1583Fz(executor, c2805ly, c1618Hi);
    }

    private void A00() {
        this.A01.A03(this.A00);
    }

    public static void A01(C1618Hi c1618Hi, Executor executor, C2805ly c2805ly) {
        if (C2863mv.A1c(c1618Hi)) {
            if (A02 != null) {
                A02.A02(c2805ly);
            } else {
                A02 = new C3103qt(c1618Hi, executor, c2805ly);
                A02.A00();
            }
        }
    }

    private void A02(C2805ly c2805ly) {
        this.A00.A07(c2805ly);
    }
}
