package com.facebook.ads.redexgen.X;

import android.widget.LinearLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uR, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3323uR extends LinearLayout {
    public static final int A06 = (int) (AbstractC3045px.A02 * 4.0f);
    public int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final C1618Hi A04;
    public final C3324uS[] A05;

    public C3323uR(C1618Hi c1618Hi, int i, int i2, int i3, int i4) {
        super(c1618Hi);
        this.A00 = A06;
        this.A04 = c1618Hi;
        setOrientation(0);
        this.A03 = i;
        this.A01 = i3;
        this.A02 = i4;
        this.A05 = new C3324uS[i2];
        for (int i5 = 0; i5 < i2; i5++) {
            this.A05[i5] = A00();
            addView(this.A05[i5]);
        }
        A01();
    }

    private C3324uS A00() {
        C3324uS c3324uS = new C3324uS(this.A04, this.A01, this.A02);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.A03, this.A03);
        layoutParams.gravity = 16;
        c3324uS.setLayoutParams(layoutParams);
        return c3324uS;
    }

    private void A01() {
        int i = 0;
        while (i < this.A05.length) {
            ((LinearLayout.LayoutParams) this.A05[i].getLayoutParams()).leftMargin = i == 0 ? 0 : this.A00;
            i++;
        }
        requestLayout();
    }

    private void A02(float f) {
        for (int i = 0; i < this.A05.length; i++) {
            float fMin = Math.min(1.0f, f - i);
            if (fMin < 0.0f) {
                fMin = 0.0f;
            }
            this.A05[i].setFillRatio(fMin);
        }
    }

    public void setItemSpacing(int i) {
        this.A00 = i;
        A01();
    }

    public void setRating(float f) {
        A02(f);
    }
}
