package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.Display;
import android.view.Surface;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Xt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2017Xt {
    public static byte[] A0H;
    public static String[] A0I = {"BzLKQQ", "guNn4XOOW", "b9w3CcJrwRYV3Oz", "wd8Hk9qLNJn0OjQYML8X63zOsnNqMpnw", "umQHBaYWHJZxZCc03wqCrfWuD9SSkSxi", "H3jhFFtl3PzCs87aHmgD041Jj37jQndb", "mikd7C", "WcCovW5StnGUjNK"};
    public float A00;
    public float A01;
    public float A02;
    public float A03;
    public int A04;
    public long A05;
    public long A06;
    public long A07;
    public long A08;
    public long A09;
    public long A0A;
    public long A0B;
    public Surface A0C;
    public boolean A0D;
    public final XX A0E = new XX();
    public final InterfaceC2016Xr A0F;
    public final Xs A0G;

    static {
        A06();
    }

    public C2017Xt(Context context) {
        this.A0F = A01(context);
        this.A0G = this.A0F != null ? Xs.A00() : null;
        this.A0A = -9223372036854775807L;
        this.A0B = -9223372036854775807L;
        this.A00 = -1.0f;
        this.A01 = 1.0f;
        this.A04 = 0;
    }

    public static long A00(long j, long j2, long j3) {
        long j4;
        long j5 = j2 + (j3 * ((j - j2) / j3));
        if (j <= j5) {
            j4 = j5 - j3;
        } else {
            j4 = j5;
            j5 += j3;
        }
        return j5 - j < j - j4 ? j5 : j4;
    }

    public static InterfaceC2016Xr A01(Context context) {
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        QM qmA01 = N1.A02 >= 17 ? QM.A01(applicationContext) : null;
        return qmA01 == null ? QQ.A00(applicationContext) : qmA01;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = (bArrCopyOfRange[i4] ^ i3) ^ 41;
            if (A0I[1].length() == 30) {
                throw new RuntimeException();
            }
            A0I[1] = "UKxZjkR03Jhkaya7oCbDQ8QeVY7uj";
            bArrCopyOfRange[i4] = (byte) i5;
        }
        return new String(bArrCopyOfRange);
    }

    private void A03() {
        if (N1.A02 < 30 || this.A0C == null || this.A04 == Integer.MIN_VALUE || this.A03 == 0.0f) {
            return;
        }
        this.A03 = 0.0f;
        C2014Xp.A02(this.A0C, 0.0f);
    }

    private void A04() {
        this.A05 = 0L;
        this.A06 = -1L;
        this.A08 = -1L;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0084  */
    /* JADX WARN: Code duplicated, block: B:37:0x0088  */
    /* JADX WARN: Code duplicated, block: B:38:0x008a  */
    /* JADX WARN: Code duplicated, block: B:41:0x0093  */
    private void A05() {
        if (N1.A02 < 30 || this.A0C == null) {
            return;
        }
        float fA00 = this.A0E.A06() ? this.A0E.A00() : this.A00;
        if (fA00 == this.A02) {
            return;
        }
        boolean z = true;
        if (fA00 != -1.0f) {
            float f = this.A02;
            if (A0I[5].charAt(23) == 'O') {
                throw new RuntimeException();
            }
            String[] strArr = A0I;
            strArr[7] = "eyz1CaOdqZIe0D4";
            strArr[2] = "8Zi8iCi2C1YNOse";
            if (f != -1.0f) {
                if (Math.abs(fA00 - this.A02) < (this.A0E.A06() && (this.A0E.A03() > 5000000000L ? 1 : (this.A0E.A03() == 5000000000L ? 0 : -1)) >= 0 ? 0.02f : 1.0f)) {
                    z = false;
                }
            } else if (fA00 != -1.0f) {
                z = true;
            } else if (this.A0E.A01() < 30) {
                z = false;
            }
        } else if (fA00 != -1.0f) {
            z = true;
        } else if (this.A0E.A01() < 30) {
            z = false;
        }
        if (z) {
            this.A02 = fA00;
            A09(false);
        }
    }

    public static void A06() {
        byte[] bArr = {35, Ascii.CAN, Ascii.ETB, Ascii.DC4, Ascii.SUB, 19, 86, 2, Ascii.EM, 86, 7, 3, 19, 4, Ascii.SI, 86, Ascii.DC2, Ascii.US, 5, 6, Ascii.SUB, Ascii.ETB, Ascii.SI, 86, 4, 19, Ascii.DLE, 4, 19, 5, Ascii.RS, 86, 4, Ascii.ETB, 2, 19, 33, Ascii.RS, 19, Ascii.DC2, Ascii.CAN, 49, 5, Ascii.SYN, Ascii.SUB, Ascii.DC2, 37, Ascii.DC2, Ascii.ESC, Ascii.DC2, Ascii.SYN, 4, Ascii.DC2, 63, Ascii.DC2, Ascii.ESC, 7, Ascii.DC2, 5};
        String[] strArr = A0I;
        if (strArr[0].length() != strArr[6].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0I;
        strArr2[7] = "FoorzRSe6KZh8Hr";
        strArr2[2] = "jbAKEo2D1cc5L0i";
        A0H = bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07(Display display) {
        if (display != null) {
            this.A0A = (long) (1.0E9d / ((double) display.getRefreshRate()));
            this.A0B = (this.A0A * 80) / 100;
        } else {
            MV.A07(A02(36, 23, 94), A02(0, 36, 95));
            this.A0A = -9223372036854775807L;
            this.A0B = -9223372036854775807L;
        }
    }

    private void A09(boolean z) {
        if (N1.A02 < 30 || this.A0C == null || this.A04 == Integer.MIN_VALUE) {
            return;
        }
        float f = 0.0f;
        if (this.A0D && this.A02 != -1.0f) {
            f = this.A02 * this.A01;
        }
        if (z || this.A03 != f) {
            this.A03 = f;
            C2014Xp.A02(this.A0C, f);
        }
    }

    public static boolean A0A(long j, long j2) {
        return Math.abs(j - j2) <= 20000000;
    }

    public final long A0B(long j) {
        long j2 = j;
        if (this.A06 != -1 && this.A0E.A06()) {
            long jA02 = this.A07 + ((long) (((this.A05 - this.A06) * this.A0E.A02()) / this.A01));
            if (A0A(j2, jA02)) {
                j2 = jA02;
            } else {
                A04();
            }
        }
        this.A08 = this.A05;
        this.A09 = j2;
        if (this.A0G == null || this.A0A == -9223372036854775807L) {
            return j2;
        }
        long j3 = this.A0G.A04;
        return j3 == -9223372036854775807L ? j2 : A00(j2, j3, this.A0A) - this.A0B;
    }

    public final void A0C() {
        A04();
    }

    public final void A0D() {
        this.A0D = true;
        A04();
        if (this.A0F != null) {
            ((Xs) AbstractC1722Ln.A01(this.A0G)).A06();
            this.A0F.AIl(new InterfaceC2015Xq() { // from class: com.facebook.ads.redexgen.X.QX
                @Override // com.facebook.ads.redexgen.X.InterfaceC2015Xq
                public final void AEe(Display display) {
                    this.A00.A07(display);
                }
            });
        }
        A09(false);
        String[] strArr = A0I;
        if (strArr[4].charAt(3) != strArr[3].charAt(3)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0I;
        strArr2[0] = "wtXM97";
        strArr2[6] = "MWrhmJ";
    }

    public final void A0E() {
        this.A0D = false;
        if (this.A0F != null) {
            this.A0F.ALq();
            Xs xs = this.A0G;
            if (A0I[5].charAt(23) == 'O') {
                throw new RuntimeException();
            }
            A0I[1] = "5eJpeM";
            ((Xs) AbstractC1722Ln.A01(xs)).A07();
        }
        A03();
    }

    public final void A0F(float f) {
        this.A00 = f;
        this.A0E.A04();
        A05();
    }

    public final void A0G(long j) {
        if (this.A08 != -1) {
            this.A06 = this.A08;
            this.A07 = this.A09;
        }
        this.A05++;
        this.A0E.A05(1000 * j);
        A05();
    }
}
