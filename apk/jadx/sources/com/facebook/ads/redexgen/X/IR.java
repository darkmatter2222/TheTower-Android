package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class IR extends AbstractRunnableC2966od {
    public final /* synthetic */ IM A00;
    public final /* synthetic */ C2922nt A01;

    public IR(IM im, C2922nt c2922nt) {
        this.A00 = im;
        this.A01 = c2922nt;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2966od
    public final void A01() {
        if (this.A00.A01.A06() != null) {
            this.A00.A01.A06().onError(this.A00.A01.A07(), AbstractC3014pS.A00(this.A01));
        }
    }
}
