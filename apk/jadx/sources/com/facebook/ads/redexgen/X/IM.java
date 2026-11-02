package com.facebook.ads.redexgen.X;

import android.view.View;
import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class IM extends AbstractC2369eo {
    public static byte[] A03;
    public View A00;
    public final C2657jX A01;
    public final C7D A02;

    static {
        A03();
    }

    public IM(C2657jX c2657jX) {
        this.A02 = c2657jX.A09();
        this.A01 = c2657jX;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 53);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A03 = new byte[]{-23, 7, Ascii.DC4, Ascii.DC4, Ascii.NAK, Ascii.SUB, -58, Ascii.SYN, Ascii.CAN, Ascii.VT, Ascii.EM, Ascii.VT, Ascii.DC4, Ascii.SUB, -58, Ascii.DC4, Ascii.ESC, Ascii.DC2, Ascii.DC2, -58, 7, 10, -4, Ascii.SI, Ascii.VT, Ascii.GS};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A0C() {
        this.A02.A0F().A4v();
        AbstractC2970oh.A00(new IP(this));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A0D() {
        this.A02.A0F().A4y();
        AbstractC2970oh.A00(new IN(this));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A0E(View view) {
        if (view == null) {
            throw new IllegalStateException(A02(0, 26, InterfaceC3669k1.d.b.k));
        }
        this.A02.A0F().A4x();
        this.A00 = view;
        this.A01.A07().removeAllViews();
        this.A01.A07().addView(this.A00);
        if ((this.A00 instanceof C1554Ev) || (this.A00 instanceof C3141rV)) {
            AbstractC2927nz.A01(this.A01.A05(), this.A00, this.A01.A0A());
        }
        C13737f c13737fA08 = this.A01.A08();
        if (c13737fA08 != null) {
            c13737fA08.A0K();
        }
        AbstractC2970oh.A00(new IQ(this));
        this.A01.A0B(this.A01.A07(), this.A00);
        if (C2863mv.A1B(this.A01.A07().getContext())) {
            C3275tf c3275tf = new C3275tf();
            this.A01.A0D(c3275tf);
            c3275tf.A0C(this.A01.getPlacementId());
            c3275tf.A0B(this.A01.A07().getContext().getPackageName());
            if (this.A01.A08() != null && this.A01.A08().A0I() != null) {
                c3275tf.A09(this.A01.A08().A0I().A0C());
            }
            if (this.A00 instanceof C1554Ev) {
                c3275tf.A0A(((C1554Ev) this.A00).getViewabilityChecker());
            }
            this.A00.setOnLongClickListener(new ViewOnLongClickListenerC2665jf(this, c3275tf));
            this.A00.getOverlay().add(c3275tf);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A0F(InterfaceC2368en interfaceC2368en) {
        this.A02.A0F().A4w(this.A01.A08() != null);
        if (this.A01.A08() != null) {
            this.A01.A08().A0L();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A0G(C2922nt c2922nt) {
        this.A02.A0F().A3j(C3076qS.A01(this.A01.A04()), c2922nt.A03().getErrorCode(), c2922nt.A04());
        AbstractC2970oh.A00(new IR(this, c2922nt));
    }
}
