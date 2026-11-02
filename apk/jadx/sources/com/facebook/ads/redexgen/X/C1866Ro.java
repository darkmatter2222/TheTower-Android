package com.facebook.ads.redexgen.X;

import java.io.IOException;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ro, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1866Ro implements VF {
    public static String[] A03 = {"hCZczwbChjUsCUwxRw6prGp4a38eJSZM", "lUxYycgrJvFaPUBvx4GBEhYiK4m9kyuX", "K7biVkji8c2abFRUzoZE35M16Nr30sHx", "hTaSJqeXWqACDI8Tl6AegleljrjoWV5D", "4GC", "suRSw9BBhIrTo6orh3wdvsggGiK", "dvp9xbjmJkXWLC3W6qrOil1Xu4dhPnSh", "oqp"};
    public boolean A00;
    public final VF A01;
    public final /* synthetic */ C8t A02;

    public C1866Ro(C8t c8t, VF vf) {
        this.A02 = c8t;
        this.A01 = vf;
    }

    public final void A00() {
        this.A00 = false;
    }

    @Override // com.facebook.ads.redexgen.X.VF
    public final boolean ABM() {
        return !this.A02.A03() && this.A01.ABM();
    }

    @Override // com.facebook.ads.redexgen.X.VF
    public final void ADI() throws IOException {
        this.A01.ADI();
    }

    @Override // com.facebook.ads.redexgen.X.VF
    public final int AIc(C1800Oo c1800Oo, T2 t2, int i) {
        if (this.A02.A03()) {
            return -3;
        }
        if (this.A00) {
            t2.A02(4);
            return -4;
        }
        int iAIc = this.A01.AIc(c1800Oo, t2, i);
        if (iAIc == -5) {
            VC vc = (VC) AbstractC1722Ln.A01(c1800Oo.A00);
            if (vc.A08 != 0 || vc.A09 != 0) {
                int i2 = this.A02.A01 != 0 ? 0 : vc.A08;
                int i3 = this.A02.A00 == Long.MIN_VALUE ? vc.A09 : 0;
                String[] strArr = A03;
                if (strArr[4].length() != strArr[7].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A03;
                strArr2[0] = "WpZbgUFarAhkaO4qnIOIScSSR6ujkzkK";
                strArr2[6] = "iA8VkZH4E7gleQVLcFVju57gueYFZ33h";
                c1800Oo.A00 = vc.A07().A0d(i2).A0e(i3).A14();
            }
            return -5;
        }
        if (this.A02.A00 == Long.MIN_VALUE || ((iAIc != -4 || t2.A01 < this.A02.A00) && !(iAIc == -3 && this.A02.A7i() == Long.MIN_VALUE && !t2.A04))) {
            return iAIc;
        }
        t2.A0A();
        t2.A02(4);
        this.A00 = true;
        String[] strArr3 = A03;
        if (strArr3[4].length() != strArr3[7].length()) {
            A03[5] = "E04rMJY30HIlU2cAr5Aw7XTbX1n";
            return -4;
        }
        String[] strArr4 = A03;
        strArr4[2] = "yIpeBBrJ1qAZRfAnlHEP2FJkUi25hvbC";
        strArr4[1] = "1ozWe3aBUM1ISpzViZAE5MteBltu21sg";
        return -4;
    }

    @Override // com.facebook.ads.redexgen.X.VF
    public final int ALK(long j) {
        if (this.A02.A03()) {
            return -3;
        }
        return this.A01.ALK(j);
    }
}
