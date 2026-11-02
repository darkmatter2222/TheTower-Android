package com.facebook.ads.redexgen.X;

import android.graphics.drawable.GradientDrawable;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sG, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3188sG extends LinearLayout {
    public boolean A00;
    public final ImageView A01;
    public final TextView A02;
    public static final int A04 = (int) (AbstractC3045px.A02 * 16.0f);
    public static final int A05 = (int) (AbstractC3045px.A02 * 12.0f);
    public static final int A06 = (int) (AbstractC3045px.A02 * 12.0f);
    public static final int A03 = (int) (AbstractC3045px.A02 * 16.0f);

    public C3188sG(C1618Hi c1618Hi) {
        super(c1618Hi);
        this.A00 = false;
        setOrientation(0);
        setPadding(A04, A05, A04, A05);
        this.A01 = new ImageView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A03, A03);
        layoutParams.gravity = 17;
        this.A02 = new TextView(getContext());
        ViewGroup.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        addView(this.A01, layoutParams);
        addView(this.A02, layoutParams2);
        A00();
    }

    private void A00() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(this.A00 ? -13272859 : -1315344);
        gradientDrawable.setCornerRadius(50.0f);
        AbstractC3086qc.A0W(this, gradientDrawable);
        AbstractC3086qc.A0b(this.A02, false, 14);
        int i = this.A00 ? -1 : -10459280;
        this.A02.setTextColor(i);
        this.A01.setColorFilter(i);
    }

    public final void A01() {
        setSelected(!this.A00);
    }

    public void setData(String str, EnumC3097qn enumC3097qn) {
        this.A02.setText(str);
        if (enumC3097qn != null) {
            this.A01.setImageBitmap(AbstractC3098qo.A01(enumC3097qn));
            this.A01.setVisibility(0);
            this.A02.setPadding(A06, 0, 0, 0);
        } else {
            this.A01.setVisibility(8);
            this.A02.setPadding(0, 0, 0, 0);
        }
        A00();
    }

    @Override // android.view.View
    public void setSelected(boolean z) {
        this.A00 = z;
        A00();
    }
}
