package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ty, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1927Ty implements InterfaceC1678Jt {
    public final int A00;
    public final U8 A01;
    public final boolean A02;
    public final int[] A03;
    public final boolean[] A04;
    public static final String A07 = N1.A0h(0);
    public static final String A09 = N1.A0h(1);
    public static final String A08 = N1.A0h(3);
    public static final String A06 = N1.A0h(4);
    public static final InterfaceC1677Js<C1927Ty> A05 = new InterfaceC1677Js() { // from class: com.facebook.ads.redexgen.X.Tz
        @Override // com.facebook.ads.redexgen.X.InterfaceC1677Js
        public final InterfaceC1678Jt A7F(Bundle bundle) {
            return C1927Ty.A00(bundle);
        }
    };

    public C1927Ty(U8 u8, boolean z, int[] iArr, boolean[] zArr) {
        this.A00 = u8.A01;
        boolean z2 = false;
        AbstractC1722Ln.A07(this.A00 == iArr.length && this.A00 == zArr.length);
        this.A01 = u8;
        if (z && this.A00 > 1) {
            z2 = true;
        }
        this.A02 = z2;
        this.A03 = (int[]) iArr.clone();
        this.A04 = (boolean[]) zArr.clone();
    }

    public static /* synthetic */ C1927Ty A00(Bundle bundle) {
        U8 u8 = (U8) U8.A07.A7F((Bundle) AbstractC1722Ln.A01(bundle.getBundle(A07)));
        return new C1927Ty(u8, bundle.getBoolean(A06, false), (int[]) AbstractC1997Wx.A00(bundle.getIntArray(A09), new int[u8.A01]), (boolean[]) AbstractC1997Wx.A00(bundle.getBooleanArray(A08), new boolean[u8.A01]));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1927Ty c1927Ty = (C1927Ty) obj;
        return this.A02 == c1927Ty.A02 && this.A01.equals(c1927Ty.A01) && Arrays.equals(this.A03, c1927Ty.A03) && Arrays.equals(this.A04, c1927Ty.A04);
    }

    public final int hashCode() {
        return (((((this.A01.hashCode() * 31) + (this.A02 ? 1 : 0)) * 31) + Arrays.hashCode(this.A03)) * 31) + Arrays.hashCode(this.A04);
    }
}
