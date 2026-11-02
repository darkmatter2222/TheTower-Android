package com.facebook.ads.redexgen.X;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6g, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C13486g extends AbstractC1538Ef {
    public static byte[] A02;
    public static final int A03;
    public final View A00;
    public final boolean A01;

    static {
        A01();
        A03 = Resources.getSystem().getDisplayMetrics().widthPixels;
    }

    public C13486g(C3349ur c3349ur, boolean z) {
        super(c3349ur, true);
        this.A01 = z;
        this.A00 = c3349ur.A02();
        if (this.A00 == null) {
            return;
        }
        A1l();
        if (this.A01) {
            addView(this.A00, new RelativeLayout.LayoutParams(-1, -1));
        } else {
            FrameLayout frameLayout = new FrameLayout(c3349ur.A06());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(2, getAdDetailsView().getId());
            frameLayout.setLayoutParams(layoutParams);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams2.gravity = 17;
            layoutParams2.setMargins(AbstractC3345un.A09, 0, AbstractC3345un.A09, 0);
            frameLayout.addView(this.A00, layoutParams2);
            addView(frameLayout);
        }
        C3039pr c3039prA02 = ((AbstractC1538Ef) this).A08.A02(getAdDataBundle());
        c3349ur.A06().A0H().A00(c3039prA02.A01);
        if (this.A00 != null) {
            if (c3039prA02.A00) {
                this.A00.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.us
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.A00.A1q(view);
                    }
                });
            } else if (C2863mv.A1J(getAdContextWrapper())) {
                AbstractC3281tl.A00(this.A00, C2863mv.A1K(getAdContextWrapper()), new ViewOnClickListenerC3351ut(this));
            }
        }
        getAdDetailsView().bringToFront();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 101);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-24, -20, -32, -26, -28};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final boolean A0A() {
        return this.A01 && super.A0A();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final boolean A0H() {
        return this.A01 && super.A0A();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1538Ef, com.facebook.ads.redexgen.X.AbstractC3345un
    public final void A1X(C2395fE c2395fE, String str, double d, Bundle bundle) {
        super.A1X(c2395fE, str, d, bundle);
        if (this.A01 || d <= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE || this.A00 == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) (((double) (A03 - (AbstractC3345un.A09 * 2))) / d));
        layoutParams.gravity = 17;
        layoutParams.setMargins(AbstractC3345un.A09, 0, AbstractC3345un.A09, 0);
        this.A00.setLayoutParams(layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final boolean A1g() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1538Ef
    public final AbstractC3284to A1k(C3349ur c3349ur, C2395fE c2395fE, String str) {
        return new C1540Eh(c3349ur.A06(), getCtaButton(), AbstractC1538Ef.A0G, c2395fE.A0J().A00() == EnumC2400fJ.A05, getColors(), c2395fE.A0K().A07(), str, c3349ur.A07(), c3349ur.A0C(), c3349ur.A0F(), c3349ur.A0A(), c3349ur.A05());
    }

    public final /* synthetic */ void A1q(View view) {
        getCtaButton().A0E(A00(0, 5, 26));
    }
}
