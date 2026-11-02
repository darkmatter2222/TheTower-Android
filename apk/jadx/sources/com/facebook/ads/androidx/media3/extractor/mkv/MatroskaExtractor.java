package com.facebook.ads.androidx.media3.extractor.mkv;

import android.net.Uri;
import android.util.SparseArray;
import androidx.core.view.PointerIconCompat;
import com.facebook.ads.androidx.media3.common.ColorInfo;
import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.facebook.ads.androidx.media3.extractor.mkv.MatroskaExtractor;
import com.facebook.ads.redexgen.X.AbstractC1722Ln;
import com.facebook.ads.redexgen.X.C1744Mk;
import com.facebook.ads.redexgen.X.C2109aa;
import com.facebook.ads.redexgen.X.C2110ab;
import com.facebook.ads.redexgen.X.C2111ac;
import com.facebook.ads.redexgen.X.InterfaceC2043Yv;
import com.facebook.ads.redexgen.X.InterfaceC2044Yw;
import com.facebook.ads.redexgen.X.InterfaceC2047Yz;
import com.facebook.ads.redexgen.X.InterfaceC2106aX;
import com.facebook.ads.redexgen.X.KN;
import com.facebook.ads.redexgen.X.L9;
import com.facebook.ads.redexgen.X.MV;
import com.facebook.ads.redexgen.X.MW;
import com.facebook.ads.redexgen.X.N1;
import com.facebook.ads.redexgen.X.PN;
import com.facebook.ads.redexgen.X.PT;
import com.facebook.ads.redexgen.X.Q4;
import com.facebook.ads.redexgen.X.Q9;
import com.facebook.ads.redexgen.X.QJ;
import com.facebook.ads.redexgen.X.ZE;
import com.facebook.ads.redexgen.X.ZH;
import com.facebook.ads.redexgen.X.ZK;
import com.facebook.ads.redexgen.X.ZN;
import com.facebook.ads.redexgen.X.ZP;
import com.facebook.ads.redexgen.X.ZQ;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.android.gms.ads.AdSize;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.google.firebase.FirebaseError;
import com.ironsource.InterfaceC3669k1;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdError;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import kotlin.fh;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class MatroskaExtractor implements InterfaceC2043Yv {
    public static byte[] A0t;
    public static String[] A0u = {"n35jlXKYxSLPKei", "oyBUc05xsKSY0xx573VvoQYblK33aBWA", "RuE8YUOCzFB4NWBvGl8SjTsvK65B9fo9", "f1onTyczxw2VkpzWPBb6LgtZuATzfb1L", "cKc0NjS1OsMDdgfudGbTQKLf4ZclKflP", "fkOAvMHAcgxE84ft7z", "7fYF0qaATcv5oeud3szBnpxgbYKS353G", "FWXPtRSYshxgTl8OaXh6o9l9SG9OkQHb"};
    public static final InterfaceC2047Yz A0v;
    public static final Map<String, Integer> A0w;
    public static final UUID A0x;
    public static final byte[] A0y;
    public static final byte[] A0z;
    public static final byte[] A10;
    public static final byte[] A11;
    public byte A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public int A09;
    public int A0A;
    public int A0B;
    public int A0C;
    public long A0D;
    public long A0E;
    public long A0F;
    public long A0G;
    public long A0H;
    public long A0I;
    public long A0J;
    public long A0K;
    public long A0L;
    public long A0M;
    public long A0N;
    public long A0O;

    @MetaExoPlayerCustomization
    public SparseArray<C2109aa> A0P;
    public MW A0Q;
    public MW A0R;
    public InterfaceC2044Yw A0S;
    public C2109aa A0T;

    @MetaExoPlayerCustomization
    public String A0U;
    public ByteBuffer A0V;
    public boolean A0W;
    public boolean A0X;
    public boolean A0Y;
    public boolean A0Z;
    public boolean A0a;
    public boolean A0b;
    public boolean A0c;
    public boolean A0d;
    public boolean A0e;
    public int[] A0f;
    public final C1744Mk A0g;
    public final C1744Mk A0h;
    public final C1744Mk A0i;
    public final C1744Mk A0j;
    public final C1744Mk A0k;
    public final C1744Mk A0l;
    public final C1744Mk A0m;
    public final C1744Mk A0n;
    public final C1744Mk A0o;
    public final C1744Mk A0p;
    public final InterfaceC2106aX A0q;
    public final C2111ac A0r;
    public final boolean A0s;

    static {
        A0B();
        A0v = new InterfaceC2047Yz() { // from class: com.facebook.ads.redexgen.X.PP
            @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
            public final InterfaceC2043Yv[] A5w() {
                return MatroskaExtractor.A0Q();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
            public final /* synthetic */ InterfaceC2043Yv[] A5x(Uri uri, Map map) {
                return AbstractC2046Yy.A01(this, uri, map);
            }
        };
        A10 = new byte[]{49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
        A0y = N1.A1G(A06(729, 90, 53));
        A0z = new byte[]{68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
        A11 = new byte[]{87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
        A0x = new UUID(72057594037932032L, -9223371306706625679L);
        HashMap map = new HashMap();
        map.put(A06(1285, 18, 87), 0);
        map.put(A06(1303, 18, 85), 90);
        map.put(A06(1321, 18, 115), 180);
        map.put(A06(1339, 18, 82), 270);
        A0w = Collections.unmodifiableMap(map);
    }

    public MatroskaExtractor() {
        this(0);
    }

    public MatroskaExtractor(int i) {
        this(new PT(), i);
    }

    public MatroskaExtractor(InterfaceC2106aX interfaceC2106aX, int i) {
        this.A0M = -1L;
        this.A0O = -9223372036854775807L;
        this.A0I = -9223372036854775807L;
        this.A0J = -9223372036854775807L;
        this.A0H = -1L;
        this.A0L = -1L;
        this.A0G = -9223372036854775807L;
        this.A0q = interfaceC2106aX;
        this.A0q.AAr(new PN(this));
        this.A0s = (i & 1) == 0;
        this.A0r = new C2111ac();
        this.A0P = new SparseArray<>();
        this.A0l = new C1744Mk(4);
        this.A0p = new C1744Mk(ByteBuffer.allocate(4).putInt(-1).array());
        this.A0m = new C1744Mk(4);
        this.A0j = new C1744Mk(ZE.A03);
        this.A0i = new C1744Mk(4);
        this.A0k = new C1744Mk();
        this.A0n = new C1744Mk();
        this.A0g = new C1744Mk(8);
        this.A0h = new C1744Mk();
        this.A0o = new C1744Mk();
        this.A0f = new int[1];
    }

    private int A00() {
        int i = this.A09;
        A0A();
        return i;
    }

    private int A01(Q9 q9, ZP zp, int i) throws IOException {
        int iA07 = this.A0k.A07();
        if (iA07 <= 0) {
            return zp.AK7(q9, i, false);
        }
        int iMin = Math.min(i, iA07);
        zp.AK9(this.A0k, iMin);
        return iMin;
    }

    /* JADX WARN: Code duplicated, block: B:107:0x039e  */
    /* JADX WARN: Code duplicated, block: B:110:0x03b2  */
    /* JADX WARN: Code duplicated, block: B:113:0x03db  */
    /* JADX WARN: Code duplicated, block: B:115:0x03e3  */
    /* JADX WARN: Code duplicated, block: B:123:0x0317 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:124:0x0301 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:0x02da A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:81:0x02c2  */
    /* JADX WARN: Code duplicated, block: B:83:0x02d1  */
    /* JADX WARN: Code duplicated, block: B:99:0x036f  */
    @RequiresNonNull
    private int A02(Q9 q9, C2109aa c2109aa, int i, boolean z) throws IOException {
        int iA0A;
        byte[] bArrA0l;
        int i2;
        int i3;
        int i4;
        int iA00;
        String[] strArr;
        boolean z2;
        if (A06(PointerIconCompat.TYPE_NO_DROP, 11, 126).equals(c2109aa.A0d)) {
            A0F(q9, A10, i);
            return A00();
        }
        if (A06(1002, 10, 60).equals(c2109aa.A0d)) {
            A0F(q9, A0z, i);
            return A00();
        }
        if (A06(IronSourceError.ERROR_RV_SHOW_CALLED_WRONG_STATE, 13, 84).equals(c2109aa.A0d)) {
            A0F(q9, A11, i);
            return A00();
        }
        ZP zp = c2109aa.A0b;
        if (this.A0Y) {
            iA0A = i + this.A0k.A0A();
            if (A06(1207, 15, 59).equals(c2109aa.A0d)) {
                bArrA0l = this.A0i.A0l();
                bArrA0l[0] = 0;
                bArrA0l[1] = 0;
                bArrA0l[2] = 0;
                i2 = c2109aa.A0Q;
                i3 = 4 - c2109aa.A0Q;
                while (this.A08 < iA0A) {
                    i4 = this.A0A;
                    if (A0u[5].length() != 10) {
                        A0u[0] = "n3kv0q3aNrIG2";
                        if (i4 == 0) {
                            A0G(q9, bArrA0l, i3, i2);
                            this.A08 += i2;
                            this.A0i.A0f(0);
                            this.A0A = this.A0i.A0L();
                            this.A0j.A0f(0);
                            zp.AK9(this.A0j, 4);
                            this.A09 += 4;
                        } else {
                            int iA01 = A01(q9, zp, this.A0A);
                            this.A08 += iA01;
                            this.A09 += iA01;
                            this.A0A -= iA01;
                        }
                    }
                }
            } else {
                bArrA0l = this.A0i.A0l();
                bArrA0l[0] = 0;
                bArrA0l[1] = 0;
                bArrA0l[2] = 0;
                i2 = c2109aa.A0Q;
                i3 = 4 - c2109aa.A0Q;
                while (this.A08 < iA0A) {
                    i4 = this.A0A;
                    if (A0u[5].length() != 10) {
                        A0u[0] = "n3kv0q3aNrIG2";
                        if (i4 == 0) {
                            A0G(q9, bArrA0l, i3, i2);
                            this.A08 += i2;
                            this.A0i.A0f(0);
                            this.A0A = this.A0i.A0L();
                            this.A0j.A0f(0);
                            zp.AK9(this.A0j, 4);
                            this.A09 += 4;
                        } else {
                            int iA02 = A01(q9, zp, this.A0A);
                            this.A08 += iA02;
                            this.A09 += iA02;
                            this.A0A -= iA02;
                        }
                    }
                }
            }
            if (A06(271, 8, 104).equals(c2109aa.A0d)) {
                this.A0p.A0f(0);
                zp.AK9(this.A0p, 4);
                this.A09 += 4;
            }
            iA00 = A00();
            strArr = A0u;
            if (strArr[1].charAt(8) != strArr[7].charAt(8)) {
                A0u[5] = "Ggno";
                return iA00;
            }
            A0u[5] = "K9n2HKsnWYgpdTCXnDpZrS1TZBiHj";
            return iA00;
        }
        boolean z3 = c2109aa.A0i;
        if (A0u[5].length() != 10) {
            String[] strArr2 = A0u;
            strArr2[3] = "Md233xnds9SsjLRSnzb8dYoz2XFvkD7x";
            strArr2[4] = "l0u7I37pD9jMSYMWZ7bYnetfXLnKncbB";
            if (z3) {
                this.A02 &= -1073741825;
                if (!this.A0b) {
                    q9.readFully(this.A0l.A0l(), 0, 1);
                    this.A08++;
                    if ((this.A0l.A0l()[0] & 128) == 128) {
                        throw L9.A01(A06(694, 35, 24), null);
                    }
                    this.A00 = this.A0l.A0l()[0];
                    this.A0b = true;
                }
                if ((this.A00 & 1) == 1) {
                    boolean z4 = (this.A00 & 2) == 2;
                    this.A02 |= 1073741824;
                    if (!this.A0Z) {
                        q9.readFully(this.A0g.A0l(), 0, 8);
                        this.A08 += 8;
                        this.A0Z = true;
                        this.A0l.A0l()[0] = (byte) ((z4 ? 128 : 0) | 8);
                        this.A0l.A0f(0);
                        zp.AKA(this.A0l, 1, 1);
                        this.A09++;
                        this.A0g.A0f(0);
                        zp.AKA(this.A0g, 8, 1);
                        this.A09 += 8;
                    }
                    if (z4) {
                        if (!this.A0a) {
                            q9.readFully(this.A0l.A0l(), 0, 1);
                            int i5 = this.A08 + 1;
                            String[] strArr3 = A0u;
                            if (strArr3[1].charAt(8) != strArr3[7].charAt(8)) {
                                A0u[0] = "pctvtwuXbDVkkLBO0B6alMxo3etxl934";
                                this.A08 = i5;
                                this.A0l.A0f(0);
                                this.A0B = this.A0l.A0I();
                                this.A0a = true;
                            } else {
                                String[] strArr4 = A0u;
                                strArr4[1] = "HOXTaCvKsyrRiVB9OfTZ7iSFqGIdWtr9";
                                strArr4[7] = "WgYAX1cBszbPmmTXCVwVDtx67Y6xBuES";
                                this.A08 = i5;
                                this.A0l.A0f(0);
                                this.A0B = this.A0l.A0I();
                                this.A0a = true;
                            }
                        }
                        int i6 = this.A0B * 4;
                        this.A0l.A0d(i6);
                        q9.readFully(this.A0l.A0l(), 0, i6);
                        this.A08 += i6;
                        short s = (short) ((this.A0B / 2) + 1);
                        int i7 = (s * 6) + 2;
                        if (this.A0V == null || this.A0V.capacity() < i7) {
                            this.A0V = ByteBuffer.allocate(i7);
                        }
                        this.A0V.position(0);
                        this.A0V.putShort(s);
                        int iA0L = 0;
                        for (int i8 = 0; i8 < this.A0B; i8++) {
                            int i9 = iA0L;
                            iA0L = this.A0l.A0L();
                            if (i8 % 2 == 0) {
                                this.A0V.putShort((short) (iA0L - i9));
                            } else {
                                this.A0V.putInt(iA0L - i9);
                            }
                        }
                        int i10 = (i - this.A08) - iA0L;
                        if (this.A0B % 2 == 1) {
                            this.A0V.putInt(i10);
                        } else {
                            this.A0V.putShort((short) i10);
                            this.A0V.putInt(0);
                        }
                        this.A0h.A0j(this.A0V.array(), i7);
                        zp.AKA(this.A0h, i7, 1);
                        this.A09 += i7;
                    }
                }
            } else if (c2109aa.A0m != null) {
                this.A0k.A0j(c2109aa.A0m, c2109aa.A0m.length);
            }
            if (c2109aa.A0B(z)) {
                this.A02 |= 268435456;
                this.A0o.A0d(0);
                int iA0A2 = (this.A0k.A0A() + i) - this.A08;
                this.A0l.A0d(4);
                this.A0l.A0l()[0] = (byte) ((iA0A2 >> 24) & 255);
                this.A0l.A0l()[1] = (byte) ((iA0A2 >> 16) & 255);
                this.A0l.A0l()[2] = (byte) ((iA0A2 >> 8) & 255);
                this.A0l.A0l()[3] = (byte) (iA0A2 & 255);
                zp.AKA(this.A0l, 4, 2);
                this.A09 += 4;
            }
            this.A0Y = true;
            iA0A = i + this.A0k.A0A();
            if (A06(1207, 15, 59).equals(c2109aa.A0d) || A06(1236, 16, 50).equals(c2109aa.A0d)) {
                bArrA0l = this.A0i.A0l();
                bArrA0l[0] = 0;
                bArrA0l[1] = 0;
                bArrA0l[2] = 0;
                i2 = c2109aa.A0Q;
                i3 = 4 - c2109aa.A0Q;
                while (this.A08 < iA0A) {
                    i4 = this.A0A;
                    if (A0u[5].length() != 10) {
                        A0u[0] = "n3kv0q3aNrIG2";
                        if (i4 == 0) {
                            A0G(q9, bArrA0l, i3, i2);
                            this.A08 += i2;
                            this.A0i.A0f(0);
                            this.A0A = this.A0i.A0L();
                            this.A0j.A0f(0);
                            zp.AK9(this.A0j, 4);
                            this.A09 += 4;
                        } else {
                            int iA03 = A01(q9, zp, this.A0A);
                            this.A08 += iA03;
                            this.A09 += iA03;
                            this.A0A -= iA03;
                        }
                    }
                }
            } else {
                ZQ zq = c2109aa.A0c;
                String[] strArr5 = A0u;
                if (strArr5[3].charAt(18) != strArr5[4].charAt(18)) {
                    throw new RuntimeException();
                }
                String[] strArr6 = A0u;
                strArr6[3] = "Vaj3MhcRxQEkNZ99FQbPUTnAoO0cT0lV";
                strArr6[4] = "xfdbBnAiFkUvLA3UQdbN1yo1xUjXmcit";
                if (zq != null) {
                    int iA0A3 = this.A0k.A0A();
                    String[] strArr7 = A0u;
                    if (strArr7[1].charAt(8) != strArr7[7].charAt(8)) {
                        String[] strArr8 = A0u;
                        strArr8[3] = "ahkDnwwZ1M5c2xwXP4bviI74tZTM5NNc";
                        strArr8[4] = "KZBDFRuhpA7FmtcmEPb3VplP1Qry6uqF";
                        if (iA0A3 == 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    } else {
                        String[] strArr9 = A0u;
                        strArr9[3] = "At5Ab7oopsVFJExndObCobqDXIOgvui3";
                        strArr9[4] = "hhJ8pEinY1fgJlgDnmbH7UlSnfSEyZDK";
                        if (iA0A3 == 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    }
                    AbstractC1722Ln.A08(z2);
                    c2109aa.A0c.A03(q9);
                }
                while (this.A08 < iA0A) {
                    int iA04 = A01(q9, zp, iA0A - this.A08);
                    this.A08 += iA04;
                    this.A09 += iA04;
                }
            }
            if (A06(271, 8, 104).equals(c2109aa.A0d)) {
                this.A0p.A0f(0);
                zp.AK9(this.A0p, 4);
                this.A09 += 4;
            }
            iA00 = A00();
            strArr = A0u;
            if (strArr[1].charAt(8) != strArr[7].charAt(8)) {
                A0u[5] = "Ggno";
                return iA00;
            }
            A0u[5] = "K9n2HKsnWYgpdTCXnDpZrS1TZBiHj";
            return iA00;
        }
        throw new RuntimeException();
    }

    private long A03(long j) throws L9 {
        if (this.A0O != -9223372036854775807L) {
            return N1.A0U(j, this.A0O, 1000L);
        }
        throw L9.A01(A06(279, 54, 101), null);
    }

    @MetaExoPlayerCustomization
    private ZK A04(MW mw, MW mw2) {
        if (this.A0M == -1 || this.A0J == -9223372036854775807L || mw == null || mw.A02() == 0 || mw2 == null || mw2.A02() != mw.A02()) {
            return new Q4(this.A0J);
        }
        int iA02 = mw.A02();
        int[] iArrCopyOf = new int[iA02];
        long[] jArrCopyOf = new long[iA02];
        long[] jArrCopyOf2 = new long[iA02];
        long[] jArrCopyOf3 = new long[iA02];
        for (int i = 0; i < iA02; i++) {
            jArrCopyOf3[i] = mw.A03(i);
            jArrCopyOf[i] = this.A0M + mw2.A03(i);
        }
        for (int i2 = 0; i2 < iA02 - 1; i2++) {
            iArrCopyOf[i2] = (int) (jArrCopyOf[i2 + 1] - jArrCopyOf[i2]);
            jArrCopyOf2[i2] = jArrCopyOf3[i2 + 1] - jArrCopyOf3[i2];
        }
        iArrCopyOf[iA02 - 1] = (int) ((this.A0M + this.A0N) - jArrCopyOf[iA02 - 1]);
        jArrCopyOf2[iA02 - 1] = this.A0J - jArrCopyOf3[iA02 - 1];
        long j = jArrCopyOf2[iA02 - 1];
        if (j <= 0) {
            MV.A07(A06(869, 17, 44), A06(499, 52, 5) + j);
            iArrCopyOf = Arrays.copyOf(iArrCopyOf, iArrCopyOf.length - 1);
            jArrCopyOf = Arrays.copyOf(jArrCopyOf, jArrCopyOf.length - 1);
            jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, jArrCopyOf2.length - 1);
            jArrCopyOf3 = Arrays.copyOf(jArrCopyOf3, jArrCopyOf3.length - 1);
        }
        return new QJ(iArrCopyOf, jArrCopyOf, jArrCopyOf2, jArrCopyOf3);
    }

    private final C2109aa A05(int i) throws L9 {
        A0D(i);
        return this.A0T;
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0t, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 111);
        }
        return new String(bArrCopyOfRange);
    }

    @EnsuresNonNull
    private void A09() {
        AbstractC1722Ln.A02(this.A0S);
    }

    private void A0A() {
        this.A08 = 0;
        this.A09 = 0;
        this.A0A = 0;
        this.A0Y = false;
        this.A0b = false;
        this.A0a = false;
        this.A0B = 0;
        this.A00 = (byte) 0;
        this.A0Z = false;
        this.A0k.A0d(0);
    }

    public static void A0B() {
        byte[] bArr = {Ascii.SI, 66, 90, 92, 91, Ascii.SI, 77, 74, Ascii.SI, 70, 65, Ascii.SI, 78, Ascii.SI, 108, 90, 74, 92, 82, Ascii.US, 7, 1, 6, 82, Ascii.DLE, Ascii.ETB, 82, Ascii.ESC, Ascii.FS, 82, 19, 82, 38, 0, 19, 17, Ascii.EM, 55, Ascii.FS, 6, 0, Ascii.VT, 46, 96, 97, 122, 46, 125, 123, 126, 126, 97, 124, 122, 107, 106, Ascii.ESC, Ascii.SO, Ascii.SI, 90, 4, Ascii.ESC, Ascii.SO, Ascii.FF, 90, 4, Ascii.ESC, Ascii.SO, Ascii.FF, 90, 4, Ascii.ESC, Ascii.SO, Ascii.FF, 90, 0, Ascii.NAK, Ascii.ETB, 65, Ascii.US, 0, Ascii.NAK, Ascii.ETB, 65, Ascii.US, 0, Ascii.NAK, Ascii.ETB, 65, 9, 0, Ascii.NAK, Ascii.SYN, 65, 0, Ascii.NAK, Ascii.ETB, 65, Ascii.US, 0, Ascii.NAK, Ascii.ETB, 65, Ascii.US, 0, Ascii.NAK, Ascii.ETB, 65, Ascii.VT, 0, Ascii.NAK, Ascii.SYN, 65, 99, 103, 113, 113, 71, 86, 86, 75, 76, 69, 81, 97, 75, 82, 74, 71, 80, 111, 77, 70, 71, 2, 102, 120, 102, 102, 100, 70, 88, 70, 68, 52, Ascii.VT, Ascii.NAK, Ascii.SO, Ascii.RS, Ascii.EM, 70, 88, 67, 83, 84, 40, 66, 95, 87, 85, 66, 84, 84, 111, 113, 106, 122, 125, 1, 98, 97, 125, 125, 98, 107, 125, 125, Ascii.CR, 19, 9, Ascii.CR, Ascii.SI, 127, 65, 95, 70, 76, 65, 67, 57, 39, 53, 40, Base64.padSymbol, 63, 87, 52, 74, 2, Ascii.FS, Ascii.SO, 19, 6, 4, 108, Ascii.SI, 112, 7, Ascii.EM, Ascii.VT, Ascii.NAK, 105, 7, 5, Ascii.VT, 86, 72, 88, 71, 66, 68, Ascii.US, 1, Ascii.SO, Ascii.GS, 19, 113, Ascii.CAN, Ascii.DC2, 17, Ascii.US, 10, 113, Ascii.ETB, Ascii.ESC, Ascii.ESC, Ascii.ESC, 87, 73, 70, 85, 91, 57, 95, 88, 66, 57, 84, 95, 81, 123, 101, 106, 121, 119, Ascii.NAK, 115, 116, 110, Ascii.NAK, 118, 115, 110, 45, 51, 56, 62, 57, 41, 36, 40, 70, 88, 81, 72, 85, 69, 78, 84, 73, 107, 100, 45, 126, 42, 121, 105, 107, 102, 111, 42, 126, 99, 103, 111, 105, 101, 110, 111, 42, 122, 120, 99, 101, 120, 42, 126, 101, 42, 126, 99, 103, 111, 105, 101, 110, 111, 89, 105, 107, 102, 111, 42, 104, 111, 99, 100, 109, 42, 121, 111, 126, 36, Ascii.DLE, 60, 55, 54, 48, Ascii.SUB, 55, 115, 58, 32, 115, 62, 58, 32, 32, 58, Base64.padSymbol, 52, 115, 58, Base64.padSymbol, 115, 7, 33, 50, 48, 56, Ascii.SYN, Base64.padSymbol, 39, 33, 42, 115, 54, 63, 54, 62, 54, Base64.padSymbol, 39, 81, 125, 127, 112, 123, 124, 123, 124, 117, 50, 119, 124, 113, 96, 107, 98, 102, 123, 125, 124, 50, 115, 124, 118, 50, 113, 125, 127, 98, 96, 119, 97, 97, 123, 125, 124, 50, 123, 97, 50, 124, 125, 102, 50, 97, 103, 98, 98, 125, 96, 102, 119, 118, 99, 79, 78, 84, 69, 78, 84, 99, 79, 77, 80, 97, 76, 71, 79, 0, 82, 126, 127, 101, 116, 127, 101, 84, 127, 114, 80, 125, 118, 126, 49, 86, 122, 123, 97, 112, 123, 97, 80, 123, 118, 122, 113, 124, 123, 114, 90, 103, 113, 112, 103, 53, 84, 120, 121, 99, 114, 121, 99, 82, 121, 116, 120, 115, 126, 121, 112, 68, 116, 120, 103, 114, 55, 46, 3, Ascii.EM, 9, Ascii.VT, Ascii.CAN, Ascii.SO, 3, 4, Ascii.CR, 74, 6, Ascii.VT, Ascii.EM, Ascii.RS, 74, 9, Ascii.US, Ascii.SI, 74, Ascii.SUB, 5, 3, 4, Ascii.RS, 74, Ascii.GS, 3, Ascii.RS, 2, 74, Ascii.US, 4, Ascii.SI, Ascii.DC2, Ascii.SUB, Ascii.SI, 9, Ascii.RS, Ascii.SI, Ascii.SO, 74, Ascii.SO, Ascii.US, Ascii.CAN, Ascii.VT, Ascii.RS, 3, 5, 4, 80, 74, 107, SignedBytes.MAX_POWER_OF_TWO, 76, 123, 86, 95, 74, Ascii.SI, 116, 95, 83, 100, 73, SignedBytes.MAX_POWER_OF_TWO, 85, 98, 85, 81, 84, 102, 85, 66, 67, 89, 95, 94, Ascii.DLE, SignedBytes.MAX_POWER_OF_TWO, 71, 72, 73, 37, 105, 100, 102, 108, 107, 98, 37, 118, 100, 104, 117, 105, 96, 37, 118, 108, 127, 96, 37, 106, 112, 113, 37, 106, 99, 37, 119, 100, 107, 98, 96, 43, 84, 83, 92, 93, 67, 116, 112, 117, 71, 116, 99, 98, 120, 126, 127, 49, 104, 65, 72, SignedBytes.MAX_POWER_OF_TWO, 72, 67, 89, Ascii.CR, Ascii.US, 52, 57, 40, 35, 42, 46, 63, 62, 122, Ascii.SO, 40, 59, 57, 49, 122, 60, 53, 47, 52, 62, 122, 56, 47, 46, 122, Ascii.EM, 53, 52, 46, 63, 52, 46, Ascii.US, 52, 57, 17, 63, 35, 19, Ascii.RS, 122, 45, 59, 41, 122, 52, 53, 46, 122, 60, 53, 47, 52, 62, 50, Ascii.SI, 3, Ascii.DC2, Ascii.EM, 4, Ascii.RS, Ascii.CAN, Ascii.EM, 87, Ascii.NAK, Ascii.RS, 3, 87, Ascii.RS, 4, 87, 4, Ascii.DC2, 3, 87, Ascii.RS, Ascii.EM, 87, 4, Ascii.RS, Ascii.DLE, Ascii.EM, Ascii.SYN, Ascii.ESC, 87, Ascii.NAK, Ascii.SO, 3, Ascii.DC2, Ascii.FS, 53, 40, 55, 59, 46, 96, 122, 9, 46, 59, 40, 46, 118, 122, Ascii.US, 52, 62, 118, 122, 8, 63, 59, 62, Ascii.NAK, 40, 62, 63, 40, 118, 122, Ascii.SYN, 59, 35, 63, 40, 118, 122, 9, 46, 35, 54, 63, 118, 122, Ascii.DC4, 59, 55, 63, 118, 122, Ascii.ETB, 59, 40, Base64.padSymbol, 51, 52, Ascii.SYN, 118, 122, Ascii.ETB, 59, 40, Base64.padSymbol, 51, 52, 8, 118, 122, Ascii.ETB, 59, 40, Base64.padSymbol, 51, 52, Ascii.FF, 118, 122, Ascii.US, 60, 60, 63, 57, 46, 118, 122, Ascii.SO, 63, 34, 46, 47, 3, Ascii.FF, 6, 3, Ascii.SYN, Ascii.CR, Ascii.DLE, Ascii.ESC, 66, 7, Ascii.SO, 7, Ascii.SI, 7, Ascii.FF, Ascii.SYN, 66, 49, 7, 7, 9, 43, 38, 66, Ascii.CR, Ascii.DLE, 66, 49, 7, 7, 9, 50, Ascii.CR, 17, Ascii.VT, Ascii.SYN, Ascii.VT, Ascii.CR, Ascii.FF, 66, Ascii.FF, Ascii.CR, Ascii.SYN, 66, 4, Ascii.CR, Ascii.ETB, Ascii.FF, 6, Ascii.SO, 34, 55, 49, 44, 48, 40, 34, 6, 59, 55, 49, 34, 32, 55, 44, 49, 122, 66, 91, 67, 94, 71, 91, 82, Ascii.ETB, 100, 82, 80, 90, 82, 89, 67, Ascii.ETB, 82, 91, 82, 90, 82, 89, 67, 68, Ascii.ETB, 89, 88, 67, Ascii.ETB, 68, 66, 71, 71, 88, 69, 67, 82, 83, 82, 115, 60, 106, 125, 112, 117, 120, 60, 104, 110, 125, 127, 119, 111, 60, 107, 121, 110, 121, 60, 122, 115, 105, 114, 120, 104, 73, 6, 80, 71, 74, 79, 66, 6, 80, 71, 84, 79, 72, 82, 6, 74, 67, 72, 65, 82, 78, 6, 75, 71, 85, 77, 6, SignedBytes.MAX_POWER_OF_TWO, 73, 83, 72, 66, 79, 67, 88, 74, 94, 79, 73, 94, 40, 36, 51, 63, 54, 45, 84, 43, 
        60, 40, 0, Ascii.FF, 7, Ascii.SYN, Ascii.VT, 7, 124, Ascii.DC2, 0, 0, 66, 78, 69, 84, 73, 69, 62, 68, 69, 87, 41, 104, 100, 111, 126, 99, 111, Ascii.DC4, 108, 126, 121, 109, 111, 111, 113, 125, 116, 109, 96, 113, 119, 96, 63, 7, 5, Ascii.FS, Ascii.FS, 5, 2, Ascii.VT, 76, Ascii.US, Ascii.EM, Ascii.SO, Ascii.CAN, 5, Ascii.CAN, 0, 9, 76, Ascii.US, Ascii.CR, 1, Ascii.FS, 0, 9, 76, 5, 2, 76, 0, Ascii.CR, Ascii.SI, 9, 8, 76, Ascii.SO, 0, 3, Ascii.SI, 7, 66, Ascii.DLE, 40, 42, 51, 51, 42, 45, 36, 99, 48, 54, 33, 55, 42, 55, 47, 38, 99, 48, 34, 46, 51, 47, 38, 99, 52, 42, 55, 43, 99, 45, 44, 99, 39, 54, 49, 34, 55, 42, 44, 45, 109, 106, 81, 90, 71, 79, 90, 92, 75, 90, 91, Ascii.US, 86, 91, 5, Ascii.US, Ascii.DLE, 43, 32, Base64.padSymbol, 53, 32, 38, 49, 32, 33, 101, 41, 36, 38, 44, 43, 34, 101, 51, 36, 41, 48, 32, 127, 101, 105, 96, 126, 105, Ascii.SO, 56, 49, 35, 62, 43, 41, 92, 9, 0, Ascii.DC2, Ascii.SI, Ascii.SUB, Ascii.CAN, 107, 112, Ascii.SYN, Ascii.FF, Ascii.DLE, 112, Ascii.RS, Ascii.SI, 100, 109, 127, 98, 119, 117, 6, Ascii.GS, 123, 97, 125, Ascii.GS, 115, 97, 98, 2, Ascii.VT, Ascii.EM, 4, 17, 19, 96, 123, Ascii.GS, 7, Ascii.ESC, 123, Ascii.NAK, 2, Ascii.ETB, 59, 50, 32, Base64.padSymbol, 40, 42, 89, 66, 36, 62, 34, 66, 62, Base64.padSymbol, Ascii.VT, 2, Ascii.DLE, Ascii.CR, Ascii.CAN, Ascii.SUB, Ascii.NAK, 114, Ascii.DC4, Ascii.SO, Ascii.DC2, 114, Ascii.NAK, Ascii.CAN, Ascii.VT, Ascii.RS, 73, SignedBytes.MAX_POWER_OF_TWO, 82, 76, 48, 73, 89, 72, 48, 89, 80, 74, 77, 92, 92, Ascii.ETB, Ascii.RS, Ascii.NAK, 9, 4, Ascii.SO, 19, 0, 37, 44, 37, 35, 75, 104, 97, 104, 110, 7, 80, 76, 91, 103, 78, 81, 92, 93, 87, 103, 74, 87, 76, 121, Ascii.NAK, 8, 8, 8, 82, 78, 89, 101, 76, 83, 94, 95, 85, 101, 72, 85, 78, 123, Ascii.ETB, 10, 3, 10, 116, 104, 127, 67, 106, 117, 120, 121, 115, 67, 110, 115, 104, 93, 49, 45, 36, 44, 85, 73, 94, 98, 75, 84, 89, 88, 82, 98, 79, 82, 73, 124, Ascii.DLE, Ascii.SI, 10, Ascii.CR, 32, 44, 57, 63, 34, 62, 38, 44, 83, 76, 65, SignedBytes.MAX_POWER_OF_TWO, 74, 10, 82, SignedBytes.MAX_POWER_OF_TWO, 71, 72, 36, 54, 49, 62};
        String[] strArr = A0u;
        if (strArr[6].charAt(9) == strArr[2].charAt(9)) {
            throw new RuntimeException();
        }
        A0u[0] = "z";
        A0t = bArr;
    }

    @EnsuresNonNull
    private void A0C(int i) throws L9 {
        if (this.A0R == null || this.A0Q == null) {
            throw L9.A01(A06(LevelPlayAdError.ERROR_CODE_SHOW_WHILE_LOAD, 8, 66) + i + A06(0, 18, 64), null);
        }
    }

    @EnsuresNonNull
    private void A0D(int i) throws L9 {
        if (this.A0T == null) {
            throw L9.A01(A06(LevelPlayAdError.ERROR_CODE_SHOW_WHILE_LOAD, 8, 66) + i + A06(18, 24, 29), null);
        }
    }

    private void A0E(Q9 q9, int i) throws IOException {
        if (this.A0l.A0A() >= i) {
            return;
        }
        if (this.A0l.A08() < i) {
            this.A0l.A0c(Math.max(this.A0l.A08() * 2, i));
        }
        q9.readFully(this.A0l.A0l(), this.A0l.A0A(), i - this.A0l.A0A());
        this.A0l.A0e(i);
    }

    private void A0F(Q9 q9, byte[] bArr, int i) throws IOException {
        int length = bArr.length + i;
        if (this.A0n.A08() < length) {
            this.A0n.A0i(Arrays.copyOf(bArr, length + i));
        } else {
            System.arraycopy(bArr, 0, this.A0n.A0l(), 0, bArr.length);
        }
        q9.readFully(this.A0n.A0l(), bArr.length, i);
        this.A0n.A0f(0);
        this.A0n.A0e(length);
    }

    private void A0G(Q9 q9, byte[] bArr, int i, int i2) throws IOException {
        int iMin = Math.min(i2, this.A0k.A07());
        q9.readFully(bArr, i + iMin, i2 - iMin);
        if (iMin > 0) {
            this.A0k.A0k(bArr, i, iMin);
        }
    }

    private final void A0H(C2109aa c2109aa, int i, Q9 q9, int i2) throws IOException {
        if (i == 4) {
            if (A06(1280, 5, 81).equals(c2109aa.A0d)) {
                this.A0o.A0d(i2);
                String[] strArr = A0u;
                if (strArr[3].charAt(18) != strArr[4].charAt(18)) {
                    throw new RuntimeException();
                }
                A0u[5] = "ycRCH0OYlxA9fSn";
                q9.readFully(this.A0o.A0l(), 0, i2);
                return;
            }
        }
        q9.ALL(i2);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0050  */
    /* JADX WARN: Code duplicated, block: B:15:0x005e  */
    /* JADX WARN: Code duplicated, block: B:18:0x006f  */
    /* JADX WARN: Code duplicated, block: B:20:0x0073  */
    /* JADX WARN: Code duplicated, block: B:22:0x0083  */
    /* JADX WARN: Code duplicated, block: B:24:0x009b  */
    /* JADX WARN: Code duplicated, block: B:26:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:27:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:29:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:30:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:33:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:35:0x010d  */
    /* JADX WARN: Code duplicated, block: B:39:0x0131 A[LOOP:0: B:31:0x00f0->B:39:0x0131, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:43:0x0134 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x0116 A[SYNTHETIC] */
    @RequiresNonNull
    private void A0I(C2109aa c2109aa, long j, int i, int i2, int i3) {
        int i4;
        String strA06;
        int iA09;
        byte b;
        int iA0A;
        C1744Mk c1744Mk;
        int iA0A2 = i2;
        if (c2109aa.A0c == null) {
            if (A06(PointerIconCompat.TYPE_NO_DROP, 11, 126).equals(c2109aa.A0d)) {
                i4 = this.A03;
                strA06 = A06(869, 17, 44);
                if (i4 > 1) {
                    MV.A07(strA06, A06(IronSourceError.ERROR_BN_LOAD_FAILED_NO_CANDIDATES, 40, 3));
                } else if (this.A0D == -9223372036854775807L) {
                    MV.A07(strA06, A06(1084, 42, 44));
                } else {
                    A0K(c2109aa.A0d, this.A0D, this.A0n.A0l());
                    for (iA09 = this.A0n.A09(); iA09 < this.A0n.A0A(); iA09++) {
                        b = this.A0n.A0l()[iA09];
                        if (A0u[0].length() != 31) {
                            A0u[5] = "G7dQ1IOr3v5f";
                            if (b == 0) {
                                this.A0n.A0e(iA09);
                                break;
                            }
                        }
                    }
                    c2109aa.A0b.AK9(this.A0n, this.A0n.A0A());
                    iA0A2 += this.A0n.A0A();
                }
                if ((268435456 & i) != 0) {
                    if (this.A03 > 1) {
                        c1744Mk = this.A0o;
                        if (A0u[5].length() != 10) {
                            String[] strArr = A0u;
                            strArr[1] = "WB8QuC9ZsNSEjHZGyNl39w3VUVvWnBHt";
                            strArr[7] = "M43fA4NZssOBJdwWQhyVW8434onDMqYj";
                            c1744Mk.A0d(0);
                        }
                    } else {
                        iA0A = this.A0o.A0A();
                        if (A0u[0].length() != 31) {
                            String[] strArr2 = A0u;
                            strArr2[3] = "m5Qn9D46TMpgo6JFBsbN4dIgXashOA10";
                            strArr2[4] = "8OW2IfyCBRf7k2uZrAbVX1yXTl7N6yzd";
                            c2109aa.A0b.AKA(this.A0o, iA0A, 2);
                            iA0A2 += iA0A;
                        }
                    }
                }
                c2109aa.A0b.AKC(j, i, iA0A2, i3, c2109aa.A0a);
            } else {
                if (A06(1002, 10, 60).equals(c2109aa.A0d)) {
                    i4 = this.A03;
                    strA06 = A06(869, 17, 44);
                    if (i4 > 1) {
                        MV.A07(strA06, A06(IronSourceError.ERROR_BN_LOAD_FAILED_NO_CANDIDATES, 40, 3));
                    } else if (this.A0D == -9223372036854775807L) {
                        MV.A07(strA06, A06(1084, 42, 44));
                    } else {
                        A0K(c2109aa.A0d, this.A0D, this.A0n.A0l());
                        while (iA09 < this.A0n.A0A()) {
                            b = this.A0n.A0l()[iA09];
                            if (A0u[0].length() != 31) {
                                A0u[5] = "G7dQ1IOr3v5f";
                                if (b == 0) {
                                    this.A0n.A0e(iA09);
                                    break;
                                }
                            }
                        }
                        c2109aa.A0b.AK9(this.A0n, this.A0n.A0A());
                        iA0A2 += this.A0n.A0A();
                    }
                    if ((268435456 & i) != 0) {
                        if (this.A03 > 1) {
                            c1744Mk = this.A0o;
                            if (A0u[5].length() != 10) {
                                String[] strArr3 = A0u;
                                strArr3[1] = "WB8QuC9ZsNSEjHZGyNl39w3VUVvWnBHt";
                                strArr3[7] = "M43fA4NZssOBJdwWQhyVW8434onDMqYj";
                                c1744Mk.A0d(0);
                            }
                        } else {
                            iA0A = this.A0o.A0A();
                            if (A0u[0].length() != 31) {
                                String[] strArr4 = A0u;
                                strArr4[3] = "m5Qn9D46TMpgo6JFBsbN4dIgXashOA10";
                                strArr4[4] = "8OW2IfyCBRf7k2uZrAbVX1yXTl7N6yzd";
                                c2109aa.A0b.AKA(this.A0o, iA0A, 2);
                                iA0A2 += iA0A;
                            }
                        }
                    }
                    c2109aa.A0b.AKC(j, i, iA0A2, i3, c2109aa.A0a);
                } else {
                    if (A06(IronSourceError.ERROR_RV_SHOW_CALLED_WRONG_STATE, 13, 84).equals(c2109aa.A0d)) {
                        i4 = this.A03;
                        strA06 = A06(869, 17, 44);
                        if (i4 > 1) {
                            MV.A07(strA06, A06(IronSourceError.ERROR_BN_LOAD_FAILED_NO_CANDIDATES, 40, 3));
                        } else if (this.A0D == -9223372036854775807L) {
                            MV.A07(strA06, A06(1084, 42, 44));
                        } else {
                            A0K(c2109aa.A0d, this.A0D, this.A0n.A0l());
                            while (iA09 < this.A0n.A0A()) {
                                b = this.A0n.A0l()[iA09];
                                if (A0u[0].length() != 31) {
                                    A0u[5] = "G7dQ1IOr3v5f";
                                    if (b == 0) {
                                        this.A0n.A0e(iA09);
                                        break;
                                    }
                                }
                            }
                            c2109aa.A0b.AK9(this.A0n, this.A0n.A0A());
                            iA0A2 += this.A0n.A0A();
                        }
                        if ((268435456 & i) != 0) {
                            if (this.A03 > 1) {
                                c1744Mk = this.A0o;
                                if (A0u[5].length() != 10) {
                                    String[] strArr5 = A0u;
                                    strArr5[1] = "WB8QuC9ZsNSEjHZGyNl39w3VUVvWnBHt";
                                    strArr5[7] = "M43fA4NZssOBJdwWQhyVW8434onDMqYj";
                                    c1744Mk.A0d(0);
                                }
                            } else {
                                iA0A = this.A0o.A0A();
                                if (A0u[0].length() != 31) {
                                    String[] strArr6 = A0u;
                                    strArr6[3] = "m5Qn9D46TMpgo6JFBsbN4dIgXashOA10";
                                    strArr6[4] = "8OW2IfyCBRf7k2uZrAbVX1yXTl7N6yzd";
                                    c2109aa.A0b.AKA(this.A0o, iA0A, 2);
                                    iA0A2 += iA0A;
                                }
                            }
                        }
                        c2109aa.A0b.AKC(j, i, iA0A2, i3, c2109aa.A0a);
                    } else {
                        if ((268435456 & i) != 0) {
                            if (this.A03 > 1) {
                                c1744Mk = this.A0o;
                                if (A0u[5].length() != 10) {
                                    String[] strArr7 = A0u;
                                    strArr7[1] = "WB8QuC9ZsNSEjHZGyNl39w3VUVvWnBHt";
                                    strArr7[7] = "M43fA4NZssOBJdwWQhyVW8434onDMqYj";
                                    c1744Mk.A0d(0);
                                }
                            } else {
                                iA0A = this.A0o.A0A();
                                if (A0u[0].length() != 31) {
                                    String[] strArr8 = A0u;
                                    strArr8[3] = "m5Qn9D46TMpgo6JFBsbN4dIgXashOA10";
                                    strArr8[4] = "8OW2IfyCBRf7k2uZrAbVX1yXTl7N6yzd";
                                    c2109aa.A0b.AKA(this.A0o, iA0A, 2);
                                    iA0A2 += iA0A;
                                }
                            }
                        }
                        c2109aa.A0b.AKC(j, i, iA0A2, i3, c2109aa.A0a);
                    }
                }
            }
            throw new RuntimeException();
        }
        c2109aa.A0c.A04(c2109aa.A0b, j, i, iA0A2, i3, c2109aa.A0a);
        this.A0X = true;
    }

    private final void A0J(C2109aa c2109aa, Q9 q9, int i) throws IOException {
        if (c2109aa.A0n != 1685485123 && c2109aa.A0n != 1685480259) {
            q9.ALL(i);
        } else {
            c2109aa.A0k = new byte[i];
            q9.readFully(c2109aa.A0k, 0, i);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:4:0x0008  */
    public static void A0K(String str, long j, byte[] bArr) {
        byte b;
        byte[] bArrA0O;
        int i;
        switch (str.hashCode()) {
            case 738597099:
                if (!str.equals(A06(1002, 10, 60))) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 1045209816:
                if (!str.equals(A06(IronSourceError.ERROR_RV_SHOW_CALLED_WRONG_STATE, 13, 84))) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 1422270023:
                if (!str.equals(A06(PointerIconCompat.TYPE_NO_DROP, 11, 126))) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                bArrA0O = A0O(j, A06(75, 19, 74), 1000L);
                i = 19;
                break;
            case 1:
                bArrA0O = A0O(j, A06(56, 19, 81), 10000L);
                i = 21;
                break;
            case 2:
                bArrA0O = A0O(j, A06(94, 19, 74), 1000L);
                i = 25;
                break;
            default:
                throw new IllegalArgumentException();
        }
        int length = bArrA0O.length;
        String[] strArr = A0u;
        if (strArr[3].charAt(18) != strArr[4].charAt(18)) {
            throw new RuntimeException();
        }
        A0u[0] = "JA1wjLV1mIfg36WFMLiz";
        System.arraycopy(bArrA0O, 0, bArr, i, length);
    }

    private boolean A0L(ZH zh, long j) {
        if (this.A0c) {
            this.A0L = j;
            zh.A00 = this.A0H;
            this.A0c = false;
            return true;
        }
        if (!this.A0e || this.A0L == -1) {
            return false;
        }
        zh.A00 = this.A0L;
        this.A0L = -1L;
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:117:0x02f0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:47:0x0122  */
    /* JADX WARN: Code duplicated, block: B:4:0x0009  */
    /* JADX WARN: Code duplicated, block: B:6:0x000d A[RETURN] */
    public static boolean A0M(String str) {
        byte b;
        switch (str.hashCode()) {
            case -2095576542:
                String strA06 = A06(1178, 14, 48);
                if (A0u[5].length() != 10) {
                    A0u[0] = "qy30WEYRYjDpgKNyKary2rcwrY";
                    if (str.equals(strA06)) {
                        b = 6;
                    } else {
                        b = -1;
                    }
                    switch (b) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                            return true;
                        default:
                            return false;
                    }
                }
                throw new RuntimeException();
            case -2095575984:
                if (str.equals(A06(1222, 14, 2))) {
                    b = 4;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case -1985379776:
                if (str.equals(A06(InterfaceC3669k1.c.b.h, 8, 41))) {
                    b = Ascii.ETB;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case -1784763192:
                if (str.equals(A06(263, 8, 3))) {
                    b = Ascii.DC2;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case -1730367663:
                if (str.equals(A06(271, 8, 104))) {
                    b = Ascii.FF;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case -1482641358:
                if (str.equals(A06(189, 9, 23))) {
                    b = Ascii.SO;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case -1482641357:
                if (str.equals(A06(198, 9, 44))) {
                    b = Ascii.SI;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case -1373388978:
                if (str.equals(A06(1252, 15, InterfaceC3669k1.d.b.j))) {
                    b = 9;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case -933872740:
                if (str.equals(A06(984, 8, 115))) {
                    b = 32;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case -538363189:
                if (str.equals(A06(1192, 15, 93))) {
                    b = 5;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case -538363109:
                if (str.equals(A06(1207, 15, 59))) {
                    b = 7;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case -425012669:
                if (str.equals(A06(IronSourceError.ERROR_IS_SHOW_CALLED_DURING_SHOW, 8, 77))) {
                    b = Ascii.RS;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case -356037306:
                if (str.equals(A06(163, 14, 65))) {
                    b = Ascii.NAK;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case 62923557:
                if (str.equals(A06(135, 5, 72))) {
                    b = Ascii.CR;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case 62923603:
                if (str.equals(A06(140, 5, 104))) {
                    b = Ascii.DLE;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case 62927045:
                if (str.equals(A06(145, 5, 37))) {
                    b = 19;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case 82318131:
                if (str.equals(A06(1166, 5, 80))) {
                    b = 2;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case 82338133:
                if (str.equals(A06(1275, 5, 28))) {
                    b = 0;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case 82338134:
                if (str.equals(A06(1280, 5, 81))) {
                    b = 1;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case 99146302:
                String[] strArr = A0u;
                if (strArr[6].charAt(9) != strArr[2].charAt(9)) {
                    String[] strArr2 = A0u;
                    strArr2[6] = "4ocJ3QE7e2niA2lqgCPE8rjRynKRqK9e";
                    strArr2[2] = "waEp0KqnPD09qVRwoJT36NX33zQLhfou";
                    if (str.equals(A06(992, 10, 20))) {
                        b = Ascii.US;
                    } else {
                        b = -1;
                    }
                } else if (str.equals(A06(992, 10, 20))) {
                    b = Ascii.US;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case 444813526:
                if (str.equals(A06(1267, 8, 46))) {
                    b = 10;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case 542569478:
                if (str.equals(A06(150, 13, 104))) {
                    b = Ascii.DC4;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case 635596514:
                if (str.equals(A06(221, 16, 49))) {
                    b = Ascii.SUB;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case 725948237:
                if (str.equals(A06(237, 13, 121))) {
                    b = Ascii.EM;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case 725957860:
                if (str.equals(A06(250, 13, 85))) {
                    b = Ascii.CAN;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case 738597099:
                if (str.equals(A06(1002, 10, 60))) {
                    b = Ascii.FS;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case 855502857:
                if (str.equals(A06(1236, 16, 50))) {
                    b = 8;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case 1045209816:
                String[] strArr3 = A0u;
                if (strArr3[1].charAt(8) == strArr3[7].charAt(8)) {
                    String[] strArr4 = A0u;
                    strArr4[3] = "rWbOtqcfKfxvIFfkW0blYy67BjoLqLkT";
                    strArr4[4] = "Tv6gfUCuWEfjR9295DbqIIedC2Hsp2lK";
                    if (str.equals(A06(IronSourceError.ERROR_RV_SHOW_CALLED_WRONG_STATE, 13, 84))) {
                        b = Ascii.GS;
                    } else {
                        b = -1;
                    }
                    switch (b) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                            return true;
                        default:
                            return false;
                    }
                }
                throw new RuntimeException();
            case 1422270023:
                if (str.equals(A06(PointerIconCompat.TYPE_NO_DROP, 11, 126))) {
                    b = Ascii.ESC;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case 1809237540:
                if (str.equals(A06(1171, 7, 1))) {
                    b = 3;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case 1950749482:
                if (str.equals(A06(177, 6, 35))) {
                    b = 17;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case 1950789798:
                if (str.equals(A06(183, 6, 111))) {
                    b = Ascii.SYN;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            case 1951062397:
                if (str.equals(A06(215, 6, 120))) {
                    b = Ascii.VT;
                } else {
                    b = -1;
                }
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
            default:
                b = -1;
                switch (b) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                        return true;
                    default:
                        return false;
                }
        }
    }

    public static byte[] A0O(long j, String str, long j2) {
        AbstractC1722Ln.A07(j != -9223372036854775807L);
        int i = (int) (j / 3600000000L);
        long j3 = j - ((((long) i) * 3600) * 1000000);
        int i2 = (int) (j3 / 60000000);
        long j4 = j3 - ((((long) i2) * 60) * 1000000);
        int i3 = (int) (j4 / 1000000);
        return N1.A1G(String.format(Locale.US, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (((long) i3) * 1000000)) / j2))));
    }

    public static int[] A0P(int[] iArr, int i) {
        if (iArr != null) {
            return iArr.length >= i ? iArr : new int[Math.max(iArr.length * 2, i)];
        }
        int[] iArr2 = new int[i];
        String[] strArr = A0u;
        if (strArr[3].charAt(18) != strArr[4].charAt(18)) {
            throw new RuntimeException();
        }
        A0u[5] = "";
        return iArr2;
    }

    public static /* synthetic */ InterfaceC2043Yv[] A0Q() {
        return new InterfaceC2043Yv[]{new MatroskaExtractor()};
    }

    @MetaExoPlayerCustomization
    public final int A0R(int i) {
        switch (i) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 238:
            case 241:
            case 251:
            case 16871:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 21998:
            case 22186:
            case 22203:
            case 25188:
            case 30114:
            case 30321:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case FirebaseError.ERROR_WEAK_PASSWORD /* 17026 */:
            case 21358:
            case 2274716:
                return 3;
            case AdSize.WIDE_SKYSCRAPER_WIDTH /* 160 */:
            case 166:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 16868:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 26568:
            case 28032:
            case 29555:
            case 30113:
            case 30320:
            case 290298740:
            case 307544935:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 165:
            case 16877:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
            case 30323:
            case 30324:
            case 30325:
                return 5;
            case 17543:
            case 17827:
                return 6;
            default:
                return 0;
        }
    }

    /* JADX WARN: Code duplicated, block: B:55:0x016a A[LOOP:0: B:49:0x013b->B:55:0x016a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:90:0x01d8 A[SYNTHETIC] */
    public final void A0S(int i) throws L9 {
        A09();
        switch (i) {
            case AdSize.WIDE_SKYSCRAPER_WIDTH /* 160 */:
                int i2 = this.A05;
                if (A0u[0].length() != 31) {
                    String[] strArr = A0u;
                    strArr[3] = "W37Oe0UvQn0ZDoro2Mbo0pF98Xi8uqyS";
                    strArr[4] = "tR9TTUuUYx5oYQxH1Zb7krHeKmbl2wlj";
                    if (i2 != 2) {
                        return;
                    }
                    C2109aa c2109aa = this.A0P.get(this.A06);
                    c2109aa.A06();
                    if (this.A0E > 0 && A06(215, 6, 120).equals(c2109aa.A0d)) {
                        this.A0o.A0i(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.A0E).array());
                    }
                    int i3 = 0;
                    int i4 = 0;
                    while (true) {
                        int i5 = this.A03;
                        if (A0u[0].length() == 31) {
                            String[] strArr2 = A0u;
                            strArr2[3] = "Y0UB6E1y0ypnqBlpQHbO01hhQK2au0jS";
                            strArr2[4] = "LS7xRbahqeJrr9b4IFbtCGWau1TXmDen";
                            if (i4 >= i5) {
                            }
                            i3 += this.A0f[i4];
                            if (A0u[0].length() != 31) {
                                String[] strArr3 = A0u;
                                strArr3[1] = "sct5S66hsFYadYgOv1FFDPW62MmWrwBB";
                                strArr3[7] = "1RuC9tbOshwEgAejUgbuwMvBU57chua7";
                                i4++;
                            }
                        } else {
                            String[] strArr4 = A0u;
                            strArr4[3] = "Yx9601ekBh70hlQnRzbAopAAvIZtidXs";
                            strArr4[4] = "iIK5jxXhpOmSUenFN1b6tYVUrTB2nhhr";
                            if (i4 >= i5) {
                            }
                            i3 += this.A0f[i4];
                            if (A0u[0].length() != 31) {
                                String[] strArr5 = A0u;
                                strArr5[1] = "sct5S66hsFYadYgOv1FFDPW62MmWrwBB";
                                strArr5[7] = "1RuC9tbOshwEgAejUgbuwMvBU57chua7";
                                i4++;
                            }
                        }
                        break;
                    }
                    for (int i6 = 0; i6 < this.A03; i6++) {
                        long j = this.A0F + ((long) ((c2109aa.A0I * i6) / 1000));
                        int i7 = this.A02;
                        if (i6 == 0 && !this.A0W) {
                            i7 |= 1;
                        }
                        int i8 = this.A0f[i6];
                        i3 -= i8;
                        A0I(c2109aa, j, i7, i8, i3);
                    }
                    this.A05 = 0;
                    return;
                }
                break;
            case 174:
                C2109aa c2109aa2 = (C2109aa) AbstractC1722Ln.A02(this.A0T);
                if (c2109aa2.A0d == null) {
                    throw L9.A01(A06(333, 40, 60), null);
                }
                if (A0M(c2109aa2.A0d)) {
                    c2109aa2.A0G(this.A0S, c2109aa2.A0R);
                    this.A0P.put(c2109aa2.A0R, c2109aa2);
                }
                this.A0T = null;
                return;
            case 19899:
                if (this.A0C == -1 || this.A0K == -1) {
                    throw L9.A01(A06(819, 50, 13), null);
                }
                if (this.A0C == 475249515) {
                    long j2 = this.A0K;
                    if (A0u[5].length() == 10) {
                        A0u[5] = "oLY";
                        this.A0H = j2;
                        return;
                    } else {
                        String[] strArr6 = A0u;
                        strArr6[6] = "OWYx6LY00o3F1xrUgFtjBWOKe9PR4cvj";
                        strArr6[2] = "zSmNBCWIin3oi1Kr8EtbWzg6IhcGkQ3M";
                        this.A0H = j2;
                        return;
                    }
                }
                return;
            case 25152:
                A0D(i);
                if (this.A0T.A0i) {
                    if (this.A0T.A0a == null) {
                        throw L9.A01(A06(639, 55, 53), null);
                    }
                    this.A0T.A0Z = new DrmInitData(new DrmInitData.SchemeData(KN.A03, A06(1365, 10, 74), this.A0T.A0a.A03));
                    return;
                }
                return;
            case 28032:
                A0D(i);
                if (this.A0T.A0i && this.A0T.A0m != null) {
                    throw L9.A01(A06(373, 53, 125), null);
                }
                return;
            case 357149030:
                if (this.A0O == -9223372036854775807L) {
                    this.A0O = 1000000L;
                }
                long j3 = this.A0I;
                String[] strArr7 = A0u;
                if (strArr7[1].charAt(8) == strArr7[7].charAt(8)) {
                    A0u[0] = "aiYKfdM0H";
                    if (j3 != -9223372036854775807L) {
                        this.A0J = A03(this.A0I);
                        return;
                    }
                    return;
                }
                break;
            case 374648427:
                if (this.A0P.size() == 0) {
                    throw L9.A01(A06(925, 26, 115), null);
                }
                this.A0S.A6x();
                return;
            case 475249515:
                if (!this.A0e) {
                    this.A0S.AKP(A04(this.A0R, this.A0Q));
                    this.A0e = true;
                }
                this.A0R = null;
                this.A0Q = null;
                return;
            default:
                return;
        }
        throw new RuntimeException();
    }

    public final void A0T(int i, double d) throws L9 {
        switch (i) {
            case 181:
                A05(i).A0T = (int) d;
                break;
            case 17545:
                this.A0I = (long) d;
                break;
            case 21969:
                A05(i).A06 = (float) d;
                break;
            case 21970:
                A05(i).A07 = (float) d;
                break;
            case 21971:
                A05(i).A04 = (float) d;
                break;
            case 21972:
                A05(i).A05 = (float) d;
                break;
            case 21973:
                A05(i).A02 = (float) d;
                break;
            case 21974:
                A05(i).A03 = (float) d;
                break;
            case 21975:
                A05(i).A0B = (float) d;
                break;
            case 21976:
                A05(i).A0C = (float) d;
                break;
            case 21977:
                A05(i).A00 = (float) d;
                break;
            case 21978:
                A05(i).A01 = (float) d;
                break;
            case 30323:
                A05(i).A0A = (float) d;
                break;
            case 30324:
                A05(i).A08 = (float) d;
                break;
            case 30325:
                A05(i).A09 = (float) d;
                break;
        }
    }

    public final void A0U(int i, int i2, Q9 q9) throws IOException {
        int i3;
        int i4 = 0;
        int i5 = 1;
        switch (i) {
            case 161:
            case 163:
                if (this.A05 == 0) {
                    this.A06 = (int) this.A0r.A05(q9, false, true, 8);
                    this.A07 = this.A0r.A04();
                    this.A0D = -9223372036854775807L;
                    this.A05 = 1;
                    this.A0l.A0d(0);
                }
                C2109aa c2109aa = this.A0P.get(this.A06);
                if (c2109aa == null) {
                    q9.ALL(i2 - this.A07);
                    this.A05 = 0;
                    return;
                }
                c2109aa.A06();
                if (this.A05 == 1) {
                    A0E(q9, 3);
                    int i6 = (this.A0l.A0l()[2] & 6) >> 1;
                    byte b = 255;
                    if (i6 == 0) {
                        this.A03 = 1;
                        this.A0f = A0P(this.A0f, 1);
                        this.A0f[0] = (i2 - this.A07) - 3;
                    } else {
                        A0E(q9, 4);
                        this.A03 = (this.A0l.A0l()[3] & 255) + 1;
                        this.A0f = A0P(this.A0f, this.A03);
                        if (i6 == 2) {
                            int i7 = this.A07;
                            if (A0u[5].length() != 10) {
                                A0u[5] = "hy4";
                                Arrays.fill(this.A0f, 0, this.A03, ((i2 - i7) - 4) / this.A03);
                            } else {
                                String[] strArr = A0u;
                                strArr[1] = "hXaaLyAAs1rbtHuE3nGzIkSJNLU6k100";
                                strArr[7] = "oJuakIPGsIaLx04h8jFWtPxREsKAEmnI";
                                Arrays.fill(this.A0f, 0, this.A03, ((i2 - i7) - 4) / this.A03);
                            }
                        } else if (i6 == 1) {
                            int i8 = 0;
                            int i9 = 4;
                            for (int i10 = 0; i10 < this.A03 - 1; i10++) {
                                this.A0f[i10] = 0;
                                do {
                                    i9++;
                                    A0E(q9, i9);
                                    i3 = this.A0l.A0l()[i9 - 1] & 255;
                                    int[] iArr = this.A0f;
                                    iArr[i10] = iArr[i10] + i3;
                                } while (i3 == 255);
                                i8 += this.A0f[i10];
                            }
                            this.A0f[this.A03 - 1] = ((i2 - this.A07) - i9) - i8;
                        } else {
                            if (i6 != 3) {
                                throw L9.A01(A06(1141, 25, 42) + i6, null);
                            }
                            int i11 = 0;
                            int i12 = 4;
                            int i13 = 0;
                            while (i13 < this.A03 - i5) {
                                this.A0f[i13] = i4;
                                i12++;
                                A0E(q9, i12);
                                if (this.A0l.A0l()[i12 - 1] == 0) {
                                    throw L9.A01(A06(951, 33, 73), null);
                                }
                                long j = 0;
                                int i14 = 0;
                                while (i14 < 8) {
                                    int i15 = i5 << (7 - i14);
                                    if ((this.A0l.A0l()[i12 - 1] & i15) != 0) {
                                        int i16 = i12 - 1;
                                        i12 += i14;
                                        A0E(q9, i12);
                                        j = this.A0l.A0l()[i16] & b & (~i15);
                                        for (int i17 = i16 + 1; i17 < i12; i17++) {
                                            j = (j << 8) | ((long) (this.A0l.A0l()[i17] & b));
                                        }
                                        if (i13 > 0) {
                                            j -= (1 << ((i14 * 7) + 6)) - 1;
                                        }
                                        if (j >= -2147483648L || j > 2147483647L) {
                                            throw L9.A01(A06(578, 37, fh.g1), null);
                                        }
                                        int i18 = (int) j;
                                        int[] iArr2 = this.A0f;
                                        if (i13 != 0) {
                                            i18 += this.A0f[i13 - 1];
                                        }
                                        iArr2[i13] = i18;
                                        i11 += this.A0f[i13];
                                        i13++;
                                        b = 255;
                                        i4 = 0;
                                        i5 = 1;
                                    } else {
                                        i14++;
                                        String[] strArr2 = A0u;
                                        if (strArr2[3].charAt(18) != strArr2[4].charAt(18)) {
                                            i5 = 1;
                                        } else {
                                            A0u[0] = "YTsj846VQcHOB2STcOYH7t8v";
                                            i5 = 1;
                                        }
                                    }
                                }
                                if (j >= -2147483648L) {
                                }
                                throw L9.A01(A06(578, 37, fh.g1), null);
                            }
                            this.A0f[this.A03 - 1] = ((i2 - this.A07) - i12) - i11;
                        }
                    }
                    this.A0F = this.A0G + A03((this.A0l.A0l()[0] << 8) | (this.A0l.A0l()[1] & 255));
                    this.A02 = c2109aa.A0V == 2 || (i == 163 && (this.A0l.A0l()[2] & 128) == 128) ? 1 : 0;
                    this.A05 = 2;
                    this.A04 = 0;
                }
                if (i != 163) {
                    while (this.A04 < this.A03) {
                        this.A0f[this.A04] = A02(q9, c2109aa, this.A0f[this.A04], true);
                        this.A04++;
                    }
                    return;
                } else {
                    while (this.A04 < this.A03) {
                        A0I(c2109aa, this.A0F + ((long) ((this.A04 * c2109aa.A0I) / 1000)), this.A02, A02(q9, c2109aa, this.A0f[this.A04], false), 0);
                        this.A04++;
                    }
                    this.A05 = 0;
                    return;
                }
            case 165:
                if (this.A05 != 2) {
                    return;
                }
                A0H(this.A0P.get(this.A06), this.A01, q9, i2);
                return;
            case 16877:
                C2109aa c2109aaA05 = A05(i);
                if (A0u[0].length() == 31) {
                    throw new RuntimeException();
                }
                A0u[5] = "Bd5sTjjGGlMqylLSfrerdCbcZQ";
                A0J(c2109aaA05, q9, i2);
                return;
            case 16981:
                A0D(i);
                this.A0T.A0m = new byte[i2];
                q9.readFully(this.A0T.A0m, 0, i2);
                return;
            case 18402:
                byte[] bArr = new byte[i2];
                q9.readFully(bArr, 0, i2);
                A05(i).A0a = new ZN(1, bArr, 0, 0);
                return;
            case 21419:
                Arrays.fill(this.A0m.A0l(), (byte) 0);
                q9.readFully(this.A0m.A0l(), 4 - i2, i2);
                this.A0m.A0f(0);
                this.A0C = (int) this.A0m.A0Q();
                return;
            case 25506:
                A0D(i);
                this.A0T.A0j = new byte[i2];
                q9.readFully(this.A0T.A0j, 0, i2);
                return;
            case 30322:
                A0D(i);
                this.A0T.A0l = new byte[i2];
                q9.readFully(this.A0T.A0l, 0, i2);
                return;
            default:
                throw L9.A01(A06(1126, 15, 80) + i, null);
        }
    }

    public final void A0V(int i, long j) throws L9 {
        String strA06 = A06(42, 14, 97);
        switch (i) {
            case 131:
                A05(i).A0V = (int) j;
                return;
            case 136:
                A05(i).A0f = j == 1;
                return;
            case 155:
                this.A0D = A03(j);
                return;
            case 159:
                A05(i).A0E = (int) j;
                return;
            case 176:
                A05(i).A0W = (int) j;
                return;
            case 179:
                A0C(i);
                this.A0R.A04(A03(j));
                return;
            case 186:
                A05(i).A0M = (int) j;
                return;
            case 215:
                A05(i).A0R = (int) j;
                return;
            case 231:
                long jA03 = A03(j);
                if (A0u[5].length() == 10) {
                    throw new RuntimeException();
                }
                String[] strArr = A0u;
                strArr[1] = "52iGOnF8sAKd7TeIDUT00zGei62YfQlH";
                strArr[7] = "zdNaWTbJsyw02SdaQGKjaq2UXcrBxXHV";
                this.A0G = jA03;
                return;
            case 238:
                this.A01 = (int) j;
                return;
            case 241:
                if (this.A0d) {
                    return;
                }
                A0C(i);
                String[] strArr2 = A0u;
                if (strArr2[6].charAt(9) == strArr2[2].charAt(9)) {
                    this.A0Q.A04(j);
                    this.A0d = true;
                    return;
                } else {
                    A0u[0] = "gUMGsllvtbNkA1aKoD6tLY2x9WdBpx";
                    this.A0Q.A04(j);
                    this.A0d = true;
                    return;
                }
            case 251:
                this.A0W = true;
                return;
            case 16871:
                A05(i).A0n = (int) j;
                return;
            case 16980:
                if (j != 3) {
                    throw L9.A01(A06(426, 16, 79) + j + strA06, null);
                }
                return;
            case 17029:
                if (j < 1 || j > 2) {
                    throw L9.A01(A06(559, 19, 95) + j + strA06, null);
                }
                return;
            case 17143:
                if (j != 1) {
                    throw L9.A01(A06(IronSourceError.ERROR_BN_LOAD_NO_CONFIG, 16, 126) + j + strA06, null);
                }
                return;
            case 18401:
                if (j != 5) {
                    throw L9.A01(A06(442, 15, 126) + j + strA06, null);
                }
                return;
            case 18408:
                if (j != 1) {
                    throw L9.A01(A06(InterfaceC3669k1.d.b.k, 22, 77) + j + strA06, null);
                }
                return;
            case 20529:
                if (j != 0) {
                    throw L9.A01(A06(457, 21, 122) + j + strA06, null);
                }
                return;
            case 20530:
                String[] strArr3 = A0u;
                if (strArr3[6].charAt(9) != strArr3[2].charAt(9)) {
                    String[] strArr4 = A0u;
                    strArr4[3] = "Cv59KJKrR0tps5FmkhbxFTfn9ouit0UD";
                    strArr4[4] = "liGwdJA13SHAHMQsUXbT1GXi52Onn9ha";
                    if (j == 1) {
                        return;
                    }
                } else {
                    A0u[5] = "lGc0m1TKlQFBt";
                    if (j == 1) {
                        return;
                    }
                }
                throw L9.A01(A06(478, 21, 120) + j + strA06, null);
            case 21420:
                this.A0K = this.A0M + j;
                return;
            case 21432:
                int i2 = (int) j;
                A0D(i);
                switch (i2) {
                    case 0:
                        this.A0T.A0U = 0;
                        return;
                    case 1:
                        this.A0T.A0U = 2;
                        return;
                    case 3:
                        this.A0T.A0U = 1;
                        return;
                    case 15:
                        this.A0T.A0U = 3;
                        return;
                    default:
                        return;
                }
            case 21680:
                A05(i).A0L = (int) j;
                return;
            case 21682:
                A05(i).A0K = (int) j;
                return;
            case 21690:
                A05(i).A0J = (int) j;
                return;
            case 21930:
                A05(i).A0g = j == 1;
                return;
            case 21945:
                A0D(i);
                String[] strArr5 = A0u;
                if (strArr5[1].charAt(8) != strArr5[7].charAt(8)) {
                    throw new RuntimeException();
                }
                String[] strArr6 = A0u;
                strArr6[1] = "t6EoqIWLssHLilzBaC3mt7aSx1Rglp3B";
                strArr6[7] = "hFHiNpaFswlzcwPeAp3PEP954UAGzW8f";
                switch ((int) j) {
                    case 1:
                        this.A0T.A0F = 2;
                        return;
                    case 2:
                        this.A0T.A0F = 1;
                        return;
                    default:
                        return;
                }
            case 21946:
                A0D(i);
                int i3 = (int) j;
                String[] strArr7 = A0u;
                if (strArr7[6].charAt(9) == strArr7[2].charAt(9)) {
                    throw new RuntimeException();
                }
                String[] strArr8 = A0u;
                strArr8[3] = "icGEWmiHnnjih8kbTQb6JCfYXldqmIbJ";
                strArr8[4] = "1A3ABsg8w5Q0gexuCnbrDxHaxk8pwv73";
                int iA01 = ColorInfo.A01(i3);
                if (iA01 != -1) {
                    this.A0T.A0H = iA01;
                    return;
                }
                return;
            case 21947:
                A0D(i);
                this.A0T.A0h = true;
                int iA00 = ColorInfo.A00((int) j);
                if (iA00 != -1) {
                    this.A0T.A0G = iA00;
                    return;
                }
                return;
            case 21948:
                A05(i).A0O = (int) j;
                return;
            case 21949:
                A05(i).A0P = (int) j;
                return;
            case 21998:
                A05(i).A0N = (int) j;
                return;
            case 22186:
                A05(i).A0X = j;
                return;
            case 22203:
                A05(i).A0Y = j;
                return;
            case 25188:
                A05(i).A0D = (int) j;
                return;
            case 30114:
                this.A0E = j;
                return;
            case 30321:
                A0D(i);
                switch ((int) j) {
                    case 0:
                        C2109aa c2109aa = this.A0T;
                        if (A0u[5].length() == 10) {
                            c2109aa.A0S = 0;
                            return;
                        } else {
                            A0u[5] = "aN9h0R0mjPFVivU";
                            c2109aa.A0S = 0;
                            return;
                        }
                    case 1:
                        this.A0T.A0S = 1;
                        return;
                    case 2:
                        this.A0T.A0S = 2;
                        return;
                    case 3:
                        C2109aa c2109aa2 = this.A0T;
                        if (A0u[5].length() == 10) {
                            throw new RuntimeException();
                        }
                        A0u[0] = "prndpuhqxsYFNoMyrRl";
                        c2109aa2.A0S = 3;
                        return;
                    default:
                        return;
                }
            case 2352003:
                A05(i).A0I = (int) j;
                return;
            case 2807729:
                this.A0O = j;
                return;
            default:
                return;
        }
    }

    public final void A0W(int i, long j, long j2) throws L9 {
        A09();
        switch (i) {
            case AdSize.WIDE_SKYSCRAPER_WIDTH /* 160 */:
                this.A0W = false;
                this.A0E = 0L;
                return;
            case 174:
                this.A0T = new C2109aa();
                return;
            case 187:
                this.A0d = false;
                return;
            case 19899:
                this.A0C = -1;
                this.A0K = -1L;
                return;
            case 20533:
                C2109aa c2109aaA05 = A05(i);
                String[] strArr = A0u;
                if (strArr[6].charAt(9) == strArr[2].charAt(9)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0u;
                strArr2[1] = "mFW7Td0qsfohCgUmhayUlqXtb6rLWQIv";
                strArr2[7] = "tUA2AFYnsh1YTSKRpVKlRxtretRcDhD9";
                c2109aaA05.A0i = true;
                return;
            case 21968:
                A05(i).A0h = true;
                return;
            case 25152:
            default:
                return;
            case 408125543:
                if (this.A0M != -1 && this.A0M != j) {
                    throw L9.A01(A06(886, 39, 88), null);
                }
                this.A0M = j;
                this.A0N = j2;
                return;
            case 475249515:
                this.A0R = new MW();
                this.A0Q = new MW();
                return;
            case 524531317:
                if (this.A0e) {
                    return;
                }
                if (this.A0s && this.A0H != -1) {
                    this.A0c = true;
                    return;
                } else {
                    this.A0S.AKP(new Q4(this.A0J));
                    this.A0e = true;
                    return;
                }
        }
    }

    @MetaExoPlayerCustomization
    public final void A0X(int i, String str) throws L9 {
        switch (i) {
            case 134:
                A05(i).A0d = str;
                return;
            case FirebaseError.ERROR_WEAK_PASSWORD /* 17026 */:
                if (!A06(1375, 4, 60).equals(str) && !A06(1357, 8, 34).equals(str)) {
                    throw L9.A01(A06(551, 8, 64) + str + A06(42, 14, 97), null);
                }
                return;
            case 17827:
                this.A0U = str;
                return;
            case 21358:
                A05(i).A0e = str;
                return;
            case 2274716:
                A05(i).A0o = str;
                return;
            default:
                return;
        }
    }

    public final boolean A0Y(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AAq(InterfaceC2044Yw interfaceC2044Yw) {
        this.A0S = interfaceC2044Yw;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final int AIY(Q9 q9, ZH zh) throws IOException {
        this.A0X = false;
        boolean zAIb = true;
        while (zAIb) {
            boolean z = this.A0X;
            if (A0u[5].length() == 10) {
                throw new RuntimeException();
            }
            String[] strArr = A0u;
            strArr[3] = "4tqi7bFn1JEEfWMdp0bGnvqntlSkZWhx";
            strArr[4] = "CbmYgkIMdx7S7TZ0HGbtU5a0tFNS6npw";
            if (z) {
                break;
            }
            zAIb = this.A0q.AIb(q9);
            if (zAIb && A0L(zh, q9.A9Q())) {
                return 1;
            }
        }
        if (zAIb) {
            return 0;
        }
        for (int i = 0; i < this.A0P.size(); i++) {
            C2109aa c2109aaValueAt = this.A0P.valueAt(i);
            c2109aaValueAt.A06();
            c2109aaValueAt.A0E();
        }
        return -1;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AKO(long j, long j2) {
        this.A0G = -9223372036854775807L;
        this.A05 = 0;
        this.A0q.reset();
        this.A0r.A06();
        A0A();
        for (int i = 0; i < this.A0P.size(); i++) {
            this.A0P.valueAt(i).A0F();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final boolean ALN(Q9 q9) throws IOException {
        return new C2110ab().A01(q9);
    }
}
