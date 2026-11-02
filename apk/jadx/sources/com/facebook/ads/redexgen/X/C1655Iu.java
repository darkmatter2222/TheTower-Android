package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Iu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1655Iu implements InterfaceC2614iq {
    public static String[] A01 = {"IP6gXu3Aic9rrZpr", "DSm6OHbiM4aoMyjFh2wy7Spd3inn5axc", "lJd94ygIcpnkIi9oYNWqXg3HQV8t0X4Q", "337I3pVrWHOBtYrFGcdtPHZp8Kpz9VIJ", "vd5lczoeg9gY82TvyWngHoQKFpNC9gt0", "CefcuhKyPhUbDvzsvxPUhaoMgi2Xy5FO", "Qia1n7qQgpdEP2KZeQvga8Xzcvoo51Ij", "UfDKqgBAky8ekVpIbdpaQQPTuf6RISL4"};
    public final /* synthetic */ C7O A00;

    public C1655Iu(C7O c7o) {
        this.A00 = c7o;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2614iq
    public final void ADr(AbstractC2638jE abstractC2638jE) {
        abstractC2638jE.A0k(true);
        if (abstractC2638jE.A06 != null && abstractC2638jE.A07 == null) {
            abstractC2638jE.A06 = null;
        }
        abstractC2638jE.A07 = null;
        if (abstractC2638jE.A0L() || this.A00.A24(abstractC2638jE.A0H) || !abstractC2638jE.A0p()) {
            return;
        }
        C7O c7o = this.A00;
        if (A01[6].charAt(16) != 'e') {
            throw new RuntimeException();
        }
        A01[0] = "BbBTSQcWyeSpGVnm";
        c7o.removeDetachedView(abstractC2638jE.A0H, false);
    }
}
