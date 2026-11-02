package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.t4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnAttachStateChangeListenerC3238t4 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ C3239t5 A00;

    public ViewOnAttachStateChangeListenerC3238t4(C3239t5 c3239t5) {
        this.A00 = c3239t5;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.A00.A09();
        this.A00.A03.setOnClickListener(null);
    }
}
