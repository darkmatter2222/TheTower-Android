package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.net.TrafficStats;
import java.util.Arrays;
import java.util.concurrent.Callable;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ky, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class CallableC2745ky implements Callable<Boolean> {
    public static byte[] A02;
    public static String[] A03 = {"jwTNBF52XqMGgcVEiQTwvXvSBsl43Bcu", "zl9XISU", "9LwyCiCzMXmNgkxTRjX8XUqiNT4UlidW", "Jar4Zz8ck96tLH67JFbLbWmYESMeU49V", "Yd8bjyjazIom6Oxe2tnjIAJyfdSlHwWG", "VgUZ5KaBAYbzt3oMIew8EQ4BA2c", "hXTgBapwd4emagenALPcDOSBW5zmdf3H", "17k"};
    public final C2744kx A00;
    public final /* synthetic */ C2746kz A01;

    static {
        A02();
    }

    public CallableC2745ky(C2746kz c2746kz, C2744kx c2744kx) {
        this.A01 = c2746kz;
        this.A00 = c2744kx;
    }

    private final Boolean A00() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return null;
        }
        try {
            TrafficStats.setThreadStatsTag(61453);
            C2278dJ c2278dJ = new C2278dJ(this.A00.A08, this.A00.A07, this.A00.A06, A01(0, 5, 83), this.A00.A02, this.A00.A03);
            c2278dJ.A01 = this.A00.A05;
            c2278dJ.A00 = this.A00.A04;
            if (C2749l2.A06(this.A01.A04)) {
                C2746kz.A0F.put(this.A00.A08, c2278dJ);
            }
            boolean z = this.A01.A08;
            boolean zA01 = false;
            if (A03[3].length() == 5) {
                throw new RuntimeException();
            }
            A03[4] = "CZcPy1KhLDdCOlGcBT5xxsnRB32IUDMD";
            if (z) {
                zA01 = C2746kz.A03(this.A01.A04.A02()).AJw(c2278dJ, false).A01();
            } else if (this.A01.A03.A0F(this.A00) != null) {
                zA01 = true;
            }
            l5 l5Var = this.A00.A01;
            if (l5Var != null && l5Var.A02()) {
                int iA00 = l5Var.A00();
                int iA01 = l5Var.A01();
                if (iA00 <= 0 || iA01 <= 0) {
                    if (this.A01.A08) {
                        A04(this.A00.A08, c2278dJ);
                    } else {
                        A03(this.A00.A04, this.A00.A05);
                    }
                } else if (this.A01.A08) {
                    c2278dJ.A00 = iA00;
                    c2278dJ.A01 = iA01;
                    A04(this.A00.A08, c2278dJ);
                } else {
                    A03(iA00, iA01);
                }
            }
            return Boolean.valueOf(zA01);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
            return null;
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A03[1].length() == 32) {
                throw new RuntimeException();
            }
            A03[3] = "";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 48);
            i4++;
        }
    }

    public static void A02() {
        A02 = new byte[]{-20, -16, -28, -22, -24};
    }

    private void A03(int i, int i2) {
        Bitmap bitmapA0G = this.A01.A03.A0G(this.A01.A04, this.A00.A08, i, i2, this.A00.A02);
        if (bitmapA0G != null) {
            this.A01.A07.put(this.A00.A08, bitmapA0G);
        }
    }

    private void A04(String str, C2278dJ c2278dJ) {
        Bitmap bitmapA00 = C2746kz.A03(this.A01.A04.A02()).AJw(c2278dJ, true).A00();
        if (bitmapA00 != null) {
            this.A01.A07.put(str, bitmapA00);
        }
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Boolean call() throws Exception {
        if (AbstractC2971oi.A02(this)) {
            return null;
        }
        try {
            return A00();
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
            return null;
        }
    }
}
