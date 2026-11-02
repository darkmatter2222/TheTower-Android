package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Jy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1683Jy extends AbstractC2369eo {
    public static byte[] A01;
    public static String[] A02 = {"7kSkrPID5YMo1WnvaMIgpKB6WIhQPZTc", "kYnVnFR0h3Yv", "", "4OZGrpocgzJPR2XOpe36kiptmUtlR1IY", "AELVZqmE3v", "ezzX0t3o6v3ClFiCUOYeN27kq8G", "mBbxV2ZqaJcWXY", "eL94qTtIFL"};
    public final /* synthetic */ C1681Jw A00;

    static {
        A01();
    }

    public C1683Jy(C1681Jw c1681Jw) {
        this.A00 = c1681Jw;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 61);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-28, -13, -20, -53, -41, -42, -36, -38, -41, -44, -44, -51, -38, -120, -47, -37, -120, -42, -35, -44, -44};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A06() {
        this.A00.A07.onRewardServerFailed();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A07() {
        this.A00.A07.onRewardServerSuccess();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A08() {
        if (this.A00.A02 == null) {
            this.A00.A07.onRewardedVideoCompleted();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A09() {
        if (this.A00.A02 == null) {
            this.A00.A07.onRewardedVideoActivityDestroyed();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A0A() {
        if (this.A00.A02 == null) {
            this.A00.A07.onRewardedVideoClosed();
            return;
        }
        C2707kL c2707kL = (C2707kL) this.A00.A02.buildShowAdConfig();
        c2707kL.A02(System.currentTimeMillis() - this.A00.A01);
        this.A00.A02.show(c2707kL.build());
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
    public final void A0F(InterfaceC2368en interfaceC2368en) {
        if (this.A00.A04 == null) {
            this.A00.A06.A08().ABz(A00(0, 3, 70), AbstractC2786lf.A0N, new C2787lg(A00(3, 18, 43)));
            return;
        }
        LG lg = (LG) interfaceC2368en;
        if (this.A00.A08.A03 != null) {
            lg.A02(this.A00.A08.A03);
        }
        C1663Jc c1663Jc = this.A00.A08;
        int iA0I = lg.A0I();
        String[] strArr = A02;
        if (strArr[4].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[4] = "61YjDYRNNN";
        strArr2[7] = "vT3ubuaNP5";
        c1663Jc.A00 = iA0I;
        this.A00.A05 = true;
        this.A00.A03 = this.A00.A04.A0H();
        if (this.A00.A03 != null) {
            int iA2y = this.A00.A03.A2L() ? 0 : ((LA) this.A00.A03).A2y();
            if (iA2y > 0) {
                C3012pQ c3012pQ = new C3012pQ();
                if (c3012pQ.A09(this.A00.A06, this.A00.A08.A06, iA2y)) {
                    c3012pQ.A08(this.A00.A06, true);
                    this.A00.A02 = c3012pQ.A07(this.A00.A06, this.A00.A08.A0D, this.A00.A08.A06);
                } else {
                    C1681Jw c1681Jw = this.A00;
                    String[] strArr3 = A02;
                    if (strArr3[4].length() != strArr3[7].length()) {
                        String[] strArr4 = A02;
                        strArr4[4] = "df15N9yr5s";
                        strArr4[7] = "rrfEFjVt4q";
                        c3012pQ.A08(c1681Jw.A06, false);
                    } else {
                        String[] strArr5 = A02;
                        strArr5[1] = "7AaEv1vCH3bw";
                        strArr5[5] = "Y1uo0lYkjhkOAjcvNvodbhiOq3C";
                        c3012pQ.A08(c1681Jw.A06, false);
                    }
                }
            }
        }
        if (this.A00.A02 == null) {
            this.A00.A07.onAdLoaded(this.A00.A08.A7K());
        } else {
            ((LA) this.A00.A03).A3C(true);
            this.A00.A02.loadAd(this.A00.A02.buildLoadAdConfig().withFailOnCacheFailureEnabled(true).withRewardData(this.A00.A03.A1R()).withAdExperience(this.A00.A08.A02).withAdListener(new C2452g9(this)).build());
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A0G(C2922nt c2922nt) {
        this.A00.A0D(true);
        this.A00.A08.A0B.A0F().A3j(C3076qS.A01(this.A00.A00), c2922nt.A03().getErrorCode(), c2922nt.A04());
        this.A00.A07.onError(this.A00.A08.A7K(), AbstractC3014pS.A00(c2922nt));
    }
}
