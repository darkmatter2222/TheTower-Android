package com.facebook.ads.redexgen.X;

import android.os.Bundle;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ug, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1933Ug implements InterfaceC1678Jt {
    public final C1942Up A00;

    @Deprecated
    public final C9P A01;
    public final C1937Uk A02;
    public final C1702Kr A03;

    @Deprecated
    public final C1934Uh A04;
    public final C1930Ud A05;
    public final String A06;
    public static final C1933Ug A08 = new C1694Kj().A05();
    public static final InterfaceC1677Js<C1933Ug> A07 = new InterfaceC1677Js() { // from class: com.facebook.ads.redexgen.X.Uw
        @Override // com.facebook.ads.redexgen.X.InterfaceC1677Js
        public final InterfaceC1678Jt A7F(Bundle bundle) {
            return C1933Ug.A00(bundle);
        }
    };

    public C1933Ug(String str, C9P c9p, C1934Uh c1934Uh, C1937Uk c1937Uk, C1930Ud c1930Ud) {
        this.A06 = str;
        this.A03 = c1934Uh;
        this.A04 = c1934Uh;
        this.A02 = c1937Uk;
        this.A05 = c1930Ud;
        this.A00 = c9p;
        this.A01 = c9p;
    }

    public static C1933Ug A00(Bundle bundle) {
        String str = (String) AbstractC1722Ln.A01(bundle.getString(A02(0), ""));
        Bundle bundle2 = bundle.getBundle(A02(1));
        C1937Uk c1937Uk = bundle2 == null ? C1937Uk.A07 : (C1937Uk) C1937Uk.A06.A7F(bundle2);
        Bundle bundle3 = bundle.getBundle(A02(2));
        C1930Ud c1930Ud = bundle3 == null ? C1930Ud.A0Z : (C1930Ud) C1930Ud.A0Y.A7F(bundle3);
        Bundle bundle4 = bundle.getBundle(A02(3));
        return new C1933Ug(str, bundle4 == null ? C9P.A00 : (C9P) C1942Up.A05.A7F(bundle4), null, c1937Uk, c1930Ud);
    }

    public static String A02(int i) {
        return Integer.toString(i, 36);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1933Ug)) {
            return false;
        }
        C1933Ug c1933Ug = (C1933Ug) obj;
        return N1.A1E(this.A06, c1933Ug.A06) && this.A00.equals(c1933Ug.A00) && N1.A1E(this.A03, c1933Ug.A03) && N1.A1E(this.A02, c1933Ug.A02) && N1.A1E(this.A05, c1933Ug.A05);
    }

    public final int hashCode() {
        return (((((((this.A06.hashCode() * 31) + (this.A03 != null ? this.A03.hashCode() : 0)) * 31) + this.A02.hashCode()) * 31) + this.A00.hashCode()) * 31) + this.A05.hashCode();
    }
}
