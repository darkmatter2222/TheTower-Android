package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.iK, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2584iK {
    public static byte[] A03;
    public static String[] A04 = {"QoGKHhEqLDc7cPbroRD", "LQzzwNJ4o6QHlfYkxXGOUA5ejYw8qpDj", "6ipC3ASGLl4rMOedI", "OPBJh0aCf", "l4bQelOwEyQeTpTSi", "DWBJmVB67PV4ItRyT2e9caL16z1NK91I", "0G1mJvoVA", "nRnK55wdJbrp31Rh0MWe0TNMbF4aeg8Y"};
    public final InterfaceC2583iJ A01;
    public final C2582iI A00 = new C2582iI();
    public final List<View> A02 = new ArrayList();

    static {
        A02();
    }

    public C2584iK(InterfaceC2583iJ interfaceC2583iJ) {
        this.A01 = interfaceC2583iJ;
    }

    private int A00(int i) {
        if (i < 0) {
            return -1;
        }
        int iA7t = this.A01.A7t();
        int i2 = i;
        while (i2 < iA7t) {
            int iA03 = i - (i2 - this.A00.A03(i2));
            if (iA03 == 0) {
                while (this.A00.A08(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += iA03;
        }
        return -1;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 78);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        if (A04[5].charAt(2) != 'B') {
            throw new RuntimeException();
        }
        A04[1] = "YzFnrN17WwgSKMGcQI3u7PJ5Pdf81qGi";
        A03 = new byte[]{-81, -93, -21, -20, -25, -25, -24, -15, -93, -17, -20, -10, -9, -67, -23, -25, -18, -34, -29, -36, -107, -23, -28, -107, -22, -29, -35, -34, -39, -38, -107, -42, -107, -21, -34, -38, -20, -107, -23, -35, -42, -23, -107, -20, -42, -24, -107, -29, -28, -23, -107, -35, -34, -39, -39, -38, -29, -35, -48, -52, -34, -121, -48, -38, -121, -43, -42, -37, -121, -56, -121, -54, -49, -48, -45, -53, -109, -121, -54, -56, -43, -43, -42, -37, -121, -49, -48, -53, -52, -121};
    }

    private void A03(View view) {
        this.A02.add(view);
        this.A01.AEq(view);
    }

    private boolean A04(View view) {
        if (!this.A02.remove(view)) {
            return false;
        }
        this.A01.AFd(view);
        return true;
    }

    public final int A05() {
        return this.A01.A7t() - this.A02.size();
    }

    public final int A06() {
        return this.A01.A7t();
    }

    public final int A07(View view) {
        int iAAl = this.A01.AAl(view);
        if (iAAl == -1 || this.A00.A08(iAAl)) {
            return -1;
        }
        return iAAl - this.A00.A03(iAAl);
    }

    public final View A08(int i) {
        int size = this.A02.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.A02.get(i2);
            AbstractC2638jE abstractC2638jEA7w = this.A01.A7w(view);
            if (abstractC2638jEA7w.A0T() == i && !abstractC2638jEA7w.A0m() && !abstractC2638jEA7w.A0n()) {
                return view;
            }
        }
        return null;
    }

    public final View A09(int i) {
        return this.A01.A7s(A00(i));
    }

    public final View A0A(int i) {
        return this.A01.A7s(i);
    }

    public final void A0B() {
        this.A00.A04();
        for (int size = this.A02.size() - 1; size >= 0; size--) {
            this.A01.AFd(this.A02.get(size));
            this.A02.remove(size);
        }
        this.A01.AJh();
    }

    public final void A0C(int i) {
        int iA00 = A00(i);
        this.A00.A09(iA00);
        this.A01.A6V(iA00);
    }

    public final void A0D(int i) {
        int iA00 = A00(i);
        View viewA7s = this.A01.A7s(iA00);
        if (viewA7s == null) {
            return;
        }
        if (this.A00.A09(iA00)) {
            A04(viewA7s);
        }
        this.A01.AJn(iA00);
        if (A04[4].length() == 16) {
            throw new RuntimeException();
        }
        A04[7] = "KJlsfCUfVwwQNNRDjM0AzdkkAy1m1QjD";
    }

    public final void A0E(View view) {
        int iAAl = this.A01.AAl(view);
        if (iAAl < 0) {
            throw new IllegalArgumentException(A01(57, 33, 25) + view);
        }
        this.A00.A06(iAAl);
        A03(view);
    }

    public final void A0F(View view) {
        int iAAl = this.A01.AAl(view);
        if (iAAl < 0) {
            return;
        }
        if (this.A00.A09(iAAl)) {
            A04(view);
        }
        this.A01.AJn(iAAl);
    }

    public final void A0G(View view) {
        int iAAl = this.A01.AAl(view);
        if (iAAl < 0) {
            throw new IllegalArgumentException(A01(57, 33, 25) + view);
        }
        if (!this.A00.A08(iAAl)) {
            throw new RuntimeException(A01(14, 43, 39) + view);
        }
        this.A00.A05(iAAl);
        A04(view);
    }

    public final void A0H(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int iA7t = i < 0 ? this.A01.A7t() : A00(i);
        C2582iI c2582iI = this.A00;
        if (A04[5].charAt(2) != 'B') {
            throw new RuntimeException();
        }
        A04[1] = "KHr0McsaN13zWmBdzhmfm62h5mt8zSB0";
        c2582iI.A07(iA7t, z);
        if (z) {
            A03(view);
        }
        this.A01.A4l(view, iA7t, layoutParams);
    }

    public final void A0I(View view, int i, boolean z) {
        int iA7t = i < 0 ? this.A01.A7t() : A00(i);
        this.A00.A07(iA7t, z);
        if (z) {
            A03(view);
        }
        this.A01.addView(view, iA7t);
    }

    public final void A0J(View view, boolean z) {
        A0I(view, -1, z);
    }

    public final boolean A0K(View view) {
        return this.A02.contains(view);
    }

    public final boolean A0L(View view) {
        int iAAl = this.A01.AAl(view);
        if (iAAl == -1) {
            A04(view);
            if (A04[5].charAt(2) != 'B') {
                throw new RuntimeException();
            }
            A04[0] = "HipCYWSrBpzIS13Odtj";
            return true;
        }
        if (!this.A00.A08(iAAl)) {
            return false;
        }
        this.A00.A09(iAAl);
        A04(view);
        this.A01.AJn(iAAl);
        return true;
    }

    public final String toString() {
        return this.A00.toString() + A01(0, 14, 53) + this.A02.size();
    }
}
