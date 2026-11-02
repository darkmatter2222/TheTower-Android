package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class M9 implements InterfaceC2710kO {
    public final /* synthetic */ int A00;
    public final /* synthetic */ C13857r A01;
    public final /* synthetic */ C13857r A02;
    public final /* synthetic */ C2806lz A03;

    public M9(C13857r c13857r, int i, C2806lz c2806lz, C13857r c13857r2) {
        this.A01 = c13857r;
        this.A00 = i;
        this.A03 = c2806lz;
        this.A02 = c13857r2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2710kO
    public final void ADt() {
        this.A01.A0C(this.A00, this.A03);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2710kO
    public final void ADu() {
        this.A01.A00.AFQ(this.A02, C2922nt.A00(AdErrorType.NO_FILL));
    }
}
