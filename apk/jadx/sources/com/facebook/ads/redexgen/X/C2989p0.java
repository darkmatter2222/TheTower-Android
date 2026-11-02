package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.p0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2989p0 extends LinearLayout {
    public static final int A04 = (int) (AbstractC3045px.A02 * 32.0f);
    public static final int A05 = (int) (AbstractC3045px.A02 * 8.0f);
    public TextView A00;
    public TextView A01;
    public C3321uP A02;
    public final C1618Hi A03;

    public C2989p0(C1618Hi c1618Hi) {
        super(c1618Hi);
        this.A03 = c1618Hi;
        A00(c1618Hi);
    }

    private final void A00(C1618Hi c1618Hi) {
        setGravity(16);
        this.A02 = new C3321uP(c1618Hi);
        this.A02.setFullCircleCorners(true);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A04, A04);
        layoutParams.setMargins(0, 0, A05, 0);
        addView(this.A02, layoutParams);
        LinearLayout linearLayout = new LinearLayout(c1618Hi);
        linearLayout.setOrientation(1);
        this.A00 = new TextView(c1618Hi);
        ViewGroup.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        AbstractC3086qc.A0b(this.A00, true, 16);
        this.A00.setEllipsize(TextUtils.TruncateAt.END);
        this.A00.setSingleLine(true);
        this.A01 = new TextView(c1618Hi);
        AbstractC3086qc.A0b(this.A01, false, 14);
        linearLayout.addView(this.A00);
        linearLayout.addView(this.A01);
        addView(linearLayout, layoutParams2);
    }

    public final void A01() {
        this.A02.setImageBitmap(null);
        this.A00.setText("");
        this.A01.setText("");
    }

    public final void A02(int i, int i2) {
        this.A00.setTextColor(i);
        this.A01.setTextColor(i2);
    }

    public void setPageDetails(C2416fZ c2416fZ) {
        AsyncTaskC1552Et asyncTaskC1552Et = new AsyncTaskC1552Et(this.A02, this.A03);
        asyncTaskC1552Et.A05(A04, A04);
        asyncTaskC1552Et.A07(c2416fZ.A01());
        this.A00.setText(c2416fZ.A02());
        this.A01.setText(c2416fZ.A03());
    }
}
