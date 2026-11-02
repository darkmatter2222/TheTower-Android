package com.facebook.ads.redexgen.X;

import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.NativeAd;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.fq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2433fq extends LinearLayout {
    public static final int A00 = (int) (AbstractC3045px.A02 * 32.0f);
    public static final int A01 = (int) (AbstractC3045px.A02 * 8.0f);

    public C2433fq(C1618Hi c1618Hi, NativeAd nativeAd, C2914nk c2914nk, C3321uP c3321uP, AdOptionsView adOptionsView) {
        super(c1618Hi);
        setOrientation(0);
        c3321uP.setFullCircleCorners(true);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A00, A00);
        layoutParams.gravity = 16;
        layoutParams.setMargins(0, 0, A01, 0);
        addView(c3321uP, layoutParams);
        TextView textView = new TextView(c1618Hi);
        c2914nk.A08(textView);
        textView.setMaxLines(1);
        textView.setText(nativeAd.getAdvertiserName());
        TextView textView2 = new TextView(c1618Hi);
        c2914nk.A06(textView2);
        textView2.setMaxLines(1);
        textView2.setText(nativeAd.getSponsoredTranslation());
        LinearLayout linearLayout = new LinearLayout(c1618Hi);
        linearLayout.setOrientation(1);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, -2);
        layoutParams2.weight = 1.0f;
        layoutParams2.gravity = 16;
        linearLayout.addView(textView, new LinearLayout.LayoutParams(-1, -2));
        linearLayout.addView(textView2, new LinearLayout.LayoutParams(-1, -2));
        addView(linearLayout, layoutParams2);
        addView(adOptionsView, new LinearLayout.LayoutParams(-2, -2));
    }
}
