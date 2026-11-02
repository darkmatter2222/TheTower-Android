package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.fx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2440fx {
    public static byte[] A00;
    public static String[] A01 = {"SZD1gnuwYC0ZDT5XCpN5wGg04vpvlXtv", "38Pkme0hctlwOycqXgIFmSt4EwGMsPu", "PZ5YSJhnqoOlFoXIJ", "MKZOkal4amZt32sY0duMnYWyMVrdvNv7", "PmMqC", "MtvBWYcgrX5nN2Ecp9gb0xGXALHF8kJ8", "836OSMulKGxVhnpon", "Ud77gBKi5ZcurXFgX0oEk2YfAMQgAhDP"};

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 18);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{Ascii.EM, 95, 67, 90, 91, 103, 96, 122, 107, 124, 125, 122, 103, 122, 103, 111, 98, 3, Ascii.DC4, 6, Ascii.DLE, 3, Ascii.NAK, Ascii.DC4, Ascii.NAK, 46, 7, Ascii.CAN, Ascii.NAK, Ascii.DC4, Ascii.RS};
    }

    public static void A02(C1618Hi c1618Hi, C2746kz c2746kz, C13747g c13747g) {
        c2746kz.A0d(new C2744kx(c13747g.A35().A01(), C2989p0.A04, C2989p0.A04, c13747g.A1r(), A00(17, 14, 99)));
        boolean zA2Q = c13747g.A2Q();
        String strA00 = A00(17, 14, 99);
        if (zA2Q) {
            C2742kv c2742kv = new C2742kv(c13747g.A1Y(), c13747g.A1r(), strA00);
            c2742kv.A04 = true;
            c2742kv.A03 = A00(0, 5, 37);
            c2746kz.A0Y(c2742kv);
        }
        boolean zA33 = C2863mv.A33(c1618Hi, C2236cd.A03());
        String strA09 = c13747g.A32().A0I().A09();
        if (!TextUtils.isEmpty(strA09)) {
            C2742kv c2742kv2 = new C2742kv(strA09, c13747g.A1r(), A00(17, 14, 99), c13747g.A32().A0I().A06());
            if (!zA2Q || zA33) {
                c2746kz.A0b(c2742kv2);
            } else {
                c2746kz.A0Y(c2742kv2);
            }
        }
        String strA08 = c13747g.A32().A0I().A08();
        if (strA08 != null) {
            c2746kz.A0d(new C2744kx(strA08, AbstractC2435fs.A00(c13747g.A32().A0I()), AbstractC2435fs.A01(c13747g.A32().A0I()), c13747g.A1r(), A00(17, 14, 99)));
        }
        AbstractC2434fr.A00(c13747g, c2746kz, strA00);
        Iterator<String> it = c13747g.A32().A0L().A03().iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A01[3].charAt(13) == 'A') {
                throw new RuntimeException();
            }
            A01[5] = "OaJBMb3uVjEUmdwMqKaIaowf8It3Pi62";
            if (!zHasNext) {
                Iterator<C2612io> it2 = c13747g.A1w().iterator();
                while (it2.hasNext()) {
                    c2746kz.A0d(new C2744kx(it2.next().A02(), -1, -1, c13747g.A1r(), A00(17, 14, 99)));
                }
                Iterator<C2938oA> it3 = c13747g.A1v().iterator();
                while (it3.hasNext()) {
                    c2746kz.A0d(new C2744kx(it3.next().A02(), -1, -1, c13747g.A1r(), A00(17, 14, 99)));
                }
                return;
            }
            c2746kz.A0d(new C2744kx(it.next(), -1, -1, c13747g.A1r(), A00(17, 14, 99)));
        }
    }

    public static void A03(C1618Hi c1618Hi, C2746kz c2746kz, C13747g c13747g) {
        int i = 0;
        for (C2395fE c2395fE : c13747g.A39()) {
            String strA08 = c2395fE.A0I().A08();
            if (strA08 != null) {
                C2744kx c2744kx = new C2744kx(strA08, AbstractC2435fs.A00(c2395fE.A0I()), AbstractC2435fs.A01(c2395fE.A0I()), c13747g.A1r(), A00(5, 12, 28));
                if (i == 0) {
                    c2746kz.A0c(c2744kx);
                } else {
                    c2746kz.A0d(c2744kx);
                }
            }
            String[] strArr = A01;
            if (strArr[2].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[0] = "d4OGgqInyGax2uUwuJ6rocUy9OK0g6RJ";
            strArr2[7] = "8ZRzgNChvbJeQD0ONiajCC1PQNrhJWUQ";
            AbstractC2434fr.A00(c13747g, c2746kz, A00(17, 14, 99));
            Iterator<String> it = c2395fE.A0L().A03().iterator();
            while (it.hasNext()) {
                c2746kz.A0d(new C2744kx(it.next(), -1, -1, c13747g.A1r(), A00(5, 12, 28)));
            }
            if (!TextUtils.isEmpty(c2395fE.A0I().A09())) {
                new C2742kv(c2395fE.A0I().A09(), c13747g.A1r(), A00(5, 12, 28), c2395fE.A0I().A06()).A04 = false;
            }
            i++;
        }
    }
}
