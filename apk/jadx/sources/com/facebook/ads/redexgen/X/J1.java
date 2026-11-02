package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class J1 implements InterfaceC2583iJ {
    public static byte[] A01;
    public static String[] A02 = {"m0v39bkLL0n2S0xNgN89hz2dGOcTpwho", "Je1TSnUfgjz87J45b10M9zAxXIUpZahJ", "5NPz60Ycb2xlrnlJbjQuqitLPDDjbzHA", "GN4TkK3T6zCNiBjoupvxTPY", "uEyRXI1LEgEguUOEBvXDLSZ", "uM6injuc1j2LJ4wHPsuMaMxVec9yzmkB", "WB5Y9xOLXhFok7BjZ8qu5ygjzkxXvdjS", "QTx8NC78KyDJtqbkFzNokRxLjqTFyIiz"};
    public final /* synthetic */ C7O A00;

    static {
        A01();
    }

    public J1(C7O c7o) {
        this.A00 = c7o;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 37);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-39, -9, 2, 2, -5, -6, -74, -9, 10, 10, -9, -7, -2, -74, 5, 4, -74, -9, -74, -7, -2, -1, 2, -6, -74, Ascii.CR, -2, -1, -7, -2, -74, -1, 9, -74, 4, 5, 10, -74, -6, -5, 10, -9, -7, -2, -5, -6, -48, -74, -75, -77, -66, -66, -73, -74, 114, -74, -73, -58, -77, -75, -70, 114, -63, -64, 114, -77, -64, 114, -77, -66, -60, -73, -77, -74, -53, 114, -74, -73, -58, -77, -75, -70, -73, -74, 114, -75, -70, -69, -66, -74, 114};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2583iJ
    public final void A4l(View view, int i, ViewGroup.LayoutParams layoutParams) {
        AbstractC2638jE abstractC2638jEA0F = C7O.A0F(view);
        if (abstractC2638jEA0F != null) {
            if (!abstractC2638jEA0F.A0p() && !abstractC2638jEA0F.A0s()) {
                throw new IllegalArgumentException(A00(0, 48, InterfaceC3669k1.d.b.k) + abstractC2638jEA0F + this.A00.A1L());
            }
            abstractC2638jEA0F.A0a();
        }
        this.A00.attachViewToParent(view, i, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2583iJ
    public final void A6V(int i) {
        AbstractC2638jE abstractC2638jEA0F;
        View viewA7s = A7s(i);
        if (viewA7s != null && (abstractC2638jEA0F = C7O.A0F(viewA7s)) != null) {
            if (abstractC2638jEA0F.A0p() && !abstractC2638jEA0F.A0s()) {
                throw new IllegalArgumentException(A00(48, 43, 45) + abstractC2638jEA0F + this.A00.A1L());
            }
            abstractC2638jEA0F.A0e(256);
        }
        this.A00.detachViewFromParent(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2583iJ
    public final View A7s(int i) {
        return this.A00.getChildAt(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2583iJ
    public final int A7t() {
        return this.A00.getChildCount();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2583iJ
    public final AbstractC2638jE A7w(View view) {
        return C7O.A0F(view);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2583iJ
    public final int AAl(View view) {
        return this.A00.indexOfChild(view);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2583iJ
    public final void AEq(View view) {
        AbstractC2638jE abstractC2638jEA0F = C7O.A0F(view);
        if (abstractC2638jEA0F != null) {
            abstractC2638jEA0F.A0I(this.A00);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2583iJ
    public final void AFd(View view) {
        AbstractC2638jE abstractC2638jEA0F = C7O.A0F(view);
        if (abstractC2638jEA0F != null) {
            abstractC2638jEA0F.A0J(this.A00);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2583iJ
    public final void AJh() {
        int iA7t = A7t();
        for (int i = 0; i < iA7t; i++) {
            View viewA7s = A7s(i);
            this.A00.A1m(viewA7s);
            viewA7s.clearAnimation();
        }
        this.A00.removeAllViews();
        String[] strArr = A02;
        if (strArr[3].length() != strArr[4].length()) {
            throw new RuntimeException();
        }
        A02[2] = "YVtNrV2twtC96zFGqk3M5li58NeZhLji";
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2583iJ
    public final void AJn(int i) {
        View childAt = this.A00.getChildAt(i);
        if (childAt != null) {
            this.A00.A1m(childAt);
            childAt.clearAnimation();
        }
        C7O c7o = this.A00;
        if (A02[2].charAt(25) == 'R') {
            throw new RuntimeException();
        }
        A02[2] = "BurwQQkBxJzMJJK1acCycPqXpvrCcXzS";
        c7o.removeViewAt(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2583iJ
    public final void addView(View view, int i) {
        this.A00.addView(view, i);
        this.A00.A1l(view);
    }
}
