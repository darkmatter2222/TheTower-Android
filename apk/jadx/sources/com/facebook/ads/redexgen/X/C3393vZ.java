package com.facebook.ads.redexgen.X;

import android.animation.ValueAnimator;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vZ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3393vZ implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ C13405y A00;

    public C3393vZ(C13405y c13405y) {
        this.A00 = c13405y;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        Integer num = (Integer) valueAnimator.getAnimatedValue();
        this.A00.A0r.getLayoutParams().height = num.intValue();
        this.A00.A0r.requestLayout();
    }
}
