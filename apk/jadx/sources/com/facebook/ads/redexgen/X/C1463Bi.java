package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Bi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1463Bi extends AbstractRunnableC2979oq {
    public final /* synthetic */ C1459Be A00;

    public C1463Bi(C1459Be c1459Be) {
        this.A00 = c1459Be;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        if (this.A00.A04) {
            return;
        }
        final int currentPositionInMillis = this.A00.getCurrentPositionInMillis();
        this.A00.A0C.A02(new BN(currentPositionInMillis) { // from class: com.facebook.ads.redexgen.X.5V
        });
        this.A00.A0D.A01(currentPositionInMillis, this.A00.getDuration(), this.A00.A0B.A0F());
        this.A00.A08.postDelayed(this, this.A00.A01);
    }
}
