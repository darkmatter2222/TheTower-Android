package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ha, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1610Ha extends AbstractRunnableC2979oq {
    public final /* synthetic */ C1617Hh A00;

    public C1610Ha(C1617Hh c1617Hh) {
        this.A00 = c1617Hh;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() throws Throwable {
        for (C2781la c2781la : C2780lZ.A02()) {
            C2780lZ.A0A(this.A00, c2781la.A02(), c2781la.A00(), c2781la.A01(), false);
        }
        C2780lZ.A02().clear();
    }
}
