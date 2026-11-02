package com.facebook.ads.redexgen.X;

import android.view.WindowInsets;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2556hs {
    public final Object A00;

    public C2556hs(Object obj) {
        this.A00 = obj;
    }

    public static C2556hs A00(Object obj) {
        if (obj == null) {
            return null;
        }
        return new C2556hs(obj);
    }

    public static Object A01(C2556hs c2556hs) {
        if (c2556hs == null) {
            return null;
        }
        return c2556hs.A00;
    }

    public final int A02() {
        return ((WindowInsets) this.A00).getSystemWindowInsetBottom();
    }

    public final int A03() {
        return ((WindowInsets) this.A00).getSystemWindowInsetLeft();
    }

    public final int A04() {
        return ((WindowInsets) this.A00).getSystemWindowInsetRight();
    }

    public final int A05() {
        return ((WindowInsets) this.A00).getSystemWindowInsetTop();
    }

    public final C2556hs A06(int i, int i2, int i3, int i4) {
        return new C2556hs(((WindowInsets) this.A00).replaceSystemWindowInsets(i, i2, i3, i4));
    }

    public final boolean A07() {
        return ((WindowInsets) this.A00).isConsumed();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2556hs c2556hs = (C2556hs) obj;
        if (this.A00 == null) {
            return c2556hs.A00 == null;
        }
        return this.A00.equals(c2556hs.A00);
    }

    public final int hashCode() {
        if (this.A00 == null) {
            return 0;
        }
        return this.A00.hashCode();
    }
}
