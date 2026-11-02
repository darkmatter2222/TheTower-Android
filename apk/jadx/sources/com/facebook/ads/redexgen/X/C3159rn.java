package com.facebook.ads.redexgen.X;

import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3159rn extends LinearLayout {
    public LinearLayout A00;
    public String A01;
    public boolean A02;
    public final int A03;
    public final C1618Hi A04;
    public final C3321uP A05;
    public final C3327uV A06;
    public static String[] A07 = {"ikrAQeZ", "GEbcoUE3g5mmhvDK1accGi9uoxyDpqlb", "IoEeK9dLJSDS9xEhArFsaHxFRkOUOwko", "MRryK7TPTl", "xYvAqelZm4vIlfu7l4YCkPewkt8BGS3e", "XJHoxX8Fkr6J", "", "ZK"};
    public static final int A0A = (int) (AbstractC3045px.A02 * 16.0f);
    public static final int A0B = (int) (AbstractC3045px.A02 * 32.0f);
    public static final int A0C = (int) (AbstractC3045px.A02 * 16.0f);
    public static final int A09 = (int) (AbstractC3045px.A02 * 4.0f);
    public static final int A08 = (int) (AbstractC3045px.A02 * 72.0f);

    public C3159rn(C3161rp c3161rp) {
        super(c3161rp.A08);
        this.A02 = false;
        this.A01 = "";
        this.A04 = c3161rp.A08;
        this.A05 = new C3321uP(this.A04);
        this.A06 = new C3327uV(this.A04, c3161rp.A01, true, false, true);
        this.A03 = c3161rp.A00;
        this.A02 = c3161rp.A05;
        this.A01 = c3161rp.A04;
        A03(c3161rp);
    }

    public /* synthetic */ C3159rn(C3161rp c3161rp, C1498Cr c1498Cr) {
        this(c3161rp);
    }

    private void A00() {
        A01(this.A05, 150);
        A01(this.A06, 170);
        if (this.A00 != null) {
            A01(this.A00, 190);
        }
    }

    private void A01(View view, int i) {
        view.setTranslationY(i);
        view.setScaleY(0.75f);
        view.setScaleX(0.75f);
        view.animate().translationYBy(-i).scaleX(1.0f).scaleY(1.0f).setDuration(300L).setInterpolator(new DecelerateInterpolator(2.0f));
    }

    private void A02(C3161rp c3161rp) {
        if (TextUtils.isEmpty(c3161rp.A03)) {
            return;
        }
        this.A00 = new LinearLayout(getContext());
        this.A00.setGravity(17);
        int i = A0C / 2;
        if (this.A02) {
            i = 0;
        }
        this.A00.setPadding(A0C, i, A0C, A0C / 2);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, i, 0, 0);
        TextView textView = new TextView(getContext());
        textView.setTextColor(-1);
        AbstractC3086qc.A0b(textView, false, 16);
        textView.setText(c3161rp.A03);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        ImageView imageView = new ImageView(getContext());
        if (c3161rp.A02 != null) {
            new AsyncTaskC1552Et(imageView, this.A04).A04().A07(c3161rp.A02);
        }
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(A0A, A0A);
        layoutParams3.setMargins(0, 0, A0C / 2, 0);
        if (this.A02) {
            C3315uJ c3315uJ = new C3315uJ(getContext(), 0, -1, EnumC3097qn.PLAYABLE_ICON);
            c3315uJ.setLayoutParams(new LinearLayout.LayoutParams(A0B, A0B));
            this.A00.addView(c3315uJ);
        } else {
            this.A00.addView(imageView, layoutParams3);
            this.A00.addView(textView, layoutParams2);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(100.0f);
            gradientDrawable.setColor(469762047);
            AbstractC3086qc.A0W(this.A00, gradientDrawable);
        }
        View view = this.A00;
        if (A07[0].length() == 13) {
            throw new RuntimeException();
        }
        String[] strArr = A07;
        strArr[3] = "NcANBdwAoJ";
        strArr[7] = "XL";
        addView(view, layoutParams);
    }

    private void A03(C3161rp c3161rp) {
        AbstractC3086qc.A0O(this.A05, 0);
        this.A05.setRadius(50);
        if (!this.A02 && c3161rp.A06.A00() == EnumC2400fJ.A05) {
            this.A05.setFullCircleCorners(true);
        } else {
            this.A05.setRadius(A09);
        }
        new AsyncTaskC1552Et(this.A05, this.A04).A04().A07(c3161rp.A07.A01());
        this.A06.A04(c3161rp.A06.A0H(), c3161rp.A07.A03(), null, false, true);
        if (this.A02) {
            this.A06.getDescriptionTextView().setText(this.A01);
        } else {
            this.A06.getDescriptionTextView().setAlpha(0.8f);
        }
        this.A06.setAlignment(17);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, A0C, 0, A0C / 2);
        addView(this.A05, new LinearLayout.LayoutParams(A08, A08));
        addView(this.A06, layoutParams);
        A02(c3161rp);
        AbstractC3086qc.A0O(this, -14473425);
        setGravity(17);
        setOrientation(1);
    }

    public final void A04(InterfaceC3160ro interfaceC3160ro) {
        A00();
        postDelayed(new C1498Cr(this, interfaceC3160ro), this.A03);
    }
}
