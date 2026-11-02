package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.95, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class AnonymousClass95 extends VK implements InterfaceC1888Sk {
    public static byte[] A0l;
    public static String[] A0m = {"84ctVTdG8Y74Xh1shte3RJVeq7O8NWrK", "V8zp6pGqi3FjZEVL0bks4", "2CIkV0ZViebb13TAhwvpfVjjWhVIyOU0", "CWppl43FIStN6Ohnpp5KhGKY5Gbk1gXt", "ybNNjwK84WFGhGVtAoThNrvlq0JrY12c", "wJ7nyMBGPJn2vVoM1rBIwJueDMbivVqh", "nSD5PLAecDXmHKB3oAdnEsq7UeNPzyf9", "VgJ5Z2ELSsgMVCdKrRnmp6qYhhVsw12T"};
    public float A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public long A07;
    public long A08;
    public VL A09;
    public C1930Ud A0A;
    public C1930Ud A0B;
    public C1930Ud A0C;
    public UW A0D;
    public UU A0E;
    public C1919Tp A0F;
    public C1909Tf A0G;
    public C1748Mo A0H;
    public AnonymousClass96 A0I;
    public PO A0J;
    public C1816Pj A0K;
    public InterfaceC1936Uj A0L;
    public boolean A0M;
    public boolean A0N;
    public boolean A0O;
    public boolean A0P;
    public boolean A0Q;
    public boolean A0R;
    public boolean A0S;
    public final UU A0T;
    public final long A0U;
    public final long A0V;
    public final long A0W;
    public final Handler A0X;
    public final Looper A0Y;
    public final LQ A0Z;
    public final UM A0a;
    public final InterfaceC1729Lu A0b;
    public final C1731Lx A0c;
    public final C1886Si A0d;
    public final AnonymousClass94 A0e;
    public final InterfaceC1879Sb A0f;
    public final AbstractC1983Wi A0g;
    public final C1984Wj A0h;
    public final CopyOnWriteArraySet<OL> A0i;
    public final CopyOnWriteArraySet<LJ> A0j;
    public final InterfaceC1884Sg[] A0k;

    static {
        A06();
    }

    public AnonymousClass95(InterfaceC1884Sg[] interfaceC1884SgArr, AbstractC1983Wi abstractC1983Wi, InterfaceC1805Ot interfaceC1805Ot, InterfaceC1993Ws interfaceC1993Ws, InterfaceC1729Lu interfaceC1729Lu) {
        this(interfaceC1884SgArr, abstractC1983Wi, interfaceC1805Ot, interfaceC1993Ws, interfaceC1729Lu, false, false, false, false, false, false, 0L, false, 0, false, false, false, false, false, false, false, null);
    }

    public AnonymousClass95(@MetaExoPlayerCustomization("qe_android_video_exoplayer2.update_loading_priority_exo2 is consistently false. We do not need to port this in the upgrade") InterfaceC1884Sg[] interfaceC1884SgArr, @MetaExoPlayerCustomization("Introduced in D13513334 and also used in loop playing for IG: D38285740") AbstractC1983Wi abstractC1983Wi, @MetaExoPlayerCustomization("Currently used to load chunks while seeking on pause D13827150") InterfaceC1805Ot interfaceC1805Ot, @MetaExoPlayerCustomization("D40987428 Brought in for clippingmediasource") InterfaceC1993Ws interfaceC1993Ws, @MetaExoPlayerCustomization("D45597293 for Oculus - allowing the start renderer offset to not be 0; Eventually changed in Exo: https://github.com/google/ExoPlayer/commit/9f352434c72da527d1fa7963447c3cf680db884f") InterfaceC1729Lu interfaceC1729Lu, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, long j, boolean z7, int i, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, LQ lq) {
        LQ lq2 = lq;
        Log.i(A04(2, 13, 120), A04(33, 5, 46) + Integer.toHexString(System.identityHashCode(this)) + A04(0, 2, 31) + A04(15, 18, 12) + A04(194, 3, 73) + N1.A04 + A04(193, 1, 65));
        this.A0c = new C1731Lx();
        try {
            this.A0M = z13;
            AbstractC1722Ln.A08(interfaceC1884SgArr.length > 0);
            this.A0k = (InterfaceC1884Sg[]) AbstractC1722Ln.A01(interfaceC1884SgArr);
            this.A0g = (AbstractC1983Wi) AbstractC1722Ln.A01(abstractC1983Wi);
            this.A0Q = false;
            this.A00 = 1.0f;
            this.A05 = 0;
            this.A0A = C1930Ud.A0Z;
            this.A0B = C1930Ud.A0Z;
            this.A0C = C1930Ud.A0Z;
            this.A0S = false;
            this.A0V = 0L;
            this.A09 = VL.A07;
            this.A0W = 0L;
            this.A0j = new CopyOnWriteArraySet<>();
            this.A0U = 0L;
            this.A0f = InterfaceC1879Sb.A00;
            this.A0K = C1816Pj.A04;
            this.A06 = 1;
            this.A0d = new C1886Si(null);
            this.A0h = new C1984Wj(new C1814Ph[interfaceC1884SgArr.length], new RA[interfaceC1884SgArr.length], C1926Tx.A03, null);
            this.A0a = new UM();
            this.A0T = new LE().A03(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 22, 23, 24, 25, 26, 27, 28).A01(29, abstractC1983Wi.A0Y()).A04();
            this.A0E = new LE().A02(this.A0T).A00(4).A00(10).A04();
            this.A0G = C1909Tf.A03;
            this.A0D = UW.A05;
            this.A0Y = Looper.myLooper();
            this.A0X = new OR(this, Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper());
            this.A0b = interfaceC1729Lu;
            this.A0Z = lq2 == null ? this : lq2;
            this.A0J = new PO(Timeline.A02, 0L, RY.A06, this.A0h);
            this.A0e = new AnonymousClass94(interfaceC1884SgArr, abstractC1983Wi, this.A0h, interfaceC1805Ot, interfaceC1993Ws, this.A0Q, this.A05, this.A0S, this.A0X, interfaceC1729Lu, z, z2, z3, z4, z5, z6, j, z7, i, z8, z9, z10, z11, z12, z14, QD.A03);
            this.A0F = C1919Tp.A05;
            this.A0H = C1748Mo.A04;
            this.A0i = new CopyOnWriteArraySet<>();
        } finally {
            this.A0c.A04();
        }
    }

    private long A00(long j) {
        long jA01 = KN.A01(j);
        if (this.A0J.A05.A00()) {
            return jA01;
        }
        this.A0J.A03.A0J(this.A0J.A05.A04, this.A0a);
        return jA01 + this.A0a.A0B();
    }

    private long A01(Timeline timeline, C1862Rk c1862Rk, long j) {
        timeline.A0J(c1862Rk.A04, this.A0a);
        return j + this.A0a.A0C();
    }

    private PO A02(boolean z, boolean z2, int i) {
        if (z) {
            this.A02 = 0;
            this.A01 = 0;
            this.A08 = 0L;
            this.A07 = 0L;
        } else {
            this.A02 = A8I();
            this.A01 = A8D();
            this.A08 = A8F();
            this.A07 = A0J();
        }
        return new PO(z2 ? Timeline.A02 : this.A0J.A03, this.A0J.A05, this.A0J.A02, this.A0J.A01, i, false, z2 ? RY.A06 : this.A0J.A06, z2 ? this.A0h : this.A0J.A07, this.A0J.A05, this.A0J.A02, 0L, this.A0J.A02);
    }

    private PS A03(PR pr) {
        int iA8I = A8I();
        AnonymousClass94 anonymousClass94 = this.A0e;
        Timeline timeline = this.A0J.A03;
        if (iA8I == -1) {
            iA8I = 0;
        }
        return new PS(anonymousClass94, pr, timeline, iA8I, this.A0b, this.A0e.A1B());
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0l, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 95);
            if (A0m[4].charAt(14) != 'V') {
                throw new RuntimeException();
            }
            String[] strArr = A0m;
            strArr[5] = "I3bQenvknrKqm7Ie17VKYbzeZv6yB5IV";
            strArr[0] = "1BE7EDlvNLgLkHgxobdXhxveKHXb6q8d";
        }
        return new String(bArrCopyOfRange);
    }

    private void A05() {
        if (this.A0M) {
            this.A0c.A01();
            if (Thread.currentThread() != A0K().getThread()) {
                Log.w(A04(2, 13, 120), N1.A0n(A04(38, 147, 85), Thread.currentThread().getName(), A0K().getThread().getName()), this.A0N ? null : new IllegalStateException());
                this.A0N = true;
            }
        }
    }

    public static void A06() {
        A0l = new byte[]{-98, -39, Ascii.FS, 79, 70, 39, 67, 56, 80, 60, 73, 32, 68, 71, 67, -80, -29, -38, -69, -41, -52, -28, -48, -35, -73, -44, -51, -102, -99, -103, -93, -103, -100, -42, -5, -10, 1, -83, 4, 32, Ascii.NAK, 45, Ascii.EM, 38, -44, Ascii.GS, 39, -44, Ascii.NAK, Ascii.ETB, Ascii.ETB, Ascii.EM, 39, 39, Ascii.EM, Ascii.CAN, -44, 35, 34, -44, 40, Ascii.FS, Ascii.EM, -44, 43, 38, 35, 34, Ascii.ESC, -44, 40, Ascii.FS, 38, Ascii.EM, Ascii.NAK, Ascii.CAN, -30, -66, -9, 41, 38, 38, Ascii.EM, 34, 40, -44, 40, Ascii.FS, 38, Ascii.EM, Ascii.NAK, Ascii.CAN, -18, -44, -37, -39, 39, -37, -66, -7, 44, 36, Ascii.EM, Ascii.ETB, 40, Ascii.EM, Ascii.CAN, -44, 40, Ascii.FS, 38, Ascii.EM, Ascii.NAK, Ascii.CAN, -18, -44, -37, -39, 39, -37, -66, 7, Ascii.EM, Ascii.EM, -44, Ascii.FS, 40, 40, 36, 39, -18, -29, -29, Ascii.EM, 44, 35, 36, 32, Ascii.NAK, 45, Ascii.EM, 38, -30, Ascii.CAN, Ascii.EM, 42, -29, Ascii.GS, 39, 39, 41, Ascii.EM, 39, -29, 36, 32, Ascii.NAK, 45, Ascii.EM, 38, -31, Ascii.NAK, Ascii.ETB, Ascii.ETB, Ascii.EM, 39, 39, Ascii.EM, Ascii.CAN, -31, 35, 34, -31, 43, 38, 35, 34, Ascii.ESC, -31, 40, Ascii.FS, 38, Ascii.EM, Ascii.NAK, Ascii.CAN, -23, -4, 3, -4, -8, 10, -4, -73, -3, 5, -56, 3, Ascii.SO, Ascii.CR, -17, Ascii.VT, 0, Ascii.CAN, 4, 17, -14, 19, 0, 19, 4, -30, 7, 0, Ascii.CR, 6, 4, 3, 59, 45, 45, 51, Ascii.FS, 55, -24, 49, 47, 54, 55, 58, 45, 44, -24, 42, 45, 43, 41, Base64.padSymbol, 59, 45, -24, 41, 54, -24, 41, 44, -24, 49, 59, -24, 56, 52, 41, 65, 49, 54, 47};
    }

    private void A07(PO po, int i, boolean z, int i2) {
        PO poA06 = po;
        this.A03 -= i;
        if (this.A03 == 0) {
            if (poA06.A02 == -9223372036854775807L) {
                poA06 = poA06.A06(poA06.A05, 0L, poA06.A01, poA06.A0D);
            }
            if ((!this.A0J.A03.A0N() || this.A0O) && poA06.A03.A0N()) {
                this.A01 = 0;
                this.A02 = 0;
                this.A08 = 0L;
                this.A07 = 0L;
            }
            boolean z2 = this.A0O;
            if (A0m[3].charAt(25) == 'f') {
                throw new RuntimeException();
            }
            A0m[3] = "kRdXywVndSRbAggg1c0VCSTY7v9D4yea";
            int i3 = z2 ? 0 : 2;
            boolean z3 = this.A0P;
            this.A0O = false;
            this.A0P = false;
            A08(poA06, z, i2, i3, z3);
        }
    }

    private void A08(PO po, boolean z, int i, int i2, boolean z2) {
        boolean z3 = this.A0J.A03 != po.A03;
        boolean z4 = this.A0J.A00 != po.A00;
        boolean z5 = this.A0J.A0A != po.A0A;
        boolean z6 = this.A0J.A07 != po.A07;
        this.A0J = po;
        if (z3 || i2 == 0) {
            Iterator<LJ> it = this.A0j.iterator();
            while (it.hasNext()) {
                it.next().AHI(this.A0J.A03, i2);
            }
        }
        if (z) {
            Iterator<LJ> it2 = this.A0j.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
        if (z6) {
            this.A0g.A0c(this.A0J.A07.A02);
            Iterator<LJ> it3 = this.A0j.iterator();
            while (it3.hasNext()) {
                it3.next().AHN(this.A0J.A07.A01);
            }
        }
        if (z5) {
            Iterator<LJ> it4 = this.A0j.iterator();
            while (it4.hasNext()) {
                it4.next();
            }
        }
        if (z4) {
            Iterator<LJ> it5 = this.A0j.iterator();
            while (it5.hasNext()) {
                it5.next().AGR(this.A0R, this.A0J.A00);
            }
        }
        if (!z2) {
            return;
        }
        Iterator<LJ> it6 = this.A0j.iterator();
        while (true) {
            boolean zHasNext = it6.hasNext();
            if (A0m[4].charAt(14) != 'V') {
                throw new RuntimeException();
            }
            String[] strArr = A0m;
            strArr[2] = "OLAzBqanJfKSMAEkYQUYUGlflGVXSj58";
            strArr[7] = "uW03wm53hBZqSJMbMIDvmnqY3TV0peeU";
            if (!zHasNext) {
                return;
            }
            LJ next = it6.next();
            if (A0m[1].length() != 17) {
                A0m[4] = "ecYePZY2eLhR2wVQ5zYtY2JU8FG1JA3n";
                next.AH0();
            } else {
                next.AH0();
            }
        }
    }

    @MetaExoPlayerCustomization
    private final void A09(boolean z, boolean z2) {
        if (this.A0Q != z) {
            this.A0Q = z;
            this.A04++;
            this.A0e.A1G(z);
            PO po = this.A0J;
            if (z) {
                return;
            }
            this.A0R = z;
            for (LJ lj : this.A0j) {
                if (0 != 0) {
                    throw new NullPointerException(A04(197, 20, 64));
                }
                lj.AGR(z, po.A00);
            }
        }
    }

    private boolean A0A() {
        return this.A0J.A03.A0N() || this.A03 > 0;
    }

    @Override // com.facebook.ads.redexgen.X.VK
    public final void A0H(int i, long j) {
        Timeline timeline = this.A0J.A03;
        if (i >= 0) {
            boolean zA0N = timeline.A0N();
            String[] strArr = A0m;
            if (strArr[5].charAt(23) == strArr[0].charAt(23)) {
                A0m[3] = "VhOErFW5iXimDffayZHhJQsR08OVDShY";
                if (zA0N || i < timeline.A07()) {
                    this.A0P = true;
                    this.A03++;
                    if (!ABL()) {
                        this.A02 = i;
                        if (timeline.A0N()) {
                            this.A08 = j == -9223372036854775807L ? 0L : j;
                            this.A01 = 0;
                        } else {
                            long jA05 = j == -9223372036854775807L ? timeline.A0K(i, super.A00).A05() : KN.A00(j);
                            Pair<Object, Long> pairA0D = timeline.A0D(super.A00, this.A0a, i, jA05);
                            this.A08 = KN.A01(jA05);
                            this.A01 = timeline.A0A(pairA0D.first);
                        }
                        this.A0e.A1D(timeline, i, KN.A00(j));
                        Iterator<LJ> it = this.A0j.iterator();
                        while (it.hasNext()) {
                            it.next();
                        }
                        return;
                    }
                    Log.w(A04(2, 13, 120), A04(217, 39, 105));
                    Message messageObtainMessage = this.A0X.obtainMessage(0, 1, -1, this.A0J);
                    if (A0m[6].charAt(15) != 'L') {
                        String[] strArr2 = A0m;
                        strArr2[2] = "bTJYouNwnoenTmGIfacYL1wlaDV11fvZ";
                        strArr2[7] = "KQfDQkYzVpuDfgchRhPMrCmN1oV9u7WV";
                        messageObtainMessage.sendToTarget();
                        return;
                    }
                }
            }
            throw new RuntimeException();
        }
        throw new C1690Kf(timeline, i, j);
    }

    public final long A0I() {
        if (A0A()) {
            long j = this.A08;
            String[] strArr = A0m;
            if (strArr[2].charAt(26) != strArr[7].charAt(26)) {
                throw new RuntimeException();
            }
            A0m[4] = "WHAamU7ZtfwbJhVlgiwZxRUk8SVm5Erx";
            return j;
        }
        if (this.A0J.A04.A03 != this.A0J.A05.A03) {
            return this.A0J.A03.A0K(A8I(), super.A00).A06();
        }
        long jA0D = this.A0J.A0B;
        if (this.A0J.A04.A00()) {
            UM umA0J = this.A0J.A03.A0J(this.A0J.A04.A04, this.A0a);
            jA0D = umA0J.A0D(this.A0J.A04.A00);
            if (jA0D == Long.MIN_VALUE) {
                jA0D = umA0J.A01;
            }
        }
        return N1.A0P(A01(this.A0J.A03, this.A0J.A04, jA0D));
    }

    public final long A0J() {
        return A0A() ? this.A07 : KN.A01(this.A0J.A0C);
    }

    public final Looper A0K() {
        return this.A0Y;
    }

    public final PS A0L(PR pr) {
        A05();
        return A03(pr);
    }

    public final void A0M() {
        StringBuilder sbAppend = new StringBuilder().append(A04(ModuleDescriptor.MODULE_VERSION, 8, 56)).append(Integer.toHexString(System.identityHashCode(this))).append(A04(0, 2, 31)).append(A04(15, 18, 12));
        String strA04 = A04(194, 3, 73);
        Log.i(A04(2, 13, 120), sbAppend.append(strA04).append(N1.A04).append(strA04).append(C1705Ku.A00()).append(A04(193, 1, 65)).toString());
        this.A0L = null;
        this.A0e.A1C();
        this.A0X.removeCallbacksAndMessages(null);
        this.A0J = A02(false, false, 1);
        this.A0G = C1909Tf.A03;
    }

    public final void A0N(Message message) {
        switch (message.what) {
            case 0:
                A07((PO) message.obj, message.arg1, message.arg2 != -1, message.arg2);
                return;
            case 1:
                UW uw = (UW) message.obj;
                UW uw2 = this.A0D;
                if (A0m[4].charAt(14) != 'V') {
                    A0m[3] = "AKmj7HW6ACiPSqE8Q794YWyOTwaWYINt";
                    if (uw2.equals(uw)) {
                        return;
                    }
                } else {
                    String[] strArr = A0m;
                    strArr[5] = "Lw72nelRRvouYxljzMq0YrzeUTdh1XQB";
                    strArr[0] = "V7Xqa0ou1jUNWFMjEVVphY4eNrDZHwHg";
                    if (uw2.equals(uw)) {
                        return;
                    }
                }
                this.A0D = uw;
                Iterator<LJ> it = this.A0j.iterator();
                while (it.hasNext()) {
                    it.next().AGN(uw);
                }
                return;
            case 2:
                AnonymousClass96 anonymousClass96 = (AnonymousClass96) message.obj;
                this.A0I = anonymousClass96;
                for (LJ lj : this.A0j) {
                    if (A0m[6].charAt(15) == 'L') {
                        throw new RuntimeException();
                    }
                    A0m[1] = "3V1i3TenCVbSaACyptuFrVc";
                    lj.AGP(anonymousClass96);
                }
                return;
            case 3:
                this.A04--;
                if (this.A04 == 0) {
                    this.A0R = ((Boolean) message.obj).booleanValue();
                    for (LJ lj2 : this.A0j) {
                        if (this.A0R) {
                            lj2.AGR(this.A0R, this.A0J.A00);
                        }
                    }
                    return;
                }
                return;
            case 4:
                Iterator<LJ> it2 = this.A0j.iterator();
                while (it2.hasNext()) {
                    it2.next();
                }
                return;
            case 5:
                Iterator<LJ> it3 = this.A0j.iterator();
                while (it3.hasNext()) {
                    it3.next();
                }
                return;
            default:
                throw new IllegalStateException();
        }
    }

    public final void A0O(LJ lj) {
        this.A0j.add(lj);
    }

    public final void A0P(InterfaceC1936Uj interfaceC1936Uj, boolean z, boolean z2) {
        this.A0I = null;
        this.A0L = interfaceC1936Uj;
        PO poA02 = A02(z, z2, 2);
        this.A0O = true;
        this.A03++;
        this.A0e.A1F(interfaceC1936Uj, z, z2);
        A08(poA02, false, 4, 1, false);
    }

    public final void A0Q(boolean z) {
        A09(z, false);
    }

    public final boolean A0R() {
        return this.A0Q;
    }

    @Override // com.facebook.ads.redexgen.X.LQ
    public final long A7h() {
        if (ABL()) {
            return this.A0J.A04.equals(this.A0J.A05) ? KN.A01(this.A0J.A0B) : A8T();
        }
        return A0I();
    }

    @Override // com.facebook.ads.redexgen.X.LQ
    public final long A84() {
        if (!ABL()) {
            return A8F();
        }
        this.A0J.A03.A0J(this.A0J.A05.A04, this.A0a);
        return this.A0a.A0B() + KN.A01(this.A0J.A01);
    }

    @Override // com.facebook.ads.redexgen.X.LQ
    public final int A89() {
        if (ABL()) {
            return this.A0J.A05.A00;
        }
        return -1;
    }

    @Override // com.facebook.ads.redexgen.X.LQ
    public final int A8A() {
        if (ABL()) {
            return this.A0J.A05.A01;
        }
        return -1;
    }

    @Override // com.facebook.ads.redexgen.X.LQ
    @MetaExoPlayerCustomization
    public final int A8C() {
        A05();
        int iA8I = A8I();
        if (iA8I == -1) {
            return 0;
        }
        return iA8I;
    }

    @Override // com.facebook.ads.redexgen.X.LQ
    public final int A8D() {
        return A0A() ? this.A01 : this.A0J.A03.A0A(this.A0J.A05.A04);
    }

    @Override // com.facebook.ads.redexgen.X.LQ
    public final long A8F() {
        if (A0A()) {
            return this.A08;
        }
        return this.A0J.A05.A00() ? KN.A01(this.A0J.A0C) : A00(this.A0J.A0C);
    }

    @Override // com.facebook.ads.redexgen.X.LQ
    public final Timeline A8H() {
        return this.A0J.A03;
    }

    @Override // com.facebook.ads.redexgen.X.LQ
    public final int A8I() {
        return A0A() ? this.A02 : this.A0J.A03.A0J(this.A0J.A05.A04, this.A0a).A00;
    }

    @Override // com.facebook.ads.redexgen.X.LQ
    public final long A8T() {
        Timeline timeline = this.A0J.A03;
        if (timeline.A0N()) {
            return -9223372036854775807L;
        }
        if (!ABL()) {
            return timeline.A0K(A8I(), super.A00).A06();
        }
        C1862Rk c1862Rk = this.A0J.A05;
        timeline.A0J(c1862Rk.A04, this.A0a);
        return KN.A01(this.A0a.A0E(c1862Rk.A00, c1862Rk.A01));
    }

    @Override // com.facebook.ads.redexgen.X.LQ
    public final long A9w() {
        return Math.max(0L, KN.A01(this.A0J.A0D));
    }

    @Override // com.facebook.ads.redexgen.X.LQ
    public final boolean ABL() {
        return !A0A() && this.A0J.A05.A00();
    }

    @Override // com.facebook.ads.redexgen.X.LQ
    public final void ALZ(boolean z) {
        if (z) {
            this.A0I = null;
            this.A0L = null;
        }
        PO poA02 = A02(z, z, 1);
        this.A03++;
        this.A0e.A1H(z);
        A08(poA02, false, 4, 1, false);
        this.A0G = new C1909Tf(XR.A01(), poA02.A0C);
    }
}
