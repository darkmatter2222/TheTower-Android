package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7d, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C13717d extends KI {
    public static byte[] A00;
    public static String[] A01 = {"d7tLiGkqyLa7cKOkED7RtvmpIXZH8d0b", "LmA4T64r6T9e", "1EBtOKlPck0twYp3ElEJQmg3d", "uhXcdOUibAChEZNBNQuPqKRIQ2", "Z", "LV0o53GlcsqgEYK9Pr4EwymnJShooL9b", "NLZosIPt4DzrQXhRsvqwWEHVFOTX5bDJ", "MQasnwh7q"};

    static {
        A03();
    }

    public C13717d(C1618Hi c1618Hi, C2441fy c2441fy) {
        super(c1618Hi, c2441fy);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 52);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> A01(long j) {
        HashMap map = new HashMap();
        map.put(A00(36, 5, 104), String.valueOf(System.currentTimeMillis() - j));
        return map;
    }

    public static void A03() {
        A00 = new byte[]{77, 72, Ascii.FF, 69, 95, Ascii.FF, 66, 67, 88, Ascii.FF, 94, 73, 77, 72, 85, Ascii.FF, 67, 94, Ascii.FF, 77, SignedBytes.MAX_POWER_OF_TWO, 94, 73, 77, 72, 85, Ascii.FF, 72, 69, 95, 92, SignedBytes.MAX_POWER_OF_TWO, 77, 85, 73, 72, 56, 57, 48, Base64.padSymbol, 37};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05(List<String> list, Map<String, String> map) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<String> it = list.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            String[] strArr = A01;
            if (strArr[2].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            A01[0] = "jDIZMq7wlAdnEmkEGDRuOyHBIh8qxobs";
            if (!zHasNext) {
                return;
            }
            new C2102aT(this.A0B, map).A0C(it.next());
        }
    }

    @Override // com.facebook.ads.redexgen.X.KI
    public final void A0O() {
        C1716Lh c1716Lh = (C1716Lh) this.A01;
        if (!c1716Lh.A0R()) {
            throw new IllegalStateException(A00(0, 36, 24));
        }
        if (this.A07 != null) {
            this.A07.A0B(c1716Lh);
        }
    }

    @Override // com.facebook.ads.redexgen.X.KI
    public final void A0Q(InterfaceC2368en interfaceC2368en, C2805ly c2805ly, C2803lw c2803lw, C2442fz c2442fz) {
        C1716Lh c1716Lh = (C1716Lh) interfaceC2368en;
        long jCurrentTimeMillis = System.currentTimeMillis();
        KF kf = new KF(this, c2442fz, c1716Lh, jCurrentTimeMillis, c2803lw);
        A0G().postDelayed(kf, c2805ly.A05().A05());
        c1716Lh.A0L(this.A0B, new KE(this, kf, jCurrentTimeMillis, c2803lw), this.A09, c2442fz, GT.A0K());
    }
}
