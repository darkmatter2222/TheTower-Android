package com.facebook.ads.redexgen.X;

import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class FC extends AbstractC3184sC {
    public static byte[] A05;
    public static final int A06;
    public static final int A07;
    public static final int A08;
    public final ImageView A00;
    public final LinearLayout A01;
    public final ScrollView A02;
    public final C2479ga A03;
    public final C1618Hi A04;

    static {
        A01();
        A08 = (int) (AbstractC3045px.A02 * 8.0f);
        A07 = (int) (AbstractC3045px.A02 * 10.0f);
        A06 = (int) (AbstractC3045px.A02 * 44.0f);
    }

    public FC(C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, String str) {
        super(c1618Hi, interfaceC2884nG, str);
        this.A04 = c1618Hi;
        this.A03 = AbstractC2480gb.A00(this.A04.A02());
        this.A00 = new ImageView(getContext());
        this.A00.setPadding(A07, A07, A07, A07);
        this.A00.setColorFilter(-10459280);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A06, A06);
        layoutParams.gravity = 3;
        this.A00.setLayoutParams(layoutParams);
        this.A02 = new ScrollView(getContext());
        this.A02.setFillViewport(true);
        AbstractC3086qc.A0O(this.A02, -218103809);
        this.A01 = new LinearLayout(getContext());
        this.A01.setOrientation(1);
        this.A01.setPadding(A08, A08, A08, A08);
        this.A02.addView(this.A01, new FrameLayout.LayoutParams(-1, -2));
        addView(this.A02, new FrameLayout.LayoutParams(-1, -1));
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 55);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{53, Ascii.SYN, Ascii.DC4, Ascii.FS, 105, 70, 69, 89, 79, 10, 107, 78, 10, 120, 79, 90, 69, 88, 94, 67, 68, 77};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3184sC
    public final void A0O() {
        this.A00.setImageBitmap(AbstractC3098qo.A01(EnumC3097qn.CROSS));
        this.A00.setOnClickListener(new ViewOnClickListenerC3203sV(this));
        this.A00.setContentDescription(A00(4, 18, 29));
        C3188sG c3188sG = new C3188sG(this.A04);
        c3188sG.setData(this.A03.A0H(), EnumC3097qn.HIDE_AD);
        c3188sG.setOnClickListener(new ViewOnClickListenerC3204sW(this, c3188sG));
        C3188sG c3188sG2 = new C3188sG(this.A04);
        c3188sG2.setData(this.A03.A0L(), EnumC3097qn.REPORT_AD);
        c3188sG2.setOnClickListener(new ViewOnClickListenerC3205sX(this, c3188sG2));
        C3188sG c3188sG3 = new C3188sG(this.A04);
        c3188sG3.setData(this.A03.A0M(), EnumC3097qn.AD_CHOICES_ICON);
        c3188sG3.setOnClickListener(new ViewOnClickListenerC3206sY(this, c3188sG3));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(A08, A08, A08, A08);
        layoutParams.gravity = 17;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, 0);
        layoutParams2.gravity = 17;
        layoutParams2.weight = 1.0f;
        AbstractC3086qc.A0X(this.A01);
        this.A01.removeAllViews();
        this.A01.addView(this.A00);
        this.A01.addView(linearLayout, layoutParams2);
        linearLayout.addView(c3188sG, layoutParams);
        linearLayout.addView(c3188sG2, layoutParams);
        linearLayout.addView(c3188sG3, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3184sC
    public final void A0P() {
        AbstractC3086qc.A0J(this);
        AbstractC3086qc.A0K(this);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3184sC
    public final void A0Q(C2483ge c2483ge, EnumC2481gc enumC2481gc) {
        String strA0H;
        EnumC3097qn enumC3097qn;
        int i;
        this.A00.setOnClickListener(null);
        if (enumC2481gc == EnumC2481gc.A05) {
            strA0H = this.A03.A0F();
            enumC3097qn = EnumC3097qn.REPORT_AD;
            i = -552389;
        } else {
            strA0H = this.A03.A0H();
            enumC3097qn = EnumC3097qn.HIDE_AD;
            i = -13272859;
        }
        C3182sA c3182sAA0L = new C3181s9(this.A04, this.A0D).A0H(strA0H).A0G(this.A03.A0D()).A0E(c2483ge.A04()).A0J(false).A0D(enumC3097qn).A0C(i).A0K(false).A0I(false).A0L();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.gravity = 17;
        layoutParams.weight = 1.0f;
        AbstractC3086qc.A0X(this.A01);
        this.A02.fullScroll(33);
        this.A01.removeAllViews();
        this.A01.addView(c3182sAA0L, layoutParams);
        super.A0Q(c2483ge, enumC2481gc);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3184sC
    public final void A0R(C2483ge c2483ge, EnumC2481gc enumC2481gc) {
        C3202sU c3202sU = new C3202sU(this.A04, c2483ge, this.A0D, enumC2481gc == EnumC2481gc.A05 ? EnumC3097qn.REPORT_AD : EnumC3097qn.HIDE_AD);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, 0);
        layoutParams.gravity = 17;
        layoutParams.weight = 1.0f;
        this.A00.setImageBitmap(AbstractC3098qo.A01(EnumC3097qn.BACK_ARROW));
        this.A00.setOnClickListener(new ViewOnClickListenerC3207sZ(this));
        this.A00.setContentDescription(A00(0, 4, 64));
        AbstractC3086qc.A0X(this.A01);
        this.A02.fullScroll(33);
        this.A01.removeAllViews();
        this.A01.addView(this.A00);
        this.A01.addView(c3202sU, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3184sC
    public final boolean A0S() {
        return true;
    }
}
