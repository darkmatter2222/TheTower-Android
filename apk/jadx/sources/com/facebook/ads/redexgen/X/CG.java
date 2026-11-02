package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class CG implements InterfaceC3408vo {
    public final /* synthetic */ C2850mi A00;

    public CG(C2850mi c2850mi) {
        this.A00 = c2850mi;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3408vo
    public final void ALu(int i) {
        if (this.A00.A0D != null) {
            this.A00.A0D.setCurrentPosition(i);
        }
        if (this.A00.A0F == null || !this.A00.A0M) {
            return;
        }
        this.A00.A0F.A05(i);
    }
}
