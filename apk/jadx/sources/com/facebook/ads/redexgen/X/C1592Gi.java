package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Gi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1592Gi implements InterfaceC3277th {
    public final /* synthetic */ C1589Gf A00;

    public C1592Gi(C1589Gf c1589Gf) {
        this.A00 = c1589Gf;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3277th
    public final void AFA(C3276tg c3276tg) {
        this.A00.A0G.set(c3276tg.A00() != null);
        if (!this.A00.A0H.get() || this.A00.A05 == null) {
            return;
        }
        this.A00.A05.AGG(c3276tg.A00() != null);
    }
}
