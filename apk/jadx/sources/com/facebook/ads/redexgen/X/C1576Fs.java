package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1576Fs extends AbstractC2625j1 {
    public final /* synthetic */ C12843u A00;

    public C1576Fs(C12843u c12843u) {
        this.A00 = c12843u;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2625j1
    public final void A0P(C7O c7o, int i) {
        InterfaceC3126rG interfaceC3126rG;
        super.A0P(c7o, i);
        int iA38 = this.A00.getLayoutManager().A38();
        AbstractC2608ik adapter = this.A00.getAdapter();
        if (iA38 < 0 || adapter == null || iA38 >= adapter.A0B() || !(c7o.A1H(iA38) instanceof InterfaceC3126rG) || (interfaceC3126rG = (InterfaceC3126rG) c7o.A1H(iA38)) == null) {
            return;
        }
        interfaceC3126rG.AKX();
    }
}
