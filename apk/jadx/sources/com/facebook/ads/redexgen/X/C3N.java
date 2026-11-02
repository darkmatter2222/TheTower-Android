package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.WindowInsets;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3N, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3N extends C3P {
    @Override // com.facebook.ads.redexgen.X.C2539ha
    public final C2556hs A07(View view, C2556hs c2556hs) {
        WindowInsets windowInsets = (WindowInsets) C2556hs.A01(c2556hs);
        WindowInsets windowInsetsDispatchApplyWindowInsets = view.dispatchApplyWindowInsets(windowInsets);
        if (windowInsetsDispatchApplyWindowInsets != windowInsets) {
            windowInsets = new WindowInsets(windowInsetsDispatchApplyWindowInsets);
        }
        return C2556hs.A00(windowInsets);
    }

    @Override // com.facebook.ads.redexgen.X.C2539ha
    public final C2556hs A08(View view, C2556hs c2556hs) {
        WindowInsets windowInsets = (WindowInsets) C2556hs.A01(c2556hs);
        WindowInsets windowInsetsOnApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
        if (windowInsetsOnApplyWindowInsets != windowInsets) {
            windowInsets = new WindowInsets(windowInsetsOnApplyWindowInsets);
        }
        return C2556hs.A00(windowInsets);
    }

    @Override // com.facebook.ads.redexgen.X.C2539ha
    public final void A0A(View view) {
        view.stopNestedScroll();
    }

    @Override // com.facebook.ads.redexgen.X.C2539ha
    public final void A0E(View view, InterfaceC2524hL interfaceC2524hL) {
        if (interfaceC2524hL == null) {
            view.setOnApplyWindowInsetsListener(null);
        } else {
            view.setOnApplyWindowInsetsListener(new ViewOnApplyWindowInsetsListenerC2538hZ(this, interfaceC2524hL));
        }
    }
}
