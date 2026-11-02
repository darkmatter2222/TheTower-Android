package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class GA extends AbstractRunnableC2979oq {
    public final /* synthetic */ C3030pi A00;

    public GA(C3030pi c3030pi) {
        this.A00 = c3030pi;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        if (this.A00.A05()) {
            this.A00.A02();
            this.A00.A05.postDelayed(this, this.A00.A02);
        }
    }
}
