package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.facebook.ads.AdError;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdExtendedListener;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.EnumSet;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Jz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1684Jz implements InterfaceC2450g7 {
    public static byte[] A09;
    public static String[] A0A = {"Q9RghtL5kPMxXUG2hlpmHrVaJwYYGwGq", "TIO3FaU0Mikock0w3rckrPhiuYRMfGhJ", "k6SAISDvmHdOF1rkjeEeymm6HvDlJVR0", "eDRhFd25R2oFsFg27vb0d5UADzs1KoZv", "MaVPWgska1IH7XOKtPwNB8GdxIWUIxDt", "dS1g8OO0fBonmOwqVSSlXi39LbvMIXQb", "JdFW5Fpsu4G", "QGzwgj8zvaLwI8"};
    public static final String A0B;
    public long A00 = -1;
    public InterstitialAd A01;
    public AbstractC2394fD A02;
    public C13727e A03;
    public boolean A04;
    public boolean A05;
    public final C1618Hi A06;
    public final InterstitialAdExtendedListener A07;
    public final C1680Jv A08;

    static {
        A0A();
        A0B = C1684Jz.class.getSimpleName();
    }

    public C1684Jz(C1680Jv c1680Jv, InterfaceC2469gQ interfaceC2469gQ, String str) {
        this.A08 = c1680Jv;
        this.A06 = c1680Jv.A05();
        this.A07 = new C1661Ja(str, interfaceC2469gQ, this);
    }

    public static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 110);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0A() {
        A09 = new byte[]{-59, -14, -92, -27, -24, -92, -16, -13, -27, -24, -92, -19, -9, -92, -27, -16, -10, -23, -27, -24, -3, -92, -19, -14, -92, -12, -10, -13, -21, -10, -23, -9, -9, -78, -92, -35, -13, -7, -92, -9, -20, -13, -7, -16, -24, -92, -5, -27, -19, -8, -92, -22, -13, -10, -92, -27, -24, -48, -13, -27, -24, -23, -24, -84, -83, -92, -8, -13, -92, -26, -23, -92, -25, -27, -16, -16, -23, -24, -4, 33, 39, Ascii.CAN, 37, 38, 39, Ascii.FS, 39, Ascii.FS, Ascii.DC4, Ascii.US, -45, Ascii.US, 34, Ascii.DC4, Ascii.ETB, -45, Ascii.SYN, Ascii.DC4, Ascii.US, Ascii.US, Ascii.CAN, Ascii.ETB, -45, 42, Ascii.ESC, Ascii.FS, Ascii.US, Ascii.CAN, -45, 38, Ascii.ESC, 34, 42, Ascii.FS, 33, Ascii.SUB, -45, Ascii.FS, 33, 39, Ascii.CAN, 37, 38, 39, Ascii.FS, 39, Ascii.FS, Ascii.DC4, Ascii.US, -31, Ascii.CR, Ascii.FS, Ascii.NAK};
    }

    public final long A0D() {
        if (this.A03 != null) {
            return this.A03.A0F();
        }
        return -1L;
    }

    public final C1680Jv A0E() {
        return this.A08;
    }

    public final C1618Hi A0F() {
        return this.A06;
    }

    public final void A0G(EnumSet<CacheFlag> enumSet, String str) {
        String strA02;
        this.A00 = System.currentTimeMillis();
        if (!this.A05 && this.A03 != null) {
            Log.w(A0B, A09(0, 78, 22));
        }
        this.A05 = false;
        if (this.A04 && !C2863mv.A0g(this.A06)) {
            this.A06.A08().ABz(A09(130, 3, 62), AbstractC2786lf.A0L, new C2787lg(A09(78, 52, 69)));
            AdErrorType adErrorType = AdErrorType.LOAD_CALLED_WHILE_SHOWING_AD;
            this.A06.A0F().A3j(C3076qS.A01(this.A00), adErrorType.getErrorCode(), adErrorType.getDefaultErrorMessage());
            this.A07.onError(this.A08.A7K(), new AdError(adErrorType.getErrorCode(), adErrorType.getDefaultErrorMessage()));
            return;
        }
        if (this.A03 != null) {
            this.A03.A0R(new K4(this));
            this.A03.A0M();
            this.A03.A0J();
            this.A03 = null;
        }
        C2441fy c2441fy = new C2441fy(this.A08.A0A(), AbstractC2927nz.A00(this.A06.getResources().getDisplayMetrics()), AdPlacementType.INTERSTITIAL, EnumC2924nw.A07, 1, enumSet, this.A08.A06());
        if (C2863mv.A2j(this.A06) && (strA02 = C3012pQ.A02(this.A06, this.A08.A08())) != null) {
            C1680Jv c1680Jv = this.A08;
            if (A0A[6].length() != 11) {
                throw new RuntimeException();
            }
            String[] strArr = A0A;
            strArr[3] = "6YCA3PHZSlLj0jmN2b2hvaW99ZyRMwjh";
            strArr[5] = "7PoIPIeUN8KAt8vfreK3c69iBAU82q7R";
            c1680Jv.A0I(strA02);
        }
        c2441fy.A06(this.A08.A08());
        c2441fy.A07(this.A08.A09());
        c2441fy.A04(this.A08.A03());
        this.A03 = new C13727e(this.A06, c2441fy);
        this.A03.A0R(new K1(this));
        this.A03.A0V(str);
    }

    public final boolean A0H() {
        return this.A03 == null || this.A03.A0Y();
    }

    public final boolean A0I() {
        return this.A05;
    }

    public final boolean A0J() {
        AdError adError = AdError.SHOW_CALLED_BEFORE_LOAD_ERROR;
        if (!this.A05) {
            this.A06.A0F().A3j(C3076qS.A01(this.A00), adError.getErrorCode(), adError.getErrorMessage());
            this.A07.onError(this.A08.A7K(), adError);
            return false;
        }
        if (this.A03 != null) {
            this.A03.A0L();
            this.A04 = true;
            this.A05 = false;
            return true;
        }
        this.A06.A08().ABz(A09(130, 3, 62), AbstractC2786lf.A0S, new C2787lg(AdErrorType.INTERSTITIAL_CONTROLLER_IS_NULL.getDefaultErrorMessage()));
        this.A06.A0F().A3j(C3076qS.A01(this.A00), adError.getErrorCode(), adError.getErrorMessage());
        this.A07.onError(this.A08.A7K(), adError);
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2450g7
    public final void destroy() {
        if (this.A03 != null) {
            this.A03.A0R(new K0(this));
            this.A03.A0X(true);
            this.A03.A0J();
            this.A03 = null;
            this.A05 = false;
            this.A04 = false;
        }
    }
}
