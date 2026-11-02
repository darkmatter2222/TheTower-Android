package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class BX extends AbstractC2832mQ<C5Y> {
    public final /* synthetic */ C5Z A00;

    public BX(C5Z c5z) {
        this.A00 = c5z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(C5Y c5y) {
        int iA00 = c5y.A00();
        int iA01 = c5y.A01();
        if (this.A00.A00 <= 0 || iA00 != iA01 || iA01 <= this.A00.A00) {
            if (iA01 >= iA00 + 500) {
                this.A00.A0j(iA00);
            } else if (iA01 == 0) {
                this.A00.A0j(this.A00.A00);
            } else {
                this.A00.A0j(iA01);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
    public final Class<C5Y> A01() {
        return C5Y.class;
    }
}
