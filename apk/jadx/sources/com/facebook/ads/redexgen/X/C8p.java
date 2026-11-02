package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Handler;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.icy.IcyHeaders;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8p, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C8p implements InterfaceC1863Rl, InterfaceC2044Yw, X4<C1861Rj>, X8, VB {
    public static byte[] A0e;
    public static String[] A0f = {"HBBlPsqGeET7DuTBobJ6q6d8HMPjbTur", "tVXkzOcWE4KqEP8GR5IDvdJ", "WunBoZwErb3KjhbC4DTXDk0N", "X40TLSCiBs9RpCHiwR3jRJe9ZBCWaXj3", "NJegO1Vjlbxq2kODAs2GUONQL6B8lk2C", "J0BgCPOewip9mZAwvZWu1UFJiSfKLrdz", "eCXZHu2If1eHwalkwZlLOwEkK0SadJt4", "QP9wMapQKpVcF6hMAqhiAWSjk3a4jcrM"};
    public static final VC A0g;
    public static final Map<String, String> A0h;
    public int A00;
    public int A01;
    public int A02;
    public long A03;
    public long A04;
    public long A05;
    public InterfaceC1864Rm A06;
    public V6 A07;
    public ZK A08;
    public IcyHeaders A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public boolean A0D;
    public boolean A0E;
    public boolean A0F;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public V5[] A0K;
    public C1853Rb[] A0L;
    public final long A0M;
    public final Uri A0N;
    public final Handler A0O;
    public final C1731Lx A0P;
    public final TE A0Q;
    public final C1867Rp A0R;
    public final InterfaceC1872Ru A0S;
    public final C1947Uu A0T;
    public final InterfaceC1952Uz A0U;
    public final V4 A0V;
    public final InterfaceC1987Wm A0W;
    public final X1 A0X;
    public final C1837Ql A0Y;
    public final Runnable A0Z;
    public final Runnable A0a;
    public final String A0b;
    public final boolean A0c;

    @MetaExoPlayerCustomization
    public final boolean A0d;

    static {
        A0I();
        A0h = A0D();
        A0g = new C1689Ke().A0y(A0B(161, 3, 73)).A11(A0B(144, 17, 68)).A14();
    }

    public C8p(Uri uri, TE te, InterfaceC1952Uz interfaceC1952Uz, InterfaceC1872Ru interfaceC1872Ru, C1867Rp c1867Rp, X1 x1, C1947Uu c1947Uu, V4 v4, InterfaceC1987Wm interfaceC1987Wm, String str, int i, XN xn) {
        this.A0N = uri;
        this.A0Q = te;
        this.A0S = interfaceC1872Ru;
        this.A0R = c1867Rp;
        this.A0X = x1;
        this.A0T = c1947Uu;
        this.A0V = v4;
        this.A0W = interfaceC1987Wm;
        this.A0b = str;
        this.A0M = i;
        this.A0Y = xn != null ? new C1837Ql(xn) : new C1837Ql(A0B(13, 29, 118));
        this.A0U = interfaceC1952Uz;
        this.A0P = new C1731Lx();
        this.A0Z = new Runnable() { // from class: com.facebook.ads.redexgen.X.V2
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A0F();
            }
        };
        this.A0a = new Runnable() { // from class: com.facebook.ads.redexgen.X.V3
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A0b();
            }
        };
        this.A0O = N1.A0Y();
        this.A0K = new V5[0];
        this.A0L = new C1853Rb[0];
        this.A05 = -9223372036854775807L;
        this.A03 = -9223372036854775807L;
        this.A00 = 1;
        this.A0d = XL.A03(XQ.A0o) || XL.A03(XQ.A2M);
        this.A0c = XL.A03(XQ.A0q);
    }

    private int A00() {
        int i = 0;
        for (C1853Rb c1853Rb : this.A0L) {
            int iA0P = c1853Rb.A0P();
            String[] strArr = A0f;
            if (strArr[0].charAt(30) == strArr[3].charAt(30)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0f;
            strArr2[1] = "I2xpzyGM5ATgcN45iQDZCvu";
            strArr2[2] = "yexe01l01fJGTtt57Z6g4PKS";
            i += iA0P;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:12:0x003e  */
    public long A03(boolean z) {
        long jMax = Long.MIN_VALUE;
        for (int i = 0; i < this.A0L.length; i++) {
            if (z) {
                jMax = Math.max(jMax, this.A0L[i].A0T());
            } else {
                boolean[] zArr = ((V6) AbstractC1722Ln.A01(this.A07)).A01;
                String[] strArr = A0f;
                if (strArr[7].charAt(16) != strArr[4].charAt(16)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0f;
                strArr2[7] = "2TCzKTUAeKHOFhOgA84o9m2gDHHw0blQ";
                strArr2[4] = "J2VIIiQ12N46iucbAIsllz4rrLWVfcOQ";
                if (zArr[i]) {
                    jMax = Math.max(jMax, this.A0L[i].A0T());
                }
            }
        }
        return jMax;
    }

    private C1853Rb A06(V5 v5) {
        int length = this.A0L.length;
        for (int i = 0; i < length; i++) {
            if (v5.equals(this.A0K[i])) {
                return this.A0L[i];
            }
        }
        C1853Rb c1853RbA0B = C1853Rb.A0B(this.A0W, this.A0S, this.A0R);
        c1853RbA0B.A0d(this);
        V5[] v5Arr = (V5[]) Arrays.copyOf(this.A0K, length + 1);
        v5Arr[length] = v5;
        this.A0K = (V5[]) N1.A1H(v5Arr);
        C1853Rb[] c1853RbArr = (C1853Rb[]) Arrays.copyOf(this.A0L, length + 1);
        c1853RbArr[length] = c1853RbA0B;
        this.A0L = (C1853Rb[]) N1.A1H(c1853RbArr);
        return c1853RbA0B;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.X4
    /* JADX INFO: renamed from: A07, reason: merged with bridge method [inline-methods] */
    public final X5 AFi(C1861Rj c1861Rj, long j, long j2, IOException iOException, int i) {
        X5 x5A01;
        AnonymousClass99 anonymousClass99 = c1861Rj.A08;
        Uc uc = new Uc(c1861Rj.A05, c1861Rj.A01, anonymousClass99.A01(), anonymousClass99.A02(), j, j2, anonymousClass99.A00());
        long jA9X = this.A0X.A9X(new X0(uc, new C1931Ue(1, -1, null, 0, null, N1.A0P(c1861Rj.A00), N1.A0P(this.A03)), iOException, i));
        if (jA9X == -9223372036854775807L) {
            x5A01 = C1837Ql.A06;
        } else {
            int iA00 = A00();
            x5A01 = A0U(c1861Rj, iA00) ? C1837Ql.A01(iA00 > this.A02, jA9X) : C1837Ql.A05;
        }
        this.A0T.A07(uc, 1, -1, null, 0, null, c1861Rj.A00, this.A03, iOException, !x5A01.A02());
        return x5A01;
    }

    public static String A0B(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0e, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 117);
        }
        return new String(bArrCopyOfRange);
    }

    public static Map<String, String> A0D() {
        HashMap map = new HashMap();
        map.put(A0B(1, 12, 67), A0B(0, 1, 23));
        return Collections.unmodifiableMap(map);
    }

    @EnsuresNonNull
    private void A0E() {
        AbstractC1722Ln.A08(this.A0G);
        AbstractC1722Ln.A01(this.A07);
        AbstractC1722Ln.A01(this.A08);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:28:0x0076  */
    /* JADX WARN: Code duplicated, block: B:49:0x00fd  */
    public void A0F() {
        boolean z;
        if (this.A0H || this.A0G || !this.A0I || this.A08 == null) {
            return;
        }
        for (C1853Rb c1853Rb : this.A0L) {
            if (c1853Rb.A0U() == null) {
                return;
            }
        }
        this.A0P.A02();
        int length = this.A0L.length;
        U8[] u8Arr = new U8[length];
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            VC vcA14 = (VC) AbstractC1722Ln.A01(this.A0L[i].A0U());
            String str = vcA14.A0W;
            boolean zA0C = L8.A0C(str);
            if (zA0C) {
                z = true;
            } else {
                boolean zA0F = L8.A0F(str);
                String[] strArr = A0f;
                if (strArr[5].charAt(17) != strArr[6].charAt(17)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0f;
                strArr2[7] = "M066YDshfLv6ufJQAWGX88NavjIJ8x9B";
                strArr2[4] = "HaWf7X0PQXjbzLQzAxKXQlZfTLO5AEOj";
                if (zA0F) {
                    z = true;
                } else {
                    z = false;
                }
            }
            zArr[i] = z;
            this.A0A |= z;
            IcyHeaders icyHeaders = this.A09;
            if (icyHeaders != null) {
                if (zA0C || this.A0K[i].A01) {
                    Metadata metadata = vcA14.A0P;
                    C1689Ke c1689KeA0v = vcA14.A07().A0v(metadata == null ? new Metadata(icyHeaders) : metadata.A05(icyHeaders));
                    String[] strArr3 = A0f;
                    if (strArr3[7].charAt(16) != strArr3[4].charAt(16)) {
                        throw new RuntimeException();
                    }
                    String[] strArr4 = A0f;
                    strArr4[0] = "JfZfQxpnzGxkEBWXWRh15UjnpMxSX4ct";
                    strArr4[3] = "Ujr1Rfhr64M72xM04lFL5qNlGxVfDivT";
                    vcA14 = c1689KeA0v.A14();
                }
                if (zA0C) {
                    int i2 = vcA14.A04;
                    String[] strArr5 = A0f;
                    if (strArr5[0].charAt(30) != strArr5[3].charAt(30)) {
                        String[] strArr6 = A0f;
                        strArr6[5] = "S5HkrDixvO2qPLOzoZhPnpRmabOR8jh2";
                        strArr6[6] = "GmH5epODxLL0wJPDoZ5VIE16ybOToPjR";
                        if (i2 == -1) {
                            if (vcA14.A0D != -1 && icyHeaders.A00 != -1) {
                                vcA14 = vcA14.A07().A0a(icyHeaders.A00).A14();
                            }
                        }
                    } else {
                        String[] strArr7 = A0f;
                        strArr7[7] = "z5SJI6dYauK9PBTGAVRXoHkMUqqd9CQn";
                        strArr7[4] = "ZtcivA5qUhBeHeSNAavfvLUsZQCAevEK";
                        if (i2 == -1) {
                            if (vcA14.A0D != -1) {
                            }
                        }
                    }
                }
            }
            u8Arr[i] = new U8(vcA14);
        }
        this.A07 = new V6(new RY(u8Arr), zArr);
        this.A0G = true;
        ((InterfaceC1864Rm) AbstractC1722Ln.A01(this.A06)).AGX(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0G() {
        this.A0O.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.V1
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A0c();
            }
        });
    }

    private void A0H() {
        C1861Rj c1861Rj = new C1861Rj(this, this.A0N, this.A0Q, this.A0U, this, this.A0P);
        if (this.A0G) {
            AbstractC1722Ln.A08(A0S());
            if (this.A03 != -9223372036854775807L && this.A05 >= this.A03) {
                this.A0D = true;
                this.A05 = -9223372036854775807L;
                return;
            }
            c1861Rj.A04(((ZK) AbstractC1722Ln.A01(this.A08)).A9e(this.A05).A00.A00, this.A05);
            for (C1853Rb c1853Rb : this.A0L) {
                c1853Rb.A0b(this.A05);
            }
            this.A05 = -9223372036854775807L;
        }
        this.A02 = A00();
        this.A0T.A06(new Uc(c1861Rj.A05, c1861Rj.A01, this.A0Y.A08(c1861Rj, this, this.A0X.A9C(this.A00))), 1, -1, null, 0, null, c1861Rj.A00, this.A03, 0);
    }

    public static void A0I() {
        A0e = new byte[]{-67, 1, Ascii.ESC, 49, -27, 5, Ascii.GS, 44, Ascii.EM, -4, Ascii.EM, 44, Ascii.EM, 55, 90, 76, 79, 80, 93, 37, 59, 93, 90, 82, 93, 80, 94, 94, 84, 97, 80, 56, 80, 79, 84, 76, 59, 80, 93, 84, 90, 79, 55, 90, 76, 79, 84, 89, 82, Ascii.VT, 81, 84, 89, 84, 94, 83, 80, 79, Ascii.VT, 77, 80, 81, 90, 93, 80, Ascii.VT, 91, 93, 80, 91, 76, 93, 76, 95, 84, 90, 89, Ascii.VT, 84, 94, Ascii.VT, 78, 90, 88, 91, 87, 80, 95, 80, Ascii.EM, 2, 37, Ascii.ETB, Ascii.SUB, Ascii.US, 36, Ascii.GS, -42, Ascii.FS, Ascii.US, 36, Ascii.US, 41, Ascii.RS, Ascii.ESC, Ascii.SUB, -42, Ascii.CAN, Ascii.ESC, Ascii.FS, 37, 40, Ascii.ESC, -42, 38, 40, Ascii.ESC, 38, Ascii.ETB, 40, Ascii.ETB, 42, Ascii.US, 37, 36, -42, Ascii.US, 41, -42, Ascii.EM, 37, 35, 38, 34, Ascii.ESC, 42, Ascii.ESC, -28, -42, Ascii.VT, 8, -1, -16, -42, Ascii.SUB, 41, 41, 37, 34, Ascii.FS, Ascii.SUB, 45, 34, 40, 39, -24, 49, -26, 34, Ascii.FS, 50, 39, 33, 55, 88, 95, 86, 86};
    }

    private final void A0J() throws IOException {
        this.A0Y.A0B(this.A0X.A9C(this.A00));
    }

    private void A0K(int i) {
        A0E();
        boolean[] zArr = this.A07.A03;
        if (zArr[i]) {
            return;
        }
        VC vcA08 = this.A07.A00.A05(i).A08(0);
        this.A0T.A03(L8.A01(vcA08.A0W), vcA08, 0, null, this.A04);
        String[] strArr = A0f;
        if (strArr[5].charAt(17) != strArr[6].charAt(17)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0f;
        strArr2[7] = "f5eiRY8LvGf9norZAId7lLA2Bu57nAMs";
        strArr2[4] = "ReM94Qk9jjdQJfe6Ak1PIPDJBC3IwAlL";
        zArr[i] = true;
    }

    private void A0L(int i) {
        A0E();
        boolean[] zArr = this.A07.A02;
        if (this.A0F && zArr[i]) {
            if (this.A0L[i].A0g(false)) {
                return;
            }
            this.A05 = 0L;
            this.A0F = false;
            this.A0E = true;
            this.A04 = 0L;
            this.A02 = 0;
            for (C1853Rb c1853Rb : this.A0L) {
                c1853Rb.A0Z();
            }
            ((InterfaceC1864Rm) AbstractC1722Ln.A01(this.A06)).AEW(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.X4
    /* JADX INFO: renamed from: A0M, reason: merged with bridge method [inline-methods] */
    public final void AFh(C1861Rj c1861Rj, long j, long j2) {
        if (this.A03 == -9223372036854775807L && this.A08 != null) {
            boolean zABR = this.A08.ABR();
            long jA03 = A03(true);
            this.A03 = jA03 == Long.MIN_VALUE ? 0L : 10000 + jA03;
            this.A0V.AH7(this.A03, zABR, this.A0C);
        }
        AnonymousClass99 anonymousClass99 = c1861Rj.A08;
        this.A0T.A08(new Uc(c1861Rj.A05, c1861Rj.A01, anonymousClass99.A01(), anonymousClass99.A02(), j, j2, anonymousClass99.A00()), 1, -1, null, 0, null, c1861Rj.A00, this.A03, c1861Rj, null);
        this.A0D = true;
        ((InterfaceC1864Rm) AbstractC1722Ln.A01(this.A06)).AEW(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.X4
    /* JADX INFO: renamed from: A0N, reason: merged with bridge method [inline-methods] */
    public final void AFl(C1861Rj c1861Rj, long j, long j2, int i) {
        AnonymousClass99 anonymousClass99 = c1861Rj.A08;
        this.A0T.A06(i == 0 ? new Uc(c1861Rj.A05, c1861Rj.A01, j) : new Uc(c1861Rj.A05, c1861Rj.A01, anonymousClass99.A01(), anonymousClass99.A02(), j, j2, anonymousClass99.A00()), 1, -1, null, 0, null, c1861Rj.A00, this.A03, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.X4
    /* JADX INFO: renamed from: A0O, reason: merged with bridge method [inline-methods] */
    public final void AFf(C1861Rj c1861Rj, long j, long j2, boolean z) {
        AnonymousClass99 anonymousClass99 = c1861Rj.A08;
        this.A0T.A05(new Uc(c1861Rj.A05, c1861Rj.A01, anonymousClass99.A01(), anonymousClass99.A02(), j, j2, anonymousClass99.A00()), 1, -1, null, 0, null, c1861Rj.A00, this.A03);
        if (z) {
            return;
        }
        for (C1853Rb c1853Rb : this.A0L) {
            c1853Rb.A0Z();
        }
        if (this.A01 > 0) {
            ((InterfaceC1864Rm) AbstractC1722Ln.A01(this.A06)).AEW(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A0R, reason: merged with bridge method [inline-methods] */
    public void A0e(ZK zk) {
        this.A08 = zk;
        this.A03 = zk.A8U();
        this.A0C = !this.A0B && zk.A8U() == -9223372036854775807L;
        this.A00 = this.A0C ? 7 : 1;
        this.A0V.AH7(this.A03, zk.ABR(), this.A0C);
        if (this.A0G) {
            return;
        }
        A0F();
    }

    private boolean A0S() {
        return this.A05 != -9223372036854775807L;
    }

    private boolean A0T() {
        return this.A0E || A0S();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0036, code lost:
    
        if (r6 != (-9223372036854775807L)) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean A0U(com.facebook.ads.redexgen.X.C1861Rj r9, int r10) {
        /*
            r8 = this;
            boolean r0 = r8.A0B
            r5 = 1
            if (r0 != 0) goto L38
            com.facebook.ads.redexgen.X.ZK r0 = r8.A08
            if (r0 == 0) goto L41
            com.facebook.ads.redexgen.X.ZK r0 = r8.A08
            long r6 = r0.A8U()
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C8p.A0f
            r0 = 0
            r1 = r2[r0]
            r0 = 3
            r2 = r2[r0]
            r0 = 30
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L3b
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C8p.A0f
            java.lang.String r1 = "0tcNevJ0lQlG1CoRhtU3cPBxWgg75o6o"
            r0 = 0
            r2[r0] = r1
            java.lang.String r1 = "W0PdVUXyxqqOuIKxgyczFibo5jq8qUfX"
            r0 = 3
            r2[r0] = r1
            int r0 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r0 == 0) goto L41
        L38:
            r8.A02 = r10
            return r5
        L3b:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L41:
            boolean r0 = r8.A0G
            r6 = 0
            if (r0 == 0) goto L4f
            boolean r0 = r8.A0T()
            if (r0 != 0) goto L4f
            r8.A0F = r5
            return r6
        L4f:
            boolean r0 = r8.A0G
            r8.A0E = r0
            r2 = 0
            r8.A04 = r2
            r8.A02 = r6
            com.facebook.ads.redexgen.X.Rb[] r4 = r8.A0L
            int r1 = r4.length
        L5c:
            if (r6 >= r1) goto L66
            r0 = r4[r6]
            r0.A0Z()
            int r6 = r6 + 1
            goto L5c
        L66:
            com.facebook.ads.redexgen.X.C1861Rj.A05(r9, r2, r2)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C8p.A0U(com.facebook.ads.redexgen.X.Rj, int):boolean");
    }

    private boolean A0V(boolean[] zArr, long j) {
        int length = this.A0L.length;
        for (int i = 0; i < length; i++) {
            if (!this.A0L[i].A0f(j, false) && (zArr[i] || !this.A0A)) {
                return false;
            }
        }
        return true;
    }

    public final int A0X(int i, long j) {
        if (A0T()) {
            return 0;
        }
        A0K(i);
        C1853Rb c1853Rb = this.A0L[i];
        int iA0Q = c1853Rb.A0Q(j, this.A0D);
        c1853Rb.A0a(iA0Q);
        if (iA0Q == 0) {
            A0L(i);
        }
        return iA0Q;
    }

    public final int A0Y(int i, C1800Oo c1800Oo, T2 t2, int i2) {
        if (A0T()) {
            return -3;
        }
        A0K(i);
        int iA0R = this.A0L[i].A0R(c1800Oo, t2, i2, this.A0D);
        if (iA0R == -3) {
            A0L(i);
        }
        return iA0R;
    }

    public final ZP A0Z() {
        return A06(new V5(0, true));
    }

    public final void A0a() {
        if (this.A0G) {
            for (C1853Rb c1853Rb : this.A0L) {
                c1853Rb.A0X();
            }
        }
        this.A0Y.A0C(this);
        this.A0O.removeCallbacksAndMessages(null);
        this.A06 = null;
        this.A0H = true;
    }

    public final /* synthetic */ void A0b() {
        if (this.A0H) {
            return;
        }
        ((InterfaceC1864Rm) AbstractC1722Ln.A01(this.A06)).AEW(this);
    }

    public final /* synthetic */ void A0c() {
        this.A0B = true;
    }

    public final void A0d(int i) throws IOException {
        this.A0L[i].A0W();
        A0J();
    }

    public final boolean A0f(int i) {
        return !A0T() && this.A0L[i].A0g(this.A0D);
    }

    @Override // com.facebook.ads.redexgen.X.VJ
    @MetaExoPlayerCustomization
    public final void A5O(long j) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final boolean A5l(long j) {
        if (this.A0D || this.A0Y.A0D() || this.A0F) {
            return false;
        }
        if (this.A0G && this.A01 == 0) {
            return false;
        }
        boolean zA04 = this.A0P.A04();
        if (this.A0Y.A0E()) {
            return zA04;
        }
        A0H();
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final void A6Z(long j, boolean z) {
        A0E();
        if (A0S()) {
            return;
        }
        boolean[] zArr = this.A07.A01;
        int length = this.A0L.length;
        for (int i = 0; i < length; i++) {
            this.A0L[i].A0c(j, z, zArr[i]);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2044Yw
    public final void A6x() {
        this.A0I = true;
        this.A0O.post(this.A0Z);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final long A7R(long j, C1816Pj c1816Pj) {
        A0E();
        if (!this.A08.ABR()) {
            return 0L;
        }
        ZJ zjA9e = this.A08.A9e(j);
        return c1816Pj.A00(j, zjA9e.A00.A01, zjA9e.A01.A01);
    }

    @Override // com.facebook.ads.redexgen.X.VJ
    @MetaExoPlayerCustomization
    public final long A7g(long j) {
        if (!this.A0d || this.A0G) {
            return this.A0D ? this.A03 - j : A7i() - j;
        }
        return 0L;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final long A7i() {
        A0E();
        if (this.A0D || this.A01 == 0) {
            return Long.MIN_VALUE;
        }
        if (A0S()) {
            return this.A05;
        }
        long jA03 = Long.MAX_VALUE;
        if (this.A0A) {
            int length = this.A0L.length;
            for (int i = 0; i < length; i++) {
                if (this.A07.A02[i] && this.A07.A01[i] && !this.A0L[i].A0e()) {
                    jA03 = Math.min(jA03, this.A0L[i].A0T());
                }
            }
        }
        if (jA03 == Long.MAX_VALUE) {
            jA03 = A03(false);
        }
        return jA03 == Long.MIN_VALUE ? this.A04 : jA03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final long A9E() {
        return A7i();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final RY A9z() {
        A0E();
        return this.A07.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final void ADJ() throws IOException {
        A0J();
        if (!this.A0D || this.A0G) {
            return;
        }
        if (!this.A0c) {
            throw L9.A01(A0B(42, 48, 118), null);
        }
        throw L9.A01(A0B(90, 54, 65) + (this.A0N != null ? this.A0N.toString() : A0B(164, 4, 117)), null);
    }

    @Override // com.facebook.ads.redexgen.X.X8
    public final void AFn() {
        for (C1853Rb c1853Rb : this.A0L) {
            c1853Rb.A0Y();
        }
        this.A0U.AIp();
    }

    @Override // com.facebook.ads.redexgen.X.VB
    public final void AHV(VC vc) {
        this.A0O.post(this.A0Z);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final void AII(InterfaceC1864Rm interfaceC1864Rm, long j) {
        this.A06 = interfaceC1864Rm;
        this.A0P.A04();
        A0H();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final long AId() {
        if (!this.A0E) {
            return -9223372036854775807L;
        }
        if (!this.A0D && A00() <= this.A02) {
            return -9223372036854775807L;
        }
        this.A0E = false;
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final void AIk(long j) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2044Yw
    public final void AKP(final ZK zk) {
        this.A0O.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.V0
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A0e(zk);
            }
        });
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final long AKQ(@MetaExoPlayerCustomization long j, boolean z) {
        A0E();
        boolean[] zArr = this.A07.A02;
        if (!this.A08.ABR()) {
            j = 0;
        }
        int i = 0;
        this.A0E = false;
        this.A04 = j;
        if (A0S()) {
            this.A05 = j;
            return j;
        }
        if (this.A00 != 7 && A0V(zArr, j)) {
            return j;
        }
        this.A0F = false;
        this.A05 = j;
        this.A0D = false;
        if (this.A0Y.A0E()) {
            C1853Rb[] c1853RbArr = this.A0L;
            int length = c1853RbArr.length;
            while (i < length) {
                c1853RbArr[i].A0V();
                i++;
            }
            this.A0Y.A09();
        } else {
            this.A0Y.A0A();
            C1853Rb[] c1853RbArr2 = this.A0L;
            int length2 = c1853RbArr2.length;
            while (i < length2) {
                c1853RbArr2[i].A0Z();
                i++;
            }
        }
        return j;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00c3  */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1863Rl
    public final long AKR(RA[] raArr, boolean[] zArr, VF[] vfArr, boolean[] zArr2, long j) {
        int i;
        long jAKQ = j;
        A0E();
        RY ry = this.A07.A00;
        boolean[] zArr3 = this.A07.A01;
        int i2 = this.A01;
        int i3 = 0;
        while (true) {
            i = 0;
            if (i3 >= raArr.length) {
                break;
            }
            if (vfArr[i3] != null && (raArr[i3] == null || !zArr[i3])) {
                int i4 = ((C1860Ri) vfArr[i3]).A00;
                AbstractC1722Ln.A08(zArr3[i4]);
                this.A01--;
                zArr3[i4] = false;
                vfArr[i3] = null;
            }
            i3++;
        }
        boolean z = !this.A0J ? jAKQ == 0 : i2 != 0;
        for (int i5 = 0; i5 < raArr.length; i5++) {
            if (vfArr[i5] == null && raArr[i5] != null) {
                RA ra = raArr[i5];
                AbstractC1722Ln.A08(ra.length() == 1);
                AbstractC1722Ln.A08(ra.A8t(0) == 0);
                int iA04 = ry.A04(ra.A9y());
                AbstractC1722Ln.A08(!zArr3[iA04]);
                this.A01++;
                zArr3[iA04] = true;
                vfArr[i5] = new C1860Ri(this, iA04);
                zArr2[i5] = true;
                if (z) {
                    continue;
                } else {
                    C1853Rb c1853Rb = this.A0L[iA04];
                    if (c1853Rb.A0f(jAKQ, true)) {
                        z = false;
                    } else {
                        int iA0O = c1853Rb.A0O();
                        String[] strArr = A0f;
                        if (strArr[5].charAt(17) != strArr[6].charAt(17)) {
                            throw new RuntimeException();
                        }
                        String[] strArr2 = A0f;
                        strArr2[1] = "4Ua4pVr65zBMJk5HDRLEFWq";
                        strArr2[2] = "gL2F8ebm31DnldlqIQBfJiNQ";
                        if (iA0O != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                    }
                }
            }
        }
        if (this.A01 == 0) {
            this.A0F = false;
            this.A0E = false;
            if (this.A0Y.A0E()) {
                C1853Rb[] c1853RbArr = this.A0L;
                int length = c1853RbArr.length;
                while (i < length) {
                    c1853RbArr[i].A0V();
                    i++;
                }
                this.A0Y.A09();
            } else {
                C1853Rb[] c1853RbArr2 = this.A0L;
                String[] strArr3 = A0f;
                if (strArr3[5].charAt(17) != strArr3[6].charAt(17)) {
                    throw new RuntimeException();
                }
                String[] strArr4 = A0f;
                strArr4[0] = "KObLoyMXSqtqN7ZOBMBJVqArB5WUqyES";
                strArr4[3] = "dMbPgjiIOjrhHCAxl6Nk3JpBvz1yRxX5";
                int length2 = c1853RbArr2.length;
                while (i < length2) {
                    c1853RbArr2[i].A0Z();
                    i++;
                }
            }
        } else if (z) {
            jAKQ = AKQ(jAKQ, false);
            String[] strArr5 = A0f;
            if (strArr5[5].charAt(17) != strArr5[6].charAt(17)) {
                throw new RuntimeException();
            }
            String[] strArr6 = A0f;
            strArr6[7] = "MVqN2VPdDpdFhjgOAkV8BruKzDDFi3cc";
            strArr6[4] = "F7RROiJYWj0RV7vDAcRWnMt2on6dtpWm";
            for (int i6 = 0; i6 < vfArr.length; i6++) {
                if (vfArr[i6] != null) {
                    zArr2[i6] = true;
                }
            }
        }
        this.A0J = true;
        return jAKQ;
    }

    @Override // com.facebook.ads.redexgen.X.VJ
    @MetaExoPlayerCustomization
    public final void AKu(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2044Yw
    public final ZP ALm(int i, int i2) {
        return A06(new V5(i, false));
    }

    @Override // com.facebook.ads.redexgen.X.VJ
    @MetaExoPlayerCustomization
    public final void ALv(byte b) {
    }
}
