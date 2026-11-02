package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Hr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1627Hr implements InterfaceC2732kl {
    public static byte[] A01;
    public final Map<String, AbstractC2730kj> A00 = new HashMap();

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 8);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-53, -58, -86, -53, -55, -64, -59, -66};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2732kl
    public final synchronized String AJt() {
        StringBuilder sb;
        sb = new StringBuilder();
        Iterator<AbstractC2730kj> it = this.A00.values().iterator();
        if (it.hasNext()) {
            it.next();
            throw new NullPointerException(A00(0, 8, 79));
        }
        return sb.toString();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2732kl
    public final synchronized void reset() {
        this.A00.clear();
    }
}
