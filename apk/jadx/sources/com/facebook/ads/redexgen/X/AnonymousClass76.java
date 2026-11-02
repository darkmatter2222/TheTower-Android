package com.facebook.ads.redexgen.X;

import android.view.View;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.76, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class AnonymousClass76 extends J7 {
    public static String[] A08 = {"bHvO3zM", "7z8VpEP", "iw2Y0c", "LME8njBPiXs011hhslbtp", "9K0lNzbR5X2b0vS5", "Pt0EnZUFnGQLsNks8pQcEgn0FivkNzUh", "t6anbflpJj2CGicCnIMdWTRCydsD", "D9TL9YTSSd0lWzGeUvgWfvwaUF0YdAOx"};
    public float A00;
    public int A01;
    public int A02;
    public AnonymousClass77 A03;
    public int[] A04;
    public final C1618Hi A05;
    public final C3028pg A06;
    public final C3009pN A07;

    public AnonymousClass76(C1618Hi c1618Hi, C3009pN c3009pN, C3028pg c3028pg) {
        super(c1618Hi);
        this.A02 = 0;
        this.A00 = 50.0f;
        this.A05 = c1618Hi;
        this.A07 = c3009pN;
        this.A06 = c3028pg;
        this.A01 = -1;
        this.A03 = new AnonymousClass77(this, this.A05);
    }

    @Override // com.facebook.ads.redexgen.X.J7, com.facebook.ads.redexgen.X.AbstractC2620iw
    public final void A2B(int i) {
        A3G(i, this.A02);
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00fb  */
    @Override // com.facebook.ads.redexgen.X.AbstractC2620iw
    public final void A2a(C2628j4 c2628j4, C2635jB c2635jB, int i, int i2) {
        int[] iArrA02;
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if ((mode == 1073741824 && A3B() == 1) || (mode2 == 1073741824 && A3B() == 0)) {
            super.A2a(c2628j4, c2635jB, i, i2);
            return;
        }
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (this.A06.A01(this.A01)) {
            iArrA02 = this.A06.A02(this.A01);
        } else {
            iArrA02 = new int[]{0, 0};
            if (c2635jB.A03() >= 1) {
                int iA1T = A1T() > 0 ? 1 : A1T();
                for (int i3 = 0; i3 < iA1T; i3++) {
                    View viewA1z = A1z(i3);
                    if (A08[5].length() != 32) {
                        throw new RuntimeException();
                    }
                    A08[4] = "FajaHWp";
                    if (viewA1z == null) {
                        break;
                    }
                    this.A04 = this.A07.A00(viewA1z, View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                    if (A3B() == 0) {
                        iArrA02[0] = iArrA02[0] + this.A04[0];
                        if (i3 == 0) {
                            int i4 = this.A04[1];
                            int iA1d = A1d();
                            if (A08[6].length() == 1) {
                                throw new RuntimeException();
                            }
                            A08[6] = "o1L5u";
                            iArrA02[1] = i4 + iA1d + A1a();
                        } else {
                            continue;
                        }
                    } else {
                        int i5 = iArrA02[1];
                        int[] iArr = this.A04;
                        if (A08[6].length() != 1) {
                            A08[5] = "6nCDHSOFLCCkeDdRDThHGlolS6KLs45E";
                            iArrA02[1] = i5 + iArr[1];
                            if (i3 == 0) {
                                iArrA02[0] = this.A04[0] + A1b() + A1c();
                            }
                        } else {
                            A08[3] = "KFvpvLkhCjqU9hzA1pvFB";
                            iArrA02[1] = i5 + iArr[1];
                            if (i3 == 0) {
                                iArrA02[0] = this.A04[0] + A1b() + A1c();
                            }
                        }
                    }
                }
                if (this.A01 != -1) {
                    this.A06.A00(this.A01, iArrA02);
                }
            }
        }
        if (mode == 1073741824) {
            iArrA02[0] = size;
        }
        if (mode2 == 1073741824) {
            iArrA02[1] = size2;
        }
        A2E(iArrA02[0], iArrA02[1]);
    }

    @Override // com.facebook.ads.redexgen.X.J7, com.facebook.ads.redexgen.X.AbstractC2620iw
    public final void A2o(C7O c7o, C2635jB c2635jB, int i) {
        this.A03.A0H(i);
        A2c(this.A03);
    }

    public final void A3L(double d) {
        if (d <= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            d = 1.0d;
        }
        this.A00 = (float) (50.0d / d);
        this.A03 = new AnonymousClass77(this, this.A05);
    }

    public final void A3M(int i) {
        this.A01 = i;
    }

    public final void A3N(int i) {
        this.A02 = i;
    }
}
