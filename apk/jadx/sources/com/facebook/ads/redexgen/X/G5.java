package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class G5 implements InterfaceC3066qI {
    public final C3065qH A00;
    public final InterfaceC3066qI A01;

    public G5(InterfaceC3066qI interfaceC3066qI, int i, int i2) {
        this.A01 = interfaceC3066qI;
        this.A00 = new C3065qH(i, i2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3066qI
    public final void AIL(String str) {
        this.A00.A04(str);
        if (this.A00.A02() == null || !AbstractC3068qK.A08(this.A00)) {
            return;
        }
        this.A01.AIL(this.A00.A02());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3066qI
    public final void flush() {
        this.A00.A03();
        while (this.A00.A02() != null) {
            if (AbstractC3068qK.A08(this.A00)) {
                this.A01.AIL(this.A00.A02());
            }
            this.A00.A03();
        }
    }
}
