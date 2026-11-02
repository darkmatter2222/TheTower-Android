package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ti, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3278ti {
    public static byte[] A01;
    public static String[] A02 = {"CvydOG1rdpeZVjh1I2HxFGGpkCBtP1uR", "LPAb8wO4e9Bm4297vBHQiNlf50jewka4", "p6i6iSivtdsam", "kr1L5mV", "OjxdnAkOIagRjcigNYlctVvlDEXS237l", "CTcf", "XEPmNqkHOtxVdZCukAC2cQoZWEBCmlPv", "qw43eBE0dfm3vpW8jqKcT1ME9HQ7Rm2E"};
    public final Map<String, String> A00;

    static {
        A01();
    }

    public C3278ti() {
        this.A00 = new HashMap();
    }

    public C3278ti(Map<String, String> map) {
        this.A00 = map;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ InterfaceC3669k1.d.b.k);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        byte[] bArr = {70, 71, 81, 86, 75, 76, 67, 86, 75, 77, 76, 125, 87, 80, 78, Ascii.DC4, 9, 5, 3, Ascii.DLE, 46, Ascii.EM, Ascii.CAN, Ascii.US, 5, 2, SignedBytes.MAX_POWER_OF_TWO, 91, 65, 87, 92};
        String[] strArr = A02;
        if (strArr[6].charAt(15) == strArr[1].charAt(15)) {
            throw new RuntimeException();
        }
        A02[3] = "rnLFNN7HWa";
        A01 = bArr;
    }

    public final C3278ti A02(Context context, AbstractC2361ef abstractC2361ef) {
        Uri uriA0O;
        if ((abstractC2361ef instanceof C13897v) && (uriA0O = ((C13897v) abstractC2361ef).A0O()) != null) {
            A03(context, uriA0O.toString());
        }
        return this;
    }

    public final C3278ti A03(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str) && C2863mv.A2V(context)) {
            this.A00.put(A00(0, 15, 83), str);
        }
        return this;
    }

    public final C3278ti A04(C3077qT c3077qT) {
        if (c3077qT != null) {
            this.A00.put(A00(26, 5, 69), AbstractC3052q4.A01(c3077qT.A04()));
        }
        return this;
    }

    public final C3278ti A05(C2199c2 c2199c2) {
        if (c2199c2 != null) {
            this.A00.putAll(c2199c2.A0S());
        }
        return this;
    }

    public final C3278ti A06(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.A00.put(A00(15, 11, 0), str);
        }
        return this;
    }

    public final Map<String, String> A07() {
        return this.A00;
    }
}
