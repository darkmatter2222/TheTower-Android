package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class LR implements InterfaceC2437fu {
    public final /* synthetic */ C13807m A00;

    public LR(C13807m c13807m) {
        this.A00 = c13807m;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2437fu
    public final void AGK(AdError adError) {
        this.A00.A01.AGw(this.A00, adError);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2437fu
    public final void AGL() {
        this.A00.A0C.set(true);
        this.A00.A01.AGt(this.A00);
    }
}
