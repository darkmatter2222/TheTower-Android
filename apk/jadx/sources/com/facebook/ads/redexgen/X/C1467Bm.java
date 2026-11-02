package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeBannerAd;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Bm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1467Bm extends LinearLayout implements InterfaceC2456gD {
    public final NativeBannerAd A00;
    public final C1618Hi A01;
    public final ArrayList<View> A02;
    public static final int A04 = (int) (AbstractC3045px.A02 * 42.0f);
    public static final int A03 = (int) (AbstractC3045px.A02 * 48.0f);
    public static final int A05 = (int) (AbstractC3045px.A02 * 54.0f);
    public static final int A07 = (int) (AbstractC3045px.A02 * 4.0f);
    public static final int A06 = (int) (AbstractC3045px.A02 * 8.0f);

    public C1467Bm(C1618Hi c1618Hi, NativeBannerAd nativeBannerAd, C2914nk c2914nk, EnumC2915nl enumC2915nl, MediaView mediaView, AdOptionsView adOptionsView, C3212se c3212se) {
        LinearLayout.LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2;
        super(c1618Hi);
        this.A02 = new ArrayList<>();
        this.A00 = nativeBannerAd;
        this.A01 = c1618Hi;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        int iA00 = A00(enumC2915nl);
        C3322uQ c3322uQ = new C3322uQ(this.A01);
        c3322uQ.setFullCircleCorners(true);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(iA00, iA00);
        c3322uQ.addView(mediaView, new LinearLayout.LayoutParams(-1, -1));
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 16;
        relativeLayout.addView(c3322uQ, layoutParams3);
        if (c3212se != null) {
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams5.addRule(10);
            layoutParams5.setMargins(AbstractC3043pv.A0B, AbstractC3043pv.A0B, AbstractC3043pv.A00, AbstractC3043pv.A00);
            relativeLayout.addView(c3212se, layoutParams5);
        }
        linearLayout.addView(relativeLayout, layoutParams4);
        View c2468gP = new C2468gP(c1618Hi, this.A00, enumC2915nl, c2914nk, adOptionsView);
        c2468gP.setPadding(A06, 0, 0, 0);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(0, -2);
        layoutParams6.weight = 1.0f;
        layoutParams6.gravity = 16;
        linearLayout.addView(c2468gP, layoutParams6);
        if (enumC2915nl == EnumC2915nl.A0A) {
            setPadding(A07, A07, A07, A07);
            setOrientation(0);
            layoutParams = new LinearLayout.LayoutParams(0, -1);
            layoutParams2 = new LinearLayout.LayoutParams(-2, -1);
            linearLayout.setPadding(0, 0, A07, 0);
        } else {
            setPadding(A06, A06, A06, A06);
            setOrientation(1);
            layoutParams = new LinearLayout.LayoutParams(-1, 0);
            layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
            linearLayout.setPadding(0, 0, 0, A06);
        }
        layoutParams.weight = 1.0f;
        addView(linearLayout, layoutParams);
        TextView textView = new TextView(getContext());
        textView.setPadding(A06, A07, A06, A07);
        c2914nk.A05(textView);
        textView.setText(this.A00.getAdCallToAction());
        addView(textView, layoutParams2);
        this.A02.add(mediaView);
        this.A02.add(textView);
    }

    public static int A00(EnumC2915nl enumC2915nl) {
        switch (enumC2915nl) {
            case A0A:
                return A04;
            case A06:
                return A03;
            default:
                return A05;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2456gD
    public View getView() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2456gD
    public ArrayList<View> getViewsForInteraction() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2456gD
    public final void unregisterView() {
        this.A00.unregisterView();
    }
}
