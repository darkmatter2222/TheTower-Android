package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Cw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1503Cw extends AbstractRunnableC2979oq {
    public final /* synthetic */ int A00;
    public final /* synthetic */ C13385w A01;

    public C1503Cw(C13385w c13385w, int i) {
        this.A01 = c13385w;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        if (this.A01.A01 != null) {
            this.A01.A01.A1T();
        }
        if (!this.A01.A0F() || this.A01.A03) {
            ((D8) this.A01).A09.setToolbarActionMode(this.A01.getCloseButtonStyle());
            ((D8) this.A01).A09.A0A();
        } else {
            this.A01.A0B(this.A00);
        }
        this.A01.A08();
    }
}
