package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Xa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2000Xa {
    public static byte[] A0H;
    public static String[] A0I = {"QI6p3QcyfWHz7WQ2OWXChIAMfMyUwg4N", "niUiJYIIyU3YFNt", "rjV2Hsf4FoNPDRZo7goAYx6xP", "BOVi8Jtsu5tshcZbMC7bXntr5TWmQc76", "vM8kl80mXW07YqwtrA", "wOULJnlyI9LCGWOkCbRLzEuUAVfy9Llw", "KKULc3fI", "QTaS50YFF7rWFxTeClY4eGOkCA39IIpI"};
    public Handler A04;
    public Pair<Long, VC> A05;
    public Pair<Surface, C1748Mo> A06;
    public CopyOnWriteArrayList<M6> A08;
    public boolean A0A;
    public boolean A0B;
    public final C3X A0C;
    public final C2017Xt A0D;
    public final boolean A0G;
    public final ArrayDeque<Long> A0F = new ArrayDeque<>();
    public final ArrayDeque<Pair<Long, VC>> A0E = new ArrayDeque<>();
    public int A00 = -1;
    public boolean A09 = true;
    public long A02 = -9223372036854775807L;
    public C1919Tp A07 = C1919Tp.A05;
    public long A03 = -9223372036854775807L;
    public long A01 = -9223372036854775807L;

    static {
        A02();
    }

    public C2000Xa(C2017Xt c2017Xt, C3X c3x, boolean z) {
        this.A0D = c2017Xt;
        this.A0C = c3x;
        this.A0G = z;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A0I[6].length() != 8) {
                throw new RuntimeException();
            }
            String[] strArr = A0I;
            strArr[0] = "7fvYPH4yX2zv1fcX80FI7og9FJDVS5aN";
            strArr[5] = "XZlzBV6y1QLK5uh2qFcPGm8A2t79bkF1";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 115);
            i4++;
        }
    }

    public static void A02() {
        A0H = new byte[]{Ascii.US, Ascii.DC2, Ascii.DC2, 17, 9, 83, Ascii.CAN, Ascii.FF, Ascii.US, 19, Ascii.ESC, 83, Ascii.SUB, Ascii.FF, 17, Ascii.SO, Ascii.NAK, 4, 19, Ascii.ETB, 2, 19, 127, 117, 108, 106, 113, 84, 86, 71, 122, 93, 67, 70, 71, 96, 70, 65, 85, 82, 80, 86, 124, 126, 111, 75, 126, 117, 127, 114, 117, 124, 82, 117, 107, 110, 111, 93, 105, 122, 118, 126, 88, 116, 110, 117, 111, 52, 35, 42, 35, 39, 53, 35, 48, 39, 44, 38, 39, 48, Ascii.CR, 55, 54, 50, 55, 54, 4, 48, 35, 47, 39, Ascii.ETB, 1, Ascii.DLE, 45, 10, Ascii.DC4, 17, Ascii.DLE, 34, Ascii.SYN, 5, 9, 1, 45, 10, 2, Ascii.VT, Ascii.US, 9, Ascii.CAN, 35, Ascii.EM, Ascii.CAN, Ascii.FS, Ascii.EM, Ascii.CAN, 63, Ascii.EM, Ascii.RS, 10, Ascii.CR, Ascii.SI, 9, 37, 2, 10, 3};
    }

    private void A03(long j, boolean z) {
        AbstractC1722Ln.A02(null);
        throw new NullPointerException(A01(74, 17, 49));
    }

    @MetaExoPlayerCustomization
    public static boolean A04(long j) {
        if (XL.A03(XQ.A2a)) {
            return j > 50000;
        }
        int iA00 = XL.A00(XP.A0A);
        int iA01 = XL.A00(XP.A09);
        return iA00 > 0 && iA01 > 0 && j > ((long) iA01) && j < ((long) iA00);
    }

    public final MediaFormat A06(MediaFormat mediaFormat) {
        if (N1.A02 >= 29 && this.A0C.A0p.getApplicationContext().getApplicationInfo().targetSdkVersion >= 29) {
            mediaFormat.setInteger(A01(0, 16, 13), 0);
        }
        return mediaFormat;
    }

    public final Surface A07() {
        AbstractC1722Ln.A01(null);
        throw new NullPointerException(A01(27, 15, 64));
    }

    public final void A08() {
        AbstractC1722Ln.A01(null);
        throw new NullPointerException(A01(108, 20, 31));
    }

    public final void A09() {
        AbstractC1722Ln.A02(null);
        throw new NullPointerException(A01(22, 5, kotlin.fh.g1));
    }

    public final void A0A() {
        AbstractC1722Ln.A01(null);
        throw new NullPointerException(A01(67, 7, 53));
    }

    public final void A0B(long j, long j2) {
        AbstractC1722Ln.A02(null);
        if (this.A0F.isEmpty()) {
            return;
        }
        boolean z = false;
        boolean z2 = this.A0C.A9n() == 2;
        long jLongValue = ((Long) AbstractC1722Ln.A01(this.A0F.peek())).longValue();
        long j3 = jLongValue + this.A01;
        long jA03 = this.A0C.A03(j, j2, SystemClock.elapsedRealtime() * 1000, j3, z2);
        if (this.A0A && this.A0F.size() == 1) {
            z = true;
        }
        if (this.A0C.A0m(j, jA03)) {
            A03(-1L, z);
            throw null;
        }
        if (!z2 || j == this.A0C.A0L || A04(jA03)) {
            return;
        }
        this.A0D.A0G(j3);
        long jA0B = this.A0D.A0B(System.nanoTime() + (jA03 * 1000));
        if (this.A0C.A28((jA0B - System.nanoTime()) / 1000, j2, z)) {
            A03(-2L, z);
            throw null;
        }
        if (!this.A0E.isEmpty() && j3 > ((Long) this.A0E.peek().first).longValue()) {
            this.A05 = this.A0E.remove();
        }
        this.A0C.A0S(jLongValue, jA0B, (VC) this.A05.second, null);
        if (this.A03 >= j3) {
            this.A03 = -9223372036854775807L;
        }
        A03(jA0B, z);
        throw null;
    }

    public final void A0C(Surface surface, C1748Mo c1748Mo) {
        if (this.A06 != null) {
            Object obj = this.A06.first;
            String[] strArr = A0I;
            if (strArr[2].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0I;
            strArr2[0] = "weZPnhnySgxnP6Qt1MCLx3NPY7FBtlfF";
            strArr2[5] = "uRJSlQTye4wEepPBnCSWGuRtoYUEdPzW";
            if (((Surface) obj).equals(surface) && ((C1748Mo) this.A06.second).equals(c1748Mo)) {
                return;
            }
        }
        this.A06 = Pair.create(surface, c1748Mo);
        if (A0G()) {
            AbstractC1722Ln.A01(null);
            new C1749Mp(surface, c1748Mo.A03(), c1748Mo.A02());
            throw new NullPointerException(A01(108, 20, 31));
        }
    }

    public final void A0D(VC vc) {
        AbstractC1722Ln.A01(null);
        new M7(vc.A0L, vc.A0A).A00(vc.A02).A01();
        throw new NullPointerException(A01(91, 17, 23));
    }

    public final void A0E(String str) {
        this.A00 = N1.A09(this.A0C.A0p, str, false);
    }

    public final void A0F(List<M6> list) {
        if (this.A08 == null) {
            this.A08 = new CopyOnWriteArrayList<>(list);
        } else {
            this.A08.clear();
            this.A08.addAll(list);
        }
    }

    @MetaExoPlayerCustomization
    public final boolean A0G() {
        return (!this.A0G || 0 == 0 || this.A0C.A21()) ? false : true;
    }

    public final boolean A0H() {
        return this.A06 == null || !((C1748Mo) this.A06.second).equals(C1748Mo.A04);
    }

    public final boolean A0I() {
        return this.A0B;
    }

    public final boolean A0J(VC vc, long j) throws AnonymousClass96 {
        AbstractC1722Ln.A08(!A0G());
        if (!this.A09) {
            return false;
        }
        CopyOnWriteArrayList<M6> copyOnWriteArrayList = this.A08;
        if (A0I[6].length() != 8) {
            throw new RuntimeException();
        }
        A0I[4] = "WrCX8mf8mqG6Y2I";
        if (copyOnWriteArrayList == null) {
            this.A09 = false;
            return false;
        }
        this.A04 = N1.A0Y();
        this.A0C.A26(vc.A0N);
        try {
            if (!C3X.A0h() && vc.A0F != 0) {
                CopyOnWriteArrayList<M6> copyOnWriteArrayList2 = this.A08;
                XZ.A00(vc.A0F);
                copyOnWriteArrayList2.add(0, null);
            }
            XZ.A01();
            Context unused = this.A0C.A0p;
            AbstractC1722Ln.A01(this.A08);
            Handler handler = this.A04;
            Objects.requireNonNull(handler);
            new ExecutorC1637Ib(handler);
            new Qb(this);
            throw new NullPointerException(A01(16, 6, 5));
        } catch (Exception e) {
            throw this.A0C.A1S(e, vc, 7000);
        }
    }

    public final boolean A0K(VC vc, long j, boolean z) {
        AbstractC1722Ln.A02(null);
        AbstractC1722Ln.A08(this.A00 != -1);
        throw new NullPointerException(A01(42, 25, 104));
    }
}
