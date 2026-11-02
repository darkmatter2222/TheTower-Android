package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.view.animation.Animation;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class AnimationAnimationListenerC3133rN implements Animation.AnimationListener {
    public final /* synthetic */ C2658jY A00;
    public final /* synthetic */ AbstractC1565Fg A01;
    public final /* synthetic */ AbstractC1565Fg A02;

    public AnimationAnimationListenerC3133rN(AbstractC1565Fg abstractC1565Fg, AbstractC1565Fg abstractC1565Fg2, C2658jY c2658jY) {
        this.A01 = abstractC1565Fg;
        this.A02 = abstractC1565Fg2;
        this.A00 = c2658jY;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.A01.A06 = false;
        AbstractC3086qc.A0I(this.A02);
        new Handler().postDelayed(new C1568Fj(this), 200L);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
