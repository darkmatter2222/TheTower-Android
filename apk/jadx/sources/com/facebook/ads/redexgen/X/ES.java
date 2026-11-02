package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class ES extends AbstractC3345un {
    public RelativeLayout A00;
    public RelativeLayout A01;
    public InterfaceC3069qL A02;
    public C1464Bj A03;
    public C1459Be A04;
    public C5Z A05;
    public final LinearLayout A06;
    public final LinearLayout A07;
    public final LinearLayout A08;
    public final LinearLayout A09;
    public final RelativeLayout A0A;
    public final C1618Hi A0B;
    public final C3349ur A0C;
    public final BM A0D;
    public final BE A0E;
    public static String[] A0F = {"s9nba6tcHFGP4OFZ0xBn4icOFwS7jvYl", "kktOg6f2QIHAEKumWthcUwj5E1xy5ne6", "IjcVtHpYRdXXNSWd5OMx", "jOz9iHB", "6JYIjqR9eJVKH8xFTjs9W29SzlqJw5Tu", "DQBBgeyk7HSMR4WJTfgjuLZpP1ECe9cv", "qlksgg", "SYhJ2kGhHlLlxOcVCiHXu73SejeO"};
    public static final int A0V = (int) (AbstractC3045px.A02 * 24.0f);
    public static final int A0U = (int) (AbstractC3045px.A02 * 8.0f);
    public static final int A0N = (int) (AbstractC3045px.A02 * 1.0f);
    public static final int A0O = AbstractC3043pv.A0i;
    public static final int A0T = AbstractC3043pv.A0l;
    public static final int A0I = AbstractC3043pv.A0v;
    public static final int A0W = AbstractC3043pv.A0y;
    public static final int A0J = AbstractC3043pv.A0e;
    public static final int A0L = AbstractC3043pv.A0e;
    public static final int A0K = AbstractC3043pv.A0y;
    public static final int A0M = AbstractC3043pv.A0y;
    public static final int A0P = (int) (AbstractC3045px.A02 * 12.0f);
    public static final int A0H = (int) (AbstractC3045px.A02 * 40.0f);
    public static final int A0S = AbstractC3043pv.A0e;
    public static final int A0R = AbstractC3043pv.A0i;
    public static final int A0Q = (int) (AbstractC3045px.A02 * 16.0f);
    public static final int A0G = (int) (AbstractC3045px.A02 * 6.0f);

    public ES(C3349ur c3349ur) {
        super(c3349ur, false);
        this.A0E = new BE() { // from class: com.facebook.ads.redexgen.X.6e
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(BF bf) {
                if (this.A00.A02 != null) {
                    this.A00.A02.ALX();
                }
            }
        };
        this.A0D = new BM() { // from class: com.facebook.ads.redexgen.X.6d
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5Y c5y) {
                this.A00.A04.A0f(EnumC2324e4.A03, 20);
            }
        };
        this.A0B = c3349ur.A06();
        this.A0C = c3349ur;
        this.A06 = new LinearLayout(this.A0B);
        this.A09 = new LinearLayout(this.A0B);
        this.A0A = new RelativeLayout(this.A0B);
        this.A08 = new LinearLayout(this.A0B);
        this.A07 = new LinearLayout(this.A0B);
        A08();
    }

    private LinearLayout A00() {
        LinearLayout linearLayout = new LinearLayout(this.A0B);
        linearLayout.setOrientation(0);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        linearLayout.setWeightSum(3.0f);
        linearLayout.setPadding(A0U, A0U, A0U, A0U);
        String strA0D = this.A0C.A05().A32().A0J().A0D();
        String strA01 = this.A0C.A05().A32().A0J().A01();
        String strA05 = this.A0C.A05().A32().A0J().A05();
        if (!TextUtils.isEmpty(strA0D)) {
            linearLayout.addView(A01(EnumC3097qn.RATINGS, this.A0C.A05().A32().A0J().A0D()));
        }
        if (!TextUtils.isEmpty(strA05)) {
            linearLayout.addView(A01(EnumC3097qn.APP_DOWNLOAD_ICON, this.A0C.A05().A32().A0J().A05()));
        }
        boolean zIsEmpty = TextUtils.isEmpty(strA01);
        if (A0F[4].charAt(26) == 'B') {
            throw new RuntimeException();
        }
        A0F[2] = "p";
        if (!zIsEmpty) {
            linearLayout.addView(A01(EnumC3097qn.APP_SIZE_ICON, this.A0C.A05().A32().A0J().A01()));
        }
        layoutParams.addRule(12);
        String[] strArr = A0F;
        if (strArr[5].charAt(4) != strArr[1].charAt(4)) {
            linearLayout.setLayoutParams(layoutParams);
            linearLayout.setGravity(1);
            return linearLayout;
        }
        String[] strArr2 = A0F;
        strArr2[5] = "fi4ngCqO99vukZAx8mIkB9w9ZCXNvJG5";
        strArr2[1] = "75TwgXj8mdC7k7YTuDaaVxbF7VG8aWns";
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setGravity(1);
        return linearLayout;
    }

    private LinearLayout A01(EnumC3097qn enumC3097qn, String str) {
        LinearLayout linearLayout = new LinearLayout(this.A0B);
        linearLayout.setOrientation(0);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, A0V);
        layoutParams.weight = 1.0f;
        linearLayout.setGravity(17);
        layoutParams.setMargins(A0T, A0T, A0T, A0T);
        linearLayout.setLayoutParams(layoutParams);
        AbstractC3086qc.A0W(linearLayout, AbstractC3086qc.A06(Integer.MIN_VALUE, A0Q));
        C3315uJ c3315uJ = new C3315uJ(this.A0C.A06(), 0, -1, enumC3097qn);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(A0P, A0P);
        layoutParams2.gravity = 16;
        c3315uJ.setLayoutParams(layoutParams2);
        linearLayout.addView(c3315uJ);
        TextView textView = new TextView(this.A0B);
        textView.setText(str);
        textView.setTextColor(-1);
        AbstractC3086qc.A0b(textView, false, 12);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 16;
        layoutParams3.setMargins(A0W, 0, 0, 0);
        textView.setLayoutParams(layoutParams3);
        linearLayout.addView(textView);
        return linearLayout;
    }

    private final RelativeLayout A02(String str, int i, EnumC3097qn enumC3097qn) {
        RelativeLayout relativeLayout = new RelativeLayout(this.A0B);
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, A0H);
        relativeLayout.setPadding(A0J, 0, A0J, 0);
        AbstractC3086qc.A0W(relativeLayout, AbstractC3086qc.A06(i, A0G));
        relativeLayout.setLayoutParams(layoutParams);
        relativeLayout.setGravity(16);
        TextView textView = new TextView(this.A0B);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(9);
        textView.setText(str);
        textView.setTextColor(-1);
        AbstractC3086qc.A0b(textView, true, 15);
        textView.setLayoutParams(layoutParams2);
        relativeLayout.addView(textView);
        C3315uJ c3315uJ = new C3315uJ(this.A0C.A06(), 0, -1, enumC3097qn);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(A0P, A0P);
        layoutParams3.addRule(11);
        layoutParams3.setMargins(0, A0I, 0, 0);
        c3315uJ.setLayoutParams(layoutParams3);
        relativeLayout.addView(c3315uJ);
        return relativeLayout;
    }

    private TextView A03(String str, boolean z, int i, int i2, int i3) {
        TextView textView = new TextView(this.A0B);
        textView.setText(str);
        textView.setTextColor(i2);
        AbstractC3086qc.A0b(textView, z, i);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(A0K, 0, A0K, i3);
        textView.setGravity(1);
        textView.setLayoutParams(layoutParams);
        return textView;
    }

    private C1459Be A05() {
        C1459Be c1459Be = new C1459Be(this.A0C.A06());
        AbstractC3086qc.A0W(c1459Be, AbstractC3086qc.A06(436207616, A0Q));
        c1459Be.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.A05 = new C5Z(this.A0B, getAdEventManager(), c1459Be, this.A0C.A05().A37(), 0, 0, true, null, null);
        if (C2863mv.A20(this.A0B)) {
            this.A03 = new C1464Bj(this.A0B, getAdEventManager(), c1459Be, this.A0C.A05().A37(), false, this.A05, null);
        } else {
            this.A03 = null;
        }
        return c1459Be;
    }

    private void A07() {
        this.A00 = A02(this.A0C.A05().A1j(), -14977820, EnumC3097qn.RIGHT_ARROW_ICON);
        this.A01 = A02(this.A0C.A05().A1m(), -13816531, EnumC3097qn.SKIP_ARROW);
        View divider = getDivider();
        this.A09.addView(this.A00);
        this.A09.addView(divider);
        this.A09.addView(this.A01);
        this.A00.setOnClickListener(new ViewOnClickListenerC3373vF(this));
        this.A01.setOnClickListener(new ViewOnClickListenerC3374vG(this));
    }

    private void A08() {
        new C2892nO(this.A0C.A05().A37(), getAdEventManager()).A04(EnumC2891nN.A0p, null);
        AbstractC3328uW.A00(this.A0C.A06(), this, this.A0C.A05().A32().A0I().A08());
        int iA00 = this.A0C.A00();
        this.A09.setOrientation(1);
        A09();
        A0A(iA00);
        addView(this.A06);
        A0B(iA00);
        AbstractC3086qc.A0W(this.A0A, AbstractC3086qc.A06(436207616, A0Q));
        A0C(iA00);
        this.A04 = A05();
        this.A0A.addView(this.A04);
        this.A0A.addView(A00());
        this.A06.addView(this.A0A);
        A07();
        this.A06.addView(this.A09);
        this.A04.setVideoURI(this.A0C.A05().A32().A0I().A09());
        this.A04.A0f(EnumC2324e4.A03, 20);
        this.A04.getEventBus().A03(this.A0E, this.A0D);
    }

    private void A09() {
        this.A08.setOrientation(1);
        this.A07.setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        this.A08.setLayoutParams(layoutParams);
        layoutParams.weight = 1.0f;
        A0D(this.A08);
        A0D(this.A07);
        this.A06.addView(this.A08);
        this.A09.addView(this.A07);
    }

    private void A0A(int i) {
        int i2;
        int i3;
        this.A06.setOrientation(i == 1 ? 1 : 0);
        Activity activityA0E = this.A0B.A0E();
        String[] strArr = A0F;
        if (strArr[5].charAt(4) != strArr[1].charAt(4)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0F;
        strArr2[3] = "sBqS2iG";
        strArr2[7] = "52Yc6YXfYsyBxyoZlg1cUOFsleHl";
        if (activityA0E == null || this.A0B.A0E().getWindowManager() == null) {
            return;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.A0B.A0E().getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i4 = displayMetrics.widthPixels;
        int i5 = displayMetrics.heightPixels;
        if (i == 1) {
            i2 = i4 / 6;
            i3 = i5 / 8;
            this.A06.setWeightSum(6.0f);
        } else {
            i2 = i4 / 8;
            i3 = i5 / 6;
            this.A06.setWeightSum(2.0f);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(i2, i3, i2, i3);
        layoutParams.addRule(14);
        this.A06.setLayoutParams(layoutParams);
        setRewardDescContainerVisibility(i);
    }

    private void A0B(int i) {
        LinearLayout.LayoutParams layoutParams;
        if (i == 1) {
            layoutParams = new LinearLayout.LayoutParams(-1, 0);
            layoutParams.setMargins(0, A0S, 0, 0);
            layoutParams.weight = 2.0f;
            this.A09.setGravity(0);
        } else {
            layoutParams = new LinearLayout.LayoutParams(0, -1);
            layoutParams.setMargins(A0R, 0, 0, 0);
            layoutParams.weight = 1.0f;
            this.A09.setGravity(16);
        }
        this.A09.setLayoutParams(layoutParams);
    }

    private void A0C(int i) {
        LinearLayout.LayoutParams layoutParams = i == 1 ? new LinearLayout.LayoutParams(-1, 0) : new LinearLayout.LayoutParams(0, -1);
        layoutParams.weight = i == 1 ? 3.0f : 1.0f;
        this.A0A.setLayoutParams(layoutParams);
    }

    private void A0D(LinearLayout linearLayout) {
        TextView textViewA03 = A03(this.A0C.A05().A1l(), true, 24, -657931, A0M);
        TextView textViewA04 = A03(this.A0C.A05().A1k(), false, 15, -1, A0L);
        linearLayout.addView(textViewA03);
        linearLayout.addView(textViewA04);
    }

    private View getDivider() {
        View view = new View(this.A0B);
        view.setBackgroundColor(-10131605);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, A0N);
        layoutParams.setMargins(0, A0O, 0, A0O);
        view.setLayoutParams(layoutParams);
        return view;
    }

    private void setRewardDescContainerVisibility(int i) {
        if (i == 1) {
            this.A08.setVisibility(0);
            this.A07.setVisibility(8);
        } else {
            this.A08.setVisibility(8);
            this.A07.setVisibility(0);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final EnumC2358ec A1P(String str) {
        return EnumC2358ec.A08;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final void A1Q() {
        super.A1Q();
        if (this.A03 != null) {
            this.A03.A07();
        }
        if (this.A05 != null) {
            C5Z c5z = this.A05;
            String[] strArr = A0F;
            if (strArr[5].charAt(4) != strArr[1].charAt(4)) {
                throw new RuntimeException();
            }
            A0F[6] = "mxwfqv";
            c5z.A0p();
        }
        this.A04.getEventBus().A04(this.A0E, this.A0D);
        this.A00 = null;
        this.A01 = null;
        this.A02 = null;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final boolean A1g() {
        return true;
    }

    public final void A1j(C5Z c5z) {
        if (this.A05 != null) {
            C5Z c5z2 = this.A05;
            if (A0F[6].length() != 6) {
                throw new RuntimeException();
            }
            A0F[0] = "r72G0dWZupYR33KeBxyFecQ512AEwEQE";
            c5z2.A0o(c5z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        A0A(configuration.orientation);
        A0B(configuration.orientation);
        A0C(configuration.orientation);
        requestLayout();
    }

    public void setVideoAdViewListener(InterfaceC3069qL interfaceC3069qL) {
        this.A02 = interfaceC3069qL;
    }
}
