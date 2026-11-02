package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.facebook.ads.AdError;
import com.facebook.ads.AdExperienceType;
import com.facebook.ads.RewardData;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.S2SRewardedVideoAdExtendedListener;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Jw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1681Jw implements InterfaceC2450g7 {
    public static byte[] A09;
    public static String[] A0A = {"gd6Snq8TqC5qGLc", "5Vo8FrFWo5Fl4YG5W1yHT6ZfMsOXSACT", "HYpFHiAeuVvng5d4eXQK0awgijL0SEef", "zgL9OdntC9Jt", "c4pha1QVXZPHNWU", "oPtBq8V8zceab2K03f0YSkruz1vfGvQp", "tGZii7gSURWSZ1CI0FSKqsks", "YmWpveYB3lCv"};
    public static final String A0B;
    public long A01;
    public RewardedVideoAd A02;
    public AbstractC2394fD A03;
    public C13687a A04;
    public final C1618Hi A06;
    public final S2SRewardedVideoAdExtendedListener A07;
    public final C1663Jc A08;
    public boolean A05 = false;
    public long A00 = -1;

    static {
        A0A();
        A0B = C1681Jw.class.getSimpleName();
    }

    public C1681Jw(C1663Jc c1663Jc, InterfaceC2469gQ interfaceC2469gQ, String str) {
        this.A08 = c1663Jc;
        this.A06 = c1663Jc.A0B;
        this.A07 = new JZ(str, interfaceC2469gQ, this, c1663Jc);
    }

    public static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 93);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0A() {
        A09 = new byte[]{120, 87, Ascii.EM, 88, 93, Ascii.EM, 85, 86, 88, 93, Ascii.EM, 80, 74, Ascii.EM, 88, 85, 75, 92, 88, 93, SignedBytes.MAX_POWER_OF_TWO, Ascii.EM, 80, 87, Ascii.EM, 73, 75, 86, 94, 75, 92, 74, 74, Ascii.ETB, Ascii.EM, 96, 86, 76, Ascii.EM, 74, 81, 86, 76, 85, 93, Ascii.EM, 78, 88, 80, 77, Ascii.EM, 95, 86, 75, Ascii.EM, 88, 93, 117, 86, 88, 93, 92, 93, 17, Ascii.DLE, Ascii.EM, 77, 86, Ascii.EM, 91, 92, Ascii.EM, 90, 88, 85, 85, 92, 93, 47, Ascii.CAN, Ascii.CAN, 5, Ascii.CAN, 74, 6, 5, Ascii.VT, Ascii.SO, 3, 4, Ascii.CR, 74, Ascii.CAN, Ascii.SI, Ascii.GS, Ascii.VT, Ascii.CAN, Ascii.SO, Ascii.SI, Ascii.SO, 74, Ascii.FS, 3, Ascii.SO, Ascii.SI, 5, 74, Ascii.VT, Ascii.SO, 92, 77, 84};
        if (A0A[6].length() != 24) {
            throw new RuntimeException();
        }
        String[] strArr = A0A;
        strArr[4] = "OGOVhUIoezz1oHK";
        strArr[0] = "xl2MkcRK0CWEWUY";
    }

    private void A0C(String str, AdExperienceType adExperienceType, boolean z) {
        String strA02;
        if (!this.A05 && this.A04 != null) {
            Log.w(A0B, A09(0, 78, 100));
        }
        A0D(false);
        this.A05 = false;
        C2441fy c2441fy = new C2441fy(this.A08.A0D, EnumC2925nx.A06, AdPlacementType.REWARDED_VIDEO, EnumC2924nw.A07, 1, this.A08.A0C);
        c2441fy.A08(z);
        if (C2863mv.A2j(this.A06) && (strA02 = C3012pQ.A02(this.A06, this.A08.A06)) != null) {
            C1663Jc c1663Jc = this.A08;
            String[] strArr = A0A;
            if (strArr[2].charAt(28) != strArr[1].charAt(28)) {
                throw new RuntimeException();
            }
            A0A[6] = "NRWBzlFLQPOGySbiiYXSLDN6";
            c1663Jc.A06 = strA02;
        }
        c2441fy.A06(this.A08.A06);
        c2441fy.A07(this.A08.A07);
        this.A04 = new C13687a(this.A08.A0B, c2441fy);
        this.A04.A0R(new C1683Jy(this));
        this.A04.A0W(str, adExperienceType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0D(boolean z) {
        if (this.A04 != null) {
            this.A04.A0R(new C1682Jx(this));
            this.A04.A0X(z);
            this.A04.A0J();
            this.A04 = null;
        }
    }

    public final long A0F() {
        if (this.A04 != null) {
            return this.A04.A0F();
        }
        return -1L;
    }

    public final C1663Jc A0G() {
        return this.A08;
    }

    public final C1618Hi A0H() {
        return this.A06;
    }

    public final void A0I(RewardData rewardData) {
        this.A08.A03 = rewardData;
        if (!this.A05 || this.A04 == null) {
            return;
        }
        this.A04.A0Z(rewardData);
    }

    public final void A0J(String str, AdExperienceType adExperienceType, boolean z) {
        this.A00 = System.currentTimeMillis();
        try {
            A0C(str, adExperienceType, z);
        } catch (Exception e) {
            Log.e(A0B, A09(78, 31, 55), e);
            this.A08.A0B.A08().ABz(A09(109, 3, 96), AbstractC2786lf.A0b, new C2787lg(e));
            AdError adErrorInternalError = AdError.internalError(AdError.INTERNAL_ERROR_2004);
            this.A08.A0B.A0F().A3j(C3076qS.A01(this.A00), adErrorInternalError.getErrorCode(), adErrorInternalError.getErrorMessage());
            this.A07.onError(this.A08.A7K(), adErrorInternalError);
        }
    }

    public final boolean A0K() {
        return this.A04 == null || this.A04.A0Y();
    }

    public final boolean A0L() {
        return this.A05;
    }

    public final boolean A0M(int i, long j) {
        if (!this.A05) {
            this.A07.onError(this.A08.A7K(), AdError.SHOW_CALLED_BEFORE_LOAD_ERROR);
            return false;
        }
        if (this.A04 == null) {
            this.A05 = false;
            return false;
        }
        this.A01 = System.currentTimeMillis();
        this.A04.A08.A02(i);
        this.A04.A08.A03(j);
        this.A04.A0L();
        this.A05 = false;
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2450g7
    public final void destroy() {
        A0D(true);
    }
}
