package com.facebook.ads.redexgen.X;

import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3182sA extends RelativeLayout {
    public final int A00;
    public final int A01;
    public final C2479ga A02;
    public final C1618Hi A03;
    public final InterfaceC3186sE A04;
    public final boolean A05;
    public static final int A09 = (int) (AbstractC3045px.A02 * 16.0f);
    public static final int A0A = (int) (AbstractC3045px.A02 * 8.0f);
    public static final int A0D = (int) (AbstractC3045px.A02 * 44.0f);
    public static final int A08 = (int) (AbstractC3045px.A02 * 10.0f);
    public static final int A07 = A09 - A08;
    public static final int A0E = (int) (AbstractC3045px.A02 * 75.0f);
    public static final int A0B = (int) (AbstractC3045px.A02 * 25.0f);
    public static final int A0F = (int) (AbstractC3045px.A02 * 45.0f);
    public static final int A0C = (int) (AbstractC3045px.A02 * 15.0f);
    public static final int A06 = (int) (AbstractC3045px.A02 * 16.0f);

    public C3182sA(C3181s9 c3181s9) {
        super(c3181s9.A0B);
        this.A03 = c3181s9.A0B;
        this.A02 = AbstractC2480gb.A00(this.A03.A02());
        this.A04 = c3181s9.A02;
        this.A01 = c3181s9.A0A ? A0E : A0F;
        this.A00 = c3181s9.A0A ? A0B : A0C;
        this.A05 = c3181s9.A07;
        setFocusable(true);
        View viewA01 = A01(c3181s9);
        View viewA00 = A00(c3181s9);
        View footerView = getFooterView();
        AbstractC3086qc.A0L(viewA01);
        AbstractC3086qc.A0L(viewA00);
        AbstractC3086qc.A0L(footerView);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(13);
        layoutParams2.addRule(3, viewA01.getId());
        layoutParams2.addRule(2, footerView.getId());
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams3.addRule(12);
        layoutParams3.setMargins(A09, 0, A09, A09);
        addView(viewA01, layoutParams);
        addView(viewA00, layoutParams2);
        addView(footerView, layoutParams3);
        footerView.setVisibility(0);
    }

    public /* synthetic */ C3182sA(C3181s9 c3181s9, ViewOnClickListenerC3179s7 viewOnClickListenerC3179s7) {
        this(c3181s9);
    }

    private View A00(C3181s9 c3181s9) {
        ImageView imageView = new ImageView(getContext());
        imageView.setPadding(this.A00, this.A00, this.A00, this.A00);
        imageView.setImageBitmap(AbstractC3098qo.A01(c3181s9.A01));
        imageView.setColorFilter(-1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.A01, this.A01);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(c3181s9.A00);
        AbstractC3086qc.A0W(imageView, gradientDrawable);
        layoutParams.gravity = 17;
        layoutParams.setMargins(A09, 0, A09, A09);
        TextView textView = new TextView(getContext());
        AbstractC3086qc.A0b(textView, true, 20);
        textView.setTextColor(-14934495);
        textView.setText(c3181s9.A06);
        textView.setGravity(17);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(A09, 0, A09, A09);
        TextView textView2 = new TextView(getContext());
        AbstractC3086qc.A0b(textView2, false, 16);
        textView2.setTextColor(-10459280);
        textView2.setText(c3181s9.A05);
        textView2.setGravity(17);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.setMargins(A09, 0, A09, A09);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(textView, layoutParams2);
        linearLayout.addView(textView2, layoutParams3);
        if (c3181s9.A08) {
            LinearLayout linearLayout2 = new LinearLayout(getContext());
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(17);
            if (!TextUtils.isEmpty(c3181s9.A04)) {
                C3321uP c3321uP = new C3321uP(this.A03);
                LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(A0F, A0F);
                layoutParams4.setMargins(0, 0, A0A, 0);
                c3321uP.setFullCircleCorners(true);
                new AsyncTaskC1552Et(c3321uP, this.A03).A05(A0F, A0F).A07(c3181s9.A04);
                linearLayout2.addView(c3321uP, layoutParams4);
            }
            C3188sG c3188sG = new C3188sG(this.A03);
            c3188sG.setData(c3181s9.A03, EnumC3097qn.CHECKMARK);
            c3188sG.setSelected(true);
            linearLayout2.addView(c3188sG, new LinearLayout.LayoutParams(-2, -2));
            linearLayout.addView(linearLayout2);
        }
        return linearLayout;
    }

    private View A01(C3181s9 c3181s9) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        if (c3181s9.A09) {
            ImageView imageView = new ImageView(getContext());
            imageView.setPadding(A08, A08, A08, A08);
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageView.setImageBitmap(AbstractC3098qo.A01(EnumC3097qn.CROSS));
            imageView.setOnClickListener(new ViewOnClickListenerC3179s7(this));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A0D, A0D);
            layoutParams.setMargins(A07, A07, A07, A07);
            linearLayout.addView(imageView, layoutParams);
        }
        return linearLayout;
    }

    private View getFooterView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setImageBitmap(AbstractC3098qo.A01(EnumC3097qn.SETTINGS));
        imageView.setColorFilter(-13272859);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A06, A06);
        layoutParams.gravity = 17;
        TextView textView = new TextView(getContext());
        AbstractC3086qc.A0b(textView, false, 16);
        textView.setTextColor(-13272859);
        textView.setPadding(A0A, A0A, A0A, A0A);
        textView.setText(this.A02.A0J());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        linearLayout.setOnClickListener(new ViewOnClickListenerC3180s8(this));
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(textView, layoutParams2);
        return linearLayout;
    }
}
