package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityNodeProvider;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class JN extends C2517hE {
    @Override // com.facebook.ads.redexgen.X.C2517hE
    public final View.AccessibilityDelegate A00(AbstractC2518hF abstractC2518hF) {
        return new C2515hC(this, abstractC2518hF);
    }

    @Override // com.facebook.ads.redexgen.X.C2517hE
    public final C2566i2 A01(View.AccessibilityDelegate accessibilityDelegate, View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = accessibilityDelegate.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new C2566i2(accessibilityNodeProvider);
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.C2517hE
    public final boolean A02(View.AccessibilityDelegate accessibilityDelegate, View view, int i, Bundle bundle) {
        return accessibilityDelegate.performAccessibilityAction(view, i, bundle);
    }
}
