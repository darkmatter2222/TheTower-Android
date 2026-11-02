package com.facebook.ads.redexgen.X;

import android.widget.RelativeLayout;
import java.util.HashMap;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3306uA {
    /* JADX WARN: Type inference failed for: r0v0, types: [com.facebook.ads.redexgen.X.3t] */
    public static C12833t A00(final C3349ur c3349ur, final GT gt, final String str, final C13596r c13596r) {
        final boolean z = true;
        return new C13506i(c3349ur, gt, z, str, c13596r) { // from class: com.facebook.ads.redexgen.X.3t
            public ViewOnClickListenerC1544El A00;
            public C2974ol A01;
            public final InterfaceC2884nG A02 = this.A0I.A06().A02().A0A();
            public final GT A03;
            public final C13596r A04;
            public final String A05;
            public static final int A07 = (int) (AbstractC3045px.A02 * (-4.0f));
            public static final int A06 = (int) (AbstractC3045px.A02 * 6.0f);

            {
                this.A03 = gt;
                this.A05 = str;
                this.A04 = c13596r;
                this.A03.A1Q(this);
            }

            @Override // com.facebook.ads.redexgen.X.ED
            public void setupNativeCtaExtension(C2974ol c2974ol) {
                this.A01 = c2974ol;
                int iA0O = C2863mv.A0O(this.A0I.A06());
                C2404fN c2404fNA01 = this.A03.A13().A31().A01();
                this.A00 = new ViewOnClickListenerC1544El(this.A0I.A06(), this.A03.A13().A1X(), c2404fNA01, this.A02, C3265tV.getDummyListener(), this.A04.A0n(), this.A03.A1E(), this.A03.A13() == null ? null : this.A03.A13().A33());
                this.A00.setCta(c2974ol.A03().A0K(), this.A05, new HashMap());
                this.A03.A1Q(this.A00);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                if (iA0O == 1) {
                    layoutParams.addRule(12);
                    AbstractC3086qc.A0S(this.A00, A06, 5, c2404fNA01.A0A(false));
                    ((C13506i) this).A06.addView(this.A00, layoutParams);
                } else if (iA0O == 2) {
                    layoutParams.addRule(3, ((C13506i) this).A06.getId());
                    layoutParams.setMargins(0, A07, 0, 0);
                    addView(this.A00, 0, layoutParams);
                    ((C13506i) this).A06.bringToFront();
                }
            }
        };
    }
}
