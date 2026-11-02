package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class KB extends AbstractRunnableC2979oq {
    public final /* synthetic */ C13807m A00;
    public final /* synthetic */ C2442fz A01;
    public final /* synthetic */ C13687a A02;

    public KB(C13687a c13687a, C2442fz c2442fz, C13807m c13807m) {
        this.A02 = c13687a;
        this.A01 = c2442fz;
        this.A00 = c13807m;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        this.A02.A0S(this.A01);
        this.A02.A0P(this.A00);
        this.A02.A00 = null;
        AdErrorType adErrorType = AdErrorType.RV_AD_TIMEOUT;
        this.A02.A0B.A0F().A6F(adErrorType.getErrorCode(), adErrorType.getDefaultErrorMessage());
        if (this.A02.A07 != null) {
            this.A02.A07.A0G(new C2922nt(adErrorType, ""));
        }
    }
}
