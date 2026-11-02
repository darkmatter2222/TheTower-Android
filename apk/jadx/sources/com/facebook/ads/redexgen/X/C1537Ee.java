package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ee, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1537Ee extends AbstractC3345un implements InterfaceC3038pq {
    public static byte[] A03;
    public final LA A00;
    public final C3040ps A01;
    public final InterfaceC3119r9 A02;

    static {
        A01();
    }

    public C1537Ee(C3349ur c3349ur, boolean z) {
        super(c3349ur, true);
        this.A02 = c3349ur.A0C();
        this.A00 = c3349ur.A05();
        RelativeLayout relativeLayout = new RelativeLayout(c3349ur.A06());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        AbstractC3086qc.A0V(relativeLayout, getAdContextWrapper());
        LinearLayout linearLayout = new LinearLayout(c3349ur.A06());
        linearLayout.setOrientation(!z ? 1 : 0);
        linearLayout.setGravity(80);
        AbstractC3086qc.A0L(linearLayout);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(AbstractC3345un.A09, 0, AbstractC3345un.A09, AbstractC3345un.A09);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(z ? -2 : -1, -2);
        layoutParams3.setMargins(z ? AbstractC3345un.A09 : 0, z ? 0 : AbstractC3345un.A09, 0, 0);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(z ? 0 : -1, -2);
        layoutParams4.setMargins(0, 0, 0, 0);
        layoutParams4.weight = 1.0f;
        linearLayout.addView(getTitleDescContainer(), layoutParams4);
        this.A01 = C3040ps.A00(c3349ur.A06(), this.A00, this);
        C3039pr c3039prA02 = this.A01.A02(this.A00);
        c3349ur.A06().A0H().A00(c3039prA02.A01);
        if (c3349ur.A0H() && !z) {
            C2989p0 c2989p0 = new C2989p0(c3349ur.A06());
            c2989p0.setPageDetails(c3349ur.A05().A35());
            int iA05 = this.A08.A05().A31().A00().A05(true);
            c2989p0.A02(iA05, iA05);
            AbstractC3086qc.A0H(1007, c2989p0);
            LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams5.setMargins(0, AbstractC3345un.A09, 0, 0);
            linearLayout.addView(c2989p0, layoutParams5);
            if (C2863mv.A17(c3349ur.A06())) {
                c2989p0.setOnClickListener(getCtaButton());
            }
        }
        linearLayout.addView(getCtaButton(), layoutParams3);
        relativeLayout.addView(linearLayout, layoutParams2);
        getCtaButton().A0I(c3349ur.A05(), c3349ur.A0B());
        View viewA02 = c3349ur.A02();
        if (viewA02 != null && (c3039prA02.A00 || C2863mv.A1J(getAdContextWrapper()))) {
            FrameLayout.LayoutParams layoutParams6 = z ? new FrameLayout.LayoutParams(-2, -1) : new FrameLayout.LayoutParams(-1, -2);
            layoutParams6.gravity = 17;
            FrameLayout frameLayout = new FrameLayout(c3349ur.A06());
            frameLayout.addView(viewA02, layoutParams6);
            addView(frameLayout, new RelativeLayout.LayoutParams(-1, -1));
            if (c3039prA02.A00) {
                viewA02.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.ui
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.A00.A1j(view);
                    }
                });
            } else {
                AbstractC3281tl.A00(viewA02, C2863mv.A1K(getAdContextWrapper()), new ViewOnClickListenerC3341uj(this));
            }
        } else if (viewA02 != null) {
            addView(viewA02, new RelativeLayout.LayoutParams(-1, -1));
        }
        addView(relativeLayout, layoutParams);
        if (C2863mv.A16(c3349ur.A06())) {
            getTitleDescContainer().setCTAClickListener(getCtaButton());
            if (c3349ur.A0B() != null) {
                c3349ur.A0B().setCTAClickListener(getCtaButton());
            }
        }
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 41);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{-22, -18, -30, -24, -26};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final void A1Q() {
        super.A1Q();
        this.A01.A03();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final void A1X(C2395fE c2395fE, String str, double d, Bundle bundle) {
        super.A1X(c2395fE, str, d, bundle);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final boolean A1g() {
        return true;
    }

    public final /* synthetic */ void A1j(View view) {
        getCtaButton().A0E(A00(0, 5, 88));
    }
}
