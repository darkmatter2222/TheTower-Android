package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class DD implements InterfaceC3029ph {
    public final /* synthetic */ int A00;
    public final /* synthetic */ AbstractRunnableC2979oq A01;
    public final /* synthetic */ D8 A02;
    public final /* synthetic */ C1441Am A03;

    public DD(D8 d8, int i, C1441Am c1441Am, AbstractRunnableC2979oq abstractRunnableC2979oq) {
        this.A02 = d8;
        this.A00 = i;
        this.A03 = c1441Am;
        this.A01 = abstractRunnableC2979oq;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3029ph
    public final void AET() throws Throwable {
        this.A01.run();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3029ph
    public final void AGb(float f) {
        this.A02.A09.setProgress(100.0f * (1.0f - (f / this.A00)));
        if (this.A03 != null) {
            this.A03.A09((int) ((this.A00 - f) * 1000.0f));
        }
    }
}
