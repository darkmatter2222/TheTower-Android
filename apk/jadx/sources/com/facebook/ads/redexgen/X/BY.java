package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class BY extends AbstractC2832mQ<C5V> {
    public final /* synthetic */ C5Z A00;

    public BY(C5Z c5z) {
        this.A00 = c5z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(C5V c5v) {
        int iA00 = c5v.A00();
        if (this.A00.A00 <= 0 || iA00 != this.A00.A0C.getDuration() || this.A00.A0C.getDuration() <= this.A00.A00) {
            this.A00.A0k(iA00);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
    public final Class<C5V> A01() {
        return C5V.class;
    }
}
