package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Mv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1755Mv implements NK {
    public InterfaceC2331eB A02;
    public long A01 = 5242880;
    public int A00 = 20480;

    public final C1755Mv A00(InterfaceC2331eB interfaceC2331eB) {
        this.A02 = interfaceC2331eB;
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.NK
    public final C1754Mu A5q() {
        return new C1754Mu((InterfaceC2331eB) AbstractC1722Ln.A01(this.A02), this.A01, this.A00);
    }
}
