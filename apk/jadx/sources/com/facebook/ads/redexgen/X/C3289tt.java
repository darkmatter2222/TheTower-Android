package com.facebook.ads.redexgen.X;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3289tt implements LayoutTransition.TransitionListener {
    public final /* synthetic */ C3290tu A00;

    public C3289tt(C3290tu c3290tu) {
        this.A00 = c3290tu;
    }

    @Override // android.animation.LayoutTransition.TransitionListener
    public final void endTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i) {
        ((AbstractC3284to) this.A00.A00.A00).A09.setAlpha(1.0f);
        this.A00.A00.A00.A0R.setAlpha(1.0f);
        this.A00.A00.A00.A0Q.setAlpha(1.0f);
    }

    @Override // android.animation.LayoutTransition.TransitionListener
    public final void startTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i) {
    }
}
