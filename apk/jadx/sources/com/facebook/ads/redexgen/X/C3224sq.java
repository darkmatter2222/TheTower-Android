package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.TimeInterpolator;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3224sq extends Animator {
    public final /* synthetic */ int A00;
    public final /* synthetic */ InterfaceC3213sf A01;
    public final /* synthetic */ C3226ss A02;

    public C3224sq(C3226ss c3226ss, int i, InterfaceC3213sf interfaceC3213sf) {
        this.A02 = c3226ss;
        this.A00 = i;
        this.A01 = interfaceC3213sf;
    }

    @Override // android.animation.Animator
    public final void addListener(Animator.AnimatorListener animatorListener) {
    }

    @Override // android.animation.Animator
    public final void cancel() {
    }

    @Override // android.animation.Animator
    public final void end() {
    }

    @Override // android.animation.Animator
    public final long getDuration() {
        return this.A00;
    }

    @Override // android.animation.Animator
    public final long getStartDelay() {
        return 0L;
    }

    @Override // android.animation.Animator
    public final boolean isRunning() {
        return this.A02.A04;
    }

    @Override // android.animation.Animator
    public final Animator setDuration(long j) {
        return null;
    }

    @Override // android.animation.Animator
    public final void setInterpolator(TimeInterpolator timeInterpolator) {
    }

    @Override // android.animation.Animator
    public final void setStartDelay(long j) {
    }

    @Override // android.animation.Animator
    public final void setTarget(Object obj) {
        this.A01.ALQ(obj, getDuration());
    }

    @Override // android.animation.Animator
    public final void start() {
    }
}
