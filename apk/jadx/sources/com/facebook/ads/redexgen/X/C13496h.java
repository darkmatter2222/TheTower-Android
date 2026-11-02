package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.RelativeLayout;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6h, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C13496h extends AbstractC1538Ef {
    public static byte[] A0B;
    public static String[] A0C = {"c", "LY5VuE3sw40uvda5OQZKW3PreLDG4CCi", "yaY62hLg0KEERGlLeoDmNcSPx1UKbNmJ", "WMYiLBtSpNLwztzNEHWBwM41h9X6LETc", "lJgdaiAQrorx7RR6v7Nk", "1EyOY2JXCtksXat6kEe1b6rdzOUJKqwg", "ezcXNiMPWsqFOxerBn6KS8GabMq", "kdyJCeyQxSdwIYyLBskZ6hZJRVJxcaw"};
    public float A00;
    public C3333ub A01;
    public C3388vU A02;
    public C2521hI A03;
    public boolean A04;
    public final Handler A05;
    public final View A06;
    public final RelativeLayout A07;
    public final RelativeLayout A08;
    public final AbstractC3112r2 A09;
    public final InterfaceC3119r9 A0A;

    static {
        A06();
    }

    public C13496h(C3349ur c3349ur) {
        super(c3349ur, true);
        this.A05 = new Handler(Looper.getMainLooper());
        this.A04 = false;
        this.A0A = c3349ur.A0C();
        this.A09 = c3349ur.A0B();
        this.A08 = new RelativeLayout(c3349ur.A06());
        this.A07 = new RelativeLayout(c3349ur.A06());
        AbstractC3086qc.A0L(this.A07);
        AbstractC3086qc.A0L(this.A08);
        this.A06 = c3349ur.A02();
        A04();
        this.A08.addView(this.A07, new RelativeLayout.LayoutParams(-2, -2));
        addView(this.A08, new RelativeLayout.LayoutParams(-1, -1));
        String strA08 = getAdInfo().A0I().A08();
        if (strA08 != null) {
            AbstractC3328uW.A00(c3349ur.A06(), this.A08, strA08);
        }
        A03();
        ((AbstractC3345un) this).A08.A06().A0F().AM1(AbstractC3021pZ.A00(this.A00), getResources().getConfiguration().orientation, false, false, AbstractC2361ef.A0E(((AbstractC3345un) this).A08.A04()));
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 2);
        }
        return new String(bArrCopyOfRange);
    }

    private void A02() {
        EnumC2935o7 enumC2935o7A00 = EnumC2935o7.A00(getAdDataBundle().A1a());
        if (enumC2935o7A00 == EnumC2935o7.A08) {
            if (this.A02 != null) {
                return;
            }
            AbstractC3086qc.A0e(getAdDetailsView(), getCtaButton());
            this.A02 = new C3388vU(((AbstractC3345un) this).A08.A06(), getAdDataBundle(), ((AbstractC3345un) this).A08.A08(), this.A05, this.A0A, this.A09);
            addView(this.A02.A0K(getCtaButton()), new RelativeLayout.LayoutParams(-1, -1));
            return;
        }
        EnumC2935o7 enumC2935o7 = EnumC2935o7.A05;
        if (A0C[6].length() == 8) {
            throw new RuntimeException();
        }
        A0C[4] = "YRtDzV4ZcHqRVqrZ3ByQ";
        if (enumC2935o7A00 != enumC2935o7) {
            AbstractC3086qc.A0e(this.A09, getAdDetailsView(), getCtaButton());
            this.A03 = new C2521hI(((AbstractC3345un) this).A08.A06(), getAdDataBundle(), this.A0A, getCtaButton(), this.A05, ((AbstractC3345un) this).A08.A08());
            addView(this.A03.A0W(), new RelativeLayout.LayoutParams(-1, -1));
        } else {
            if (this.A01 != null) {
                return;
            }
            AbstractC3086qc.A0e(getAdDetailsView(), getCtaButton());
            this.A01 = new C3333ub(((AbstractC3345un) this).A08.A06(), getAdDataBundle(), ((AbstractC3345un) this).A08.A08(), this.A05, this.A0A);
            addView(this.A01.A0D(getCtaButton()), new RelativeLayout.LayoutParams(-1, -1));
        }
    }

    private void A03() {
        AbstractC3086qc.A0K(getAdDetailsView());
        addView(getAdDetailsView(), new RelativeLayout.LayoutParams(-1, -1));
        getAdDetailsView().setVisibility(0);
        A07(getResources().getConfiguration().orientation);
        if (getAdDetailsView() instanceof AbstractC1551Es) {
            ((AbstractC1551Es) getAdDetailsView()).A0u(getResources().getConfiguration().orientation);
        }
    }

    private void A04() {
        if (this.A06 == null) {
            return;
        }
        this.A07.addView(this.A06, new RelativeLayout.LayoutParams(-2, -2));
        AbstractC3086qc.A0L(this.A06);
        C3039pr c3039prA02 = ((AbstractC1538Ef) this).A08.A02(getAdDataBundle());
        ((AbstractC3345un) this).A08.A06().A0H().A00(c3039prA02.A01);
        if (c3039prA02.A00) {
            this.A06.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.uk
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.A00.A1q(view);
                }
            });
        } else if (C2863mv.A1J(getAdContextWrapper())) {
            AbstractC3281tl.A00(this.A06, C2863mv.A1K(getAdContextWrapper()), new ViewOnClickListenerC3343ul(this));
        }
    }

    private void A05() {
        super.A09.set(true);
        AbstractC3086qc.A0X(this);
        AbstractC3086qc.A0e(this.A07, getAdDetailsView());
        AbstractC3086qc.A0M(this.A09);
        A02();
        if (getAdInfo().A0L().A00() >= 0) {
            this.A04 = true;
            if (this.A09 != null) {
                this.A09.setToolbarActionMode(getAdDataBundle().A3N() ? 8 : 2);
                if (A0C[1].charAt(23) != 'r') {
                    throw new RuntimeException();
                }
                A0C[5] = "n8wm5IXYbLpzt1LS3L0lDS1mFaYnkNcJ";
                this.A09.setProgressImmediate(0.0f);
            }
            new C3030pi((int) getAdInfo().A0L().A00(), 20.0f, 20L, new Handler(Looper.getMainLooper()), new C1536Ed(this)).A07();
        }
    }

    public static void A06() {
        A0B = new byte[]{127, 123, 119, 113, 115, 107, 124, 110, 120, 107, 125, 124, 125, 70, 111, 112, 125, 124, 118};
    }

    private void A07(int i) {
        A08(i);
        A1o(i, this.A08, this.A07);
    }

    private void A08(int i) {
        if (this.A06 == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.A06.getLayoutParams();
        layoutParams.removeRule(13);
        layoutParams.removeRule(10);
        layoutParams.removeRule(9);
        if (i == 1) {
            layoutParams.width = -1;
            layoutParams.height = -2;
            layoutParams.addRule(10);
        } else {
            layoutParams.width = -2;
            layoutParams.height = -1;
            if (AbstractC3021pZ.A05(this.A00)) {
                layoutParams.addRule(13);
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.A07.getLayoutParams();
                layoutParams2.addRule(14);
                RelativeLayout relativeLayout = this.A07;
                if (A0C[3].charAt(7) == 'Q') {
                    throw new RuntimeException();
                }
                A0C[0] = "b3l6zVr9i";
                relativeLayout.setLayoutParams(layoutParams2);
            } else {
                layoutParams.addRule(9);
            }
        }
        this.A06.setLayoutParams(layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final boolean A0A() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final boolean A0H() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1538Ef, com.facebook.ads.redexgen.X.AbstractC3345un
    public final void A1Q() {
        super.A1Q();
        this.A05.removeCallbacksAndMessages(null);
        getAdDetailsView().A0j();
        if (this.A02 != null) {
            this.A02.A0L();
        }
        if (this.A01 != null) {
            this.A01.A0E();
        }
        if (this.A03 != null) {
            this.A03.A0Y();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final void A1W(int i) {
        if (getAdDataBundle().A1c().equals(A01(5, 14, 27)) && (getAdDetailsView() instanceof AbstractC1551Es)) {
            ((AbstractC1551Es) getAdDetailsView()).A0s(i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1538Ef, com.facebook.ads.redexgen.X.AbstractC3345un
    public final void A1X(C2395fE c2395fE, String str, double d, Bundle bundle) {
        super.A1X(c2395fE, str, d, bundle);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final void A1b(boolean z) {
        super.A1b(z);
        getAdDetailsView().A0m(z);
        if (this.A02 != null) {
            this.A02.A0N(z);
        }
        if (this.A01 != null) {
            this.A01.A0G(z);
        }
        if (this.A03 != null) {
            this.A03.A0e(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final boolean A1d() {
        return getAdInfo().A0W();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final boolean A1g() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final boolean A1i(boolean z) {
        if (!getAdInfo().A0W() || super.A09.get()) {
            return false;
        }
        A05();
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1538Ef
    public final AbstractC3284to A1k(C3349ur c3349ur, C2395fE c2395fE, String str) {
        String strA08 = c2395fE.A0I().A08();
        this.A00 = strA08 != null ? new C2746kz(c3349ur.A06()).A0M(strA08) : -1.0f;
        return new C3329uX(this.A00, str, c3349ur.A06(), getColors(), c3349ur.A05(), c3349ur.A0C(), getCtaButton(), AbstractC1538Ef.A0H, false, c3349ur.A07(), c3349ur.A0F(), c3349ur.A0A(), c3349ur.A0E(), c3349ur.A08(), false).A03();
    }

    public final /* synthetic */ void A1q(View view) {
        getCtaButton().A0E(A01(0, 5, 20));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public int getCloseButtonStyle() {
        if (this.A04) {
            return getAdDataBundle().A3N() ? 8 : 2;
        }
        if (A1d()) {
            AtomicBoolean atomicBoolean = super.A09;
            if (A0C[5].charAt(24) == 'n') {
                throw new RuntimeException();
            }
            A0C[4] = "FHXgWFqMeBDfmBjqlqLD";
            if (!atomicBoolean.get()) {
                return 1;
            }
        }
        return super.getCloseButtonStyle();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1538Ef, com.facebook.ads.redexgen.X.AbstractC3345un, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.A02 != null && super.A09.get()) {
            this.A02.A0M(configuration.orientation);
            return;
        }
        if (this.A01 != null && super.A09.get()) {
            this.A01.A0F(configuration.orientation);
        } else if (this.A03 == null || !super.A09.get()) {
            A07(configuration.orientation);
        } else {
            this.A03.A0a(configuration.orientation);
        }
    }
}
