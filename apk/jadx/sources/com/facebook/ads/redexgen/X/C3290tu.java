package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.LayoutTransition;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3290tu extends AnimatorListenerAdapter {
    public final /* synthetic */ RunnableC3291tv A00;

    public C3290tu(RunnableC3291tv runnableC3291tv) {
        this.A00 = runnableC3291tv;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.setDuration(250L);
        layoutTransition.setDuration(3, 0L);
        layoutTransition.addTransitionListener(new C3289tt(this));
        this.A00.A00.A0N.setLayoutTransition(layoutTransition);
        ((AbstractC3284to) this.A00.A00).A09.setVisibility(8);
        this.A00.A00.A0R.setVisibility(8);
        this.A00.A00.A0Q.setVisibility(8);
    }
}
