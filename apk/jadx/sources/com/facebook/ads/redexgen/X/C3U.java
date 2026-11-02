package com.facebook.ads.redexgen.X;

import android.util.AttributeSet;
import android.view.View;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3U, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3U extends AbstractViewOnTouchListenerC12803q implements InterfaceC2994p5 {
    public static byte[] A07;
    public static String[] A08 = {"T7MK6mm4Fzbg8PTMnM4kcHpb21LLpIaw", "PTQtUxKdjysMmbj8hCZsGKEwd1IRWqqZ", "Zw8mt4VncD", "79VYCrnrWW", "2MnAMBnkkiKtyd2cP7mHhabJycDYuMiE", "jaMauIT7sdi", "OgIH7ZaBRtH9hoDgrnw", "xZmsCngT77DU5lblEiekqTVKPqNdsast"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public InterfaceC3131rL A04;
    public boolean A05;
    public final AnonymousClass76 A06;

    static {
        A03();
    }

    public C3U(C1618Hi c1618Hi) {
        super(c1618Hi);
        this.A03 = -1;
        this.A02 = -1;
        this.A01 = 0;
        this.A00 = 0;
        this.A05 = false;
        this.A06 = new AnonymousClass76(c1618Hi, new C3009pN(), new C3028pg());
        A02();
    }

    public C3U(C1618Hi c1618Hi, AttributeSet attributeSet) {
        super(c1618Hi, attributeSet);
        this.A03 = -1;
        this.A02 = -1;
        this.A01 = 0;
        this.A00 = 0;
        this.A05 = false;
        this.A06 = new AnonymousClass76(c1618Hi, new C3009pN(), new C3028pg());
        A02();
    }

    public C3U(C1618Hi c1618Hi, AttributeSet attributeSet, int i) {
        super(c1618Hi, attributeSet, i);
        this.A03 = -1;
        this.A02 = -1;
        this.A01 = 0;
        this.A00 = 0;
        this.A05 = false;
        this.A06 = new AnonymousClass76(c1618Hi, new C3009pN(), new C3028pg());
        A02();
    }

    private int A00(int i) {
        int i2 = this.A00 * 2;
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - i2;
        int iA0B = getAdapter().A0B();
        int i3 = 0;
        int i4 = Integer.MAX_VALUE;
        while (i4 > i) {
            i3++;
            if (i3 >= iA0B) {
                return i;
            }
            i4 = (int) ((measuredWidth - (i3 * i2)) / (i3 + 0.333f));
        }
        return i4;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 28);
        }
        return new String(bArrCopyOfRange);
    }

    private void A02() {
        this.A06.A3F(0);
        setLayoutManager(this.A06);
        setSaveEnabled(false);
        setSnapDelegate(this);
        AbstractC3086qc.A0L(this);
    }

    public static void A03() {
        A07 = new byte[]{-6, -7, -37, -20, -14, -16, -50, -13, -20, -7, -14, -16, -17};
    }

    private void A04(int i, int i2) {
        if (i == this.A03 && i2 == this.A02) {
            return;
        }
        this.A03 = i;
        if (A08[1].charAt(11) == 'q') {
            throw new RuntimeException();
        }
        A08[6] = "hNBaptvkpj";
        this.A02 = i2;
        if (0 != 0) {
            throw new NullPointerException(A01(0, 13, 111));
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractViewOnTouchListenerC12803q
    public final void A27(int i, boolean z) {
        super.A27(i, z);
        A04(i, 0);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2994p5
    public final int A9R(int i) {
        int iAbs = Math.abs(i);
        if (iAbs <= ((AbstractViewOnTouchListenerC12803q) this).A06) {
            return 0;
        }
        if (this.A01 == 0) {
            return 1;
        }
        return 1 + (iAbs / this.A01);
    }

    public int getChildSpacing() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.C7O, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int iA0D = this.A05 ? (((int) AbstractC3045px.A02) * C2863mv.A0D(getContext())) + paddingTop : Math.round(getMeasuredWidth() / 1.91f);
        switch (View.MeasureSpec.getMode(i2)) {
            case Integer.MIN_VALUE:
                iA0D = Math.min(View.MeasureSpec.getSize(i2), iA0D);
                break;
            case 1073741824:
                iA0D = View.MeasureSpec.getSize(i2);
                break;
        }
        int i3 = iA0D - paddingTop;
        int iMin = this.A05 ? Math.min(C3125rF.A09, i3) : A00(i3);
        setMeasuredDimension(getMeasuredWidth(), iMin + paddingTop);
        if (this.A05) {
            return;
        }
        setChildWidth((this.A00 * 2) + iMin);
    }

    @Override // com.facebook.ads.redexgen.X.C7O
    public void setAdapter(AbstractC2608ik abstractC2608ik) {
        this.A06.A3M(abstractC2608ik == null ? -1 : abstractC2608ik.hashCode());
        super.setAdapter(abstractC2608ik);
    }

    public void setChildSpacing(int i) {
        this.A00 = i;
    }

    public void setChildWidth(int i) {
        this.A01 = i;
        int measuredWidth = getMeasuredWidth();
        this.A06.A3N((((measuredWidth - getPaddingLeft()) - getPaddingRight()) - this.A01) / 2);
        this.A06.A3L(((double) this.A01) / ((double) measuredWidth));
    }

    public void setCurrentPosition(int i) {
        A27(i, false);
    }

    public void setOnPageChangedListener(InterfaceC3131rL interfaceC3131rL) {
        this.A04 = interfaceC3131rL;
    }

    public void setShowTextInCarousel(boolean z) {
        this.A05 = z;
    }
}
