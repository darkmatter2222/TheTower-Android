package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class KX implements InterfaceC2710kO {
    public final /* synthetic */ C2428fl A00;

    public KX(C2428fl c2428fl) {
        this.A00 = c2428fl;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2710kO
    public final void ADt() {
        this.A00.A04.ADl();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2710kO
    public final void ADu() {
        this.A00.A04.ADk(AdError.CACHE_ERROR);
    }
}
