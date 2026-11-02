package com.facebook.ads.redexgen.X;

import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class HM implements InterfaceC2758lD {
    public final C2755lA A00;

    public HM(C2755lA c2755lA) {
        this.A00 = c2755lA;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2758lD
    public final Map<String, String> A69() {
        return C2817mB.A01(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2758lD
    public final Map<String, String> A7W() {
        return C2796lp.A02();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2758lD
    public final String A8x() {
        return C2796lp.A00();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2758lD
    public final String A8z() {
        return AbstractC2723kb.A00().A03();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2758lD
    public final boolean ABC() {
        return C3001pE.A00().A03();
    }
}
