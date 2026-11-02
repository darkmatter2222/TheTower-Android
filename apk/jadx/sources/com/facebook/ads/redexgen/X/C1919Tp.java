package com.facebook.ads.redexgen.X;

import android.os.Bundle;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Tp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1919Tp implements InterfaceC1678Jt {
    public final float A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public static final C1919Tp A05 = new C1919Tp(0, 0);
    public static final String A09 = N1.A0h(0);
    public static final String A06 = N1.A0h(1);
    public static final String A08 = N1.A0h(2);
    public static final String A07 = N1.A0h(3);
    public static final InterfaceC1677Js<C1919Tp> A04 = new InterfaceC1677Js() { // from class: com.facebook.ads.redexgen.X.Tv
        @Override // com.facebook.ads.redexgen.X.InterfaceC1677Js
        public final InterfaceC1678Jt A7F(Bundle bundle) {
            return C1919Tp.A00(bundle);
        }
    };

    public C1919Tp(int i, int i2) {
        this(i, i2, 0, 1.0f);
    }

    public C1919Tp(int i, int i2, int i3, float f) {
        this.A03 = i;
        this.A01 = i2;
        this.A02 = i3;
        this.A00 = f;
    }

    public static /* synthetic */ C1919Tp A00(Bundle bundle) {
        return new C1919Tp(bundle.getInt(A09, 0), bundle.getInt(A06, 0), bundle.getInt(A08, 0), bundle.getFloat(A07, 1.0f));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1919Tp)) {
            return false;
        }
        C1919Tp c1919Tp = (C1919Tp) obj;
        return this.A03 == c1919Tp.A03 && this.A01 == c1919Tp.A01 && this.A02 == c1919Tp.A02 && this.A00 == c1919Tp.A00;
    }

    public final int hashCode() {
        return (((((((7 * 31) + this.A03) * 31) + this.A01) * 31) + this.A02) * 31) + Float.floatToRawIntBits(this.A00);
    }
}
