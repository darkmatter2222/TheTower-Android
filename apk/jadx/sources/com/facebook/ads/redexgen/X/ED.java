package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class ED extends AbstractC3345un {
    public static byte[] A00;
    public static String[] A01 = {"tJRtfPKHoy7gQ0Hrrag4OkVDHQvHpM6e", "ntrk62ddU7J9c8B2GtO4dhepCrAVPpDV", "iQ54QNqjdD5kyZO2OLG", "4R7BJQoUCBFINf313UyvxR7fWPUp11Dk", "Ad2P", "mQFjJcGEaXO3GAoxmnr0yBCCZwtlhd6p", "65xONPI2i6gPpcf6kW2ve41HMoO1k057", "z69fhWo2iasYfVs3h6jnYZwontL4UpVs"};

    static {
        A0I();
    }

    public ED(C3349ur c3349ur, boolean z) {
        super(c3349ur, z);
        if (C2863mv.A16(c3349ur.A06())) {
            if (c3349ur.A0B() != null) {
                c3349ur.A0B().setCTAClickListener(getCtaButton());
            }
            getTitleDescContainer().setCTAClickListener(getCtaButton());
        }
    }

    public static String A0H(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 94);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0I() {
        A00 = new byte[]{43, 46, 46, 47, 62, 43, 51, 54, Base64.padSymbol};
    }

    public final void A1j() {
        if (!C2863mv.A16(this.A08.A06()) || this.A08.A0B() == null) {
            return;
        }
        this.A08.A0B().setCTAClickListener(getCtaButton());
    }

    public abstract void A1k();

    public abstract void A1l();

    public abstract void A1m();

    public abstract boolean A1n();

    public abstract boolean A1o();

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public ViewOnClickListenerC1544El getCtaButton() {
        return super.getCtaButton();
    }

    public void setAdDetailsClickListener(AbstractC3284to abstractC3284to) {
        if (!C2863mv.A16(this.A08.A06()) || abstractC3284to == null) {
            return;
        }
        ViewOnClickListenerC1544El ctaButton = getCtaButton();
        if (A01[1].charAt(21) != 'h') {
            throw new RuntimeException();
        }
        A01[3] = "am5A0dIgunRuJRLaM18rzwVTPisxqXDR";
        abstractC3284to.setOnClickListener(AbstractC3335ud.A03(ctaButton, A0H(0, 9, 108)));
    }

    public void setupNativeCtaExtension(C2974ol c2974ol) {
    }
}
