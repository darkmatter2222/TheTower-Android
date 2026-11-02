package com.facebook.ads.redexgen.X;

import android.animation.ValueAnimator;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3307uB implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ C3308uC A00;

    public C3307uB(C3308uC c3308uC) {
        this.A00 = c3308uC;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.A00.A00 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.A00.invalidate();
    }
}
