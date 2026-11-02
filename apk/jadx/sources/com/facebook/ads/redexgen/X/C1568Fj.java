package com.facebook.ads.redexgen.X;

import android.R;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1568Fj extends AbstractRunnableC2979oq {
    public final /* synthetic */ AnimationAnimationListenerC3133rN A00;

    public C1568Fj(AnimationAnimationListenerC3133rN animationAnimationListenerC3133rN) {
        this.A00 = animationAnimationListenerC3133rN;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        this.A00.A00.finish(3);
        this.A00.A00.A05().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
    }
}
