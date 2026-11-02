package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.oj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2972oj extends FrameLayout {
    public static final int A08 = AbstractC3043pv.A0e;
    public C13646w A00;
    public C1464Bj A01;
    public C5Z A02;
    public C1446Ar A03;
    public C5B A04;
    public AnonymousClass51 A05;
    public final C1618Hi A06;
    public final C2892nO A07;

    public C2972oj(C1618Hi c1618Hi, C2892nO c2892nO) {
        super(c1618Hi);
        this.A07 = c2892nO;
        this.A06 = c1618Hi;
        setUpView(c1618Hi);
    }

    private void setUpPlugins(C1618Hi c1618Hi) {
        A0Z();
        this.A04 = new C5B(c1618Hi);
        A0g(this.A04);
        this.A03 = new C1446Ar(c1618Hi, this.A07);
        A0g(new C5M(c1618Hi));
        A0g(this.A03);
        this.A05 = new AnonymousClass51(c1618Hi, true, this.A07);
        A0g(this.A05);
        A0g(new C1448At(this.A05, EnumC2314du.A03, true, true));
        if (A0l()) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(10);
            layoutParams.addRule(11);
            layoutParams.setMargins(A08, A08, A08, A08);
            this.A03.setLayoutParams(layoutParams);
            addView(this.A03);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.facebook.ads.redexgen.X.6w] */
    private void setUpVideo(final C1618Hi c1618Hi) {
        this.A00 = new C1459Be(c1618Hi) { // from class: com.facebook.ads.redexgen.X.6w
            @Override // android.widget.RelativeLayout, android.view.View
            public final void onMeasure(int i, int i2) {
                if (View.MeasureSpec.getMode(i) == 1073741824) {
                    i2 = i;
                } else if (View.MeasureSpec.getMode(i2) == 1073741824) {
                    i = i2;
                }
                super.onMeasure(i, i2);
            }
        };
        setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        AbstractC3086qc.A0L(this.A00);
        addView(this.A00);
        setOnClickListener(new ViewOnClickListenerC2973ok(this));
    }

    private void setUpView(C1618Hi c1618Hi) {
        setUpVideo(c1618Hi);
        setUpPlugins(c1618Hi);
    }

    public final void A01() {
        A0j(true, 10);
    }

    public final void A02() {
        if (this.A01 != null) {
            this.A01.A07();
            this.A01 = null;
        }
        if (this.A02 != null) {
            this.A02.A0p();
            this.A02 = null;
        }
    }

    public final void A03(AbstractC2832mQ abstractC2832mQ) {
        getEventBus().A05(abstractC2832mQ);
    }

    public final void A04(InterfaceC2884nG interfaceC2884nG, String str, Map<String, String> map) {
        A02();
        this.A02 = new C5Z(this.A06, interfaceC2884nG, this.A00, str, null, map);
        if (C2863mv.A20(this.A06)) {
            this.A01 = new C1464Bj(this.A06, interfaceC2884nG, this.A00, str, false, this.A02, map);
        } else {
            this.A01 = null;
        }
    }

    public final void A05(EnumC2324e4 enumC2324e4) {
        A0f(enumC2324e4, 13);
    }

    public final boolean A06() {
        return A0q();
    }

    public C1459Be getSimpleVideoView() {
        return this.A00;
    }

    public float getVolume() {
        return getVolume();
    }

    public void setPlaceholderUrl(String str) {
        this.A04.setImage(str);
    }

    public void setVideoURI(String str) {
        setVideoURI(str);
    }

    public void setVolume(float f) {
        setVolume(f);
        this.A03.A09();
    }
}
