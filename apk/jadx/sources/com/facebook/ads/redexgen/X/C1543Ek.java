package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ek, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1543Ek extends AbstractRunnableC2979oq {
    public final /* synthetic */ AbstractC3312uG A00;

    public C1543Ek(AbstractC3312uG abstractC3312uG) {
        this.A00 = abstractC3312uG;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        if (this.A00.isPressed()) {
            this.A00.postDelayed(this, this.A00.A07);
        } else {
            this.A00.setPressed(true);
            this.A00.postOnAnimationDelayed(this.A00.A09, 250L);
        }
    }
}
