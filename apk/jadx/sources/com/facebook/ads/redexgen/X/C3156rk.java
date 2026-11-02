package com.facebook.ads.redexgen.X;

import android.widget.ImageView;
import android.widget.LinearLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3156rk extends LinearLayout {
    public static final int A03 = (int) (AbstractC3045px.A02 * 10.0f);
    public static final int A04 = (int) (AbstractC3045px.A02 * 24.0f);
    public final ImageView A00;
    public final C2479ga A01;
    public final C1618Hi A02;

    public C3156rk(C1618Hi c1618Hi) {
        super(c1618Hi);
        this.A02 = c1618Hi;
        this.A01 = AbstractC2480gb.A00(c1618Hi.A02());
        this.A00 = new ImageView(c1618Hi);
        A02();
    }

    private void A02() {
        A03(this.A00, EnumC3097qn.REDESIGN_INFO_ICON);
        setPadding(A03, A03 / 3, A03, A03 / 3);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A04, A04);
        layoutParams.gravity = 16;
        addView(this.A00, layoutParams);
    }

    public static void A03(ImageView imageView, EnumC3097qn enumC3097qn) {
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setImageBitmap(AbstractC3098qo.A01(enumC3097qn));
        imageView.setColorFilter(-1);
    }

    public void setAdDetails(C2416fZ c2416fZ, String str, C2892nO c2892nO, InterfaceC3119r9 interfaceC3119r9) {
        setOnClickListener(new ViewOnClickListenerC3155rj(this, c2892nO, interfaceC3119r9, str, c2416fZ));
    }

    public void setIconColors(int i) {
        this.A00.setColorFilter(i);
    }
}
