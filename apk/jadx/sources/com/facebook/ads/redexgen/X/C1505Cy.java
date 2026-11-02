package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Cy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1505Cy implements InterfaceC2664je {
    public final /* synthetic */ C13385w A00;

    public C1505Cy(C13385w c13385w) {
        this.A00 = c13385w;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2664je
    public final boolean AAw() {
        if (!this.A00.A0A.get()) {
            return true;
        }
        if (((D8) this.A00).A03.A3J() && ((D8) this.A00).A09.getToolbarActionMode() == 8) {
            return true;
        }
        return this.A00.A0t();
    }
}
