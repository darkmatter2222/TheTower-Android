package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class G9 implements InterfaceC3066qI {
    public int A00;
    public final InterfaceC3066qI A01;
    public final InterfaceC3066qI A02;

    public G9(InterfaceC3066qI interfaceC3066qI, int i, InterfaceC3066qI interfaceC3066qI2) {
        this.A01 = interfaceC3066qI;
        this.A00 = i;
        this.A02 = interfaceC3066qI2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3066qI
    public final void AIL(String str) {
        if (this.A00 <= 0) {
            this.A02.AIL(str);
            return;
        }
        this.A01.AIL(str);
        this.A01.flush();
        this.A00--;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3066qI
    public final void flush() {
        this.A02.flush();
    }
}
