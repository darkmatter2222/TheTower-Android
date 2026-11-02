package com.facebook.ads.redexgen.X;

import android.view.ViewTreeObserver;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.nf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewTreeObserverOnWindowFocusChangeListenerC2909nf implements ViewTreeObserver.OnWindowFocusChangeListener {
    public final /* synthetic */ GT A00;

    public ViewTreeObserverOnWindowFocusChangeListenerC2909nf(GT gt) {
        this.A00 = gt;
    }

    @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
    public final void onWindowFocusChanged(boolean z) {
        if (z) {
            InterfaceC2300df interfaceC2300dfA0F = this.A00.A0h.A0F();
            if (AbstractC3163rr.A01(interfaceC2300dfA0F.getId())) {
                interfaceC2300dfA0F.A5E(EnumC2959oW.A04.name());
            }
        }
    }
}
