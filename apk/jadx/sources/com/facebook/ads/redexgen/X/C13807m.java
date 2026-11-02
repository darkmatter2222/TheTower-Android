package com.facebook.ads.redexgen.X;

import android.content.ContentResolver;
import android.content.Intent;
import android.provider.Settings;
import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.util.activity.ActivityUtils;
import com.facebook.ads.internal.util.activity.AdActivityIntent;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7m, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C13807m extends LG {
    public static C2746kz A0D;
    public static byte[] A0E;
    public static String[] A0F = {"YJVWhBFSVFKs7NrWmWULGh", "0GvTyPfIpVaCupDTXIuhVv", "vKmpQ0k2zgunQxdAFsx7Wlk6dmYtSCUc", "dqRYVPDeGy45RCRFCWIUPRHRtp9NBigI", "NSweCua6lZ8ChPFZ3cKnaOBscLcsrWLc", "HenZyTRrHhMHTWT00jKprDJGPW9d4C4V", "lvvcgtkpn6JHhS0LrJ19j3FN0lJsZZOv", "GmBDkEWrzwPugE8SLtTHysECIxUFQGpg"};
    public long A00;
    public InterfaceC2387f6 A01;
    public C2388f7 A02;
    public AbstractC2394fD A03;
    public C1618Hi A04;
    public EnumC2955oR A05;
    public C1905Tb A06;
    public String A07;
    public String A08;
    public String A09;
    public String A0A;
    public final String A0B = UUID.randomUUID().toString();
    public final AtomicBoolean A0C = new AtomicBoolean();

    static {
        A09();
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 126);
        }
        return new String(bArrCopyOfRange);
    }

    private void A07() {
        C2500gw.A00(this.A04).A06(this.A02, this.A02.A00());
    }

    private void A08() {
        if (this.A02 != null) {
            try {
                C2500gw.A00(this.A04).A05(this.A02);
            } catch (Exception unused) {
            }
        }
    }

    public static void A09() {
        A0E = new byte[]{56, 52, 54, 54, 48, 57, 48, 39, 58, 56, 48, 33, 48, 39, 10, 39, 58, 33, 52, 33, 60, 58, 59, 108, 99, 82, 108, 110, 121, 100, 123, 100, 121, 116, 9, 2, Ascii.VT, 3, 4, Ascii.SI, Ascii.SO, 43, Ascii.SO, 46, Ascii.VT, Ascii.RS, Ascii.VT, 40, Ascii.US, 4, Ascii.SO, 6, Ascii.SI, 68, 76, 77, SignedBytes.MAX_POWER_OF_TWO, 72, 93, SignedBytes.MAX_POWER_OF_TWO, 70, 71, 109, 72, 93, 72, Ascii.FF, Ascii.DLE, Ascii.GS, Ascii.US, Ascii.EM, 17, Ascii.EM, Ascii.DC2, 8, 53, Ascii.CAN, 87, 85, 66, 67, 66, 65, 78, 73, 66, 67, 104, 85, 78, 66, 73, 83, 70, 83, 78, 72, 73, 108, 66, 94, 4, 19, 7, 3, 19, 5, 2, 34, Ascii.US, Ascii.ESC, 19, 104, 127, 109, 123, 104, 126, 73, 127, 104, 108, 127, 104, 79, 72, 86, Ascii.EM, Ascii.SO, Ascii.FS, 10, Ascii.EM, Ascii.SI, Ascii.SO, Ascii.SI, Base64.padSymbol, 2, Ascii.SI, Ascii.SO, 4, 42, Ascii.SI, 47, 10, Ascii.US, 10, 41, Ascii.RS, 5, Ascii.SI, 7, Ascii.SO, 87, SignedBytes.MAX_POWER_OF_TWO, 82, 68, 87, 65, SignedBytes.MAX_POWER_OF_TWO, 65, 122, 83, 76, 65, SignedBytes.MAX_POWER_OF_TWO, 74, 124, 103, 96, 120, 124, 108, SignedBytes.MAX_POWER_OF_TWO, 109, 83, 76, SignedBytes.MAX_POWER_OF_TWO, 82, 113, 92, 85, SignedBytes.MAX_POWER_OF_TWO};
    }

    private void A0A(Intent intent) {
        int i = super.A00;
        String strA05 = A05(77, 24, 89);
        if (i != -1) {
            ContentResolver contentResolver = this.A04.getContentResolver();
            if (A0F[3].charAt(29) != 'i') {
                throw new RuntimeException();
            }
            String[] strArr = A0F;
            strArr[7] = "ryaiaZaF8EzuUPZd67FeoIG9jUALGHZG";
            strArr[6] = "XITZtpYy2wf6QHmOozCOnY6Xlkm3ca51";
            if (Settings.System.getInt(contentResolver, A05(1, 22, 43), 0) != 1) {
                int i2 = super.A00;
                if (A0F[2].charAt(2) != 'm') {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0F;
                strArr2[1] = "mo2n49jFbf8CHvb7nubztA";
                strArr2[0] = "3h0LYrxRFByrgEG7Z48zJG";
                intent.putExtra(strA05, i2);
                return;
            }
        }
        if (C2863mv.A0f(this.A04)) {
            return;
        }
        intent.putExtra(strA05, 6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0C(final C1618Hi c1618Hi, final C1708Kz c1708Kz, final int i) {
        if (i >= c1708Kz.A2v()) {
            return;
        }
        final C13747g c13747g = (C13747g) c1708Kz.A2z(i);
        A0D = new C2746kz(c1618Hi);
        A0D.A0e(new C2892nO(c13747g.A37(), c1618Hi.A0A()));
        if (c13747g.A39().size() > 1) {
            AbstractC2440fx.A03(c1618Hi, A0D, c13747g);
        } else {
            AbstractC2440fx.A02(c1618Hi, A0D, c13747g);
        }
        final boolean z = i == 0;
        A0D.A0X(new KM(z) { // from class: com.facebook.ads.redexgen.X.7n
            @Override // com.facebook.ads.redexgen.X.KM
            public final void A00() {
                this.A01.A01.AGw(this.A01, AdError.CACHE_ERROR);
            }

            @Override // com.facebook.ads.redexgen.X.KM
            public final void A01(boolean z2) {
                C13807m.A0D = null;
                if (z2) {
                    c1618Hi.A01().AKW(c13747g.A37(), c1708Kz.A30());
                }
                if (i == c1708Kz.A2x()) {
                    this.A01.A0C.set(true);
                    this.A01.A01.AGt(this.A01);
                }
                this.A01.A0C(c1618Hi, c1708Kz, i + 1);
            }
        }, new C2739ks(c13747g.A1r(), A05(152, 14, 91), i));
    }

    private void A0D(boolean z) {
        if (this.A05 == EnumC2955oR.A0H) {
            A0F(z);
            return;
        }
        EnumC2955oR enumC2955oR = this.A05;
        String[] strArr = A0F;
        if (strArr[1].length() != strArr[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0F;
        strArr2[4] = "1yOiFacRiwJanRzqDJ6A5hJ77lYfziAe";
        strArr2[5] = "McEelBumOV7dKb1zb6BdvUT5HG6VvrgI";
        if (enumC2955oR != EnumC2955oR.A0I) {
            if (this.A05 == EnumC2955oR.A0K) {
                A0G(z);
                return;
            } else if (this.A05 == EnumC2955oR.A0J) {
                A0E(z);
                return;
            } else {
                A0G(z);
                return;
            }
        }
        C1618Hi c1618Hi = this.A04;
        C13747g c13747g = (C13747g) this.A03;
        InterfaceC2387f6 interfaceC2387f6 = this.A01;
        if (A0F[2].charAt(2) == 'm') {
            A0F[3] = "ILTFu289iGTDK30YJZ974PSb1jdVwigU";
            AbstractC2386f5.A02(c1618Hi, c13747g, interfaceC2387f6, this.A0C, this);
        } else {
            String[] strArr3 = A0F;
            strArr3[4] = "iuhCbiYTMBJ6bSiVa8laVFn7PspsTGXh";
            strArr3[5] = "G6DDtB1lS5Mkt2kKUdjWlkRFPy2AJN8W";
            AbstractC2386f5.A02(c1618Hi, c13747g, interfaceC2387f6, this.A0C, this);
        }
    }

    private void A0E(boolean z) {
        C2746kz c2746kz = new C2746kz(this.A04);
        boolean z2 = C2863mv.A2H(this.A04) && C2711kP.A0A(this.A03.A1x());
        if (!z2) {
            AbstractC2439fw.A02(this.A04, (LA) this.A03, z, new LR(this));
            return;
        }
        C2711kP c2711kP = new C2711kP(c2746kz, this.A03.A1x(), this.A03.A1c(), this.A03.A1r(), z2, new LT(this));
        c2746kz.A0e(new C2892nO(((LA) this.A03).A37(), this.A04.A0A()));
        c2711kP.A0B();
    }

    private void A0F(boolean z) {
        C2746kz c2746kz = new C2746kz(this.A04);
        c2746kz.A0e(new C2892nO(((LA) this.A03).A37(), this.A04.A0A()));
        AbstractC2440fx.A03(this.A04, c2746kz, (C13747g) this.A03);
        c2746kz.A0X(new C1715Lg(this), new C2739ks(this.A03.A1r(), A05(152, 14, 91)));
    }

    private void A0G(boolean z) {
        boolean z2 = false;
        if (this.A03.A2L()) {
            C1708Kz c1708Kz = (C1708Kz) this.A03;
            for (int i = 0; i < c1708Kz.A2v(); i++) {
                if (!A0H(c1708Kz.A2z(i))) {
                    this.A01.AGw(this, AdError.INTERNAL_ERROR);
                    return;
                }
            }
            A0C(this.A04, c1708Kz, 0);
            return;
        }
        C2746kz c2746kz = new C2746kz(this.A04);
        c2746kz.A0e(new C2892nO(((LA) this.A03).A37(), this.A04.A0A()));
        if (C2863mv.A2H(this.A04) && C2711kP.A0A(this.A03.A1x())) {
            z2 = true;
        }
        boolean zA2Q = this.A03.A2Q();
        if (z2) {
            new C2711kP(c2746kz, this.A03.A1x(), this.A03.A1c(), this.A03.A1r(), z2, new C1713Le(this, zA2Q)).A0B();
            return;
        }
        C13747g c13747g = (C13747g) this.A03;
        if (!TextUtils.isEmpty(c13747g.A32().A0I().A09())) {
            AbstractC2440fx.A02(this.A04, c2746kz, c13747g);
            c2746kz.A0X(new C13827o(this, z, zA2Q, c13747g, this), new C2739ks(c13747g.A1r(), A05(152, 14, 91)));
        } else {
            if (this.A05 == EnumC2955oR.A0L) {
                this.A04.A0F().AFT();
            }
            this.A01.AGw(this, AdError.INTERNAL_ERROR);
        }
    }

    private boolean A0H(LA la) {
        if (la.A39().size() > 1) {
            return true;
        }
        boolean zIsEmpty = TextUtils.isEmpty(la.A32().A0I().A09());
        if (A0F[3].charAt(29) != 'i') {
            throw new RuntimeException();
        }
        A0F[3] = "kjF6g6ww3qDDyel7svnLAojonSzXQi6O";
        return (zIsEmpty && TextUtils.isEmpty(la.A32().A0I().A08())) ? false : true;
    }

    @Override // com.facebook.ads.redexgen.X.LG
    public final int A0I() {
        if (this.A03 != null) {
            return this.A03.A1M();
        }
        String[] strArr = A0F;
        if (strArr[4].charAt(5) == strArr[5].charAt(5)) {
            throw new RuntimeException();
        }
        A0F[3] = "zy8kAWNFspHhc9OUOOhBHMIK4AaCMilm";
        return -1;
    }

    @Override // com.facebook.ads.redexgen.X.LG
    public final AbstractC2394fD A0J() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.LG
    public final boolean A0K() {
        if (!this.A0C.get()) {
            return false;
        }
        this.A03.A1z(super.A01);
        String strA04 = C2474gV.A04(super.A02, this.A0B, this.A07);
        this.A03.A20(super.A02);
        this.A03.A24(strA04);
        AdActivityIntent adActivityIntentA06 = C2997p8.A06(this.A04);
        adActivityIntentA06.putExtra(A05(174, 8, 91), this.A05);
        if (this.A05 == EnumC2955oR.A0H && this.A03.A2k()) {
            AbstractC2671jl.A02(this.A0B, (LA) this.A03);
        } else {
            EnumC2955oR enumC2955oR = this.A05;
            EnumC2955oR enumC2955oR2 = EnumC2955oR.A06;
            String[] strArr = A0F;
            if (strArr[1].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0F;
            strArr2[1] = "L0ou65zbaEHIK9W1EiRqjH";
            strArr2[0] = "MlzKsAmmQguOmiSj0COpPP";
            if (enumC2955oR == enumC2955oR2 && this.A03.A2l()) {
                AbstractC2672jm.A02(this.A0B, (C1708Kz) this.A03);
            } else {
                adActivityIntentA06.putExtra(A05(127, 25, 21), this.A03);
                adActivityIntentA06.putExtra(A05(34, 19, 20), this.A03);
            }
        }
        adActivityIntentA06.putExtra(A05(166, 8, 119), this.A0B);
        if (strA04 != null) {
            adActivityIntentA06.putExtra(A05(InterfaceC3669k1.d.b.j, 15, 100), strA04);
        }
        adActivityIntentA06.putExtra(A05(66, 11, 2), this.A0A);
        adActivityIntentA06.putExtra(A05(101, 11, 8), this.A00);
        if (this.A09 != null) {
            adActivityIntentA06.putExtra(A05(53, 13, 87), this.A09);
        }
        A0A(adActivityIntentA06);
        if (!ProcessUtils.isRemoteRenderingProcess()) {
            adActivityIntentA06.setFlags(adActivityIntentA06.getFlags() | 268435456);
        }
        ActivityUtils.A03(this.A04);
        try {
            if (!ProcessUtils.isRemoteRenderingProcess()) {
                C2997p8.A0D(this.A04, adActivityIntentA06);
                return true;
            }
            if (C2997p8.A0K(this.A04, adActivityIntentA06)) {
                return true;
            }
            this.A04.A0F().AJQ();
            if (this.A01 != null) {
                this.A01.AGw(this, AdError.AD_PRESENTATION_ERROR);
            }
            return false;
        } catch (C2995p6 e) {
            if (this.A05 == EnumC2955oR.A0H && this.A03.A2k()) {
                AbstractC2671jl.A01(this.A0B);
            }
            if (this.A05 == EnumC2955oR.A06 && this.A03.A2l()) {
                AbstractC2672jm.A01(this.A0B);
            }
            Throwable cause = e.getCause();
            C2995p6 cause2 = e;
            if (cause != null) {
                cause2 = e.getCause();
            }
            this.A04.A08().ABz(A05(23, 11, 115), AbstractC2786lf.A01, new C2787lg(cause2));
            return true;
        }
    }

    public final void A0L(C1618Hi c1618Hi, InterfaceC2387f6 interfaceC2387f6, C2442fz c2442fz, boolean z, String str, String str2) {
        this.A0C.set(false);
        this.A04 = c1618Hi;
        this.A01 = interfaceC2387f6;
        this.A0A = c2442fz.A02();
        this.A00 = c2442fz.A00();
        this.A09 = str2;
        this.A07 = this.A0A != null ? this.A0A.split(A05(0, 1, 25))[0] : A05(0, 0, 20);
        this.A03 = AbstractC2394fD.A0H(c2442fz.A03(), this.A04);
        this.A03.A22(str);
        this.A03.A1y(c2442fz.A01().A06());
        if (this.A03.A2L()) {
            this.A08 = ((C1708Kz) this.A03).A32();
        } else {
            this.A08 = ((LA) this.A03).A37();
        }
        boolean zA2Q = this.A03.A2Q();
        String[] strArr = A0F;
        if (strArr[7].charAt(31) == strArr[6].charAt(31)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0F;
        strArr2[7] = "T6UzDEu82kzY1KsvV3iHB7OkWnIxnMBs";
        strArr2[6] = "PWXGgNcAlDXPEXP1mMx0dPQCA8p68UI5";
        if (!zA2Q) {
            switch (this.A03.A1L()) {
                case 0:
                    this.A05 = EnumC2955oR.A0K;
                    this.A04.A0F().ALB(EnumC2311dr.A0D);
                    break;
                case 1:
                    this.A05 = EnumC2955oR.A0J;
                    this.A04.A0F().ALB(EnumC2311dr.A0C);
                    break;
                case 2:
                    this.A05 = EnumC2955oR.A06;
                    this.A04.A0F().ALB(EnumC2311dr.A04);
                    break;
                case 3:
                    this.A05 = EnumC2955oR.A0H;
                    this.A04.A0F().ALB(EnumC2311dr.A03);
                    break;
                case 4:
                    this.A05 = EnumC2955oR.A0L;
                    C1618Hi c1618Hi2 = this.A04;
                    String[] strArr3 = A0F;
                    if (strArr3[7].charAt(31) != strArr3[6].charAt(31)) {
                        String[] strArr4 = A0F;
                        strArr4[7] = "FFkeuuVk1meHqgTyMiNT7tgr8739x7mc";
                        strArr4[6] = "JwuXN3bqyC9CcnquHiHDyzq7R0rb3kLZ";
                        c1618Hi2.A0F().ALB(EnumC2311dr.A0E);
                    } else {
                        String[] strArr5 = A0F;
                        strArr5[7] = "QuYSy7nqZhyT9avsyztjWhd8F7hW1wjU";
                        strArr5[6] = "5b6UXiMlNaCol2aZqv4zpvCfEMtgCuxD";
                        c1618Hi2.A0F().ALB(EnumC2311dr.A0E);
                    }
                    break;
                case 5:
                    if (!C2863mv.A1H(c1618Hi)) {
                        this.A01.AGw(this, AdError.INTERNAL_ERROR);
                        return;
                    }
                    this.A05 = EnumC2955oR.A0I;
                    this.A04.A0F().ALB(EnumC2311dr.A0B);
                    if (this.A03.A2o()) {
                        AbstractC2394fD abstractC2394fD = this.A03;
                        if (A0F[3].charAt(29) != 'i') {
                            A0F[3] = "i1vVIMuEE2CogviWDEosGc55NgD83ibP";
                            abstractC2394fD.A26(true);
                        } else {
                            A0F[2] = "e7mQJdX4ST7JevLzoIctPRomcGPYY6Su";
                            abstractC2394fD.A26(true);
                        }
                    }
                    break;
                    break;
            }
        } else {
            this.A05 = EnumC2955oR.A09;
            if (this.A03.A2B()) {
                this.A04.A0F().ALB(EnumC2311dr.A08);
            } else {
                this.A04.A0F().ALB(EnumC2311dr.A0A);
            }
        }
        if (C2863mv.A0u(c1618Hi)) {
            if (this.A03.A2L()) {
                C1708Kz c1708Kz = (C1708Kz) this.A03;
                for (int iA2v = c1708Kz.A2v() - 1; iA2v >= 0; iA2v--) {
                    LA laA2z = c1708Kz.A2z(iA2v);
                    if (AbstractC2365ej.A06(this.A04, AbstractC2365ej.A01(c1618Hi, laA2z.A1x(), laA2z.A37()), c1618Hi.A0A())) {
                        this.A04.A0F().A5b();
                        c1708Kz.A34(iA2v);
                        return;
                    }
                }
                if (c1708Kz.A2v() == 0) {
                    this.A01.AGw(this, AdError.NO_FILL);
                    return;
                }
            } else if (AbstractC2365ej.A06(this.A04, AbstractC2365ej.A01(c1618Hi, c2442fz.A03(), ((LA) this.A03).A37()), c1618Hi.A0A())) {
                this.A04.A0F().A5b();
                this.A01.AGw(this, AdError.NO_FILL);
                return;
            }
        }
        this.A02 = new C2388f7(this.A0B, this, interfaceC2387f6);
        A07();
        A0D(z);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2368en
    public final String A7z() {
        return this.A08;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2368en
    public final boolean ALe() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2368en
    public final void onDestroy() {
        A08();
    }
}
