package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.pp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3037pp {
    public static C2418fb A00(LA la) {
        return la.A32().A0I().A07();
    }

    public static EnumC2426fj A01(LA la) {
        C2418fb c2418fbA00 = A00(la);
        return c2418fbA00 != null ? c2418fbA00.A0H() : EnumC2426fj.A04;
    }

    public static boolean A02(boolean z, LA la) {
        return A03(z, la) && A01(la) == EnumC2426fj.A05;
    }

    public static boolean A03(boolean z, LA la) {
        C2418fb c2418fbA00 = A00(la);
        return z && c2418fbA00 != null && c2418fbA00.A0Y();
    }
}
