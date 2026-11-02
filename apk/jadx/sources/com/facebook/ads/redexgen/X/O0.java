package com.facebook.ads.redexgen.X;

import java.io.IOException;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class O0 implements InterfaceC2035Yn {
    public static String[] A02 = {"PJhN3FZVgP73WsVHjeIkIiqy1o5Nm6ot", "vHZEoF8Vdr6b9GOxglGjIcztgEb4lGpG", "7Zn", "WjGQxEG9muEXHUuRTkTnxckEJUcVVgfc", "vS1KFBax", "Z3S79xbW9uIa6QlxLinm6wAfFUFiRJHB", "7OX92GDqqDUkwkv5Php4XqNaHQn7rSna", "lYpSwIZ9e0XrNoGQ5mu7eY5DTp5WJL8e"};
    public final C1744Mk A00;
    public final C1752Ms A01;

    public O0(C1752Ms c1752Ms) {
        this.A01 = c1752Ms;
        this.A00 = new C1744Mk();
    }

    private C2033Yl A00(C1744Mk c1744Mk, long j, long j2) {
        int iA09 = -1;
        int iA010 = -1;
        long j3 = -9223372036854775807L;
        while (c1744Mk.A07() >= 4) {
            int iA00 = C1785Nz.A00(c1744Mk.A0l(), c1744Mk.A09());
            if (A02[4].length() == 3) {
                throw new RuntimeException();
            }
            A02[2] = "VSk";
            if (iA00 == 442) {
                c1744Mk.A0g(4);
                long jA06 = C2251cs.A06(c1744Mk);
                if (jA06 != -9223372036854775807L) {
                    long jA07 = this.A01.A06(jA06);
                    if (jA07 > j) {
                        return j3 == -9223372036854775807L ? C2033Yl.A04(jA07, j2) : C2033Yl.A03(((long) iA09) + j2);
                    }
                    if (100000 + jA07 > j) {
                        return C2033Yl.A03(((long) c1744Mk.A09()) + j2);
                    }
                    j3 = jA07;
                    iA09 = c1744Mk.A09();
                }
                A01(c1744Mk);
                iA010 = c1744Mk.A09();
            } else if (A02[2].length() != 3) {
                String[] strArr = A02;
                strArr[5] = "Nn5J6L6hAUloK5liRrJgt8p77UAZcSJH";
                strArr[3] = "IT7ZCNGlgICVvylA5U02sqKTdUzkVSY5";
                c1744Mk.A0g(1);
            } else {
                String[] strArr2 = A02;
                strArr2[1] = "jubqiDg7PIOX8A5j1IwxQMQf4VcOzTUB";
                strArr2[6] = "Yz6XdAIPGC3B7YV3lv6Yebkr9CAv7Zu0";
                c1744Mk.A0g(1);
            }
        }
        if (j3 == -9223372036854775807L) {
            return C2033Yl.A03;
        }
        long j4 = ((long) iA010) + j2;
        String[] strArr3 = A02;
        if (strArr3[1].charAt(3) != strArr3[6].charAt(3)) {
            String[] strArr4 = A02;
            strArr4[5] = "HOvXZkH3qZY5W2uBRQ5zalBDwUdW14MF";
            strArr4[3] = "FFFw59d8TQDlsrvnJyK8q264EUQFEdHa";
            return C2033Yl.A05(j3, j4);
        }
        throw new RuntimeException();
    }

    public static void A01(C1744Mk c1744Mk) {
        int iA00;
        int iA0A = c1744Mk.A0A();
        if (c1744Mk.A07() < 10) {
            c1744Mk.A0f(iA0A);
            return;
        }
        c1744Mk.A0g(9);
        int iA0I = c1744Mk.A0I() & 7;
        if (c1744Mk.A07() < iA0I) {
            c1744Mk.A0f(iA0A);
            return;
        }
        c1744Mk.A0g(iA0I);
        if (c1744Mk.A07() < 4) {
            c1744Mk.A0f(iA0A);
            return;
        }
        if (C1785Nz.A00(c1744Mk.A0l(), c1744Mk.A09()) == 443) {
            c1744Mk.A0g(4);
            int iA0M = c1744Mk.A0M();
            if (c1744Mk.A07() < iA0M) {
                c1744Mk.A0f(iA0A);
                return;
            }
            c1744Mk.A0g(iA0M);
        }
        while (c1744Mk.A07() >= 4 && (iA00 = C1785Nz.A00(c1744Mk.A0l(), c1744Mk.A09())) != 442 && iA00 != 441 && (iA00 >>> 8) == 1) {
            c1744Mk.A0g(4);
            if (c1744Mk.A07() < 2) {
                c1744Mk.A0f(iA0A);
                return;
            }
            c1744Mk.A0f(Math.min(c1744Mk.A0A(), c1744Mk.A09() + c1744Mk.A0M()));
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2035Yn
    public final void AGz() {
        this.A00.A0i(N1.A07);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2035Yn
    public final C2033Yl AKE(Q9 q9, long j) throws IOException {
        long jA9Q = q9.A9Q();
        int iMin = (int) Math.min(20000L, q9.A90() - jA9Q);
        this.A00.A0d(iMin);
        q9.AI6(this.A00.A0l(), 0, iMin);
        return A00(this.A00, j, jA9Q);
    }
}
