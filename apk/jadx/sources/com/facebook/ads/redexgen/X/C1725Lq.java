package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.util.Log;
import android.view.WindowManager;
import com.facebook.ads.AdError;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.RewardData;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.facebook.ads.internal.util.activity.ActivityUtils;
import com.facebook.ads.internal.util.activity.AdActivityIntent;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.UUID;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Lq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1725Lq implements InterfaceC2368en, InterfaceC2427fk {
    public static byte[] A0B;
    public static String[] A0C = {"PgLDGrk3t3a26fQCrT3IpIrRB5PMNBKm", "uls9HIPpriPjzjIXJVTR7HWmS4IMGzWu", "f2YRmtND2fanruA3kJYGXgN9aGwgjawI", "EZdssni07U2TMPMup9RmA63S0tAhTBNo", "xilKUxawUAlWzUTJOedtCKHAHwNBDRxA", "SxIuirRfQS0L7ik0LzQXw", "dF8CYh", "NQmOIXzIEfwTEqDrM9Z7TuMEUTKSiMNX"};
    public long A00;
    public RewardData A01;
    public InterfaceC2379ey A02;
    public C2380ez A03;
    public C2428fl A04;
    public C1618Hi A05;
    public String A06;
    public String A07;
    public String A08;
    public boolean A09;
    public final String A0A = UUID.randomUUID().toString();

    static {
        A05();
    }

    private int A00() {
        int rotation = ((WindowManager) this.A05.getSystemService(A03(194, 6, 88))).getDefaultDisplay().getRotation();
        EnumC3282tm enumC3282tmA02 = A02();
        if (enumC3282tmA02 == EnumC3282tm.A06) {
            return -1;
        }
        if (enumC3282tmA02 == EnumC3282tm.A04) {
            switch (rotation) {
                case 2:
                case 3:
                    return 8;
                default:
                    return 0;
            }
        }
        switch (rotation) {
            case 2:
                return 9;
            default:
                String[] strArr = A0C;
                if (strArr[3].charAt(11) != strArr[7].charAt(11)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0C;
                strArr2[3] = "CZdwi0h9oyeTk4ywD5LtkOxTOpQ29Yc4";
                strArr2[7] = "yy96Y2PoNFwTE84mLwUlYETryPZgGhEq";
                return 1;
        }
    }

    private final EnumC2955oR A01() {
        return this.A04.A0E();
    }

    private EnumC3282tm A02() {
        return this.A04.A0F();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 8);
        }
        return new String(bArrCopyOfRange);
    }

    private void A04() {
        this.A09 = true;
    }

    public static void A05() {
        byte[] bArr = {78, 108, 99, 42, 121, 45, 126, 121, 108, 127, 121, 45, 76, 120, 105, 100, 104, 99, 110, 104, 67, 104, 121, 122, 98, 127, 102, 76, 110, 121, 100, 123, 100, 121, 116, 35, 45, SignedBytes.MAX_POWER_OF_TWO, 108, 102, 104, 45, 126, 120, 127, 104, 45, 121, 101, 108, 121, 45, 100, 121, 42, 126, 45, 100, 99, 45, 116, 98, 120, 127, 45, 76, 99, 105, 127, 98, 100, 105, SignedBytes.MAX_POWER_OF_TWO, 108, 99, 100, 107, 104, 126, 121, 35, 117, 96, 97, 45, 107, 100, 97, 104, 35, 73, 77, 78, 122, 107, 102, 106, 97, 108, 106, 65, 106, 123, 120, 96, 125, 100, 68, 37, 42, Ascii.ESC, 37, 39, 48, 45, 50, 45, 48, Base64.padSymbol, 83, 91, 90, 87, 95, 74, 87, 81, 80, 122, 95, 74, 95, Ascii.FF, Ascii.DLE, Ascii.GS, Ascii.US, Ascii.EM, 17, Ascii.EM, Ascii.DC2, 8, 53, Ascii.CAN, 52, 54, 33, 32, 33, 34, 45, 42, 33, 32, Ascii.VT, 54, 45, 33, 42, 48, 37, 48, 45, 43, 42, Ascii.SI, 33, Base64.padSymbol, 6, 17, 5, 1, 17, 7, 0, 32, Ascii.GS, Ascii.EM, 17, 114, 105, 110, 118, 114, 98, 78, 99, Ascii.RS, 1, Ascii.CR, Ascii.US, 60, 17, Ascii.CAN, Ascii.CR, 39, 57, 62, 52, 63, 39};
        if (A0C[1].charAt(29) == 'g') {
            throw new RuntimeException();
        }
        String[] strArr = A0C;
        strArr[4] = "6qgGoSyjmuhDFT94hunOHzgd3UUS7LMQ";
        strArr[0] = "q1PjRK7gg6WFD8n4pAFO870HLaNMi7ir";
        A0B = bArr;
    }

    private void A06(Intent intent) {
        this.A04.A0I(intent, this.A01, C2474gV.A04(this.A01, this.A0A, this.A06));
    }

    private final void A07(C1618Hi c1618Hi, InterfaceC2379ey interfaceC2379ey, C2442fz c2442fz, EnumSet<CacheFlag> enumSet, String str) {
        C2428fl c2428fl = new C2428fl(c1618Hi, c2442fz, this, str);
        AbstractC2394fD abstractC2394fDA0D = c2428fl.A0D();
        if (C2863mv.A0u(c1618Hi)) {
            boolean z = abstractC2394fDA0D instanceof LA;
            String[] strArr = A0C;
            if (strArr[3].charAt(11) == strArr[7].charAt(11)) {
                A0C[2] = "TkuXboGIr4gI6uBXxoSPLVsF8oObr4N9";
                if (z && AbstractC2365ej.A06(this.A05, AbstractC2365ej.A01(c1618Hi, c2442fz.A03(), ((LA) abstractC2394fDA0D).A37()), c1618Hi.A0A())) {
                    this.A05.A0F().A5b();
                    this.A02.AFJ(this, AdError.NO_FILL);
                    String[] strArr2 = A0C;
                    if (strArr2[3].charAt(11) == strArr2[7].charAt(11)) {
                        A0C[1] = "78EqxHXjdVB4uq4fqkQnSqdXUgUnX7wU";
                        return;
                    }
                }
            }
            throw new RuntimeException();
        }
        this.A04 = c2428fl;
        A08(c2428fl.A0E());
        c2428fl.A0J(c1618Hi, enumSet);
    }

    private void A08(EnumC2955oR enumC2955oR) {
        if (enumC2955oR.equals(EnumC2955oR.A05)) {
            this.A05.A0F().ALB(EnumC2311dr.A04);
            return;
        }
        if (enumC2955oR.equals(EnumC2955oR.A0B)) {
            this.A05.A0F().ALB(EnumC2311dr.A03);
            return;
        }
        if (enumC2955oR.equals(EnumC2955oR.A0C)) {
            this.A05.A0F().ALB(EnumC2311dr.A0B);
            return;
        }
        if (enumC2955oR.equals(EnumC2955oR.A0E)) {
            this.A05.A0F().ALB(EnumC2311dr.A0D);
            return;
        }
        if (enumC2955oR.equals(EnumC2955oR.A0D)) {
            this.A05.A0F().ALB(EnumC2311dr.A0C);
            return;
        }
        boolean zEquals = enumC2955oR.equals(EnumC2955oR.A07);
        String[] strArr = A0C;
        if (strArr[5].length() == strArr[6].length()) {
            throw new RuntimeException();
        }
        A0C[2] = "SZ1DhKHJxqFOmux8c4F7iNiG5ZFRRvjL";
        if (zEquals) {
            if (this.A04.A0K()) {
                this.A05.A0F().ALB(EnumC2311dr.A08);
            } else if ((A09() instanceof LA) && this.A04.A0L((LA) A09())) {
                this.A05.A0F().ALB(EnumC2311dr.A0A);
            } else {
                this.A05.A0F().ALB(EnumC2311dr.A09);
            }
        }
    }

    public final AbstractC2394fD A09() {
        return this.A04.A0D();
    }

    public final void A0A(C1618Hi c1618Hi, InterfaceC2379ey interfaceC2379ey, C2442fz c2442fz, EnumSet<CacheFlag> enumSet, String str, String str2, RewardData rewardData) {
        this.A05 = c1618Hi;
        this.A02 = interfaceC2379ey;
        this.A08 = c2442fz.A02();
        this.A06 = this.A08 != null ? this.A08.split(A03(kotlin.fh.h1, 1, 19))[0] : A03(0, 0, 5);
        this.A00 = c2442fz.A00();
        this.A07 = str2;
        this.A01 = rewardData;
        A07(c1618Hi, interfaceC2379ey, c2442fz, enumSet, str);
    }

    public final boolean A0B() {
        if (!this.A09) {
            if (this.A02 != null) {
                this.A02.AFJ(this, AdError.SHOW_CALLED_BEFORE_LOAD_ERROR);
            }
            return false;
        }
        AdActivityIntent adActivityIntentA06 = C2997p8.A06(this.A05);
        adActivityIntentA06.putExtra(A03(143, 24, 76), A00());
        adActivityIntentA06.putExtra(A03(178, 8, 15), this.A0A);
        adActivityIntentA06.putExtra(A03(132, 11, 116), this.A08);
        adActivityIntentA06.putExtra(A03(167, 11, 124), this.A00);
        EnumC2955oR enumC2955oRA01 = A01();
        A08(enumC2955oRA01);
        adActivityIntentA06.putExtra(A03(186, 8, 96), enumC2955oRA01);
        if (this.A07 != null) {
            adActivityIntentA06.putExtra(A03(119, 13, 54), this.A07);
        }
        A06(adActivityIntentA06);
        if (!ProcessUtils.isRemoteRenderingProcess()) {
            String[] strArr = A0C;
            if (strArr[5].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            A0C[2] = "xZPvgBO8krDV4upi6ZXzWcYT2LzaCOyj";
            adActivityIntentA06.addFlags(268435456);
        }
        try {
            ActivityUtils.A03(this.A05);
            if (!ProcessUtils.isRemoteRenderingProcess()) {
                C2997p8.A0D(this.A05, adActivityIntentA06);
                return true;
            }
            if (C2997p8.A0K(this.A05, adActivityIntentA06)) {
                return true;
            }
            this.A05.A0F().AJQ();
            if (this.A02 != null) {
                this.A02.AFJ(this, AdError.AD_PRESENTATION_ERROR);
            }
            return false;
        } catch (C2995p6 e) {
            Throwable cause = e.getCause();
            C2995p6 cause2 = e;
            if (cause != null) {
                cause2 = e.getCause();
            }
            this.A05.A08().ABz(A03(108, 11, 76), AbstractC2786lf.A0D, new C2787lg(cause2));
            Log.e(A03(90, 17, 7), A03(0, 90, 5), cause2);
            return false;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2368en
    public final String A7z() {
        return this.A04.A0G();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2368en
    public final AdPlacementType A9N() {
        return AdPlacementType.INTERSTITIAL;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2427fk
    public final void ADk(AdError adError) {
        if (this.A02 != null) {
            this.A02.AFJ(this, adError);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2427fk
    public final void ADl() {
        A04();
        this.A02.AFI(this);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2427fk
    public final void AIm() {
        this.A03 = new C2380ez(this.A05, this.A0A, this, this.A02);
        this.A03.A02();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2368en
    public final boolean ALe() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2427fk
    public final void ALr() {
        if (this.A03 != null) {
            this.A03.A03();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2368en
    public final void onDestroy() {
        if (this.A04 != null) {
            this.A04.A0H();
        }
    }
}
