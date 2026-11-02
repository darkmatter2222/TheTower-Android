package com.facebook.ads.redexgen.X;

import android.net.TrafficStats;
import java.util.Arrays;
import java.util.concurrent.Callable;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.kw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class CallableC2743kw implements Callable<Boolean> {
    public static byte[] A02;
    public static String[] A03 = {"4L70rbdc", "PBHhMXx0npnpwTY", "91GJPzFmEyeOW3DYeKz29HPCrWXW0gNC", "umTRidE45okZulrVlJrHIV8", "kRbho3HgdeG0CdJ8rA209tRImftPXEnI", "60YY30c8MY", "ZuHjaYDngPTOcLYvMZdLe8TI8ruUn8GD", "lL0vcWHD5F"};
    public final C2742kv A00;
    public final /* synthetic */ C2746kz A01;

    static {
        A02();
    }

    public CallableC2743kw(C2746kz c2746kz, C2742kv c2742kv) {
        this.A01 = c2746kz;
        this.A00 = c2742kv;
    }

    private final Boolean A00() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return null;
        }
        try {
            TrafficStats.setThreadStatsTag(61453);
            C2278dJ c2278dJ = new C2278dJ(this.A00.A08, this.A00.A07, this.A00.A06, this.A00.A04 ? A01(0, 6, 63) : A01(6, 5, 125), this.A00.A02, this.A00.A05);
            c2278dJ.A04 = this.A00.A03;
            c2278dJ.A02 = this.A00.A01;
            c2278dJ.A05 = this.A00.A04;
            if (C2749l2.A06(this.A01.A04)) {
                C2746kz.A0F.put(this.A00.A08, c2278dJ);
            }
            return Boolean.valueOf(C2746kz.A03(this.A01.A04.A02()).AJy(c2278dJ) != null);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
            return null;
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 32);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{114, 126, 109, 116, 106, 111, 43, 52, 57, 56, 50};
        if (A03[1].length() != 15) {
            throw new RuntimeException();
        }
        String[] strArr = A03;
        strArr[7] = "XFV0lH04tD";
        strArr[5] = "8rdCtS3Igw";
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
