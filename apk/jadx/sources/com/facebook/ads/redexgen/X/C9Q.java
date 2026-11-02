package com.facebook.ads.redexgen.X;

import android.os.Bundle;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9Q, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C9Q extends US {
    public final boolean A00;
    public final boolean A01;
    public static final String A04 = N1.A0h(1);
    public static final String A03 = N1.A0h(2);
    public static final InterfaceC1677Js<C9Q> A02 = new InterfaceC1677Js() { // from class: com.facebook.ads.redexgen.X.Ux
        @Override // com.facebook.ads.redexgen.X.InterfaceC1677Js
        public final InterfaceC1678Jt A7F(Bundle bundle) {
            return C9Q.A00(bundle);
        }
    };

    public C9Q() {
        this.A01 = false;
        this.A00 = false;
    }

    public C9Q(boolean z) {
        this.A01 = true;
        this.A00 = z;
    }

    public static C9Q A00(Bundle bundle) {
        AbstractC1722Ln.A07(bundle.getInt(US.A02, -1) == 0);
        return bundle.getBoolean(A04, false) ? new C9Q(bundle.getBoolean(A03, false)) : new C9Q();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C9Q)) {
            return false;
        }
        C9Q c9q = (C9Q) obj;
        return this.A00 == c9q.A00 && this.A01 == c9q.A01;
    }

    public final int hashCode() {
        return A6.A00(Boolean.valueOf(this.A01), Boolean.valueOf(this.A00));
    }
}
