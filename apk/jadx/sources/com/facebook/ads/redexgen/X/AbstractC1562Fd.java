package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.RelativeLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC1562Fd extends RelativeLayout implements InterfaceC3227st {
    public Handler A00;
    public C3230sw A01;
    public boolean A02;
    public C3135rP A03;
    public C3212se A04;
    public C3226ss A05;
    public final View.OnClickListener A06;
    public final LA A07;
    public final C1618Hi A08;
    public final C2892nO A09;
    public static final int A0B = (int) (AbstractC3045px.A02 * 4.0f);
    public static final int A0C = (int) (AbstractC3045px.A02 * 40.0f);
    public static final int A0A = (int) (AbstractC3045px.A02 * 24.0f);

    public AbstractC1562Fd(C1618Hi c1618Hi, View.OnClickListener onClickListener, C2892nO c2892nO, LA la) {
        super(c1618Hi);
        this.A02 = true;
        this.A08 = c1618Hi;
        this.A06 = onClickListener;
        this.A09 = c2892nO;
        this.A07 = la;
        A0C();
    }

    public static RelativeLayout.LayoutParams A0B(View view) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (view != null) {
            layoutParams.addRule(1, view.getId());
            layoutParams.setMargins(AbstractC3043pv.A0K, AbstractC3043pv.A0X, AbstractC3043pv.A00, AbstractC3043pv.A00);
        } else {
            layoutParams.addRule(20);
            layoutParams.setMargins(AbstractC3043pv.A0X, AbstractC3043pv.A0X, AbstractC3043pv.A00, AbstractC3043pv.A00);
        }
        return layoutParams;
    }

    private void A0C() {
        if (this.A07 != null) {
            if (this.A07.A3O()) {
                this.A00 = new Handler(Looper.getMainLooper());
                this.A05 = AbstractC3231sx.A00(this.A08, true, this.A07, this.A09, null, EnumC3229sv.A04, this, AbstractC3228su.A00(this.A07));
            } else if (this.A07.A3U()) {
                this.A01 = AbstractC3231sx.A02(this.A08, EnumC3229sv.A04, this.A07);
                AbstractC3086qc.A0L(this.A01);
            }
            if (!this.A07.A3S()) {
                this.A03 = new C3135rP(this.A08);
                this.A03.setOnClickListener(this.A06);
            } else {
                this.A04 = new C3212se(this.A08, EnumC3229sv.A04);
                AbstractC3086qc.A0L(this.A04);
                this.A04.setOnClickListener(this.A06);
            }
        }
    }

    public static RelativeLayout.LayoutParams getCreditLineLayoutParams() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(AbstractC3043pv.A00, AbstractC3043pv.A0X, AbstractC3043pv.A0X, AbstractC3043pv.A00);
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        return layoutParams;
    }

    public final RelativeLayout.LayoutParams A0D(boolean z, boolean z2) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A0C, A0A);
        layoutParams.setMargins(A0B, A0B, A0B, A0B);
        if (this.A02) {
            layoutParams.addRule(z ? 12 : 10);
            layoutParams.addRule(z2 ? 11 : 9);
        } else {
            int mediaViewId = getMediaViewId();
            layoutParams.addRule(z ? 8 : 6, mediaViewId);
            layoutParams.addRule(z2 ? 7 : 5, mediaViewId);
        }
        return layoutParams;
    }

    public void A0E() {
        if (this.A00 != null) {
            this.A00.removeCallbacksAndMessages(null);
        }
    }

    public void A0F() {
        if (this.A01 != null) {
            this.A01.A04();
        }
    }

    public void A0G() {
        if (this.A03 != null) {
            AbstractC3086qc.A0K(this.A03);
            this.A03.setLayoutParams(A0D(false, true));
            addView(this.A03);
        }
        if (this.A05 != null) {
            AbstractC3086qc.A0K(this.A05);
            this.A05.setLayoutParams(getCreditLineLayoutParams());
            addView(this.A05);
        }
        if (this.A01 != null) {
            AbstractC3086qc.A0K(this.A01);
            this.A01.setLayoutParams(getCreditLineLayoutParams());
            addView(this.A01);
        }
    }

    public boolean A0H() {
        return true;
    }

    public boolean A0I() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3227st
    public final void AEX(View view) {
        this.A06.onClick(view);
    }

    public abstract int getMediaViewId();

    @Override // android.widget.RelativeLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        boolean zA0I = A0I();
        if (zA0I != this.A02) {
            this.A02 = zA0I;
            A0G();
        }
    }
}
