package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.WindowInsets;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hZ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnApplyWindowInsetsListenerC2538hZ implements View.OnApplyWindowInsetsListener {
    public final /* synthetic */ InterfaceC2524hL A00;
    public final /* synthetic */ C3N A01;

    public ViewOnApplyWindowInsetsListenerC2538hZ(C3N c3n, InterfaceC2524hL interfaceC2524hL) {
        this.A01 = c3n;
        this.A00 = interfaceC2524hL;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        return (WindowInsets) C2556hs.A01(this.A00.ADs(view, C2556hs.A00(windowInsets)));
    }
}
