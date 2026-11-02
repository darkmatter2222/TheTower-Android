package com.facebook.ads.redexgen.X;

import android.graphics.Typeface;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vW, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3390vW extends FrameLayout {
    public final int A00;
    public final RelativeLayout A01;
    public final ViewOnClickListenerC1544El A02;
    public static final int A05 = (int) (AbstractC3045px.A02 * 36.0f);
    public static final int A06 = (int) (AbstractC3045px.A02 * 36.0f);
    public static final int A03 = (int) (AbstractC3045px.A02 * 23.0f);
    public static final int A04 = (int) (AbstractC3045px.A02 * 3.0f);
    public static final int A07 = (int) (AbstractC3045px.A02 * 4.0f);

    public C3390vW(C1618Hi c1618Hi, ViewOnClickListenerC1544El viewOnClickListenerC1544El, LA la, InterfaceC2884nG interfaceC2884nG, InterfaceC3119r9 interfaceC3119r9, C2199c2 c2199c2, C3077qT c3077qT, C2404fN c2404fN, InterfaceC3303u7 interfaceC3303u7) {
        super(c1618Hi);
        this.A00 = c2404fN.A09(true);
        this.A01 = new RelativeLayout(c1618Hi);
        addView(this.A01, new FrameLayout.LayoutParams(-1, -1));
        this.A01.setClickable(false);
        A01(c1618Hi, la.A32().A0K().A05());
        if (viewOnClickListenerC1544El != null) {
            this.A02 = viewOnClickListenerC1544El;
        } else {
            this.A02 = new ViewOnClickListenerC1544El(c1618Hi, la.A1X(), (C2404fN) null, interfaceC2884nG, interfaceC3119r9, c2199c2, c3077qT, la.A33());
        }
        A03();
        this.A02.setCta(la.A32().A0K(), la.A37(), new HashMap(), interfaceC3303u7);
        this.A02.setIsInAppBrowser(true);
        addView(this.A02, new FrameLayout.LayoutParams(-1, -1));
    }

    private void A00(C1618Hi c1618Hi, View view) {
        ImageView imageView = new ImageView(c1618Hi);
        imageView.setImageBitmap(AbstractC3098qo.A01(EnumC3097qn.MINIMIZE_ARROW));
        imageView.setRotation(180.0f);
        imageView.setClickable(false);
        imageView.setColorFilter(this.A00);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A03, A03);
        imageView.setPadding(A04, A04, A04, A04);
        layoutParams.addRule(2, view.getId());
        layoutParams.addRule(14);
        this.A01.addView(imageView, layoutParams);
    }

    private void A01(C1618Hi c1618Hi, String str) {
        Button button = new Button(c1618Hi);
        AbstractC3086qc.A0L(button);
        button.setPadding(A06, 0, A06, 0);
        button.setText(str.toUpperCase(Locale.getDefault()));
        button.setTextSize(14.0f);
        button.setTypeface(Typeface.defaultFromStyle(1));
        AbstractC3086qc.A0R(button, this.A00, A07);
        button.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, A05);
        layoutParams.addRule(12);
        layoutParams.addRule(14);
        this.A01.addView(button, layoutParams);
        A00(c1618Hi, button);
    }

    public final EnumC2358ec A02(String str) {
        return this.A02.A0E(str);
    }

    public final void A03() {
        this.A02.setBackgroundColor(0);
        this.A02.setTextColor(0);
    }

    @Override // android.view.View
    public final boolean performClick() {
        return this.A02.performClick();
    }

    public void setAutoClickTime(LA la, AbstractC3112r2 abstractC3112r2) {
        this.A02.A0I(la, abstractC3112r2);
    }

    public void setCta(C2406fP c2406fP, String str, HashMap<String, String> map, InterfaceC3303u7 interfaceC3303u7) {
        this.A02.setCta(c2406fP, str, map, interfaceC3303u7);
    }
}
