package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7P, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C7P extends IY {
    public static String[] A02 = {"C44Ajl3kvJruV1G0pt7gVRuztfjSJyFq", "J5x5lFquh7whloqA7FngbvBzLsCb", "NWBvU5bW0Pue", "3", "BTAVkHunqM91yRRN2KcoYuZCergWfboL", "2NY5ANPTvwBPWrnTgdotgLNYCmp8", "bg7eF9CjngMlwdFplTojabi", "lLeEucKPPYu6Z0yxrpg2o1MG4v3W39r2"};
    public AbstractC2604ig A00;
    public AbstractC2604ig A01;

    private int A00(AbstractC2620iw abstractC2620iw, View view, AbstractC2604ig abstractC2604ig) {
        return (abstractC2604ig.A0G(view) + (abstractC2604ig.A0E(view) / 2)) - (abstractC2620iw.A2s() ? abstractC2604ig.A0B() + (abstractC2604ig.A0C() / 2) : abstractC2604ig.A06() / 2);
    }

    private View A01(AbstractC2620iw abstractC2620iw, AbstractC2604ig abstractC2604ig) {
        int iA06;
        int iA1T = abstractC2620iw.A1T();
        if (iA1T == 0) {
            return null;
        }
        View view = null;
        if (abstractC2620iw.A2s()) {
            int iA0B = abstractC2604ig.A0B();
            int iA0C = abstractC2604ig.A0C();
            if (A02[3].length() != 1) {
                throw new RuntimeException();
            }
            A02[4] = "QSrTWOl4jyYASaYHeqwJw7nAVlZS9nVf";
            iA06 = iA0B + (iA0C / 2);
        } else {
            iA06 = abstractC2604ig.A06() / 2;
        }
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < iA1T; i2++) {
            View viewA20 = abstractC2620iw.A20(i2);
            int iAbs = Math.abs((abstractC2604ig.A0G(viewA20) + (abstractC2604ig.A0E(viewA20) / 2)) - iA06);
            if (iAbs < i) {
                i = iAbs;
                view = viewA20;
            }
        }
        return view;
    }

    private View A02(AbstractC2620iw abstractC2620iw, AbstractC2604ig abstractC2604ig) {
        int iA1T = abstractC2620iw.A1T();
        if (iA1T == 0) {
            return null;
        }
        View view = null;
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < iA1T; i2++) {
            View viewA20 = abstractC2620iw.A20(i2);
            int iA0G = abstractC2604ig.A0G(viewA20);
            if (iA0G < i) {
                i = iA0G;
                if (A02[3].length() != 1) {
                    throw new RuntimeException();
                }
                A02[3] = "0";
                view = viewA20;
            }
        }
        return view;
    }

    private AbstractC2604ig A03(AbstractC2620iw abstractC2620iw) {
        if (this.A00 == null || this.A00.A02 != abstractC2620iw) {
            this.A00 = AbstractC2604ig.A00(abstractC2620iw);
        }
        return this.A00;
    }

    private AbstractC2604ig A04(AbstractC2620iw abstractC2620iw) {
        if (this.A01 == null || this.A01.A02 != abstractC2620iw) {
            this.A01 = AbstractC2604ig.A01(abstractC2620iw);
        }
        return this.A01;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x007a  */
    /* JADX WARN: Code duplicated, block: B:34:0x0087  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.facebook.ads.redexgen.X.IY
    public final int A0C(AbstractC2620iw abstractC2620iw, int i, int i2) {
        int iA1o;
        boolean z;
        int iA1W = abstractC2620iw.A1W();
        if (iA1W == 0) {
            return -1;
        }
        View viewA02 = null;
        if (abstractC2620iw.A2w()) {
            viewA02 = A02(abstractC2620iw, A04(abstractC2620iw));
        } else if (abstractC2620iw.A2v()) {
            AbstractC2604ig abstractC2604igA03 = A03(abstractC2620iw);
            if (A02[3].length() != 1) {
                throw new RuntimeException();
            }
            A02[4] = "gb7KateBwDTMhlVKT6fWGE4qrSBelOuo";
            viewA02 = A02(abstractC2620iw, abstractC2604igA03);
        }
        if (viewA02 == null || (iA1o = abstractC2620iw.A1o(viewA02)) == -1) {
            return -1;
        }
        if (abstractC2620iw.A2v()) {
            z = i > 0;
        } else {
            z = i2 > 0;
        }
        boolean z2 = false;
        if (abstractC2620iw instanceof InterfaceC2632j8) {
            PointF pointFA5f = ((InterfaceC2632j8) abstractC2620iw).A5f(iA1W - 1);
            if (A02[3].length() != 1) {
                String[] strArr = A02;
                strArr[6] = "yuw4mNpzW34AqVSRehlxNeo";
                strArr[2] = "wkUUhZpWZ02e";
                if (pointFA5f != null) {
                    z2 = pointFA5f.x >= 0.0f || pointFA5f.y < 0.0f;
                }
            } else {
                A02[0] = "mSLQWLSJnMsLfeZB8hd0gvJZQvTgwPgU";
                if (pointFA5f != null) {
                    z2 = pointFA5f.x >= 0.0f || pointFA5f.y < 0.0f;
                }
            }
        }
        if (z2) {
            return z ? iA1o - 1 : iA1o;
        }
        return z ? iA1o + 1 : iA1o;
    }

    @Override // com.facebook.ads.redexgen.X.IY
    public final View A0D(AbstractC2620iw abstractC2620iw) {
        if (abstractC2620iw.A2w()) {
            return A01(abstractC2620iw, A04(abstractC2620iw));
        }
        if (abstractC2620iw.A2v()) {
            return A01(abstractC2620iw, A03(abstractC2620iw));
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.IY
    public final J5 A0E(AbstractC2620iw abstractC2620iw) {
        if (!(abstractC2620iw instanceof InterfaceC2632j8)) {
            return null;
        }
        final Context context = super.A00.getContext();
        return new J5(context) { // from class: com.facebook.ads.redexgen.X.7Q
            @Override // com.facebook.ads.redexgen.X.J5, com.facebook.ads.redexgen.X.AbstractC2633j9
            public final void A0L(View view, C2635jB c2635jB, C2631j7 c2631j7) {
                int[] iArrA0H = this.A00.A0H(((IY) this.A00).A00.getLayoutManager(), view);
                if (iArrA0H != null) {
                    int i = iArrA0H[0];
                    int i2 = iArrA0H[1];
                    int iA0S = A0S(Math.max(Math.abs(i), Math.abs(i2)));
                    if (iA0S > 0) {
                        c2631j7.A04(i, i2, iA0S, ((J5) this).A04);
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.J5
            public final float A0P(DisplayMetrics displayMetrics) {
                return 100.0f / displayMetrics.densityDpi;
            }

            @Override // com.facebook.ads.redexgen.X.J5
            public final int A0R(int i) {
                return Math.min(100, super.A0R(i));
            }
        };
    }

    @Override // com.facebook.ads.redexgen.X.IY
    public final int[] A0H(AbstractC2620iw abstractC2620iw, View view) {
        int[] iArr = new int[2];
        if (abstractC2620iw.A2v()) {
            iArr[0] = A00(abstractC2620iw, view, A03(abstractC2620iw));
        } else {
            iArr[0] = 0;
        }
        boolean zA2w = abstractC2620iw.A2w();
        String[] strArr = A02;
        if (strArr[1].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        A02[0] = "E62MX6H1I4NpqQbgkpQnwXfK7jhgOp7C";
        if (zA2w) {
            iArr[1] = A00(abstractC2620iw, view, A04(abstractC2620iw));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }
}
