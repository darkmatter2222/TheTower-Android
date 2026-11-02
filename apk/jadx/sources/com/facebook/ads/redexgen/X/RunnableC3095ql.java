package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ql, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3095ql implements Runnable {
    public static byte[] A01;
    public static String[] A02 = {"8vJSkdftfADdQfAHliFxPF8rPO9WPGls", "GhlXUiQB5e5u02XqNxNWNeCKPeVKjYEZ", "Gph9c0UvmRxipzP0t5nr5UcpcMkZF", "2Hx", "Z7V0Td9h4", "73nZsDchDyg56oZ4XPBfjpsU", "FVxK20XbexvbAX1X2tgr9gQBHO7cWF", "2kskKAMtduGXueKHObaD2J8oFHf05nvp"};
    public final /* synthetic */ C13325q A00;

    static {
        A01();
    }

    public RunnableC3095ql(C13325q c13325q) {
        this.A00 = c13325q;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 18);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        byte[] bArr = {Ascii.FF, 51, 62, 63, 53, 10, 54, 59, 35, 56, 59, 57, 49, Ascii.US, 40, 40, 53, 40};
        if (A02[1].charAt(23) != 'K') {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[7] = "A0q876J4tZs52Ekfd4RAns8rddsLZMZI";
        strArr[0] = "8q1dRMivP5Tdv15zR8IgwT8qhlVYesmy";
        A01 = bArr;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A00.A0S(A00(0, 18, 72));
        } catch (Throwable th) {
            if (A02[1].charAt(23) != 'K') {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[4] = "fqamCUNwf";
            strArr[5] = "B5vyeoYMTrLFIeMZvtcbxM1r";
            AbstractC2971oi.A00(th, this);
        }
    }
}
