package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1559Fa extends AbstractC2200c3 {
    public final /* synthetic */ C3141rV A00;

    public C1559Fa(C3141rV c3141rV) {
        this.A00 = c3141rV;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2200c3
    public final void A03() {
        if (this.A00.A08 != null && !this.A00.A08.A0H()) {
            this.A00.A0A.A0T();
            return;
        }
        this.A00.A0A.A0V();
        if (!this.A00.A06.A07()) {
            this.A00.A06.A05();
        }
        InterfaceC3140rU interfaceC3140rU = (InterfaceC3140rU) this.A00.A0C.get();
        if (interfaceC3140rU != null) {
            interfaceC3140rU.AFD();
        }
        this.A00.A0A.A0V();
    }
}
