package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Cj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1490Cj implements InterfaceC2664je {
    public final /* synthetic */ C13315p A00;

    public C1490Cj(C13315p c13315p) {
        this.A00 = c13315p;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2664je
    public final boolean AAw() {
        if (!this.A00.A0G) {
            return true;
        }
        if (((D8) this.A00).A03.A3J() && ((D8) this.A00).A09.getToolbarActionMode() == 8) {
            return true;
        }
        return this.A00.A0t();
    }
}
