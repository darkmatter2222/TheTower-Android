package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.pE, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3001pE {
    public static final C3001pE A04 = new C3001pE(new GD(), new GC());
    public final InterfaceC3000pD A02;
    public final InterfaceC3075qR A03;
    public boolean A01 = true;
    public long A00 = -1;

    public C3001pE(InterfaceC3075qR interfaceC3075qR, InterfaceC3000pD interfaceC3000pD) {
        this.A03 = interfaceC3075qR;
        this.A02 = interfaceC3000pD;
    }

    public static C3001pE A00() {
        return A04;
    }

    public final synchronized void A01() {
        this.A01 = false;
        this.A00 = this.A03.A6M();
    }

    public final synchronized void A02() {
        this.A00 = -1L;
    }

    public final boolean A03() {
        boolean z = true;
        if (this.A02.A8y() != null) {
            return true;
        }
        synchronized (C3001pE.class) {
            if (this.A01) {
                return true;
            }
            if (this.A00 >= 0 && this.A03.A6M() - this.A00 >= 1000) {
                z = false;
            }
            return z;
        }
    }
}
