package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1580Fw implements InterfaceC2664je {
    public final /* synthetic */ C1577Ft A00;

    public C1580Fw(C1577Ft c1577Ft) {
        this.A00 = c1577Ft;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2664je
    public final boolean AAw() {
        if (!this.A00.A0G.canGoBack()) {
            return false;
        }
        this.A00.A0G.goBack();
        return true;
    }
}
