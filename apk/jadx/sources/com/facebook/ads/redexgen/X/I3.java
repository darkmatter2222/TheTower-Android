package com.facebook.ads.redexgen.X;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class I3 extends AbstractRunnableC2979oq {
    public final /* synthetic */ Drawable A00;
    public final /* synthetic */ C2696kA A01;
    public final /* synthetic */ GT A02;

    public I3(C2696kA c2696kA, GT gt, Drawable drawable) {
        this.A01 = c2696kA;
        this.A02 = gt;
        this.A00 = drawable;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        this.A02.A1P(this.A00);
    }
}
