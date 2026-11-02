package com.facebook.ads.redexgen.X;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ea, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1533Ea extends AbstractC3345un implements InterfaceC3038pq {
    public static byte[] A05;
    public static final int A06;
    public final LA A00;
    public final C3040ps A01;
    public final InterfaceC3119r9 A02;
    public final C3372vE A03;
    public final C2989p0 A04;

    static {
        A01();
        A06 = Resources.getSystem().getDisplayMetrics().widthPixels;
    }

    public C1533Ea(C3349ur c3349ur, boolean z) {
        int id;
        int iA01;
        super(c3349ur, z);
        this.A02 = c3349ur.A0C();
        this.A00 = c3349ur.A05();
        this.A03 = new C3372vE(c3349ur.A06(), c3349ur.A02());
        this.A03.A01(getTitleDescContainer(), z);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        layoutParams.setMargins(AbstractC3345un.A09, AbstractC3345un.A09, AbstractC3345un.A09, AbstractC3345un.A09);
        getCtaButton().setLayoutParams(layoutParams);
        if (c3349ur.A0H()) {
            this.A04 = new C2989p0(c3349ur.A06());
            this.A04.setPageDetails(c3349ur.A05().A35());
            AbstractC3086qc.A0H(1007, this.A04);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.addRule(2, getCtaButton().getId());
            layoutParams2.setMargins(AbstractC3345un.A09, AbstractC3345un.A09 - (AbstractC3345un.A09 / 2), AbstractC3345un.A09, 0);
            this.A04.setLayoutParams(layoutParams2);
            id = this.A04.getId();
            iA01 = c3349ur.A01() - (AbstractC3345un.A09 / 2);
        } else {
            id = getCtaButton().getId();
            iA01 = c3349ur.A01();
            this.A04 = null;
        }
        FrameLayout frameLayout = new FrameLayout(c3349ur.A06());
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams3.addRule(10);
        layoutParams3.addRule(2, id);
        layoutParams3.setMargins(0, iA01, 0, 0);
        frameLayout.setLayoutParams(layoutParams3);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams4.gravity = 17;
        layoutParams4.setMargins(AbstractC3345un.A09, 0, AbstractC3345un.A09, 0);
        frameLayout.addView(this.A03, layoutParams4);
        addView(frameLayout);
        if (this.A04 != null) {
            addView(this.A04);
        }
        addView(getCtaButton());
        getCtaButton().A0I(c3349ur.A05(), c3349ur.A0B());
        View viewA02 = c3349ur.A02();
        this.A01 = C3040ps.A00(c3349ur.A06(), this.A00, this);
        C3039pr c3039prA02 = this.A01.A02(this.A00);
        c3349ur.A06().A0H().A00(c3039prA02.A01);
        if (viewA02 != null && c3039prA02.A00) {
            viewA02.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.ux
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.A00.A1j(view);
                }
            });
        } else if (viewA02 != null && C2863mv.A1J(getAdContextWrapper())) {
            AbstractC3281tl.A00(viewA02, C2863mv.A1K(getAdContextWrapper()), new ViewOnClickListenerC3356uy(this));
        }
        if (C2863mv.A16(c3349ur.A06())) {
            getTitleDescContainer().setCTAClickListener(getCtaButton());
            if (c3349ur.A0B() != null) {
                c3349ur.A0B().setCTAClickListener(getCtaButton());
            }
        }
        if (this.A04 == null || !C2863mv.A17(c3349ur.A06())) {
            return;
        }
        this.A04.setOnClickListener(getCtaButton());
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 22);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{52, 48, 60, 58, 56};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final boolean A0A() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final boolean A0H() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final void A1Q() {
        super.A1Q();
        this.A01.A03();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final void A1X(C2395fE c2395fE, String str, double d, Bundle bundle) {
        super.A1X(c2395fE, str, d, bundle);
        if (d > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            this.A03.A00((int) (((double) (A06 - (AbstractC3345un.A09 * 2))) / d));
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final boolean A1g() {
        return false;
    }

    public final /* synthetic */ void A1j(View view) {
        getCtaButton().A0E(A00(0, 5, 75));
    }
}
