package com.facebook.ads.redexgen.X;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Cr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1498Cr extends AbstractRunnableC2979oq {
    public final /* synthetic */ InterfaceC3160ro A00;
    public final /* synthetic */ C3159rn A01;

    public C1498Cr(C3159rn c3159rn, InterfaceC3160ro interfaceC3160ro) {
        this.A01 = c3159rn;
        this.A00 = interfaceC3160ro;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(300L);
        alphaAnimation.setInterpolator(new AccelerateInterpolator());
        alphaAnimation.setAnimationListener(new C1499Cs(this));
        this.A01.startAnimation(alphaAnimation);
    }
}
