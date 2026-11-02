package com.facebook.ads.redexgen.X;

import android.transition.ChangeBounds;
import android.transition.Explode;
import android.transition.TransitionSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class FE extends AbstractC3184sC {
    public static final int A03 = (int) (AbstractC3045px.A02 * 8.0f);
    public final RelativeLayout A00;
    public final C2479ga A01;
    public final C1618Hi A02;

    public FE(C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, String str, C2416fZ c2416fZ, InterfaceC3120rA interfaceC3120rA, InterfaceC3119r9 interfaceC3119r9) {
        super(c1618Hi, interfaceC2884nG, str, c2416fZ, interfaceC3120rA, interfaceC3119r9);
        this.A02 = c1618Hi;
        this.A01 = AbstractC2480gb.A00(c1618Hi.A02());
        this.A00 = new RelativeLayout(getContext());
        addView(this.A00, new RelativeLayout.LayoutParams(-1, -1));
        AbstractC3086qc.A0O(this.A00, -1728053248);
        if (C2863mv.A2d(c1618Hi)) {
            this.A00.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.sH
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.A00.A0T(view);
                }
            });
        }
    }

    public static RelativeLayout.LayoutParams A00(boolean z) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, z ? -1 : -2);
        layoutParams.addRule(12);
        return layoutParams;
    }

    private void A01() {
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.setOrdering(0);
        transitionSet.addTransition(new ChangeBounds()).addTransition(new Explode());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3184sC
    public final void A0O() {
        C2483ge c2483geA0A = this.A01.A0A();
        C3199sR c3199sR = new C3199sR(this.A02);
        AbstractC3086qc.A0H(1119, c3199sR);
        c3199sR.setInfo(EnumC3097qn.HIDE_AD, this.A01.A0H(), this.A01.A0G());
        c3199sR.setOnClickListener(new ViewOnClickListenerC3190sI(this));
        C2483ge c2483geA0B = this.A01.A0B();
        C3199sR c3199sR2 = new C3199sR(this.A02);
        AbstractC3086qc.A0H(1120, c3199sR2);
        c3199sR2.setInfo(EnumC3097qn.REPORT_AD, this.A01.A0L(), this.A01.A0K());
        c3199sR2.setOnClickListener(new ViewOnClickListenerC3191sJ(this));
        C3199sR c3199sR3 = new C3199sR(this.A02);
        AbstractC3086qc.A0H(1121, c3199sR3);
        c3199sR3.setInfo(EnumC3097qn.AD_CHOICES_ICON, this.A01.A0M(), "");
        c3199sR3.setOnClickListener(new ViewOnClickListenerC3192sK(this));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setClickable(true);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(A03 * 2, A03, A03 * 2, A03);
        AbstractC3086qc.A0O(linearLayout, -1);
        if (!c2483geA0A.A05().isEmpty()) {
            linearLayout.addView(c3199sR, layoutParams);
        }
        if (!c2483geA0B.A05().isEmpty()) {
            linearLayout.addView(c3199sR2, layoutParams);
        }
        linearLayout.addView(c3199sR3, layoutParams);
        A01();
        this.A00.removeAllViews();
        this.A00.addView(linearLayout, A00(false));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3184sC
    public final void A0P() {
        this.A00.removeAllViews();
        AbstractC3086qc.A0K(this);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3184sC
    public final void A0Q(C2483ge c2483ge, EnumC2481gc enumC2481gc) {
        if (enumC2481gc == EnumC2481gc.A04) {
            return;
        }
        boolean z = enumC2481gc == EnumC2481gc.A05;
        C3182sA c3182sAA0L = new C3181s9(this.A02, this.A0D).A0H(z ? this.A01.A0F() : this.A01.A0E()).A0G(this.A01.A0D()).A0E(c2483ge.A04()).A0D(z ? EnumC3097qn.REPORT_AD : EnumC3097qn.HIDE_AD).A0C(z ? -552389 : -13272859).A0F(this.A0C != null ? this.A0C.A01() : "").A0L();
        AbstractC3086qc.A0O(c3182sAA0L, -1);
        AbstractC3086qc.A0X(this);
        this.A00.removeAllViews();
        this.A00.addView(c3182sAA0L, A00(true));
        super.A0Q(c2483ge, enumC2481gc);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3184sC
    public final void A0R(C2483ge c2483ge, EnumC2481gc enumC2481gc) {
        boolean z = enumC2481gc == EnumC2481gc.A05;
        C3202sU c3202sU = new C3202sU(this.A02, c2483ge, this.A0D, z ? this.A01.A0L() : this.A01.A0H(), z ? EnumC3097qn.REPORT_AD : EnumC3097qn.HIDE_AD);
        c3202sU.setClickable(true);
        AbstractC3086qc.A0O(c3202sU, -1);
        c3202sU.setPadding(A03 * 2, A03, A03 * 2, A03);
        A01();
        this.A00.removeAllViews();
        this.A00.addView(c3202sU, A00(false));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3184sC
    public final boolean A0S() {
        return false;
    }

    public final /* synthetic */ void A0T(View view) {
        this.A0D.A5d();
    }
}
