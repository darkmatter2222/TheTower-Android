package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.RewardData;
import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.fl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2428fl {
    public static byte[] A05;
    public static String[] A06 = {"jJreqFAWfQsm2UlBXjWleQZy51A8w9r3", "B5vxrqY9e1pfFDILbPSJEQZe5Zep9JAF", "7hwRhDIA2xM98ucsNVPICP0872", "8yYdfjKxcW1uK5E8nS4F9bT", "cwoTvwLLOWGZrFwonmn2qn9xu", "wuc4L", "VoE60CbUCih", "1JGxuEjawtyxaKItdz1AQ1lnM"};
    public C2746kz A00;
    public EnumC3282tm A01 = EnumC3282tm.A06;
    public ArrayList<C1905Tb> A02 = new ArrayList<>();
    public final AbstractC2394fD A03;
    public final InterfaceC2427fk A04;

    static {
        A06();
    }

    public C2428fl(C1618Hi c1618Hi, C2442fz c2442fz, InterfaceC2427fk interfaceC2427fk, String str) {
        this.A03 = A01(c1618Hi, c2442fz, str, c2442fz.A03());
        this.A04 = interfaceC2427fk;
    }

    private AdError A00(C1618Hi c1618Hi, LA la) {
        if (la != null && !la.A39().isEmpty()) {
            return null;
        }
        c1618Hi.A08().ABz(A04(62, 3, 18), AbstractC2786lf.A0Z, new C2787lg(A04(5, 43, 6)));
        return AdError.internalError(2006);
    }

    public static AbstractC2394fD A01(C1618Hi c1618Hi, C2442fz c2442fz, String str, JSONObject jSONObject) {
        AbstractC2394fD abstractC2394fDA00 = null;
        if (jSONObject.has(A04(65, 12, 2))) {
            try {
                abstractC2394fDA00 = C1708Kz.A01(jSONObject, c1618Hi, true);
                abstractC2394fDA00.A27(true);
                abstractC2394fDA00.A23(A04(96, 12, 17));
            } catch (JSONException unused) {
            }
        }
        if (abstractC2394fDA00 == null) {
            abstractC2394fDA00 = C13767i.A00(jSONObject, c1618Hi);
        }
        abstractC2394fDA00.A22(str);
        C2806lz c2806lzA01 = c2442fz.A01();
        if (c2806lzA01 != null) {
            abstractC2394fDA00.A1y(c2806lzA01.A06());
        }
        return abstractC2394fDA00;
    }

    private C2746kz A03(C1618Hi c1618Hi) {
        return this.A00 != null ? this.A00 : new C2746kz(c1618Hi);
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 96);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A05 = new byte[]{-97, -39, -27, -34, -35, -81, -44, -38, -53, -40, -44, -57, -46, -122, -85, -40, -40, -43, -40, -122, -104, -106, -106, -100, -122, -35, -49, -38, -50, -43, -37, -38, -122, -57, -122, -36, -57, -46, -49, -54, -122, -89, -54, -81, -44, -52, -43, -108, Ascii.US, 34, Ascii.GS, 34, Ascii.US, 50, Ascii.US, Ascii.GS, 32, 51, 44, 34, 42, 35, -45, -30, -37, -59, -54, -61, -53, -48, -63, -46, -61, -44, -61, -49, -43, -42, -37, -44, -36, -31, -40, -41, -76, -41, -73, -44, -25, -44, -75, -24, -31, -41, -33, -40, -38, -33, -27, -42, -29, -28, -27, -38, -27, -38, -46, -35, Ascii.SI, 8, 3, Ascii.VT, Ascii.SI, -1, -29, -2};
    }

    private void A08(C1618Hi c1618Hi, C13767i c13767i) {
        C2418fb c2418fbA07 = c13767i.A32().A0I().A07();
        A0B(c2418fbA07 != null ? c2418fbA07.A0I() : EnumC3282tm.A06);
        KY ky = new KY(this);
        C2746kz c2746kz = new C2746kz(c1618Hi);
        boolean z = C2863mv.A2H(c1618Hi) && C2711kP.A0A(c13767i.A1x());
        if (!z) {
            AbstractC2439fw.A02(c1618Hi, c13767i, true, ky);
            return;
        }
        C2711kP c2711kP = new C2711kP(c2746kz, c13767i.A1x(), c13767i.A1c(), c13767i.A1r(), z, new KX(this));
        c2746kz.A0e(new C2892nO(c13767i.A37(), c1618Hi.A0A()));
        c2711kP.A0B();
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0096  */
    private void A09(C1618Hi c1618Hi, EnumSet<CacheFlag> enumSet, LA la, int i, InterfaceC2427fk interfaceC2427fk) {
        Iterator<C2938oA> it;
        boolean zA2Q = la.A2Q();
        C2746kz c2746kzA03 = A03(c1618Hi);
        c2746kzA03.A0e(new C2892nO(la.A37(), c1618Hi.A0A()));
        boolean z = C2863mv.A2H(c1618Hi) && C2711kP.A0A(la.A1x());
        if (A06[3].length() == 32) {
            throw new RuntimeException();
        }
        A06[5] = "QkQhg";
        if (z) {
            new C2711kP(c2746kzA03, la.A1x(), la.A1c(), la.A1r(), z, new C1699Ko(this, c1618Hi, zA2Q, la, interfaceC2427fk)).A0B();
            return;
        }
        String strA04 = A04(96, 12, 17);
        String[] strArr = A06;
        if (strArr[1].charAt(24) != strArr[0].charAt(24)) {
            String[] strArr2 = A06;
            strArr2[1] = "jVhVjw8PHVLop7GyU0UYPYiA56KfUjA6";
            strArr2[0] = "lzrrt2iICm45JkiVqVLOf6p257fg56KP";
            if (zA2Q) {
                C2742kv c2742kv = new C2742kv(la.A1Y(), la.A1r(), strA04);
                c2742kv.A04 = true;
                c2742kv.A03 = A04(0, 5, 17);
                c2746kzA03.A0Y(c2742kv);
            }
        } else {
            String[] strArr3 = A06;
            strArr3[7] = "mMtIDEEqjJJ695eeXDndb9bWh";
            strArr3[4] = "Ebj8lqyUqzLrB8iZ5jF9tO70n";
            if (zA2Q) {
                C2742kv c2742kv2 = new C2742kv(la.A1Y(), la.A1r(), strA04);
                c2742kv2.A04 = true;
                c2742kv2.A03 = A04(0, 5, 17);
                c2746kzA03.A0Y(c2742kv2);
            }
        }
        c2746kzA03.A0d(new C2744kx(la.A35().A01(), C2989p0.A04, C2989p0.A04, la.A1r(), A04(96, 12, 17)));
        boolean zContains = enumSet.contains(CacheFlag.VIDEO);
        int i2 = 0;
        boolean zA33 = C2863mv.A33(c1618Hi, C2236cd.A03());
        for (C2395fE c2395fE : la.A39()) {
            String strA08 = c2395fE.A0I().A08();
            if (strA08 != null) {
                C2744kx c2744kx = new C2744kx(strA08, AbstractC2435fs.A00(c2395fE.A0I()), AbstractC2435fs.A01(c2395fE.A0I()), la.A1r(), A04(96, 12, 17));
                if (i2 == 0) {
                    c2746kzA03.A0c(c2744kx);
                } else {
                    c2746kzA03.A0d(c2744kx);
                }
            }
            Iterator<String> it2 = c2395fE.A0L().A03().iterator();
            while (it2.hasNext()) {
                c2746kzA03.A0d(new C2744kx(it2.next(), -1, -1, la.A1r(), A04(96, 12, 17)));
            }
            if (zContains && !TextUtils.isEmpty(c2395fE.A0I().A09())) {
                C2742kv c2742kv3 = new C2742kv(c2395fE.A0I().A09(), la.A1r(), A04(96, 12, 17), c2395fE.A0I().A06());
                c2742kv3.A04 = false;
                if (i2 == 0) {
                    if (!zA2Q || zA33) {
                        c2746kzA03.A0b(c2742kv3);
                    } else {
                        c2746kzA03.A0Y(c2742kv3);
                    }
                } else if (!zA2Q || zA33) {
                    c2746kzA03.A0a(c2742kv3);
                } else {
                    c2746kzA03.A0Z(c2742kv3);
                }
            }
            i2++;
        }
        Iterator<C2612io> it3 = la.A1w().iterator();
        while (it3.hasNext()) {
            c2746kzA03.A0d(new C2744kx(it3.next().A02(), -1, -1, la.A1r(), A04(96, 12, 17)));
        }
        List<C2938oA> listA1v = la.A1v();
        if (A06[5].length() != 5) {
            it = listA1v.iterator();
        } else {
            String[] strArr4 = A06;
            strArr4[1] = "1nyfEMUepOevYMJugZMvnGL65TcEtQKO";
            strArr4[0] = "8oN0yixDNSHwX0PkZXBy1Qxe5JRM3g8f";
            it = listA1v.iterator();
        }
        while (it.hasNext()) {
            c2746kzA03.A0d(new C2744kx(it.next().A02(), -1, -1, la.A1r(), A04(96, 12, 17)));
        }
        if (la.A2D() && !TextUtils.isEmpty(la.A1d())) {
            c2746kzA03.A0d(new C2744kx(la.A1d(), C1582Fy.A0A, C1582Fy.A0A, la.A1r(), A04(96, 12, 17)));
        }
        AbstractC2434fr.A00(la, c2746kzA03, strA04);
        c2746kzA03.A0X(new C1692Kh(this, c1618Hi, zA2Q, la, interfaceC2427fk), new C2739ks(la.A1r(), strA04, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0A(C1618Hi c1618Hi, EnumSet<CacheFlag> enumSet, C1708Kz c1708Kz, LA la, int i, InterfaceC2427fk interfaceC2427fk) {
        A09(c1618Hi, enumSet, la, i, new C1703Ks(this, c1618Hi, la, c1708Kz, i, interfaceC2427fk, enumSet));
    }

    private void A0B(EnumC3282tm enumC3282tm) {
        this.A01 = enumC3282tm;
    }

    private boolean A0C(C1618Hi c1618Hi, LA la) {
        AdError adErrorA00 = A00(c1618Hi, la);
        if (adErrorA00 == null) {
            return false;
        }
        InterfaceC2427fk interfaceC2427fk = this.A04;
        String[] strArr = A06;
        if (strArr[1].charAt(24) != strArr[0].charAt(24)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A06;
        strArr2[1] = "Dm6wm58uJ8qXwjtNx8Vtzbsb5Jkw9mit";
        strArr2[0] = "fLwuuFNg4tiwPdo6hP9t6x3v5l5Hcavg";
        interfaceC2427fk.ADk(adErrorA00);
        return true;
    }

    public final AbstractC2394fD A0D() {
        return this.A03;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a8, code lost:
    
        if (r3 != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b4, code lost:
    
        if (r3 != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b9, code lost:
    
        return com.facebook.ads.redexgen.X.EnumC2955oR.A0D;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.facebook.ads.redexgen.X.EnumC2955oR A0E() {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2428fl.A0E():com.facebook.ads.redexgen.X.oR");
    }

    public final EnumC3282tm A0F() {
        return this.A01;
    }

    public final String A0G() {
        return this.A03.A2L() ? ((C1708Kz) this.A03).A32() : ((LA) this.A03).A37();
    }

    public final void A0H() {
        this.A04.ALr();
    }

    public final void A0I(Intent intent, RewardData rewardData, String str) {
        String stringExtra;
        String stringExtra2;
        this.A03.A20(rewardData);
        this.A03.A24(str);
        EnumC2955oR enumC2955oRA0E = A0E();
        EnumC2955oR enumC2955oR = EnumC2955oR.A0B;
        String strA04 = A04(108, 8, 58);
        if (enumC2955oRA0E == enumC2955oR && this.A03.A2k() && (stringExtra2 = intent.getStringExtra(strA04)) != null) {
            AbstractC2671jl.A02(stringExtra2, (LA) this.A03);
            return;
        }
        if (A0D().A2L()) {
            if (this.A03.A2l() && (stringExtra = intent.getStringExtra(strA04)) != null) {
                AbstractC2672jm.A02(stringExtra, (C1708Kz) this.A03);
                return;
            }
            intent.putExtra(A04(77, 19, 19), this.A03);
        }
        intent.putExtra(A04(48, 14, 94), this.A03);
    }

    public final void A0J(C1618Hi c1618Hi, EnumSet<CacheFlag> enumSet) {
        if (A0E() == EnumC2955oR.A05) {
            C1708Kz c1708Kz = (C1708Kz) this.A03;
            LA laA2y = c1708Kz.A2y();
            if (A0C(c1618Hi, laA2y) || laA2y == null) {
                return;
            }
            this.A04.AIm();
            A0A(c1618Hi, enumSet, c1708Kz, laA2y, 0, this.A04);
            return;
        }
        if (A0C(c1618Hi, (LA) this.A03)) {
            return;
        }
        this.A04.AIm();
        if (A0E() == EnumC2955oR.A0D) {
            A08(c1618Hi, (C13767i) this.A03);
        } else {
            A09(c1618Hi, enumSet, (C13767i) this.A03, -1, this.A04);
        }
    }

    public final boolean A0K() {
        return this.A03.A2B();
    }

    public final boolean A0L(LA la) {
        return !TextUtils.isEmpty(la.A32().A0I().A09());
    }
}
