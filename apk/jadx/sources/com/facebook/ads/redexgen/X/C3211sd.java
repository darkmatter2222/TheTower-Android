package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3211sd extends LinearLayout {
    public final Handler A00;
    public final ImageView A01;
    public final ImageView A02;
    public final C2416fZ A03;
    public final C2479ga A04;
    public final C1618Hi A05;
    public final C2892nO A06;
    public final InterfaceC3119r9 A07;
    public final Runnable A08;
    public final String A09;

    public C3211sd(C1618Hi c1618Hi, LA la, C2892nO c2892nO, InterfaceC3119r9 interfaceC3119r9) {
        super(c1618Hi);
        this.A00 = new Handler(Looper.getMainLooper());
        this.A08 = new RunnableC3209sb(this);
        this.A05 = c1618Hi;
        this.A09 = la.A37();
        this.A03 = la.A35();
        this.A07 = interfaceC3119r9;
        this.A06 = c2892nO;
        this.A04 = AbstractC2480gb.A00(c1618Hi.A02());
        this.A01 = A01(EnumC3097qn.AD_CHOICE_V2_COLLAPSE, 1104);
        addView(this.A01);
        this.A02 = A01(EnumC3097qn.AD_CHOICE_V2_EXPAND, 1105);
        addView(this.A02);
        A07(8);
        setOnClickListener(new ViewOnClickListenerC3210sc(this));
    }

    private final ImageView A01(EnumC3097qn enumC3097qn, int i) {
        ImageView imageView = new ImageView(this.A05);
        imageView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        imageView.setImageBitmap(AbstractC3098qo.A01(enumC3097qn));
        AbstractC3086qc.A0H(i, imageView);
        return imageView;
    }

    public final void A04() {
        this.A00.removeCallbacksAndMessages(null);
    }

    public final void A05() {
        this.A00.removeCallbacks(this.A08);
        A07(8);
    }

    public final void A06() {
        if (this.A06 != null) {
            this.A06.A04(EnumC2891nN.A0A, null);
        }
        if (this.A04.A0O(this.A05.A02(), true)) {
            this.A07.ABW(this.A09, this.A03);
        } else {
            if (TextUtils.isEmpty(this.A03.A00())) {
                return;
            }
            C3007pK.A0P(new C3007pK(), this.A05, AbstractC3011pP.A00(this.A03.A00()), this.A09);
        }
    }

    public final void A07(int i) {
        if (i == 0) {
            this.A02.setVisibility(0);
            this.A01.setVisibility(8);
        } else {
            this.A02.setVisibility(8);
            this.A01.setVisibility(0);
        }
    }
}
