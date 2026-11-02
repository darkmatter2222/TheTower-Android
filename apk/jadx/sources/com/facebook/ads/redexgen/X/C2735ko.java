package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ko, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2735ko {
    public static boolean A04;
    public static byte[] A05;
    public static final String A06;
    public final C2736kp A00;
    public final C2737kq A01;
    public final C1617Hh A02;
    public final InterfaceC2081a7 A03;

    static {
        A01();
        A06 = C2735ko.class.getSimpleName();
    }

    public C2735ko(C1617Hh c1617Hh, AH ah, C2736kp c2736kp, C2737kq c2737kq) {
        this.A02 = c1617Hh;
        this.A03 = ah.A63(EnumC2067Zt.A06);
        this.A00 = c2736kp;
        this.A01 = c2737kq;
        this.A03.A4R(new C1626Hq(this));
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 114);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{46, 56, 19, 41, 52, 56, 62, 45, 63};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void A02() {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            if (!this.A03.ABM()) {
                this.A02.A05().AB6();
                return;
            }
            String strOptString = this.A03.A8J().optString(A00(0, 9, 62));
            if (!TextUtils.isEmpty(strOptString)) {
                this.A00.A04(this.A02, strOptString);
                if (!A04 || C2863mv.A0h(this.A02)) {
                    A04 = true;
                    this.A01.A07();
                }
            }
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
