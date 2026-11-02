package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.Log;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Gt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1603Gt implements InterfaceC2884nG {
    public static InterfaceC2884nG A03;
    public static byte[] A04;
    public static final String A05;
    public static volatile boolean A06;
    public final C1617Hh A00;
    public final InterfaceC2836mU A01;
    public final InterfaceC2883nF A02;

    static {
        A03();
        A05 = C1603Gt.class.getSimpleName();
        A06 = false;
    }

    public C1603Gt(C1617Hh c1617Hh) {
        InterfaceC2882nE interfaceC2882nEA01;
        this.A00 = c1617Hh;
        if (AbstractC2865mx.A0T(c1617Hh)) {
            this.A01 = AbstractC2834mS.A00(c1617Hh);
            interfaceC2882nEA01 = AbstractC2889nL.A00(c1617Hh, this.A01);
        } else {
            C7A c7aA01 = AbstractC2834mS.A01(c1617Hh);
            interfaceC2882nEA01 = AbstractC2889nL.A01(c1617Hh, c7aA01);
            this.A01 = c7aA01;
        }
        this.A02 = new C1606Gw(c1617Hh, interfaceC2882nEA01);
        ExecutorC3091qh.A08.execute(new C1605Gv(this));
        A04(c1617Hh);
    }

    public static synchronized InterfaceC2884nG A01(C1617Hh c1617Hh) {
        if (A03 == null) {
            A03 = new C1603Gt(c1617Hh);
        }
        return A03;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 79);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A04 = new byte[]{-90, -21, -4, -21, -12, -6, -76, -88, -37, -37, -52, -44, -41, -37, -48, -43, -50, -121, -37, -42, -121, -45, -42, -50, -121, -56, -43, -121, -48, -43, -35, -56, -45, -48, -53, -121, -43, -13, -30, -28, -26, -24, -26, -17, -26, -13, -22, -28, 46, 51, 42, Ascii.US};
    }

    public static synchronized void A04(C1617Hh c1617Hh) {
        if (A06) {
            return;
        }
        c1617Hh.A04().ADj();
        A06 = true;
    }

    private void A05(C2881nD c2881nD) {
        if (!c2881nD.A0A()) {
            Log.e(A05, A02(7, 29, 24) + c2881nD.A06() + A02(0, 7, 55));
        } else {
            A06(c2881nD);
            this.A01.AMQ(c2881nD, new C1604Gu(this, c2881nD));
        }
    }

    private void A06(C2881nD c2881nD) {
        switch (C2885nH.A00[c2881nD.A06().ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                C2787lg c2787lg = new C2787lg(new Exception(A02(36, 5, 50)));
                c2787lg.A05(1);
                try {
                    c2787lg.A07(new JSONObject().put(A02(48, 4, kotlin.fh.h1), c2881nD.A06().toString()));
                    break;
                } catch (JSONException unused) {
                }
                this.A00.A08().AC0(A02(41, 7, 50), AbstractC2786lf.A1H, c2787lg);
                break;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void ABo(String str, Map<String, String> map) {
        A05(new C2880nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(map).A01(EnumC2886nI.A04).A02(EnumC2887nJ.A04).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void ABq(String str, Map<String, String> map) {
        A05(new C2880nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(map).A01(EnumC2886nI.A04).A02(EnumC2887nJ.A06).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void ABr(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2880nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(map).A01(EnumC2886nI.A04).A02(EnumC2887nJ.A07).A06(AbstractC2894nQ.A0A(str, EnumC2891nN.A0I)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void ABt(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2880nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(map).A01(EnumC2886nI.A04).A02(EnumC2887nJ.A08).A06(AbstractC2894nQ.A0A(str, EnumC2891nN.A06)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void ABy(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2880nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(map).A01(EnumC2886nI.A04).A02(EnumC2887nJ.A0B).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void AC2(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2880nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(map).A01(EnumC2886nI.A04).A02(EnumC2887nJ.A0C).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void AC7(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2880nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(map).A01(EnumC2886nI.A05).A02(EnumC2887nJ.A0D).A06(AbstractC2894nQ.A0A(str, EnumC2891nN.A0T)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void AC8(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2880nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(map).A01(EnumC2886nI.A05).A02(EnumC2887nJ.A0E).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void AC9(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2880nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(map).A01(EnumC2886nI.A05).A02(EnumC2887nJ.A0F).A06(AbstractC2894nQ.A0A(str, EnumC2891nN.A0V)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void ACA(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2880nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(map).A01(EnumC2886nI.A05).A02(EnumC2887nJ.A0K).A06(AbstractC2894nQ.A0A(str, EnumC2891nN.A0W)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void ACb(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2880nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(map).A01(EnumC2886nI.A05).A02(EnumC2887nJ.A0H).A06(AbstractC2894nQ.A0A(str, EnumC2891nN.A0X)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void ACd(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2880nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(map).A01(EnumC2886nI.A04).A02(EnumC2887nJ.A0J).A06(AbstractC2894nQ.A0A(str, EnumC2891nN.A0a)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void ACe(String str, Map<String, String> map, String str2, EnumC2886nI enumC2886nI) {
        A05(new C2880nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(map).A01(enumC2886nI).A02(EnumC2887nJ.A00(str2)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void ACf(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2880nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(map).A01(EnumC2886nI.A04).A02(EnumC2887nJ.A0L).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void ACg(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2880nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(map).A01(EnumC2886nI.A04).A02(EnumC2887nJ.A0M).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void ACn(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2880nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(map).A01(EnumC2886nI.A05).A02(EnumC2887nJ.A0O).A06(AbstractC2894nQ.A0A(str, EnumC2891nN.A0w)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void ACo(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2880nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(map).A01(EnumC2886nI.A05).A02(EnumC2887nJ.A0P).A06(AbstractC2894nQ.A0A(str, EnumC2891nN.A0x)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void ACq(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2880nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A01(EnumC2886nI.A04).A02(EnumC2887nJ.A0Q).A06(AbstractC2894nQ.A0A(str, EnumC2891nN.A0y)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void ACt(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2880nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(map).A01(EnumC2886nI.A04).A02(EnumC2887nJ.A0G).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void ACy(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2880nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(map).A01(EnumC2886nI.A05).A02(EnumC2887nJ.A0R).A06(AbstractC2894nQ.A0A(str, EnumC2891nN.A12)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void ACz(String str, Map<String, String> map) {
        A05(new C2880nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(map).A01(EnumC2886nI.A05).A02(EnumC2887nJ.A0W).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void AD1(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new C2880nC().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(map).A01(EnumC2886nI.A05).A02(EnumC2887nJ.A0X).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2884nG
    public final void AIC(String str) {
        new C2102aT(this.A00).A0C(str);
    }
}
