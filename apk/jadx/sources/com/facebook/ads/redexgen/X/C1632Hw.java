package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.api.BuildConfigApi;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Hw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1632Hw {
    public static byte[] A02;
    public static final String A03;
    public final InterfaceC2715kT A00;
    public final C2746kz A01;

    static {
        A02();
        A03 = C1632Hw.class.getSimpleName();
    }

    public C1632Hw(InterfaceC2715kT interfaceC2715kT, C1617Hh c1617Hh) {
        this.A00 = interfaceC2715kT;
        this.A00.A4Q(new C1634Hy(this));
        this.A01 = new C2746kz(c1617Hh);
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 112);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A01() {
        if (BuildConfigApi.isDebug()) {
            String.format(Locale.US, A00(0, 20, 114), Integer.valueOf(this.A00.A7X().size()));
        }
        for (InterfaceC2718kW interfaceC2718kW : this.A00.A7X()) {
            switch (C2714kS.A00[interfaceC2718kW.AA1().ordinal()]) {
                case 1:
                    A04(interfaceC2718kW.getUrl());
                    break;
                case 2:
                    A06(interfaceC2718kW.getUrl());
                    break;
                case 3:
                    A05(interfaceC2718kW.getUrl());
                    break;
            }
        }
        this.A01.A0X(new C1633Hx(this), new C2739ks(A00(81, 36, 11), A00(125, 7, 46)));
    }

    public static void A02() {
        A02 = new byte[]{50, 84, 71, 78, 81, 67, 70, 75, 80, 73, 2, 7, 70, 2, 67, 85, 85, 71, 86, 85, 58, 92, 79, 86, 89, 75, 78, 83, 88, 81, 10, 83, 87, 75, 81, 79, 36, 10, Ascii.SI, 93, 35, 69, 56, 63, 66, 52, 55, 60, 65, 58, -13, SignedBytes.MAX_POWER_OF_TWO, 52, 69, 62, 72, 67, Ascii.CR, -13, -8, 70, Ascii.EM, 59, 46, 53, 56, 42, 45, 50, 55, 48, -23, 63, 50, 45, 46, 56, 3, -23, -18, 60, -33, -82, -31, -31, -79, -78, -81, -81, -88, -35, -77, -82, -83, -88, -84, -84, -32, -76, -88, -36, -83, -36, -82, -88, -83, -36, -83, -36, -32, -83, -33, -35, -34, -34, -32, -81, 58, 60, 47, 48, 47, 62, 45, 50, 19, Ascii.FF, 9, Ascii.FF, Ascii.CR, Ascii.NAK, Ascii.FF};
    }

    private void A04(String str) {
        if (BuildConfigApi.isDebug()) {
            String.format(Locale.US, A00(20, 20, 122), str);
        }
        C2744kx c2744kx = new C2744kx(str, -1, -1, A00(81, 36, 11), A00(125, 7, 46));
        c2744kx.A02 = A00(117, 8, 90);
        this.A01.A0c(c2744kx);
    }

    private void A05(String str) {
        if (BuildConfigApi.isDebug()) {
            String.format(Locale.US, A00(40, 21, 99), str);
        }
        C2742kv c2742kv = new C2742kv(str, A00(81, 36, 11), A00(125, 7, 46));
        c2742kv.A04 = true;
        c2742kv.A02 = A00(117, 8, 90);
        this.A01.A0Y(c2742kv);
    }

    private void A06(String str) {
        if (BuildConfigApi.isDebug()) {
            String.format(Locale.US, A00(61, 20, 89), str);
        }
        C2742kv c2742kv = new C2742kv(str, A00(81, 36, 11), A00(125, 7, 46));
        c2742kv.A04 = false;
        c2742kv.A02 = A00(117, 8, 90);
        this.A01.A0b(c2742kv);
    }
}
