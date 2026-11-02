package com.facebook.ads.redexgen.X;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.me, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2846me {
    public static byte[] A01;
    public final File A00;

    static {
        A02();
    }

    public C2846me(File file) {
        this.A00 = file;
    }

    public static C2846me A00(String str, Context context) throws IOException {
        File file = new File(context.getFilesDir(), A01(64, 9, 55));
        A03(file);
        File file2 = new File(file, str);
        A03(file2);
        return new C2846me(file2);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 41);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{-90, -60, -47, -47, -46, -41, -125, -56, -47, -42, -40, -43, -56, -125, -118, -120, -42, -118, -125, -52, -42, -125, -60, -125, -57, -52, -43, -56, -58, -41, -46, -43, -36, -118, -91, -83, -80, -87, -88, 100, -72, -77, 100, -89, -74, -87, -91, -72, -87, 100, -88, -83, -74, -87, -89, -72, -77, -74, -67, 100, 107, 105, -73, 107, -58, -62, -45, -60, -53, -65, -52, -49, -57};
    }

    public static void A03(File file) throws IOException {
        if (!file.exists() && !file.mkdir()) {
            throw new C2847mf(String.format(Locale.US, A01(33, 31, 27), file.getCanonicalPath()));
        }
        if (!file.isDirectory()) {
            throw new C2847mf(String.format(Locale.US, A01(0, 33, 58), file.getCanonicalPath()));
        }
    }

    public final C2846me A04(String str) throws IOException {
        File file = new File(this.A00, str);
        A03(file);
        return new C2846me(file);
    }

    public final File A05() {
        return this.A00;
    }
}
