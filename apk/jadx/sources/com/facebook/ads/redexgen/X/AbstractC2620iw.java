package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.iw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2620iw {
    public static byte[] A0I;
    public static String[] A0J = {"NGwI4w5wjKKwr8vIXUEBgcadgt82Mvhc", "UEWVJJvMFTFlt7hH7ERCIJOXwkHPD", "VrTEPZjwbsMyuvHOm", "2WwBzOWctlsBfaK16SO", "SN9IkStz5", "kDHla2kaeJhueA2usdy0jZceB2KGO", "Oz8ehwpCKAgd43CqPtwSSE9zN5", "pRsAYaXPUkY6EiG3qKZOmbtQ8"};
    public int A00;
    public C2584iK A01;
    public AbstractC2633j9 A02;
    public C7O A03;
    public boolean A08;
    public int A0A;
    public int A0B;
    public int A0C;
    public int A0D;
    public final InterfaceC2641jH A0G = new C1654It(this);
    public final InterfaceC2641jH A0H = new C1653Is(this);
    public C2643jJ A04 = new C2643jJ(this.A0G);
    public C2643jJ A05 = new C2643jJ(this.A0H);
    public boolean A09 = false;
    public boolean A07 = false;
    public boolean A06 = false;
    public boolean A0F = true;
    public boolean A0E = true;

    static {
        A15();
    }

    public static int A0x(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        switch (mode) {
            case Integer.MIN_VALUE:
                return Math.min(size, Math.max(i2, i3));
            case 1073741824:
                return size;
            default:
                return Math.max(i2, i3);
        }
    }

    public static int A0y(int i, int i2, int i3, int i4, boolean z) {
        int iMax = Math.max(0, i - i3);
        int i5 = 0;
        int i6 = 0;
        if (z) {
            if (i4 >= 0) {
                i5 = i4;
                String[] strArr = A0J;
                if (strArr[5].length() != strArr[1].length()) {
                    throw new RuntimeException();
                }
                A0J[6] = "ru0BYCJI67FO4KgBABZqajada";
                i6 = 1073741824;
            } else if (i4 == -1) {
                switch (i2) {
                    case Integer.MIN_VALUE:
                    case 1073741824:
                        i5 = iMax;
                        i6 = i2;
                        break;
                    case 0:
                        i5 = 0;
                        if (A0J[3].length() == 28) {
                            i6 = 0;
                        } else {
                            A0J[7] = "Nw";
                            i6 = 0;
                        }
                        break;
                }
            } else if (i4 == -2) {
                i5 = 0;
                i6 = 0;
            }
        } else if (i4 >= 0) {
            i5 = i4;
            i6 = 1073741824;
        } else if (i4 == -1) {
            i5 = iMax;
            i6 = i2;
        } else if (i4 == -2) {
            i5 = iMax;
            i6 = (i2 == Integer.MIN_VALUE || i2 == 1073741824) ? Integer.MIN_VALUE : 0;
        }
        return View.MeasureSpec.makeMeasureSpec(i5, i6);
    }

    private final int A0z(View view) {
        return ((C2621ix) view.getLayoutParams()).A03.bottom;
    }

    private final int A10(View view) {
        return ((C2621ix) view.getLayoutParams()).A03.left;
    }

    private final int A11(View view) {
        return ((C2621ix) view.getLayoutParams()).A03.right;
    }

    private final int A12(View view) {
        return ((C2621ix) view.getLayoutParams()).A03.top;
    }

    private final int A13(C2628j4 c2628j4, C2635jB c2635jB) {
        return 0;
    }

    public static String A14(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0I, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 75);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A15() {
        byte[] bArr = {-2, 33, 33, 34, 33, -35, 19, 38, 34, 52, -35, 37, Ascii.RS, 48, -35, Ascii.SI, 34, 32, 54, 32, 41, 34, 47, 19, 38, 34, 52, -35, Ascii.RS, 48, -35, 45, Ascii.RS, 47, 34, 43, 49, -35, Ascii.US, 50, 49, -35, 51, 38, 34, 52, -35, 38, 48, -35, 43, 44, 49, -35, Ascii.RS, -35, 47, 34, Ascii.RS, 41, -35, 32, 37, 38, 41, 33, -21, -35, Ascii.DC2, 43, 35, 38, 41, 49, 34, 47, 34, 33, -35, 38, 43, 33, 34, 53, -9, -35, -5, 8, 8, 9, Ascii.SO, -70, 7, 9, Ascii.DLE, -1, -70, -5, -70, -3, 2, 3, 6, -2, -70, 0, Ascii.FF, 9, 7, -70, 8, 9, 8, -57, -1, Ascii.DC2, 3, Ascii.CR, Ascii.SO, 3, 8, 1, -70, 3, 8, -2, -1, Ascii.DC2, -44};
        String[] strArr = A0J;
        if (strArr[2].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        A0J[6] = "kyP20liVKsmkdJ";
        A0I = bArr;
    }

    private final void A16(int i) {
        A19(i, A20(i));
    }

    private final void A17(int i) {
        if (A20(i) != null) {
            this.A01.A0D(i);
        }
    }

    private final void A18(int i, int i2) {
        View viewA20 = A20(i);
        if (viewA20 == null) {
            throw new IllegalArgumentException(A14(85, 44, 79) + i + this.A03.toString());
        }
        A16(i);
        A1B(viewA20, i2);
    }

    private void A19(int i, View view) {
        this.A01.A0C(i);
    }

    private final void A1A(View view) {
        this.A01.A0F(view);
    }

    private final void A1B(View view, int i) {
        A1C(view, i, (C2621ix) view.getLayoutParams());
    }

    private final void A1C(View view, int i, C2621ix c2621ix) {
        AbstractC2638jE abstractC2638jEA0F = C7O.A0F(view);
        if (abstractC2638jEA0F.A0n()) {
            this.A03.A0t.A09(abstractC2638jEA0F);
        } else {
            C2646jM c2646jM = this.A03.A0t;
            String[] strArr = A0J;
            if (strArr[5].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            A0J[0] = "mtQ3Ck4zhf6OC1ISSa3eadAcnNcPftbe";
            c2646jM.A0A(abstractC2638jEA0F);
        }
        this.A01.A0H(view, i, c2621ix, abstractC2638jEA0F.A0n());
    }

    private void A1D(View view, int i, boolean z) {
        AbstractC2638jE abstractC2638jEA0F = C7O.A0F(view);
        if (z || abstractC2638jEA0F.A0n()) {
            this.A03.A0t.A09(abstractC2638jEA0F);
        } else {
            this.A03.A0t.A0A(abstractC2638jEA0F);
        }
        C2621ix c2621ix = (C2621ix) view.getLayoutParams();
        if (abstractC2638jEA0F.A0t() || abstractC2638jEA0F.A0o()) {
            if (abstractC2638jEA0F.A0o()) {
                abstractC2638jEA0F.A0d();
            } else {
                abstractC2638jEA0F.A0Z();
            }
            this.A01.A0H(view, i, view.getLayoutParams(), false);
        } else {
            ViewParent parent = view.getParent();
            C7O c7o = this.A03;
            String[] strArr = A0J;
            if (strArr[5].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            A0J[7] = "5ABI9jSeQ";
            if (parent == c7o) {
                int iA07 = this.A01.A07(view);
                if (i == -1) {
                    i = this.A01.A05();
                }
                if (iA07 == -1) {
                    throw new IllegalStateException(A14(0, 85, 114) + this.A03.indexOfChild(view) + this.A03.A1L());
                }
                if (iA07 != i) {
                    this.A03.A06.A18(iA07, i);
                }
            } else {
                this.A01.A0I(view, i, false);
                c2621ix.A01 = true;
                if (this.A02 != null && this.A02.A0O()) {
                    this.A02.A0K(view);
                }
            }
        }
        if (c2621ix.A02) {
            abstractC2638jEA0F.A0H.invalidate();
            c2621ix.A02 = false;
        }
    }

    private final void A1E(View view, Rect rect) {
        C7O.A0o(view, rect);
    }

    private void A1G(C2628j4 c2628j4, int i, View view) {
        AbstractC2638jE abstractC2638jEA0F = C7O.A0F(view);
        if (abstractC2638jEA0F.A0s()) {
            return;
        }
        if (abstractC2638jEA0F.A0m() && !abstractC2638jEA0F.A0n() && !this.A03.A04.A0O()) {
            A17(i);
            c2628j4.A0c(abstractC2638jEA0F);
        } else {
            A16(i);
            c2628j4.A0X(view);
            this.A03.A0t.A0C(abstractC2638jEA0F);
        }
    }

    private final void A1H(C2628j4 c2628j4, C2635jB c2635jB, AccessibilityEvent accessibilityEvent) {
        if (this.A03 == null || accessibilityEvent == null) {
            return;
        }
        C7O c7o = this.A03;
        if (A0J[6].length() == 1) {
            throw new RuntimeException();
        }
        String[] strArr = A0J;
        strArr[2] = "A1LbQwkKC8kdEmdjm";
        strArr[4] = "mpAFCzQjd";
        boolean z = true;
        if (!c7o.canScrollVertically(1) && !this.A03.canScrollVertically(-1) && !this.A03.canScrollHorizontally(-1) && !this.A03.canScrollHorizontally(1)) {
            z = false;
        }
        accessibilityEvent.setScrollable(z);
        if (A0J[7].length() != 8) {
            A0J[0] = "LKoEdNrfwYhRE769hHSL4lsoF7TmWWKx";
            if (this.A03.A04 == null) {
                return;
            }
        } else if (this.A03.A04 == null) {
            return;
        }
        accessibilityEvent.setItemCount(this.A03.A04.A0B());
    }

    private final void A1I(C2628j4 c2628j4, C2635jB c2635jB, C2564i0 c2564i0) {
        if (this.A03.canScrollVertically(-1) || this.A03.canScrollHorizontally(-1)) {
            c2564i0.A0N(8192);
            c2564i0.A0R(true);
        }
        if (this.A03.canScrollVertically(1) || this.A03.canScrollHorizontally(1)) {
            c2564i0.A0N(4096);
            String[] strArr = A0J;
            if (strArr[5].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0J;
            strArr2[2] = "WKK7ZU1nOyoZ4isR3";
            strArr2[4] = "S1xUaVTVF";
            c2564i0.A0R(true);
        }
        c2564i0.A0P(C2561hx.A00(A1q(c2628j4, c2635jB), A1p(c2628j4, c2635jB), A1M(c2628j4, c2635jB), A13(c2628j4, c2635jB)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A1J(AbstractC2633j9 abstractC2633j9) {
        if (this.A02 == abstractC2633j9) {
            this.A02 = null;
        }
    }

    private final boolean A1K() {
        return this.A02 != null && this.A02.A0O();
    }

    public static boolean A1L(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (i3 > 0 && i != i3) {
            return false;
        }
        switch (mode) {
            case Integer.MIN_VALUE:
                return size >= i;
            case 0:
                return true;
            case 1073741824:
                return size == i;
            default:
                return false;
        }
    }

    private final boolean A1M(C2628j4 c2628j4, C2635jB c2635jB) {
        return false;
    }

    private final boolean A1N(C2628j4 c2628j4, C2635jB c2635jB, int i, Bundle bundle) {
        if (this.A03 == null) {
            return false;
        }
        int iA1U = 0;
        int iA1e = 0;
        switch (i) {
            case 4096:
                iA1U = this.A03.canScrollVertically(1) ? (A1U() - A1d()) - A1a() : 0;
                if (this.A03.canScrollHorizontally(1)) {
                    iA1e = (A1e() - A1b()) - A1c();
                }
                break;
            case 8192:
                iA1U = this.A03.canScrollVertically(-1) ? -((A1U() - A1d()) - A1a()) : 0;
                if (this.A03.canScrollHorizontally(-1)) {
                    iA1e = -((A1e() - A1b()) - A1c());
                }
                break;
        }
        if (iA1U == 0 && iA1e == 0) {
            return false;
        }
        C7O c7o = this.A03;
        if (A0J[7].length() == 8) {
            throw new RuntimeException();
        }
        A0J[7] = "6TTpYbQ6a4";
        c7o.scrollBy(iA1e, iA1U);
        return true;
    }

    private final boolean A1O(C2628j4 c2628j4, C2635jB c2635jB, View view, int i, Bundle bundle) {
        return false;
    }

    private boolean A1P(C7O c7o, int i, int i2) {
        View focusedChild = c7o.getFocusedChild();
        if (focusedChild == null) {
            return false;
        }
        int iA1b = A1b();
        int iA1d = A1d();
        int iA1e = A1e() - A1c();
        int iA1U = A1U() - A1a();
        Rect rect = this.A03.A0p;
        A1E(focusedChild, rect);
        if (rect.left - i >= iA1e || rect.right - i <= iA1b || rect.top - i2 >= iA1U || rect.bottom - i2 <= iA1d) {
            return false;
        }
        if (A0J[3].length() == 28) {
            throw new RuntimeException();
        }
        A0J[0] = "D1nd79aIos3YYe4Hq7EzCaafqnQh2NEe";
        return true;
    }

    @Deprecated
    private final boolean A1Q(C7O c7o, View view, View view2) {
        return A1K() || c7o.A1z();
    }

    private int[] A1R(View view, Rect rect) {
        int[] iArr = new int[2];
        int iA1b = A1b();
        int iA1d = A1d();
        int iA1e = A1e() - A1c();
        int iA1U = A1U() - A1a();
        int left = (view.getLeft() + rect.left) - view.getScrollX();
        int top = (view.getTop() + rect.top) - view.getScrollY();
        int iWidth = rect.width() + left;
        int iHeight = rect.height() + top;
        int iMin = Math.min(0, left - iA1b);
        int iMin2 = Math.min(0, top - iA1d);
        int iMax = Math.max(0, iWidth - iA1e);
        int iMax2 = Math.max(0, iHeight - iA1U);
        if (A1X() != 1) {
            iMax = iMin != 0 ? iMin : Math.min(left - iA1b, iMax);
        } else if (iMax == 0) {
            iMax = Math.max(iMin, iWidth - iA1e);
        }
        if (iMin2 == 0) {
            iMin2 = Math.min(top - iA1d, iMax2);
        }
        iArr[0] = iMax;
        iArr[1] = iMin2;
        if (A0J[0].charAt(31) == 'p') {
            throw new RuntimeException();
        }
        A0J[0] = "97vXAXgJ0WxvI5IvBZpOR2Ky1DZNuVnu";
        return iArr;
    }

    public final int A1S() {
        return -1;
    }

    public final int A1T() {
        if (this.A01 != null) {
            return this.A01.A05();
        }
        return 0;
    }

    public final int A1U() {
        return this.A0A;
    }

    public final int A1V() {
        return this.A0B;
    }

    public final int A1W() {
        AbstractC2608ik adapter = this.A03 != null ? this.A03.getAdapter() : null;
        if (adapter != null) {
            return adapter.A0B();
        }
        return 0;
    }

    public final int A1X() {
        return AbstractC2540hb.A01(this.A03);
    }

    public final int A1Y() {
        return AbstractC2540hb.A02(this.A03);
    }

    public final int A1Z() {
        return AbstractC2540hb.A03(this.A03);
    }

    public final int A1a() {
        if (this.A03 != null) {
            return this.A03.getPaddingBottom();
        }
        return 0;
    }

    public final int A1b() {
        if (this.A03 != null) {
            return this.A03.getPaddingLeft();
        }
        return 0;
    }

    public final int A1c() {
        if (this.A03 != null) {
            return this.A03.getPaddingRight();
        }
        return 0;
    }

    public final int A1d() {
        if (this.A03 != null) {
            return this.A03.getPaddingTop();
        }
        return 0;
    }

    public final int A1e() {
        return this.A0C;
    }

    public final int A1f() {
        return this.A0D;
    }

    public abstract int A1g(int i, C2628j4 c2628j4, C2635jB c2635jB);

    public abstract int A1h(int i, C2628j4 c2628j4, C2635jB c2635jB);

    public final int A1i(View view) {
        return view.getBottom() + A0z(view);
    }

    public final int A1j(View view) {
        return view.getLeft() - A10(view);
    }

    public final int A1k(View view) {
        Rect rect = ((C2621ix) view.getLayoutParams()).A03;
        return view.getMeasuredHeight() + rect.top + rect.bottom;
    }

    public final int A1l(View view) {
        Rect rect = ((C2621ix) view.getLayoutParams()).A03;
        return view.getMeasuredWidth() + rect.left + rect.right;
    }

    public final int A1m(View view) {
        return view.getRight() + A11(view);
    }

    public final int A1n(View view) {
        return view.getTop() - A12(view);
    }

    public final int A1o(View view) {
        return ((C2621ix) view.getLayoutParams()).A00();
    }

    public int A1p(C2628j4 c2628j4, C2635jB c2635jB) {
        if (this.A03 == null || this.A03.A04 == null || !A2v()) {
            return 1;
        }
        return this.A03.A04.A0B();
    }

    public int A1q(C2628j4 c2628j4, C2635jB c2635jB) {
        if (this.A03 == null || this.A03.A04 == null || !A2w()) {
            return 1;
        }
        return this.A03.A04.A0B();
    }

    public abstract int A1r(C2635jB c2635jB);

    public abstract int A1s(C2635jB c2635jB);

    public abstract int A1t(C2635jB c2635jB);

    public abstract int A1u(C2635jB c2635jB);

    public abstract int A1v(C2635jB c2635jB);

    public abstract int A1w(C2635jB c2635jB);

    public abstract Parcelable A1x();

    /* JADX WARN: Code duplicated, block: B:19:0x005d A[RETURN] */
    public final View A1y() {
        if (this.A03 == null) {
            return null;
        }
        View focusedChild = this.A03.getFocusedChild();
        String[] strArr = A0J;
        if (strArr[5].length() != strArr[1].length()) {
            throw new RuntimeException();
        }
        A0J[3] = "iiKud1wfkCloFGZ1U";
        if (focusedChild != null) {
            C2584iK c2584iK = this.A01;
            String[] strArr2 = A0J;
            if (strArr2[5].length() != strArr2[1].length()) {
                A0J[0] = "7ET4ZuKdeEmot2qkcvXky1gJdqYIXUUX";
                if (!c2584iK.A0K(focusedChild)) {
                    return focusedChild;
                }
            } else {
                A0J[7] = "xPYIlKgRfeB9qWlMIQGlIgoODb";
                if (!c2584iK.A0K(focusedChild)) {
                    return focusedChild;
                }
            }
        }
        return null;
    }

    public View A1z(int i) {
        int iA1T = A1T();
        for (int i2 = 0; i2 < iA1T; i2++) {
            View viewA20 = A20(i2);
            AbstractC2638jE abstractC2638jEA0F = C7O.A0F(viewA20);
            if (abstractC2638jEA0F != null && abstractC2638jEA0F.A0T() == i && !abstractC2638jEA0F.A0s() && (this.A03.A0s.A07() || !abstractC2638jEA0F.A0n())) {
                return viewA20;
            }
        }
        return null;
    }

    public final View A20(int i) {
        if (this.A01 != null) {
            return this.A01.A09(i);
        }
        return null;
    }

    public final View A21(View view) {
        View viewA1G;
        if (this.A03 == null || (viewA1G = this.A03.A1G(view)) == null || this.A01.A0K(viewA1G)) {
            return null;
        }
        return viewA1G;
    }

    public final View A22(View view, int i) {
        return null;
    }

    public abstract View A23(View view, int i, C2628j4 c2628j4, C2635jB c2635jB);

    public abstract C2621ix A24();

    public C2621ix A25(Context context, AttributeSet attributeSet) {
        return new C2621ix(context, attributeSet);
    }

    public C2621ix A26(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof C2621ix) {
            return new C2621ix((C2621ix) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new C2621ix((ViewGroup.MarginLayoutParams) layoutParams) : new C2621ix(layoutParams);
    }

    public final void A27() {
        if (this.A02 != null) {
            this.A02.A0F();
        }
    }

    public final void A28() {
        if (this.A03 != null) {
            this.A03.requestLayout();
        }
    }

    public final void A29(int i) {
        if (this.A03 != null) {
            this.A03.A1X(i);
        }
    }

    public final void A2A(int i) {
        if (this.A03 != null) {
            this.A03.A1Y(i);
        }
    }

    public abstract void A2B(int i);

    public final void A2C(int i, int i2) {
        this.A0C = View.MeasureSpec.getSize(i);
        this.A0D = View.MeasureSpec.getMode(i);
        if (this.A0D == 0 && !C7O.A1B) {
            this.A0C = 0;
        }
        this.A0A = View.MeasureSpec.getSize(i2);
        this.A0B = View.MeasureSpec.getMode(i2);
        if (this.A0B != 0 || C7O.A1B) {
            return;
        }
        this.A0A = 0;
    }

    public final void A2D(int i, int i2) {
        int iA1T = A1T();
        if (iA1T == 0) {
            this.A03.A1e(i, i2);
            return;
        }
        int i3 = Integer.MAX_VALUE;
        int i4 = Integer.MAX_VALUE;
        int i5 = Integer.MIN_VALUE;
        int i6 = Integer.MIN_VALUE;
        for (int i7 = 0; i7 < iA1T; i7++) {
            View viewA20 = A20(i7);
            Rect rect = this.A03.A0p;
            A1E(viewA20, rect);
            if (rect.left < i3) {
                i3 = rect.left;
            }
            if (rect.right > i5) {
                i5 = rect.right;
            }
            if (rect.top < i4) {
                i4 = rect.top;
            }
            if (rect.bottom > i6) {
                i6 = rect.bottom;
            }
        }
        this.A03.A0p.set(i3, i4, i5, i6);
        String[] strArr = A0J;
        if (strArr[2].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0J;
        strArr2[2] = "hT857kPIBtMq0qM94";
        strArr2[4] = "qfhhOTku3";
        A2I(this.A03.A0p, i, i2);
    }

    public final void A2E(int i, int i2) {
        this.A03.setMeasuredDimension(i, i2);
    }

    public abstract void A2F(int i, int i2, C2635jB c2635jB, InterfaceC2618iu interfaceC2618iu);

    public abstract void A2G(int i, InterfaceC2618iu interfaceC2618iu);

    public final void A2H(int i, C2628j4 c2628j4) {
        View viewA20 = A20(i);
        A17(i);
        c2628j4.A0Y(viewA20);
    }

    public void A2I(Rect rect, int i, int i2) {
        A2E(A0x(i, rect.width() + A1b() + A1c(), A1Z()), A0x(i2, rect.height() + A1d() + A1a(), A1Y()));
    }

    public abstract void A2J(Parcelable parcelable);

    public final void A2K(View view) {
        A2M(view, -1);
    }

    public final void A2L(View view) {
        A2N(view, -1);
    }

    public final void A2M(View view, int i) {
        A1D(view, i, true);
    }

    public final void A2N(View view, int i) {
        A1D(view, i, false);
    }

    public final void A2O(View view, int i, int i2) {
        C2621ix c2621ix = (C2621ix) view.getLayoutParams();
        Rect rectA1F = this.A03.A1F(view);
        int i3 = i + rectA1F.left + rectA1F.right;
        int i4 = i2 + rectA1F.top + rectA1F.bottom;
        int iA0y = A0y(A1e(), A1f(), A1b() + A1c() + c2621ix.leftMargin + c2621ix.rightMargin + i3, c2621ix.width, A2v());
        int iA0y2 = A0y(A1U(), A1V(), A1d() + A1a() + c2621ix.topMargin + c2621ix.bottomMargin + i4, c2621ix.height, A2w());
        if (A2z(view, iA0y, iA0y2, c2621ix)) {
            view.measure(iA0y, iA0y2);
        }
    }

    public final void A2P(View view, int i, int i2, int i3, int i4) {
        C2621ix c2621ix = (C2621ix) view.getLayoutParams();
        Rect rect = c2621ix.A03;
        view.layout(rect.left + i + c2621ix.leftMargin, rect.top + i2 + c2621ix.topMargin, (i3 - rect.right) - c2621ix.rightMargin, (i4 - rect.bottom) - c2621ix.bottomMargin);
    }

    public final void A2Q(View view, Rect rect) {
        if (this.A03 == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(this.A03.A1F(view));
        }
    }

    public final void A2R(View view, C2564i0 c2564i0) {
        AbstractC2638jE abstractC2638jEA0F = C7O.A0F(view);
        if (abstractC2638jEA0F == null || abstractC2638jEA0F.A0n() || this.A01.A0K(abstractC2638jEA0F.A0H)) {
            return;
        }
        A2b(this.A03.A0r, this.A03.A0s, view, c2564i0);
    }

    public final void A2S(View view, C2628j4 c2628j4) {
        A1A(view);
        c2628j4.A0Y(view);
    }

    public final void A2T(View view, boolean z, Rect rect) {
        Matrix matrix;
        if (z) {
            Rect rect2 = ((C2621ix) view.getLayoutParams()).A03;
            rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        } else {
            rect.set(0, 0, view.getWidth(), view.getHeight());
        }
        if (this.A03 != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.A03.A0q;
            rectF.set(rect);
            matrix.mapRect(rectF);
            int iFloor = (int) Math.floor(rectF.left);
            int iFloor2 = (int) Math.floor(rectF.top);
            float f = rectF.right;
            String[] strArr = A0J;
            if (strArr[5].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            A0J[7] = "WbBFuKAltYM";
            rect.set(iFloor, iFloor2, (int) Math.ceil(f), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    public void A2U(AccessibilityEvent accessibilityEvent) {
        A1H(this.A03.A0r, this.A03.A0s, accessibilityEvent);
    }

    public final void A2V(C2564i0 c2564i0) {
        A1I(this.A03.A0r, this.A03.A0s, c2564i0);
    }

    public final void A2W(C2628j4 c2628j4) {
        int iA0E = c2628j4.A0E();
        for (int i = iA0E - 1; i >= 0; i--) {
            View viewA0G = c2628j4.A0G(i);
            AbstractC2638jE abstractC2638jEA0F = C7O.A0F(viewA0G);
            if (!abstractC2638jEA0F.A0s()) {
                abstractC2638jEA0F.A0k(false);
                if (abstractC2638jEA0F.A0p()) {
                    this.A03.removeDetachedView(viewA0G, false);
                }
                if (this.A03.A05 != null) {
                    this.A03.A05.A0L(abstractC2638jEA0F);
                }
                abstractC2638jEA0F.A0k(true);
                c2628j4.A0W(viewA0G);
            }
        }
        c2628j4.A0M();
        if (iA0E > 0) {
            this.A03.invalidate();
        }
    }

    public final void A2X(C2628j4 c2628j4) {
        for (int iA1T = A1T() - 1; iA1T >= 0; iA1T--) {
            A1G(c2628j4, iA1T, A20(iA1T));
        }
    }

    public final void A2Y(C2628j4 c2628j4) {
        for (int iA1T = A1T() - 1; iA1T >= 0; iA1T--) {
            if (!C7O.A0F(A20(iA1T)).A0s()) {
                A2H(iA1T, c2628j4);
            }
        }
    }

    public abstract void A2Z(C2628j4 c2628j4, C2635jB c2635jB);

    public void A2a(C2628j4 c2628j4, C2635jB c2635jB, int i, int i2) {
        this.A03.A1e(i, i2);
    }

    public void A2b(C2628j4 c2628j4, C2635jB c2635jB, View view, C2564i0 c2564i0) {
        int iA1o = A2w() ? A1o(view) : 0;
        int iA1o2 = A2v() ? A1o(view) : 0;
        String[] strArr = A0J;
        if (strArr[5].length() != strArr[1].length()) {
            throw new RuntimeException();
        }
        A0J[3] = "h476R5jl";
        c2564i0.A0Q(C2562hy.A00(iA1o, 1, iA1o2, 1, false, false));
    }

    public final void A2c(AbstractC2633j9 abstractC2633j9) {
        if (this.A02 != null && abstractC2633j9 != this.A02 && this.A02.A0O()) {
            this.A02.A0F();
        }
        this.A02 = abstractC2633j9;
        this.A02.A0M(this.A03, this);
    }

    public void A2d(C2635jB c2635jB) {
    }

    public void A2e(C7O c7o) {
    }

    public final void A2f(C7O c7o) {
        this.A07 = true;
    }

    public final void A2g(C7O c7o) {
        A2C(View.MeasureSpec.makeMeasureSpec(c7o.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(c7o.getHeight(), 1073741824));
    }

    public final void A2h(C7O c7o) {
        if (c7o == null) {
            this.A03 = null;
            this.A01 = null;
            this.A0C = 0;
            this.A0A = 0;
        } else {
            this.A03 = c7o;
            this.A01 = c7o.A01;
            this.A0C = c7o.getWidth();
            this.A0A = c7o.getHeight();
        }
        this.A0D = 1073741824;
        this.A0B = 1073741824;
    }

    public void A2i(C7O c7o, int i, int i2) {
    }

    public void A2j(C7O c7o, int i, int i2) {
    }

    public void A2k(C7O c7o, int i, int i2, int i3) {
    }

    public void A2l(C7O c7o, int i, int i2, Object obj) {
    }

    public void A2m(C7O c7o, C2628j4 c2628j4) {
    }

    public final void A2n(C7O c7o, C2628j4 c2628j4) {
        this.A07 = false;
        A2m(c7o, c2628j4);
    }

    public abstract void A2o(C7O c7o, C2635jB c2635jB, int i);

    public void A2p(String str) {
        if (this.A03 != null) {
            this.A03.A1u(str);
        }
    }

    public final void A2q(boolean z) {
        this.A06 = z;
    }

    public final boolean A2r() {
        int iA1T = A1T();
        for (int i = 0; i < iA1T; i++) {
            ViewGroup.LayoutParams layoutParams = A20(i).getLayoutParams();
            if (layoutParams.width < 0 && layoutParams.height < 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean A2s() {
        return this.A03 != null && this.A03.A0B;
    }

    public final boolean A2t() {
        return this.A0E;
    }

    public abstract boolean A2u();

    public abstract boolean A2v();

    public abstract boolean A2w();

    public abstract boolean A2x();

    public final boolean A2y(int i, Bundle bundle) {
        return A1N(this.A03.A0r, this.A03.A0s, i, bundle);
    }

    public final boolean A2z(View view, int i, int i2, C2621ix c2621ix) {
        return (!view.isLayoutRequested() && this.A0F && A1L(view.getWidth(), i, c2621ix.width) && A1L(view.getHeight(), i2, c2621ix.height)) ? false : true;
    }

    public final boolean A30(View view, int i, int i2, C2621ix c2621ix) {
        if (this.A0F) {
            boolean zA1L = A1L(view.getMeasuredWidth(), i, c2621ix.width);
            if (A0J[3].length() == 28) {
                throw new RuntimeException();
            }
            A0J[3] = "C2e";
            if (zA1L && A1L(view.getMeasuredHeight(), i2, c2621ix.height)) {
                return false;
            }
        }
        return true;
    }

    public final boolean A31(View view, int i, Bundle bundle) {
        return A1O(this.A03.A0r, this.A03.A0s, view, i, bundle);
    }

    public final boolean A32(View view, boolean z, boolean z2) {
        boolean z3 = this.A04.A01(view, 24579) && this.A05.A01(view, 24579);
        if (z) {
            return z3;
        }
        return !z3;
    }

    public boolean A33(C2621ix c2621ix) {
        return c2621ix != null;
    }

    public final boolean A34(C7O c7o, View view, Rect rect, boolean z) {
        return A35(c7o, view, rect, z, false);
    }

    public final boolean A35(C7O c7o, View view, Rect rect, boolean z, boolean z2) {
        int[] iArrA1R = A1R(view, rect);
        int i = iArrA1R[0];
        int i2 = iArrA1R[1];
        if ((z2 && !A1P(c7o, i, i2)) || (i == 0 && i2 == 0)) {
            return false;
        }
        if (z) {
            c7o.scrollBy(i, i2);
        } else {
            c7o.A1i(i, i2);
        }
        return true;
    }

    public final boolean A36(C7O c7o, C2635jB c2635jB, View view, View view2) {
        return A1Q(c7o, view, view2);
    }

    public final boolean A37(C7O c7o, ArrayList<View> arrayList, int i, int i2) {
        return false;
    }
}
