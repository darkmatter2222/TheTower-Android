package com.facebook.ads.redexgen.X;

import android.content.ActivityNotFoundException;
import android.net.Uri;
import android.util.Log;
import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.u8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3304u8 {
    public static long A0F;
    public static byte[] A0G;
    public static String[] A0H = {"Dlx9HUQ", "3SJpPR4POSYtfyo20zogCoACzZ0TFz6K", "kjKhSI2oz7rhTngoHOUaCo24OHJZbpIQ", "a4Zk7jMDxn", "WU0c1Yk7xIFA3rTFxMg", "", "SjppttcIPjZ3F", "aZkh9z8pdJw1o0Uivju"};
    public InterfaceC2359ed A00;
    public AbstractC2361ef A01;
    public LA A02;
    public InterfaceC3056q8 A03;
    public InterfaceC3303u7 A04;
    public boolean A05;
    public final C2410fT A06;
    public final C1618Hi A07;
    public final InterfaceC2884nG A08;
    public final C3077qT A09;
    public final InterfaceC3119r9 A0A;
    public final C2199c2 A0B;
    public final String A0C;
    public final List<InterfaceC3303u7> A0D;
    public final boolean A0E;

    static {
        A03();
        A0F = 0L;
    }

    public C3304u8(C1618Hi c1618Hi, String str, C2199c2 c2199c2, C3077qT c3077qT, InterfaceC2884nG interfaceC2884nG, C2410fT c2410fT) {
        this(c1618Hi, str, c2199c2, c3077qT, interfaceC2884nG, c2410fT, new C1545Em());
    }

    public C3304u8(C1618Hi c1618Hi, String str, C2199c2 c2199c2, C3077qT c3077qT, InterfaceC2884nG interfaceC2884nG, C2410fT c2410fT, InterfaceC3119r9 interfaceC3119r9) {
        this.A0D = new ArrayList();
        this.A0E = true;
        this.A07 = c1618Hi;
        this.A0C = str;
        this.A0B = c2199c2;
        this.A09 = c3077qT;
        this.A08 = interfaceC2884nG;
        this.A06 = c2410fT;
        this.A0A = interfaceC3119r9;
    }

    public C3304u8(C1618Hi c1618Hi, String str, C2199c2 c2199c2, C3077qT c3077qT, InterfaceC2884nG interfaceC2884nG, C2410fT c2410fT, InterfaceC3119r9 interfaceC3119r9, InterfaceC3056q8 interfaceC3056q8) {
        this.A0D = new ArrayList();
        this.A0E = true;
        this.A07 = c1618Hi;
        this.A0C = str;
        this.A0B = c2199c2;
        this.A09 = c3077qT;
        this.A08 = interfaceC2884nG;
        this.A06 = c2410fT;
        this.A0A = interfaceC3119r9;
        this.A03 = interfaceC3056q8;
    }

    private EnumC2358ec A00(String str, String str2, Map<String, String> map) {
        String strA01 = A01(0, 22, 52);
        EnumC2358ec enumC2358ecA0G = EnumC2358ec.A08;
        try {
            AbstractC3086qc.A0d(map, this.A02);
            A04(map, str);
            Uri uriA00 = AbstractC3011pP.A00(str2);
            if (this.A01 == null) {
                this.A01 = C2362eg.A01(this.A07, this.A08, str, uriA00, new C3278ti(map).A05(this.A0B).A04(this.A09).A07(), true, this.A05, this.A06);
                A02();
            }
            if (this.A01 != null) {
                enumC2358ecA0G = this.A01.A0G(map.get(A01(64, 12, 52)));
                if (this.A05 && (this.A01 instanceof C13897v)) {
                    enumC2358ecA0G = EnumC2358ec.A07;
                }
            }
            if (!(((this.A01 instanceof C13887u) || (this.A01 instanceof C13907w)) && AbstractC3086qc.A0j(this.A07, enumC2358ecA0G, map)) && enumC2358ecA0G != EnumC2358ec.A05) {
                if (this.A04 != null) {
                    this.A04.AEZ();
                }
                Iterator<InterfaceC3303u7> it = this.A0D.iterator();
                while (it.hasNext()) {
                    it.next().AEZ();
                }
                this.A0A.A5C(this.A0C);
            }
        } catch (ActivityNotFoundException e) {
            Log.e(strA01, A01(44, 20, 100) + str2, e);
        } catch (Exception e2) {
            Log.e(strA01, A01(22, 22, 95), e2);
        }
        return enumC2358ecA0G;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0G, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 104);
        }
        return new String(bArrCopyOfRange);
    }

    private void A02() {
        if (this.A01 == null || this.A01.A0H() != null || this.A00 == null) {
            return;
        }
        this.A01.A0I(this.A00);
    }

    public static void A03() {
        A0G = new byte[]{Ascii.US, 8, Ascii.GS, Ascii.RS, 41, 40, 40, 51, 50, Ascii.US, 48, 53, 63, 55, Ascii.DLE, 53, 47, 40, 57, 50, 57, 46, 114, 69, 69, 88, 69, Ascii.ETB, 82, 79, 82, 84, 66, 67, 94, 89, 80, Ascii.ETB, 86, 84, 67, 94, 88, 89, 73, 126, 126, 99, 126, 44, 123, 100, 101, 96, 105, 44, 99, 124, 105, 98, 101, 98, 107, 44, 63, 48, 53, 63, 55, 3, 47, 51, 41, 46, 63, 57, 6, 4, Ascii.EM, Ascii.ESC, Ascii.EM, 41, Ascii.NAK, Ascii.EM, Ascii.DC2, 19, Ascii.SUB, Ascii.CAN, 5, 7, 5, 53, 9, 5, Ascii.SO, Ascii.SI, 53, 8, Ascii.CAN, Ascii.VT, 4, Ascii.SO, 53, 3, 9, 5, 4, 53, Ascii.US, Ascii.CAN, 6, 105, 107, 118, 116, 118, 70, 122, 118, 125, 124, 70, 123, 107, 120, 119, 125, 70, 119, 120, 116, 124, Base64.padSymbol, 63, 34, 32, 34, Ascii.DC2, 46, 34, 41, 40, Ascii.DC2, 33, 44, 47, 40, 33, Ascii.DC2, 62, 56, 47, 57, 36, 57, 33, 40, 3, 1, Ascii.FS, Ascii.RS, Ascii.FS, 44, Ascii.DLE, Ascii.FS, Ascii.ETB, Ascii.SYN, 44, Ascii.US, Ascii.DC2, 17, Ascii.SYN, Ascii.US, 44, 7, Ascii.SUB, 7, Ascii.US, Ascii.SYN};
    }

    public static void A04(Map<String, String> map, String str) {
        C2420fd c2420fdA00 = AbstractC2422ff.A00(str);
        if (c2420fdA00 == null) {
            return;
        }
        map.put(A01(76, 10, 30), c2420fdA00.A02);
        if (c2420fdA00.A04 != null) {
            map.put(A01(157, 22, 27), c2420fdA00.A04);
        }
        if (c2420fdA00.A03 != null) {
            map.put(A01(132, 25, 37), c2420fdA00.A03);
        }
        if (c2420fdA00.A01 != null) {
            map.put(A01(111, 21, InterfaceC3669k1.d.b.k), c2420fdA00.A01);
        }
        if (c2420fdA00.A00 != null) {
            String strA01 = A01(86, 25, 2);
            String str2 = c2420fdA00.A00;
            String[] strArr = A0H;
            if (strArr[0].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0H;
            strArr2[1] = "GqoLu3o3sXi8viHYAO3w9oClZx42bFoF";
            strArr2[2] = "rAgvrz7IapEceMHcMdzPAofx66HshLkN";
            map.put(strA01, str2);
        }
    }

    public static boolean A05(C1618Hi c1618Hi) {
        boolean zA2z = C2863mv.A2z(c1618Hi);
        int iA05 = C2863mv.A05(c1618Hi);
        long jCurrentTimeMillis = System.currentTimeMillis() - A0F;
        if (zA2z) {
            long j = A0F;
            String[] strArr = A0H;
            if (strArr[0].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0H;
            strArr2[7] = "iHhMWVvnkjnFrqYtRUL";
            strArr2[4] = "26cGs68neeVahMKc5kl";
            if (j > 0 && jCurrentTimeMillis < iA05) {
                return true;
            }
        }
        A0F = System.currentTimeMillis();
        return false;
    }

    public final EnumC2358ec A06(String str, String str2, Map<String, String> map) {
        EnumC2358ec enumC2358ecA00 = EnumC2358ec.A08;
        new C2892nO(str, this.A08).A04(EnumC2891nN.A0J, map);
        if (this.A09.A09(this.A07)) {
            this.A08.ABr(str, map);
        } else {
            enumC2358ecA00 = A00(str, str2, map);
            if (this.A02 != null && this.A02.A32().A0M() != null && this.A03 != null) {
                AbstractC3018pW.A07(this.A07.A02(), this.A02.A32().A0M(), this.A03);
            }
        }
        return enumC2358ecA00;
    }

    public final InterfaceC2359ed A07() {
        if (this.A01 != null) {
            return this.A01.A0H();
        }
        return null;
    }

    public final void A08() {
        if (this.A01 != null) {
            this.A01 = null;
        }
    }

    public final void A09(InterfaceC2359ed interfaceC2359ed) {
        this.A00 = interfaceC2359ed;
        A02();
    }

    public final void A0A(LA la) {
        this.A02 = la;
    }

    public final void A0B(InterfaceC3056q8 interfaceC3056q8) {
        this.A03 = interfaceC3056q8;
    }

    public final void A0C(InterfaceC3303u7 interfaceC3303u7) {
        this.A0D.add(interfaceC3303u7);
    }

    public final void A0D(InterfaceC3303u7 interfaceC3303u7) {
        this.A04 = interfaceC3303u7;
    }

    public final void A0E(boolean z) {
        this.A05 = z;
    }
}
