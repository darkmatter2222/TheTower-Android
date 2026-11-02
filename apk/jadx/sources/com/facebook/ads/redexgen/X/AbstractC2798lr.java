package com.facebook.ads.redexgen.X;

import android.widget.RelativeLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.lr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2798lr {
    public static AbstractC13235h A00(final C3349ur c3349ur, int i, final String str, final C1483Cc c1483Cc, int i2) {
        if (i == 1) {
            switch (i2) {
                case 1:
                    return new C12743k(c3349ur, str, c1483Cc);
                case 2:
                    return new C12723i(c3349ur, str, c1483Cc);
            }
        }
        return new AbstractC13235h(c3349ur, str, c1483Cc) { // from class: com.facebook.ads.redexgen.X.3j
            public static final int A00 = (int) (AbstractC3045px.A02 * 12.0f);

            @Override // com.facebook.ads.redexgen.X.AbstractC3345un
            public final boolean A03() {
                return false;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC13235h, com.facebook.ads.redexgen.X.AbstractC3345un
            public final boolean A0H() {
                return false;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC13235h
            public final void A1t(C1618Hi c1618Hi) {
                C3327uV titleDescContainer = getTitleDescContainer();
                titleDescContainer.setAlignment(3);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams.addRule(8, getMediaContainer().getId());
                titleDescContainer.setLayoutParams(layoutParams);
                titleDescContainer.setPadding(A00, A00, A00, A00);
                AbstractC3086qc.A0V(titleDescContainer, getAdContextWrapper());
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams2.addRule(3, getMediaContainer().getId());
                getCtaButton().setLayoutParams(layoutParams2);
                addView(getMediaContainer());
                addView(titleDescContainer);
                addView(getCtaButton());
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC13235h
            public final void A1u(C1618Hi c1618Hi, InterfaceC2619iv interfaceC2619iv) {
            }
        };
    }
}
