package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.fr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2434fr {
    public static void A00(AbstractC2394fD abstractC2394fD, C2746kz c2746kz, String str) {
        if (abstractC2394fD.A1S() == null || abstractC2394fD.A1S().A05() == null || abstractC2394fD.A1S().A04() <= 0 || abstractC2394fD.A1S().A03() <= 0) {
            return;
        }
        c2746kz.A0c(new C2744kx(abstractC2394fD.A1S().A05(), (int) (abstractC2394fD.A1S().A03() * AbstractC3045px.A02), (int) (abstractC2394fD.A1S().A04() * AbstractC3045px.A02), abstractC2394fD.A1r(), str));
    }
}
