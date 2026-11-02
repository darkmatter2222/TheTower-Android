package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class IQ extends AbstractRunnableC2966od {
    public final /* synthetic */ IM A00;

    public IQ(IM im) {
        this.A00 = im;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2966od
    public final void A01() {
        if (this.A00.A01.A06() != null) {
            this.A00.A01.A06().onAdLoaded(this.A00.A01.A07());
        }
    }
}
