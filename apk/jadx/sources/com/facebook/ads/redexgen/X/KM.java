package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class KM implements InterfaceC2738kr {
    public final boolean A00;

    public KM(boolean z) {
        this.A00 = z;
    }

    public abstract void A00();

    public abstract void A01(boolean z);

    @Override // com.facebook.ads.redexgen.X.InterfaceC2738kr
    public final void AEJ() {
        if (this.A00) {
            A00();
        } else {
            A01(false);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2738kr
    public final void AEU() {
        A01(true);
    }
}
