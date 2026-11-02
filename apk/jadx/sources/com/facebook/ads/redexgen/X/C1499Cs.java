package com.facebook.ads.redexgen.X;

import android.view.animation.Animation;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Cs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1499Cs extends AnimationAnimationListenerC3085qb {
    public final /* synthetic */ C1498Cr A00;

    public C1499Cs(C1498Cr c1498Cr) {
        this.A00 = c1498Cr;
    }

    @Override // com.facebook.ads.redexgen.X.AnimationAnimationListenerC3085qb, android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        AbstractC3086qc.A0I(this.A00.A01);
        this.A00.A00.AFO();
    }
}
