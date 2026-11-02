package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.facebook.ads.AdExperienceType;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class KI implements InterfaceC2947oJ {
    public static byte[] A0D;
    public static String[] A0E = {"4yJhIog9RzpC9w4XHjq79o6hmz2pMXrt", "bLneqHgNlbzxjE", "P7gevZ65hMGDm5VmgpkLcWEi46YxYduR", "Pajg2XTKXpS0pN0AoGLcPnQoa2IWF6Z7", "YyJRdl3XxpBTstTmsw", "OvgbPt0JG7dlaj99kqPbJKVmb9CPKTVr", "21VbiQWRKHmC0d4xB3zoTsbqXtN2ZOxw", "Q3Y9mBD7X4l0uaedlY7FP5X0xCsXbtIX"};
    public static final C2373es A0F = null;
    public static final C2948oK A0G = null;
    public static final Handler A0H;
    public InterfaceC2368en A00;
    public InterfaceC2368en A01;
    public C2805ly A04;
    public C2945oH A05;
    public C2948oK A06;
    public AbstractC2369eo A07;
    public final C2441fy A08;
    public final InterfaceC2884nG A09;
    public final C2373es A0A;
    public final C1618Hi A0B;
    public volatile boolean A0C;
    public long A03 = -1;
    public String A02 = null;

    static {
        A08();
        AbstractC3088qe.A02();
        A0H = new Handler(Looper.getMainLooper());
    }

    public KI(C1618Hi c1618Hi, C2441fy c2441fy) {
        this.A0B = c1618Hi;
        this.A08 = c2441fy;
        if (A0G != null) {
            this.A06 = A0G;
        } else {
            this.A06 = new C2948oK(this.A0B);
        }
        this.A06.A0R(this);
        if (A0F != null) {
            this.A0A = A0F;
        } else {
            this.A0A = new C2373es();
        }
        DynamicLoaderFactory.makeLoader(this.A0B).getInitApi().onAdLoadInvoked(this.A0B);
        this.A09 = c1618Hi.A0A();
        this.A0B.A0F().A6D();
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 8);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A08() {
        A0D = new byte[]{75, 110, 107, 122, 126, 111, 120, 42, 110, 101, 111, 121, 42, 100, 101, 126, 42, 111, 114, 99, 121, 126, 78, 107, 110, 127, 123, 106, 125, 47, 102, 124, 47, 97, 122, 99, 99, 47, 39, 108, 103, 110, 102, 97, 47, 97, 96, 123, 47, 99, 96, 110, 107, 106, 107, 38, 57, Ascii.FS, Ascii.EM, 8, Ascii.FF, Ascii.GS, 10, 88, 17, Ascii.VT, 88, Ascii.SYN, Ascii.CR, Ascii.DC4, Ascii.DC4, 88, 80, Ascii.ESC, Ascii.DLE, Ascii.EM, 17, Ascii.SYN, Ascii.GS, Ascii.FS, 81, 45, 8, Ascii.CR, Ascii.FS, Ascii.CAN, 9, Ascii.RS, 76, 5, Ascii.US, 76, 2, Ascii.EM, 0, 0, 76, 68, 2, 3, 76, Ascii.SI, 4, Ascii.CR, 5, 2, 69, 78, 107, 110, 127, 123, 106, 125, 47, 102, 124, 47, 97, 122, 99, 99, 47, 96, 97, 47, 124, 123, 110, 125, 123, 78, 107, 5, 36, 107, 38, 36, 57, 46, 107, 42, 47, 107, 40, 42, 37, 47, 34, 47, 42, 63, 46, 56, 101, 122, 95, 66, 67, 74, Ascii.CR, 76, 73, 76, 93, 89, 72, 95, Ascii.CR, 89, 84, 93, 72, 3, 46, 43, 111, 46, 35, Base64.padSymbol, 42, 46, 43, 54, 111, 60, 59, 46, Base64.padSymbol, 59, 42, 43, 94, 91, 76, 52, 37, 60, Ascii.SUB, 17, Ascii.CAN, Ascii.DLE, Ascii.ETB, 38, 9, Ascii.CAN, Ascii.VT, Ascii.CAN, Ascii.DC4, 10, 76, 91, 74, 79, 90, 79, 97, 76, 68, 75, 77, 90, Ascii.SO, 71, 93, Ascii.SO, SignedBytes.MAX_POWER_OF_TWO, 91, 66, 66, 38, 45, 32, 49, 58, 51, 55, 38, 39, Ascii.FS, 42, 39, 122, 113, 105, 118, 109, 112, 113, 114, 122, 113, 107, 63, 118, 108, 63, 122, 114, 111, 107, 102, 38, 50, 37, 49, 53, 37, 46, 35, 57, Ascii.US, 35, 33, 48, 48, 41, 46, 39, Ascii.FS, Ascii.ESC, 3, Ascii.DC4, Ascii.EM, Ascii.FS, 17, 85, 5, Ascii.EM, Ascii.DC4, Ascii.SYN, Ascii.DLE, Ascii.CAN, Ascii.DLE, Ascii.ESC, 1, 85, Ascii.FS, Ascii.ESC, 85, 7, Ascii.DLE, 6, 5, Ascii.SUB, Ascii.ESC, 6, Ascii.DLE, 10, 9, 7, 2, 57, Ascii.DC2, Ascii.SI, Ascii.VT, 3, 57, Ascii.VT, Ascii.NAK, 44, 59, 47, 43, 59, 45, 42, 1, 55, 58};
    }

    private void A09(C2805ly c2805ly) {
        this.A0B.A0F().AKk(c2805ly.A0G());
    }

    /* JADX WARN: Code duplicated, block: B:39:0x012d  */
    private void A0A(GG gg) {
        C2805ly c2805lyA00 = gg.A00();
        if (c2805lyA00 == null || c2805lyA00.A05() == null) {
            String strA07 = A07(279, 29, 125);
            C2922nt c2922nt = new C2922nt(AdErrorType.NO_AD_PLACEMENT, strA07);
            this.A0B.A0F().A6F(c2922nt.A03().getErrorCode(), strA07);
            if (this.A07 != null) {
                AbstractC2369eo abstractC2369eo = this.A07;
                if (A0E[6].charAt(21) == '6') {
                    throw new RuntimeException();
                }
                String[] strArr = A0E;
                strArr[4] = "hfobwSBumZGDhQ4bXq";
                strArr[1] = "msoQnE8enpyN8f";
                abstractC2369eo.A0G(c2922nt);
                return;
            }
            return;
        }
        this.A04 = c2805lyA00;
        this.A00 = null;
        C2805ly c2805ly = this.A04;
        JSONObject jSONObjectA0D = c2805ly.A0D();
        String strA08 = A07(195, 3, 93);
        if (jSONObjectA0D == null) {
            C2803lw c2803lwA04 = c2805ly.A04();
            if (!A0E(c2805ly, c2803lwA04)) {
                return;
            }
            if (this.A00 == null) {
                this.A0B.A08().ABz(strA08, AbstractC2786lf.A0a, new C2787lg(A07(81, 26, 100), c2803lwA04.A02()));
                AEr(C2922nt.A00(AdErrorType.INTERNAL_ERROR));
                return;
            }
            A0Q(this.A00, c2805ly, c2803lwA04, new C2442fz(c2803lwA04.A04(), c2805ly.A05(), this.A08.A0A, c2805ly.A05().A0C()));
        } else {
            ArrayList arrayList = new ArrayList();
            C2803lw c2803lwA05 = c2805ly.A04();
            do {
                if (!arrayList.isEmpty()) {
                    boolean zA0D = A0D(c2803lwA05);
                    if (A0E[2].charAt(5) == 'Z') {
                        String[] strArr2 = A0E;
                        strArr2[4] = "D4dH5FuixlBYVHNYJB";
                        strArr2[1] = "4bAHADqJrSynaw";
                        if (zA0D) {
                            arrayList.add(c2803lwA05);
                        }
                    } else if (zA0D) {
                        arrayList.add(c2803lwA05);
                    }
                } else if (!A0E(c2805ly, c2803lwA05)) {
                    return;
                } else {
                    arrayList.add(c2803lwA05);
                }
                c2803lwA05 = c2805ly.A04();
            } while (c2803lwA05 != null);
            if (this.A00 == null) {
                this.A0B.A08().ABz(strA08, AbstractC2786lf.A0a, new C2787lg(A07(56, 25, InterfaceC3669k1.d.b.j), ((C2803lw) arrayList.get(0)).A02()));
                AEr(C2922nt.A00(AdErrorType.INTERNAL_ERROR));
                return;
            }
            boolean z = false;
            try {
                if (arrayList.size() > 1 && this.A00 != null && this.A00.ALe()) {
                    JSONObject jSONObject = new JSONObject();
                    JSONArray jSONArray = new JSONArray();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        jSONArray.put(((C2803lw) it.next()).A04());
                    }
                    jSONObject.put(A07(192, 3, 55), jSONArray);
                    jSONObject.put(A07(198, 12, InterfaceC3669k1.d.b.k), c2805ly.A0D());
                    A0Q(this.A00, c2805ly, c2803lwA05, new C2442fz(jSONObject, c2805ly.A05(), this.A08.A0A, c2805ly.A05().A0C()));
                    z = true;
                }
            } catch (Exception unused) {
                z = false;
            }
            if (!z) {
                if (arrayList.isEmpty()) {
                    C2922nt c2922ntA01 = C2922nt.A01(AdErrorType.NO_FILL, A07(0, 0, 73));
                    this.A0B.A0F().A6F(c2922ntA01.A03().getErrorCode(), A07(133, 22, 67));
                    if (this.A07 != null) {
                        this.A07.A0G(c2922ntA01);
                        return;
                    }
                    return;
                }
                if (this.A00 == null) {
                    this.A0B.A08().ABz(strA08, AbstractC2786lf.A0a, new C2787lg(A07(22, 34, 7), ((C2803lw) arrayList.get(0)).A02()));
                    AEr(C2922nt.A00(AdErrorType.INTERNAL_ERROR));
                    return;
                }
                C2803lw c2803lw = (C2803lw) arrayList.get(0);
                A0Q(this.A00, c2805ly, c2803lw, new C2442fz(c2803lw.A04(), c2805ly.A05(), this.A08.A0A, c2805ly.A05().A0C()));
            }
        }
        A09(c2805lyA00);
    }

    private final void A0B(String str, AdExperienceType adExperienceType) {
        this.A0B.A0F().A6G(str != null);
        this.A03 = System.currentTimeMillis();
        try {
            this.A05 = this.A08.A00(this.A0B, new C2929o1(this.A0B, str, this.A08.A0A, this.A08.A09), adExperienceType);
            if (this.A06 != null) {
                this.A06.A0Q(this.A05);
            }
        } catch (C2923nu e) {
            AEr(C2922nt.A02(e));
        }
    }

    private void A0C(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.A02 = jSONObject.optString(A07(230, 12, 75));
            C2375eu.A01(this.A0B).A0O(jSONObject);
        }
    }

    private boolean A0D(C2803lw c2803lw) {
        return (c2803lw == null || c2803lw.A04() == null) ? false : true;
    }

    private boolean A0E(C2805ly c2805ly, C2803lw c2803lw) {
        String strA07 = A07(0, 0, 73);
        if (c2803lw == null) {
            C2922nt c2922ntA01 = C2922nt.A01(AdErrorType.NO_FILL, strA07);
            this.A0B.A0F().A6F(c2922ntA01.A03().getErrorCode(), A07(133, 22, 67));
            if (this.A07 != null) {
                AbstractC2369eo abstractC2369eo = this.A07;
                String[] strArr = A0E;
                if (strArr[7].charAt(9) == strArr[3].charAt(9)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0E;
                strArr2[7] = "7nYL2NF6M0xF4EMWgzzLH5X7HNcHVA2i";
                strArr2[3] = "4zdAiZz94ZfdEW2uI31voJBW941pIR5b";
                abstractC2369eo.A0G(c2922ntA01);
            }
            return false;
        }
        String strA02 = c2803lw.A02();
        InterfaceC2368en interfaceC2368enA00 = this.A0A.A00(this.A0B, c2805ly.A05().A0D());
        if (interfaceC2368enA00 == null) {
            this.A0B.A08().ABz(A07(195, 3, 93), AbstractC2786lf.A0a, new C2787lg(A07(0, 22, 2), strA02));
            AEr(C2922nt.A00(AdErrorType.INTERNAL_ERROR));
            return false;
        }
        if (!this.A08.A01().contains(interfaceC2368enA00.A9N())) {
            C2922nt c2922ntA02 = C2922nt.A01(AdErrorType.INTERNAL_ERROR, strA07);
            this.A0B.A0F().A6F(c2922ntA02.A03().getErrorCode(), A07(155, 19, 37));
            if (this.A07 != null) {
                this.A07.A0G(c2922ntA02);
            }
            return false;
        }
        this.A00 = interfaceC2368enA00;
        JSONObject jSONObjectA04 = c2803lw.A04();
        if (jSONObjectA04 == null) {
            String strA08 = A07(212, 18, 38);
            C2922nt c2922ntA03 = C2922nt.A01(AdErrorType.UNKNOWN_ERROR, strA08);
            this.A0B.A0F().A6F(c2922ntA03.A03().getErrorCode(), strA08);
            if (this.A07 != null) {
                this.A07.A0G(c2922ntA03);
            }
            return false;
        }
        String strOptString = jSONObjectA04.optString(A07(320, 10, 86));
        this.A0B.A0F().AL2(strOptString);
        this.A0B.A0D(strOptString);
        C1617Hh c1617HhA00 = AbstractC2754l9.A00();
        if (c1617HhA00 != null) {
            c1617HhA00.A0D(strOptString);
        }
        A0C(jSONObjectA04.optJSONObject(A07(262, 17, 72)));
        if (this.A05 != null) {
            return true;
        }
        String strA09 = A07(242, 20, 23);
        C2922nt c2922ntA04 = C2922nt.A01(AdErrorType.UNKNOWN_ERROR, strA09);
        this.A0B.A0F().A6F(c2922ntA04.A03().getErrorCode(), strA09);
        if (this.A07 != null) {
            this.A07.A0G(c2922ntA04);
        }
        return false;
    }

    public final long A0F() {
        if (this.A04 != null) {
            return this.A04.A03();
        }
        return -1L;
    }

    public final Handler A0G() {
        return A0H;
    }

    public AbstractC2394fD A0H() {
        if (this.A01 == null) {
            return null;
        }
        LG lg = (LG) this.A01;
        String[] strArr = A0E;
        if (strArr[0].charAt(1) == strArr[5].charAt(1)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0E;
        strArr2[7] = "5bjG0IlN5e6ox7gGPwyNsTo6l8HjLpNA";
        strArr2[3] = "l5hnmXhlsnMB98vwFTttotkGHt3lxhSt";
        return lg.A0J();
    }

    public final C2806lz A0I() {
        if (this.A04 == null) {
            return null;
        }
        return this.A04.A05();
    }

    public final void A0J() {
        if (C2863mv.A1v(this.A0B)) {
            if (this.A01 != null) {
                C2988oz.A00(this.A0B).A0D(this.A01.A9N().toString(), this.A01.A7z());
            }
            if (this.A06 != null) {
                this.A06.A0R(null);
                this.A06 = null;
            }
            this.A07 = null;
            this.A00 = null;
            this.A01 = null;
        }
    }

    public final void A0K() {
        String strA7z;
        this.A0B.A0F().A3n(C3076qS.A01(this.A03));
        if (this.A01 == null || (strA7z = this.A01.A7z()) == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put(A07(308, 12, 110), C3076qS.A05(this.A03));
        new C2892nO(strA7z, this.A09).A04(EnumC2891nN.A08, map);
    }

    public final void A0L() {
        InterfaceC2368en interfaceC2368en = this.A01;
        String strA07 = A07(195, 3, 93);
        if (interfaceC2368en == null) {
            String strA08 = A07(kotlin.fh.h1, 26, 7);
            this.A0B.A08().ABz(strA07, AbstractC2786lf.A0Q, new C2787lg(strA08));
            AdErrorType adErrorType = AdErrorType.INTERNAL_ERROR;
            this.A0B.A0F().A6F(adErrorType.getErrorCode(), strA08);
            if (this.A07 != null) {
                this.A07.A0G(C2922nt.A01(adErrorType, adErrorType.getDefaultErrorMessage()));
            }
            this.A0B.A0F().A6I();
            return;
        }
        if (!this.A0C) {
            if (!TextUtils.isEmpty(this.A01.A7z())) {
                this.A09.ACq(this.A01.A7z());
            }
            this.A0B.A0F().A6J();
            this.A0C = true;
            A0O();
            return;
        }
        String strA09 = A07(174, 18, 71);
        this.A0B.A08().ABz(strA07, AbstractC2786lf.A0M, new C2787lg(strA09));
        AdErrorType adErrorType2 = AdErrorType.AD_ALREADY_STARTED;
        this.A0B.A0F().A6F(adErrorType2.getErrorCode(), strA09);
        if (this.A07 != null) {
            this.A07.A0G(C2922nt.A01(adErrorType2, adErrorType2.getDefaultErrorMessage()));
        }
        this.A0B.A0F().A6H();
    }

    public final void A0M() {
        A0X(false);
    }

    public final void A0N() {
        if (this.A02 != null) {
            C2375eu.A01(this.A0B).A0N(this.A02);
        }
    }

    public abstract void A0O();

    public final void A0P(InterfaceC2368en interfaceC2368en) {
        if (interfaceC2368en != null) {
            interfaceC2368en.onDestroy();
        }
    }

    public abstract void A0Q(InterfaceC2368en interfaceC2368en, C2805ly c2805ly, C2803lw c2803lw, C2442fz c2442fz);

    public final void A0R(AbstractC2369eo abstractC2369eo) {
        this.A07 = abstractC2369eo;
    }

    public final void A0S(C2442fz c2442fz) {
        A0U(c2442fz.A03().optString(A07(210, 2, 39)));
    }

    public void A0T(String str) {
        A0B(str, null);
    }

    public final void A0U(String str) {
        this.A0B.A0F().A6C();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        new C2892nO(str, this.A09).A04(EnumC2891nN.A04, null);
    }

    public final void A0V(String str) {
        A0T(str);
    }

    public final void A0W(String str, AdExperienceType adExperienceType) {
        A0B(str, adExperienceType);
    }

    public void A0X(boolean z) {
        if (z || this.A0C) {
            this.A0B.A0F().A6K();
            A0P(this.A01);
            this.A0C = false;
        }
    }

    public final boolean A0Y() {
        return this.A04 == null || this.A04.A0H();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2947oJ
    public final synchronized void AEr(C2922nt c2922nt) {
        A0G().post(new KJ(this, c2922nt));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2947oJ
    public final synchronized void AHE(GG gg) {
        try {
            A0A(gg);
        } catch (Exception e) {
            this.A0B.A08().ABz(A07(195, 3, 93), AbstractC2786lf.A0T, new C2787lg(e));
        }
    }
}
