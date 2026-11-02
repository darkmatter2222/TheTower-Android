package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class LT implements InterfaceC2710kO {
    public final /* synthetic */ C13807m A00;

    public LT(C13807m c13807m) {
        this.A00 = c13807m;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2710kO
    public final void ADt() {
        this.A00.A0C.set(true);
        this.A00.A01.AGt(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2710kO
    public final void ADu() {
        this.A00.A01.AGw(this.A00, AdError.CACHE_ERROR);
    }
}
