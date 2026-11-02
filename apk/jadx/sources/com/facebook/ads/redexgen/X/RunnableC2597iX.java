package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.iX, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class RunnableC2597iX implements Runnable {
    public static Comparator<C2596iW> A04;
    public static byte[] A05;
    public static String[] A06 = {"C", "g", "thIgEQWd9nx", "UJ", "nKFIv9xSQBz", "WKzZJ6F0j2u08DpGCnjDR9E", "2Nt4JwZoKXCf4OpJNcF1oxTto7W5gJbD", "RW"};
    public static final ThreadLocal<RunnableC2597iX> A07;
    public long A00;
    public long A01;
    public ArrayList<C7O> A02 = new ArrayList<>();
    public ArrayList<C2596iW> A03 = new ArrayList<>();

    static {
        A03();
        A07 = new ThreadLocal<>();
        A04 = new C2595iV();
    }

    private AbstractC2638jE A00(C7O c7o, int i, long j) {
        if (A08(c7o, i)) {
            return null;
        }
        C2628j4 c2628j4 = c7o.A0r;
        try {
            c7o.A1O();
            AbstractC2638jE abstractC2638jEA0J = c2628j4.A0J(i, false, j);
            if (abstractC2638jEA0J != null) {
                if (!abstractC2638jEA0J.A0l() || abstractC2638jEA0J.A0m()) {
                    c2628j4.A0e(abstractC2638jEA0J, false);
                } else {
                    c2628j4.A0Y(abstractC2638jEA0J.A0H);
                }
            }
            return abstractC2638jEA0J;
        } finally {
            c7o.A1v(false);
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 8);
        }
        return new String(bArrCopyOfRange);
    }

    private void A02() {
        C2596iW c2596iW;
        int size = this.A02.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            C7O c7o = this.A02.get(i2);
            if (c7o.getWindowVisibility() == 0) {
                c7o.A02.A04(c7o, false);
                i += c7o.A02.A00;
            }
        }
        this.A03.ensureCapacity(i);
        int i3 = 0;
        String[] strArr = A06;
        if (strArr[3].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A06;
        strArr2[3] = "OH";
        strArr2[7] = "7S";
        for (int i4 = 0; i4 < size; i4++) {
            C7O c7o2 = this.A02.get(i4);
            if (c7o2.getWindowVisibility() == 0) {
                JA ja = c7o2.A02;
                int iAbs = Math.abs(ja.A01) + Math.abs(ja.A02);
                for (int i5 = 0; i5 < ja.A00 * 2; i5 += 2) {
                    if (i3 >= this.A03.size()) {
                        c2596iW = new C2596iW();
                        this.A03.add(c2596iW);
                    } else {
                        c2596iW = this.A03.get(i3);
                    }
                    int i6 = ja.A03[i5 + 1];
                    c2596iW.A04 = i6 <= iAbs;
                    c2596iW.A02 = iAbs;
                    c2596iW.A00 = i6;
                    c2596iW.A03 = c7o2;
                    c2596iW.A01 = ja.A03[i5];
                    i3++;
                }
            }
        }
        Collections.sort(this.A03, A04);
    }

    public static void A03() {
        A05 = new byte[]{97, 101, 47, 93, 116, -126, -125, 116, 115, 47, 95, -127, 116, 117, 116, -125, 114, 119, 92, 96, 42, 90, 124, 111, 112, 111, 126, 109, 114};
    }

    private void A04(long j) {
        for (int i = 0; i < this.A03.size(); i++) {
            C2596iW c2596iW = this.A03.get(i);
            if (c2596iW.A03 == null) {
                return;
            }
            A06(c2596iW, j);
            c2596iW.A00();
        }
    }

    private final void A05(long j) {
        A02();
        A04(j);
    }

    private void A06(C2596iW c2596iW, long j) {
        AbstractC2638jE abstractC2638jEA00 = A00(c2596iW.A03, c2596iW.A01, c2596iW.A04 ? Long.MAX_VALUE : j);
        if (abstractC2638jEA00 == null || abstractC2638jEA00.A09 == null || !abstractC2638jEA00.A0l() || abstractC2638jEA00.A0m()) {
            return;
        }
        A07(abstractC2638jEA00.A09.get(), j);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0056  */
    /* JADX WARN: Code duplicated, block: B:19:0x0064 A[Catch: all -> 0x006e, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x006e, blocks: (B:13:0x0030, B:14:0x0043, B:19:0x0064), top: B:27:0x0030 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x0030 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x0077 A[EDGE_INSN: B:29:0x0077->B:25:0x0077 BREAK  A[LOOP:0: B:14:0x0043->B:31:?], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:30:0x0073 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:? A[RETURN, SYNTHETIC] */
    private void A07(C7O c7o, long j) {
        JA ja;
        int i;
        int i2;
        if (c7o == null) {
            return;
        }
        if (c7o.A0C) {
            C2584iK c2584iK = c7o.A01;
            if (A06[5].length() != 17) {
                A06[6] = "t2x0aSlbBonOFe0N5m1ttILNz4IaYpUW";
                if (c2584iK.A06() != 0) {
                    c7o.A1R();
                }
                ja = c7o.A02;
                ja.A04(c7o, true);
                if (ja.A00 != 0) {
                    return;
                }
                try {
                    AbstractC2502gy.A01(A01(0, 18, 7));
                    c7o.A0s.A05(c7o.A04);
                    i = 0;
                    while (true) {
                        i2 = ja.A00 * 2;
                        if (A06[6].charAt(8) != 'I') {
                            break;
                        }
                        String[] strArr = A06;
                        strArr[3] = "nG";
                        strArr[7] = "TD";
                        if (i < i2) {
                            AbstractC2502gy.A00();
                            return;
                        } else {
                            A00(c7o, ja.A03[i], j);
                            i += 2;
                        }
                    }
                } catch (Throwable th) {
                    AbstractC2502gy.A00();
                    throw th;
                }
            }
        } else {
            ja = c7o.A02;
            ja.A04(c7o, true);
            if (ja.A00 != 0) {
                return;
            }
            AbstractC2502gy.A01(A01(0, 18, 7));
            c7o.A0s.A05(c7o.A04);
            i = 0;
            while (true) {
                i2 = ja.A00 * 2;
                if (A06[6].charAt(8) != 'I') {
                    break;
                    break;
                }
                String[] strArr2 = A06;
                strArr2[3] = "nG";
                strArr2[7] = "TD";
                if (i < i2) {
                    AbstractC2502gy.A00();
                    return;
                } else {
                    A00(c7o, ja.A03[i], j);
                    i += 2;
                }
            }
        }
        throw new RuntimeException();
    }

    public static boolean A08(C7O c7o, int i) {
        int iA06 = c7o.A01.A06();
        for (int i2 = 0; i2 < iA06; i2++) {
            AbstractC2638jE abstractC2638jEA0F = C7O.A0F(c7o.A01.A0A(i2));
            if (abstractC2638jEA0F.A03 == i && !abstractC2638jEA0F.A0m()) {
                return true;
            }
        }
        return false;
    }

    public final void A09(C7O c7o) {
        this.A02.add(c7o);
    }

    public final void A0A(C7O c7o) {
        this.A02.remove(c7o);
    }

    public final void A0B(C7O c7o, int i, int i2) {
        if (c7o.isAttachedToWindow() && this.A01 == 0) {
            this.A01 = c7o.getNanoTime();
            c7o.post(this);
        }
        c7o.A02.A03(i, i2);
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            AbstractC2502gy.A01(A01(18, 11, 2));
            if (this.A02.isEmpty()) {
                this.A01 = 0L;
                AbstractC2502gy.A00();
                return;
            }
            int size = this.A02.size();
            long jMax = 0;
            for (int i = 0; i < size; i++) {
                C7O c7o = this.A02.get(i);
                if (c7o.getWindowVisibility() == 0) {
                    jMax = Math.max(c7o.getDrawingTime(), jMax);
                }
            }
            if (jMax != 0) {
                A05(TimeUnit.MILLISECONDS.toNanos(jMax) + this.A00);
                this.A01 = 0L;
                AbstractC2502gy.A00();
            } else {
                this.A01 = 0L;
                if (A06[5].length() == 17) {
                    throw new RuntimeException();
                }
                A06[5] = "H4nD1dOrFb1";
                AbstractC2502gy.A00();
            }
        } catch (Throwable th) {
            this.A01 = 0L;
            AbstractC2502gy.A00();
            throw th;
        }
    }
}
