package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.nP, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnAttachStateChangeListenerC2893nP implements View.OnAttachStateChangeListener {
    public final /* synthetic */ EnumC2891nN A00;
    public final /* synthetic */ C2892nO A01;

    public ViewOnAttachStateChangeListenerC2893nP(C2892nO c2892nO, EnumC2891nN enumC2891nN) {
        this.A01 = c2892nO;
        this.A00 = enumC2891nN;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.A01.A04(this.A00, null);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
