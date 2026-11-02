package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ef, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC1538Ef extends AbstractC3345un implements InterfaceC3038pq {
    public static byte[] A0A;
    public static String[] A0B = {"1qM0UqBuKeNFs4931PZdKXfB5ZchECK5", "3ZSmcCEAG5Dz0dWrJNlp2MNszP7YT25A", "Vrvau7r1HMpQKQXhvyVkTfJZAsfHOW4A", "oVRoE2FdK0le1s2SfNIozg00Kc9sH4MP", "npYoVlwUwM4clRwIxvjz9nauDkw8jySV", "7Yuh663Y", "kkRlGGIMUj7iwn7pYEfT9Vq54HRzcbQk", "UynwTjbvMY6JmtelA"};
    public static final int A0C;
    public static final int A0D;
    public static final int A0E;
    public static final int A0F;
    public static final int A0G;
    public static final int A0H;
    public static final int A0I;
    public static final int A0J;
    public static final int A0K;
    public static final int A0L;
    public static final int A0M;
    public static final int A0N;
    public static final int A0O;
    public C1453Ay A00;
    public C1437Ai A01;
    public C1434Af A02;
    public final Handler A03;
    public final LA A04;
    public final C2395fE A05;
    public final InterfaceC3119r9 A06;
    public final AbstractC3284to A07;
    public final C3040ps A08;
    public final AtomicBoolean A09;

    static {
        A0M();
        A0I = (int) (AbstractC3045px.A02 * 48.0f);
        A0H = (int) (AbstractC3045px.A02 * 80.0f);
        A0F = (int) (AbstractC3045px.A02 * 120.0f);
        A0G = (int) (AbstractC3045px.A02 * 128.0f);
        A0M = (int) (AbstractC3045px.A02 * 16.0f);
        A0C = (int) (AbstractC3045px.A02 * 4.0f);
        A0L = (int) (AbstractC3045px.A02 * 44.0f);
        A0J = AbstractC3043pv.A0y;
        A0K = (int) (AbstractC3045px.A02 * 12.0f);
        A0O = (int) (AbstractC3045px.A02 * 12.0f);
        A0N = (int) (AbstractC3045px.A02 * 26.0f);
        A0D = AbstractC2501gx.A02(-1, 77);
        A0E = AbstractC2501gx.A02(A0D, 90);
    }

    public AbstractC1538Ef(C3349ur c3349ur, boolean z) {
        super(c3349ur, z);
        this.A03 = new Handler(Looper.getMainLooper());
        this.A09 = new AtomicBoolean(false);
        this.A04 = c3349ur.A05();
        this.A08 = C3040ps.A00(c3349ur.A06(), this.A04, this);
        this.A05 = this.A04.A32();
        this.A07 = A0K(c3349ur);
        if (this.A04.A2o()) {
            this.A07.setVisibility(8);
        }
        AbstractC3112r2 abstractC3112r2A0B = c3349ur.A0B();
        this.A06 = c3349ur.A0C();
        if (abstractC3112r2A0B != null) {
            abstractC3112r2A0B.setLayoutParams(new RelativeLayout.LayoutParams(-1, abstractC3112r2A0B.getToolbarHeight()));
            abstractC3112r2A0B.setPageDetailsVisible(false);
        }
    }

    private ImageView A0J() {
        ImageView imageView = new ImageView(super.A08.A06());
        imageView.setImageBitmap(Bitmap.createScaledBitmap(AbstractC3098qo.A01(EnumC3097qn.NAV_CROSS), AbstractC3043pv.A0h, AbstractC3043pv.A0h, true));
        imageView.setColorFilter(-1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor(A0L(0, 9, 124)));
        imageView.setBackground(gradientDrawable);
        imageView.setPadding(AbstractC3043pv.A0b, AbstractC3043pv.A0b, AbstractC3043pv.A0b, AbstractC3043pv.A0b);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.uh
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.A00.A1p(view);
            }
        });
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, AbstractC3043pv.A0u, AbstractC3043pv.A0e, 0);
        layoutParams.addRule(11);
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    private AbstractC3284to A0K(C3349ur c3349ur) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        if (this.A04.A2o()) {
            layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        }
        layoutParams.addRule(12);
        AbstractC3284to abstractC3284toA1k = A1k(c3349ur, this.A05, c3349ur.A05().A1c().equals(A0L(91, 14, 118)) ? EnumC2318dy.A04.A03() : A0L(9, 37, 56));
        abstractC3284toA1k.getCTAButton().getCtaActionHelper().A0A(this.A04);
        this.A02 = new C1434Af(abstractC3284toA1k, 400, 100, 0);
        AbstractC3086qc.A0L(abstractC3284toA1k);
        abstractC3284toA1k.A0l(c3349ur.A00());
        if (C2863mv.A16(c3349ur.A06())) {
            abstractC3284toA1k.A0k();
            if (c3349ur.A0B() != null) {
                c3349ur.A0B().setCTAClickListener(getCtaButton());
            }
        }
        addView(abstractC3284toA1k, layoutParams);
        abstractC3284toA1k.getCTAButton().A0I(this.A04, c3349ur.A0B());
        return abstractC3284toA1k;
    }

    public static String A0L(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 22);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0M() {
        A0A = new byte[]{73, 82, 90, 90, 90, 90, 90, 90, 90, 77, 65, 67, 0, 72, 79, 77, 75, 76, 65, 65, 69, 0, 79, 74, 93, 0, 71, SignedBytes.MAX_POWER_OF_TWO, 90, 75, 92, 93, 90, 71, 90, 71, 79, 66, 0, 77, 66, 71, 77, 69, 75, 74, 117, 121, 123, 56, 112, 119, 117, 115, 116, 121, 121, 125, 56, 119, 114, 101, 56, 127, 120, 98, 115, 100, 101, 98, 127, 98, 127, 119, 122, 56, 112, 127, 120, 127, 101, 126, 73, 119, 117, 98, 127, 96, 127, 98, 111, Ascii.DC2, 5, Ascii.ETB, 1, Ascii.DC2, 4, 5, 4, 63, Ascii.SYN, 9, 4, 5, Ascii.SI};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public void A1Q() {
        super.A1Q();
        this.A03.removeCallbacksAndMessages(null);
        if (this.A04 != null && this.A04.A32().A0M() != null) {
            AbstractC3018pW.A06(super.A08.A06().A02(), this.A04.A32().A0M());
        }
        this.A08.A03();
        String[] strArr = A0B;
        if (strArr[6].charAt(1) == strArr[1].charAt(1)) {
            throw new RuntimeException();
        }
        A0B[3] = "5Kbaf0CIkGxuL526fADXQa3s9VOdhztm";
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public void A1X(C2395fE c2395fE, String str, double d, Bundle bundle) {
        super.A1X(c2395fE, str, d, bundle);
        this.A07.setInfo(c2395fE.A0J(), c2395fE.A0K(), str, this.A04.A35().A01(), super.A08.A09(), null);
    }

    public final int A1j(AbstractC3112r2 abstractC3112r2) {
        return abstractC3112r2 == null ? AbstractC3112r2.A00 : abstractC3112r2.getToolbarHeight();
    }

    public abstract AbstractC3284to A1k(C3349ur c3349ur, C2395fE c2395fE, String str);

    public void A1l() {
        View expandableLayout = getAdDetailsView().getExpandableLayout();
        if (expandableLayout != null) {
            this.A00 = new C1453Ay(true, false);
            if (this.A01 != null) {
                C1453Ay c1453Ay = this.A00;
                if (A0B[0].charAt(30) == 'l') {
                    throw new RuntimeException();
                }
                A0B[7] = "KTvg88bTO6HmKn15GgbH1";
                c1453Ay.A0L(this.A01);
            }
            C2404fN c2404fNA01 = this.A04.A31().A01();
            this.A00.A0L(new C1435Ag(getAdDetailsView().getCTAButton(), 300, -1, c2404fNA01.A0A(true)));
            this.A00.A0L(new C1438Aj(getAdDetailsView().getCTAButton(), 300, AbstractC3086qc.A08(A0D, A0E, A0C), AbstractC3086qc.A05(c2404fNA01.A09(true), A0C)));
            this.A00.A0L(new C1436Ah(expandableLayout, 150, false));
            this.A00.A0K(com.ironsource.M9.b.g);
        }
    }

    public final void A1m() {
        LinearLayout linearLayout = new LinearLayout(super.A08.A06());
        linearLayout.setOrientation(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        linearLayout.setLayoutParams(layoutParams);
        TextView textView = new TextView(super.A08.A06());
        textView.setText(super.A08.A05().A1i());
        textView.setTextColor(-1);
        AbstractC3086qc.A0b(textView, false, 15);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(A0M, A0M, A0M, A0M);
        textView.setGravity(1);
        textView.setLayoutParams(layoutParams2);
        C3315uJ c3315uJ = new C3315uJ(super.A08.A06(), 0, -13524404, EnumC3097qn.REWARD_GRANTED_ICON);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(A0I, A0I);
        layoutParams3.gravity = 17;
        c3315uJ.setLayoutParams(layoutParams3);
        linearLayout.addView(c3315uJ);
        linearLayout.addView(textView);
        addView(linearLayout);
    }

    public final void A1n() {
        LinearLayout linearLayout = new LinearLayout(super.A08.A06());
        linearLayout.setOrientation(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        linearLayout.setLayoutParams(layoutParams);
        TextView textView = new TextView(super.A08.A06());
        textView.setText(super.A08.A05().A1s());
        textView.setTextColor(-1);
        AbstractC3086qc.A0b(textView, true, 24);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(AbstractC3043pv.A0t, 0, AbstractC3043pv.A0t, AbstractC3043pv.A0e);
        textView.setGravity(1);
        textView.setLayoutParams(layoutParams2);
        C3321uP c3321uP = new C3321uP(super.A08.A06());
        c3321uP.setRadius(15);
        AbstractC3086qc.A0O(c3321uP, 0);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(A0F, A0F);
        layoutParams3.gravity = 17;
        c3321uP.setLayoutParams(layoutParams3);
        new AsyncTaskC1552Et(c3321uP, super.A08.A06()).A05(A0F, A0F).A07(super.A08.A05().A35().A01());
        TextView textView2 = new TextView(super.A08.A06());
        textView2.setText(String.format(Locale.US, super.A08.A05().A1t(), super.A08.A05().A32().A0J().A0H()));
        textView2.setTextColor(-1);
        AbstractC3086qc.A0b(textView2, false, 17);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams4.setMargins(AbstractC3043pv.A0i, AbstractC3043pv.A0e, AbstractC3043pv.A0i, 0);
        textView2.setGravity(1);
        textView2.setLayoutParams(layoutParams4);
        linearLayout.addView(textView);
        linearLayout.addView(c3321uP);
        linearLayout.addView(textView2);
        addView(linearLayout);
        addView(A0J());
        if (this.A04.A3F() && this.A04.A3P()) {
            C1618Hi c1618HiA06 = super.A08.A06();
            LA laA05 = super.A08.A05();
            C2892nO c2892nOA08 = super.A08.A08();
            EnumC3229sv enumC3229sv = EnumC3229sv.A07;
            InterfaceC3119r9 interfaceC3119r9A0C = super.A08.A0C();
            if (A0B[5].length() == 7) {
                throw new RuntimeException();
            }
            A0B[4] = "xs35kRY7OlursP2LvVzn3Dbf8KPmYq6u";
            addView(A00(c1618HiA06, laA05, c2892nOA08, enumC3229sv, interfaceC3119r9A0C));
        }
        if (this.A04.A3U()) {
            addView(A01(super.A08.A06(), EnumC3229sv.A07));
        }
    }

    public final void A1o(int i, ViewGroup viewGroup, RelativeLayout relativeLayout) {
        if (getAdDetailsView() instanceof AbstractC1551Es) {
            if ((getAdDetailsView() instanceof C13586q) || (getAdDetailsView() instanceof C13576p)) {
                AbstractC3086qc.A0K(getAdDetailsView());
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                if (getResources().getConfiguration().orientation == 2) {
                    layoutParams.addRule(1, relativeLayout.getId());
                    getAdDetailsView().setLayoutParams(layoutParams);
                    viewGroup.addView(getAdDetailsView());
                } else {
                    addView(getAdDetailsView(), layoutParams);
                }
            }
            getAdDetailsView().A0l(i);
            ((AbstractC1551Es) getAdDetailsView()).A0y(viewGroup, relativeLayout, i);
        }
    }

    public final /* synthetic */ void A1p(View view) {
        this.A06.A5C(A0L(46, 45, 0));
    }

    public LA getAdDataBundle() {
        return this.A04;
    }

    public C1434Af getAdDetailsAnimation() {
        return this.A02;
    }

    public AbstractC3284to getAdDetailsView() {
        return this.A07;
    }

    public C2395fE getAdInfo() {
        return this.A05;
    }

    public C1453Ay getAnimationPlugin() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.A09.get() && (this.A04.A32().A0L().A03().isEmpty() || this.A04.A32().A0L().A04() || this.A04.A2V())) {
            return;
        }
        getAdDetailsView().A0l(configuration.orientation);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View expandableLayout;
        super.onLayout(z, i, i2, i3, i4);
        if (this.A04.A32().A0L().A04() || this.A04.A2V()) {
            return;
        }
        LA la = this.A04;
        if (A0B[2].charAt(30) != '4') {
            throw new RuntimeException();
        }
        A0B[0] = "AO2Vor543jhYYkt1oYijcT7buZTkR3eI";
        if (la.A2o() || (expandableLayout = getAdDetailsView().getExpandableLayout()) == null || !z || this.A01 != null || this.A00 == null) {
            return;
        }
        this.A01 = new C1437Ai(expandableLayout, 300, expandableLayout.getHeight(), 0);
        this.A00.A0L(this.A01);
        this.A00.A0J();
    }
}
