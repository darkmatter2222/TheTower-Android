package com.facebook.ads.redexgen.X;

import android.view.View;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class K1 extends AbstractC2369eo {
    public static byte[] A01;
    public static String[] A02 = {"", "lR4UvBki6PSdVcLREjEHAbqRd1OmLUQf", "DjKPGQUWmMf7x", "ODfaPUPPzX7KhktdCz15RADFZIjUcUTH", "SOtQhTlfKwNvvZXzwoqU2I3z2iEV30z7", "BHtVd6ktyCMEATMZK8J5wjGrCvXYI9tG", "P8UTzFKpwpJ94", "IxNcf87J3g"};
    public final /* synthetic */ C1684Jz A00;

    static {
        A01();
    }

    public K1(C1684Jz c1684Jz) {
        this.A00 = c1684Jz;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 126);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{99, 114, 107, Ascii.GS, 17, Ascii.DLE, 10, Ascii.FF, 17, Ascii.DC2, Ascii.DC2, Ascii.ESC, Ascii.FF, 94, Ascii.ETB, Ascii.CR, 94, Ascii.DLE, Ascii.VT, Ascii.DC2, Ascii.DC2};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A02() {
        if (this.A00.A01 == null) {
            this.A00.A06.A0F().AAx();
            this.A00.A04 = false;
            this.A00.A07.onInterstitialActivityDestroyed();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A04() {
        if (this.A00.A01 != null) {
            this.A00.A01.show();
            return;
        }
        this.A00.A06.A0F().AAy();
        this.A00.A04 = false;
        if (this.A00.A03 != null && C2863mv.A2D(this.A00.A06)) {
            this.A00.A03.A0R(new K2(this));
            this.A00.A03.A0M();
            this.A00.A03.A0J();
            this.A00.A03 = null;
        }
        this.A00.A07.onInterstitialDismissed(this.A00.A08.A7K());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A05() {
        this.A00.A06.A0F().AAz();
        this.A00.A07.onInterstitialDisplayed(this.A00.A08.A7K());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A06() {
        this.A00.A07.onRewardedAdServerFailed();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A07() {
        this.A00.A07.onRewardedAdServerSucceeded();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A08() {
        this.A00.A07.onRewardedAdCompleted();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A0C() {
        this.A00.A06.A0F().A3g();
        this.A00.A07.onAdClicked(this.A00.A08.A7K());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A0D() {
        this.A00.A07.onLoggingImpression(this.A00.A08.A7K());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A0E(View view) {
    }

    /* JADX WARN: Code duplicated, block: B:16:0x009a  */
    /* JADX WARN: Code duplicated, block: B:18:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:24:0x013b  */
    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A0F(InterfaceC2368en interfaceC2368en) {
        C3012pQ c3012pQ;
        if (this.A00.A03 == null) {
            this.A00.A06.A08().ABz(A00(0, 3, 124), AbstractC2786lf.A0N, new C2787lg(A00(3, 18, 0)));
            return;
        }
        this.A00.A05 = true;
        this.A00.A02 = this.A00.A03.A0H();
        boolean z = this.A00.A02 instanceof LA;
        String[] strArr = A02;
        if (strArr[6].length() != strArr[2].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[1] = "VeASnUkJuhfeOmGjJqk9CbDFf3FFhRFx";
        strArr2[5] = "TZLIDWk0RuIbUDThQePy8NEYvQ7OtG1H";
        if (!z) {
            this.A00.A07.onAdLoaded(this.A00.A08.A7K());
            return;
        }
        LA la = (LA) this.A00.A02;
        int iA2y = la.A2y();
        String[] strArr3 = A02;
        if (strArr3[0].length() != strArr3[3].length()) {
            String[] strArr4 = A02;
            strArr4[6] = "g2LThTD3HDKTh";
            strArr4[2] = "DwNNkt8z8VoEk";
            if (iA2y > 0) {
                c3012pQ = new C3012pQ();
                if (c3012pQ.A09(this.A00.A06, this.A00.A08.A08(), la.A2y())) {
                    c3012pQ.A08(this.A00.A06, true);
                    this.A00.A01 = c3012pQ.A06(this.A00.A06, this.A00.A08.A0A(), this.A00.A08.A08());
                } else {
                    c3012pQ.A08(this.A00.A06, false);
                }
            }
        } else if (iA2y > 0) {
            c3012pQ = new C3012pQ();
            if (c3012pQ.A09(this.A00.A06, this.A00.A08.A08(), la.A2y())) {
                c3012pQ.A08(this.A00.A06, true);
                this.A00.A01 = c3012pQ.A06(this.A00.A06, this.A00.A08.A0A(), this.A00.A08.A08());
            } else {
                c3012pQ.A08(this.A00.A06, false);
            }
        }
        if (this.A00.A01 == null) {
            this.A00.A07.onAdLoaded(this.A00.A08.A7K());
            return;
        }
        la.A3C(true);
        this.A00.A01.loadAd(this.A00.A01.buildLoadAdConfig().withAdListener(new C2451g8(this, la)).withCacheFlags(this.A00.A08.A0B()).withRewardData(this.A00.A08.A03()).build());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A0G(C2922nt c2922nt) {
        this.A00.A06.A0F().A3j(C3076qS.A01(this.A00.A00), c2922nt.A03().getErrorCode(), c2922nt.A04());
        this.A00.A07.onError(this.A00.A08.A7K(), AbstractC3014pS.A00(c2922nt));
    }
}
