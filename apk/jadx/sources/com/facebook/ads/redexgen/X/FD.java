package com.facebook.ads.redexgen.X;

import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class FD extends AbstractC3184sC {
    public static byte[] A06;
    public static final int A07;
    public static final int A08;
    public static final int A09;
    public final HorizontalScrollView A00;
    public final ImageView A01;
    public final LinearLayout A02;
    public final LinearLayout A03;
    public final C2479ga A04;
    public final C1618Hi A05;

    static {
        A01();
        A09 = (int) (AbstractC3045px.A02 * 4.0f);
        A08 = (int) (AbstractC3045px.A02 * 10.0f);
        A07 = (int) (AbstractC3045px.A02 * 44.0f);
    }

    public FD(C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, String str) {
        super(c1618Hi, interfaceC2884nG, str);
        this.A05 = c1618Hi;
        this.A04 = AbstractC2480gb.A00(c1618Hi.A02());
        this.A01 = new ImageView(getContext());
        this.A01.setPadding(A08, A08, A08, A08);
        this.A01.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.A01.setColorFilter(-10459280);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A07, A07);
        layoutParams.gravity = 16;
        this.A02 = new LinearLayout(getContext());
        this.A02.setOrientation(0);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.gravity = 17;
        this.A00 = new HorizontalScrollView(getContext());
        this.A00.setHorizontalScrollBarEnabled(false);
        this.A00.setLayoutParams(layoutParams2);
        this.A00.addView(this.A02, layoutParams2);
        this.A03 = new LinearLayout(getContext());
        this.A03.setOrientation(0);
        AbstractC3086qc.A0O(this.A03, -218103809);
        this.A03.setMotionEventSplittingEnabled(false);
        this.A03.addView(this.A01, layoutParams);
        this.A03.addView(this.A00, layoutParams2);
        addView(this.A03, new FrameLayout.LayoutParams(-1, -1));
        this.A03.setClickable(true);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 8);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A06 = new byte[]{-57, -26, -24, -16, -92, -51, -48, -44, -58, -127, -94, -59, -127, -77, -58, -47, -48, -45, -43, -54, -49, -56};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3184sC
    public final void A0O() {
        this.A01.setImageBitmap(AbstractC3098qo.A01(EnumC3097qn.CROSS));
        this.A01.setOnClickListener(new ViewOnClickListenerC3193sL(this));
        this.A01.setContentDescription(A00(4, 18, 89));
        C3188sG c3188sG = new C3188sG(this.A05);
        c3188sG.setData(this.A04.A0H(), EnumC3097qn.HIDE_AD);
        c3188sG.setOnClickListener(new ViewOnClickListenerC3194sM(this, c3188sG));
        C3188sG c3188sG2 = new C3188sG(this.A05);
        c3188sG2.setData(this.A04.A0L(), EnumC3097qn.REPORT_AD);
        c3188sG2.setOnClickListener(new ViewOnClickListenerC3195sN(this, c3188sG2));
        C3188sG c3188sG3 = new C3188sG(this.A05);
        c3188sG3.setData(this.A04.A0M(), EnumC3097qn.AD_CHOICES_ICON);
        c3188sG3.setOnClickListener(new ViewOnClickListenerC3196sO(this, c3188sG3));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, A09, A09, A09);
        AbstractC3086qc.A0X(this.A03);
        this.A02.removeAllViews();
        this.A02.addView(c3188sG, layoutParams);
        this.A02.addView(c3188sG2, layoutParams);
        this.A02.addView(c3188sG3, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3184sC
    public final void A0P() {
        AbstractC3086qc.A0J(this);
        AbstractC3086qc.A0K(this);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3184sC
    public final void A0Q(C2483ge c2483ge, EnumC2481gc enumC2481gc) {
        this.A01.setOnClickListener(null);
        TextView textView = new TextView(getContext());
        AbstractC3086qc.A0b(textView, true, 14);
        textView.setText(this.A04.A0D());
        textView.setGravity(17);
        AbstractC3086qc.A0X(this.A03);
        this.A03.removeAllViews();
        this.A03.addView(textView, new LinearLayout.LayoutParams(-1, -1));
        super.A0Q(c2483ge, enumC2481gc);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3184sC
    public final void A0R(C2483ge c2483ge, EnumC2481gc enumC2481gc) {
        AbstractC3086qc.A0X(this.A03);
        this.A01.setImageBitmap(AbstractC3098qo.A01(EnumC3097qn.BACK_ARROW));
        this.A01.setOnClickListener(new ViewOnClickListenerC3197sP(this));
        this.A01.setContentDescription(A00(0, 4, 125));
        this.A02.removeAllViews();
        this.A00.fullScroll(17);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, A09, A09, A09);
        for (C2483ge c2483ge2 : c2483ge.A05()) {
            C3188sG c3188sG = new C3188sG(this.A05);
            c3188sG.setData(c2483ge2.A04(), null);
            c3188sG.setOnClickListener(new ViewOnClickListenerC3198sQ(this, c3188sG, c2483ge2));
            this.A02.addView(c3188sG, layoutParams);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3184sC
    public final boolean A0S() {
        return true;
    }
}
