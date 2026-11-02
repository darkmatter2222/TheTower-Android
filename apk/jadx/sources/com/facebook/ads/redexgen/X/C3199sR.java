package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import javax.annotation.Nullable;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sR, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3199sR extends LinearLayout {
    public final ImageView A00;
    public final LinearLayout A01;
    public final TextView A02;
    public static final int A05 = (int) (AbstractC3045px.A02 * 8.0f);
    public static final int A06 = (int) (((double) AbstractC3045px.A02) * 14.5d);
    public static final int A04 = (int) (AbstractC3045px.A02 * 20.0f);
    public static final LinearLayout.LayoutParams A03 = new LinearLayout.LayoutParams(-1, -2);

    public C3199sR(C1618Hi c1618Hi) {
        super(c1618Hi);
        this.A00 = new ImageView(c1618Hi);
        this.A00.setColorFilter(-10459280);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A04, A04);
        layoutParams.gravity = 16;
        this.A00.setLayoutParams(layoutParams);
        this.A01 = new LinearLayout(c1618Hi);
        this.A01.setOrientation(1);
        this.A01.setPadding(A05 * 2, 0, 0, 0);
        this.A01.setLayoutParams(A03);
        this.A02 = new TextView(c1618Hi);
        AbstractC3086qc.A0b(this.A02, true, 16);
        this.A02.setTextColor(-14934495);
        this.A01.addView(this.A02, A03);
        setOrientation(0);
        addView(this.A00);
        addView(this.A01);
    }

    public void setInfo(@Nullable EnumC3097qn enumC3097qn, @Nullable String str, @Nullable String str2) {
        if (enumC3097qn != null) {
            this.A00.setImageBitmap(AbstractC3098qo.A01(enumC3097qn));
        }
        this.A02.setText(str);
        if (TextUtils.isEmpty(str2)) {
            setPadding(0, A06, 0, A06);
            return;
        }
        Context context = getContext();
        if (context != null) {
            TextView textView = new TextView(context);
            AbstractC3086qc.A0b(textView, false, 14);
            textView.setTextColor(-10459280);
            textView.setText(str2);
            this.A01.addView(textView, A03);
            setPadding(0, A05, 0, A05);
        }
    }
}
