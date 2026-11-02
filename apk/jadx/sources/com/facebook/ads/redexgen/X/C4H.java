package com.facebook.ads.redexgen.X;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.SystemClock;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomizations;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4H, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class C4H extends AnonymousClass97 {
    public static byte[] A11;
    public static String[] A12 = {"Ubu0ewyfE0TbSWUJec9tncaA0oOMlFsS", "05126Q1c5bSJBHdiqHABTc13PPypxog4", "ULRx93UVc0OYzjEHNNcj3gMruUCi4KlB", "fLcxIz7NDIX31sideQv73", "h2k", "XuY7TR11yWr5fdTal", "HHj0N3AzR3AQzDQcNMVZGm9sXraAIH9r", "jp4QTAtrtcYyub"};
    public static final byte[] A13;
    public float A00;
    public float A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public long A07;
    public long A08;
    public long A09;
    public long A0A;
    public long A0B;
    public MediaFormat A0C;
    public InterfaceC1858Rg A0D;
    public InterfaceC1858Rg A0E;
    public InterfaceC1891Sn A0F;
    public C1894Sq A0G;
    public C1901Sx A0H;
    public C1903Sz A0I;
    public String A0J;
    public ByteBuffer A0K;
    public ArrayDeque<C1894Sq> A0L;
    public boolean A0M;
    public boolean A0N;
    public boolean A0O;
    public boolean A0P;
    public boolean A0Q;
    public boolean A0R;
    public boolean A0S;
    public boolean A0T;
    public boolean A0U;
    public boolean A0V;
    public boolean A0W;
    public boolean A0X;
    public boolean A0Y;
    public boolean A0Z;
    public boolean A0a;
    public boolean A0b;
    public boolean A0c;
    public boolean A0d;
    public boolean A0e;

    @MetaExoPlayerCustomization
    public long A0f;
    public VC A0g;
    public O7 A0h;

    @MetaExoPlayerCustomization
    public boolean A0i;
    public boolean A0j;
    public boolean A0k;
    public final int A0l;
    public final int A0m;
    public final MediaCodec.BufferInfo A0n;
    public final T2 A0o;
    public final T2 A0p;
    public final C1800Oo A0q;
    public final InterfaceC1872Ru A0r;
    public final TG A0s;
    public final ArrayDeque<C1903Sz> A0t;
    public final List<Long> A0u;
    public final boolean A0v;
    public final boolean A0w;
    public final boolean A0x;
    public final C2004Xf A0y;
    public final C2001Xc A0z;

    @MetaExoPlayerCustomization
    public final boolean A10;

    static {
        A15();
        A13 = new byte[]{0, 0, 1, 103, 66, -64, Ascii.VT, -38, 37, -112, 0, 0, 1, 104, -50, Ascii.SI, 19, 32, 0, 0, 1, 101, -120, -124, Ascii.CR, -50, 113, Ascii.CAN, -96, 0, 47, -65, Ascii.FS, 49, -61, 39, 93, 120};
    }

    public C4H(int i, C2001Xc c2001Xc, C2004Xf c2004Xf, TG tg, InterfaceC1872Ru interfaceC1872Ru, boolean z, boolean z2, int i2, int i3) {
        super(i);
        this.A09 = -9223372036854775807L;
        this.A08 = -9223372036854775807L;
        this.A0k = false;
        this.A0i = false;
        AbstractC1722Ln.A08(N1.A02 >= 16);
        this.A0z = (C2001Xc) AbstractC1722Ln.A01(c2001Xc);
        this.A0y = (C2004Xf) AbstractC1722Ln.A01(c2004Xf);
        this.A0s = (TG) AbstractC1722Ln.A01(tg);
        this.A0r = interfaceC1872Ru;
        this.A0x = z;
        this.A0v = z2;
        this.A0m = i2;
        this.A0l = i3;
        this.A0o = new T2(0);
        this.A0p = T2.A02();
        this.A0q = new C1800Oo();
        this.A0u = new ArrayList();
        this.A0n = new MediaCodec.BufferInfo();
        this.A00 = 1.0f;
        this.A01 = 1.0f;
        this.A0t = new ArrayDeque<>();
        A18(C1903Sz.A04);
        this.A03 = 0;
        this.A04 = 0;
        this.A0A = -9223372036854775807L;
        this.A0B = -9223372036854775807L;
        this.A0w = XL.A03(XQ.A2Z);
        this.A10 = XL.A03(XQ.A2J);
    }

    private int A0w(String str) {
        if (N1.A02 <= 25 && A0x(256, 25, 7).equals(str) && (N1.A06.startsWith(A0x(681, 7, 8)) || N1.A06.startsWith(A0x(653, 7, 3)) || N1.A06.startsWith(A0x(660, 7, 67)) || N1.A06.startsWith(A0x(674, 7, 105)))) {
            return 2;
        }
        if (N1.A02 >= 24) {
            return 0;
        }
        if (!A0x(331, 22, 75).equals(str) && !A0x(353, 29, 9).equals(str)) {
            return 0;
        }
        if (!A0x(739, 8, 111).equals(N1.A03)) {
            if (!A0x(747, 12, 114).equals(N1.A03)) {
                if (!A0x(780, 7, 70).equals(N1.A03)) {
                    if (!A0x(831, 7, 44).equals(N1.A03)) {
                        return 0;
                    }
                }
            }
        }
        String[] strArr = A12;
        if (strArr[7].length() == strArr[3].length()) {
            throw new RuntimeException();
        }
        A12[4] = "5YfWKAB";
        return 1;
    }

    public static String A0x(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A11, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 18);
        }
        return new String(bArrCopyOfRange);
    }

    private ByteBuffer A0y(int i) {
        return this.A0F.A8v(i);
    }

    private ByteBuffer A0z(int i) {
        return this.A0F.A9H(i);
    }

    private List<C1894Sq> A10(boolean z) throws TK {
        String strA0P;
        List<C1894Sq> listA1l = A1l(this.A0s, this.A0g, z);
        if (listA1l.isEmpty() && z) {
            listA1l = A1l(this.A0s, this.A0g, false);
            if (!listA1l.isEmpty()) {
                MV.A07(A0x(220, 18, 62), A0x(116, 40, 32) + this.A0g.A0W + A0x(0, 58, 32) + listA1l + A0x(58, 1, 77));
            }
        }
        if (!listA1l.isEmpty() || !this.A0j || (strA0P = TN.A0P(this.A0g)) == null) {
            return listA1l;
        }
        List<C1894Sq> listA8P = this.A0s.A8P(strA0P, false, false);
        if (N1.A02 >= 26) {
            return (!A0x(848, 18, 123).equals(this.A0g.A0W) || listA8P.isEmpty()) ? listA1l : listA8P;
        }
        return listA1l;
    }

    private void A11() throws AnonymousClass96 {
        if (this.A04 == 2) {
            A1n();
            A1p();
        } else {
            if (A12[5].length() != 17) {
                throw new RuntimeException();
            }
            A12[4] = "jsg0";
            this.A0a = true;
            A1o();
        }
    }

    private void A12() throws AnonymousClass96 {
        MediaFormat mediaFormatA9I = this.A0F.A9I();
        if (this.A02 != 0 && mediaFormatA9I.getInteger(A0x(866, 5, 39)) == 32 && mediaFormatA9I.getInteger(A0x(793, 6, 116)) == 32) {
            this.A0b = true;
            return;
        }
        if (this.A0S) {
            mediaFormatA9I.setInteger(A0x(688, 13, 55), 1);
        }
        this.A0C = mediaFormatA9I;
        this.A0T = true;
        A1v(this.A0F, mediaFormatA9I);
    }

    private void A13() {
        this.A05 = -1;
        this.A0o.A02 = null;
    }

    private void A14() {
        this.A06 = -1;
        this.A0K = null;
    }

    public static void A15() {
        byte[] bArr = {Ascii.RS, Ascii.DC2, 80, 71, 70, Ascii.DC2, 92, 93, Ascii.DC2, 65, 87, 81, 71, SignedBytes.MAX_POWER_OF_TWO, 87, Ascii.DC2, 86, 87, 81, 93, 86, 87, SignedBytes.MAX_POWER_OF_TWO, Ascii.DC2, 83, 68, 83, 91, 94, 83, 80, 94, 87, Ascii.FS, Ascii.DC2, 102, SignedBytes.MAX_POWER_OF_TWO, 75, 91, 92, 85, Ascii.DC2, 70, 93, Ascii.DC2, 66, SignedBytes.MAX_POWER_OF_TWO, 93, 81, 87, 87, 86, Ascii.DC2, 69, 91, 70, 90, Ascii.DC2, 113, Ascii.SI, 46, 40, 36, 47, 46, 57, 107, 34, 37, 34, 63, 34, 42, 39, 34, 49, 42, 63, 34, 36, 37, 107, 45, 42, 34, 39, 46, 47, 103, 107, 57, 46, 63, 57, 50, Ascii.ESC, 58, 46, 42, 58, 42, 58, 127, 57, 62, 54, 51, 58, 59, 115, 127, 45, 58, 43, 45, 38, 118, SignedBytes.MAX_POWER_OF_TWO, 95, Ascii.DC2, 65, 87, 65, 65, 91, 93, 92, Ascii.DC2, SignedBytes.MAX_POWER_OF_TWO, 87, 67, 71, 91, SignedBytes.MAX_POWER_OF_TWO, 87, 65, Ascii.DC2, 65, 87, 81, 71, SignedBytes.MAX_POWER_OF_TWO, 87, Ascii.DC2, 86, 87, 81, 93, 86, 87, SignedBytes.MAX_POWER_OF_TWO, Ascii.DC2, 84, 93, SignedBytes.MAX_POWER_OF_TWO, Ascii.DC2, 99, 68, 76, 73, SignedBytes.MAX_POWER_OF_TWO, 65, 5, 81, 74, 5, 76, 75, 76, 81, 76, 68, 73, 76, 95, SignedBytes.MAX_POWER_OF_TWO, 5, 65, SignedBytes.MAX_POWER_OF_TWO, 70, 74, 65, SignedBytes.MAX_POWER_OF_TWO, 87, Ascii.US, 5, Ascii.VT, 35, 34, 47, 39, 102, 52, 35, 55, 51, 47, 52, 35, 53, 102, 39, 102, 2, 52, 43, Ascii.NAK, 35, 53, 53, 47, 41, 40, Ascii.VT, 39, 40, 39, 33, 35, 52, 97, 73, 72, 69, 77, 111, 67, 72, 73, 79, 126, 73, 66, 72, 73, 94, 73, 94, Ascii.GS, Ascii.US, 10, 124, Ascii.ETB, 42, 43, 60, Base64.padSymbol, 33, 124, 51, 36, 49, 124, 54, 55, 49, 90, 88, 77, 59, 80, 109, 108, 123, 122, 102, 59, 116, 99, 118, 59, 113, 112, 118, 59, 102, 112, 118, 96, 103, 112, 118, 116, 97, Ascii.ETB, 116, 109, 114, Ascii.ETB, 120, 108, 125, 112, 118, Ascii.ETB, 125, 124, 122, 118, 125, 124, 107, Ascii.ETB, 116, 105, 10, 95, 93, 72, 62, 93, 68, 91, 62, 70, 89, 84, 85, 95, 62, 84, 85, 83, 95, 84, 85, 66, 62, 81, 70, 83, Ascii.SYN, Ascii.DC4, 1, 119, Ascii.ETB, 47, 48, Base64.padSymbol, 48, 56, 119, 49, 107, 111, 109, 119, Base64.padSymbol, 60, 58, 54, Base64.padSymbol, 60, 84, 86, 67, 53, 85, 109, 114, 127, 114, 122, 53, 115, 41, 45, 47, 53, 127, 126, 120, 116, 127, 126, 53, 104, 126, 120, 110, 105, 126, 0, 2, Ascii.ETB, 97, Ascii.FS, 10, Ascii.FF, 97, 46, 57, 44, 97, 43, 42, 44, 76, 78, 91, 45, 80, 70, SignedBytes.MAX_POWER_OF_TWO, 45, 98, 117, 96, 45, 103, 102, 96, 45, 112, 102, 96, 118, 113, 102, 108, 110, 123, Ascii.CR, 66, 79, 79, 84, 74, 77, 77, 70, 81, Ascii.CR, 85, 74, 71, 70, 76, Ascii.CR, 71, 70, SignedBytes.MAX_POWER_OF_TWO, 76, 71, 70, 81, Ascii.CR, 66, 85, SignedBytes.MAX_POWER_OF_TWO, 110, 108, 121, Ascii.SI, SignedBytes.MAX_POWER_OF_TWO, 76, 77, 78, 70, 72, 66, Ascii.SI, SignedBytes.MAX_POWER_OF_TWO, 87, 66, Ascii.SI, 69, 68, 66, 78, 69, 68, 83, Ascii.SI, SignedBytes.MAX_POWER_OF_TWO, 86, 68, 82, 78, 76, 68, Ascii.DC4, Ascii.SYN, 3, 117, 58, 54, 55, 52, 60, 50, 56, 117, 58, 45, 56, 117, 63, 62, 56, 52, 63, 62, 41, 117, 58, 44, 62, 40, 52, 54, 62, 117, 40, 62, 56, 46, 41, 62, Ascii.ESC, Ascii.EM, Ascii.FF, 122, 51, 59, 59, 51, 56, 49, 122, 53, 53, 55, 122, 48, 49, 55, 59, 48, 49, 38, 9, Ascii.VT, Ascii.RS, 104, 33, 41, 41, 33, 42, 35, 104, 48, 41, 52, 36, 47, 53, 104, 34, 35, 37, 41, 34, 35, 52, Ascii.DC2, Ascii.DLE, 5, 115, 47, 54, 115, 43, 52, 57, 56, 50, 2, 57, 56, 62, 50, 57, 56, 47, 115, 60, 43, 62, 38, 4, 19, Ascii.DLE, 19, 4, 4, 19, Ascii.DC2, 86, Ascii.DC2, 19, Ascii.NAK, Ascii.EM, Ascii.DC2, 19, 4, 86, Ascii.US, Ascii.CAN, 5, 2, Ascii.ETB, Ascii.CAN, 2, Ascii.US, Ascii.ETB, 2, Ascii.US, Ascii.EM, Ascii.CAN, 86, Ascii.DLE, Ascii.ETB, Ascii.US, Ascii.SUB, 19, Ascii.DC2, 88, 86, 37, Ascii.SUB, 19, 19, 6, Ascii.US, Ascii.CAN, 17, 86, 2, Ascii.RS, 19, Ascii.CAN, 86, 4, 19, 2, 4, Ascii.SI, Ascii.US, Ascii.CAN, 17, 88, 66, 92, 60, 80, 36, 32, 33, 2, Ascii.FS, 124, Ascii.DLE, 100, 99, 97, Ascii.FS, 2, 98, 8, 119, 127, 127, 40, 54, 86, 49, 76, 75, 75, 73, 87, 55, 78, 47, 34, 47, 70, 77, 68, 75, 75, SignedBytes.MAX_POWER_OF_TWO, 73, 8, 70, 74, 80, 75, 81, 76, SignedBytes.MAX_POWER_OF_TWO, 65, 73, 70, 72, 90, 93, 74, 108, SignedBytes.MAX_POWER_OF_TWO, 75, 74, 76, 100, 117, 98, 102, 115, 98, 68, 104, 99, 98, 100, Base64.padSymbol, 4, Ascii.DC2, 1, 9, Ascii.SO, 33, Ascii.SO, 4, 38, 5, 5, 4, Ascii.ESC, 17, Ascii.DC2, 8, 19, Ascii.EM, Ascii.CAN, Ascii.SI, 6, Ascii.FF, Ascii.SI, Ascii.NAK, Ascii.SO, 4, 5, Ascii.DC2, 63, Ascii.FF, Ascii.DC4, 5, 58, 56, 41, 10, 47, 60, 45, 45, 56, 57, Ascii.DLE, 56, 57, 52, 60, Ascii.RS, 47, 36, 45, 41, 50, 51, 38, 59, 33, 36, 49, 38, 7, Ascii.CR, 93, 95, 95, 95, Ascii.SO, 3, Ascii.SI, 1, Ascii.SO, Ascii.DC2, 50, 58, 43, 62, 113, 59, 62, 41, 110, 59, 113, 62, 41, 110, 113, 59, 58, 60, 48, 59, 58, 45, 52, 51, 38, 53, 51, 4, 40, 35, 34, 36, 74, 87, 82, 95, 78, 87, 95, 42, 53, 56, 57, 51, 115, Base64.padSymbol, 42, 108, 109, Ascii.US, 0, Ascii.CR, Ascii.FF, 6, 70, Ascii.CR, 6, 5, Ascii.VT, Ascii.DLE, 68, Ascii.US, 0, Ascii.SUB, 0, 6, 7, 66, 92, 81, 65, 93};
        if (A12[2].charAt(1) != 'L') {
            throw new RuntimeException();
        }
        A12[2] = "WLMComwv4fsL1qzUebMDCjuz8Co2OxbA";
        A11 = bArr;
    }

    @MetaExoPlayerCustomizations
    private void A16(C1894Sq c1894Sq, MediaCrypto mediaCrypto) throws Exception {
        InterfaceC1891Sn interfaceC1891SnA0K = null;
        String str = c1894Sq.A03;
        try {
            if (this.A10) {
                A1z(str, this.A0g);
            } else {
                A1t(this.A0g);
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (!this.A10) {
                A1x(str);
            }
            AbstractC1753Mt.A02(A0x(IronSourceError.ERROR_NT_LOAD_NO_CONFIG, 12, 21) + str);
            interfaceC1891SnA0K = C1898Su.A02().A0K(A22(), this.A0z, this.A0y.A00(), EnumC2006Xh.A04, str);
            try {
                this.A0J = str;
                AbstractC1753Mt.A00();
                AbstractC1753Mt.A02(A0x(701, 14, 61));
                try {
                    A1w(c1894Sq, interfaceC1891SnA0K, this.A0g, mediaCrypto);
                    AbstractC1753Mt.A00();
                    AbstractC1753Mt.A02(A0x(821, 10, 85));
                    interfaceC1891SnA0K.start();
                    AbstractC1753Mt.A00();
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                    this.A0F = interfaceC1891SnA0K;
                    this.A0G = c1894Sq;
                    A1y(str, jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
                } catch (Exception e) {
                    e = e;
                    if (interfaceC1891SnA0K != null) {
                        interfaceC1891SnA0K.AIp();
                    }
                    throw e;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    @MetaExoPlayerCustomization
    private void A17(C1894Sq c1894Sq, C1894Sq c1894Sq2, MediaCrypto mediaCrypto) throws Exception {
        int iA00 = XL.A00(XP.A08);
        if (iA00 < 0) {
            A16(c1894Sq2, mediaCrypto);
            return;
        }
        try {
            A16(c1894Sq2, mediaCrypto);
        } catch (Exception e) {
            if (c1894Sq2 != c1894Sq) {
                throw e;
            }
            MV.A07(A0x(220, 18, 62), A0x(590, 63, 100));
            Thread.sleep(iA00);
            A16(c1894Sq2, mediaCrypto);
        }
    }

    private void A18(C1903Sz c1903Sz) {
        this.A0I = c1903Sz;
        if (c1903Sz.A02 != -9223372036854775807L) {
            this.A0Z = true;
        }
    }

    private boolean A19() {
        if (this.A0l <= 0) {
            return false;
        }
        boolean z = this.A08 == -9223372036854775807L || System.currentTimeMillis() - this.A08 <= ((long) this.A0l);
        if (this.A08 == -9223372036854775807L) {
            MV.A07(A0x(220, 18, 62), A0x(95, 21, 77));
            try {
                this.A0L = null;
                A1n();
            } catch (IllegalStateException unused) {
            }
            this.A08 = System.currentTimeMillis();
        }
        return z;
    }

    @MetaExoPlayerCustomization
    private boolean A1A() throws AnonymousClass96 {
        int iA1R;
        if (this.A0F == null || this.A04 == 2 || this.A0X) {
            return false;
        }
        if (this.A05 < 0) {
            this.A05 = this.A0F.A6R();
            if (this.A05 < 0) {
                return false;
            }
            this.A0o.A02 = A0y(this.A05);
            this.A0o.A0A();
        }
        if (this.A04 == 1) {
            boolean z = this.A0Q;
            if (A12[4].length() == 13) {
                throw new RuntimeException();
            }
            A12[2] = "2LPgSCL2vJxsavw9grdanCWJBOQfxqnj";
            if (!z) {
                this.A0V = true;
                InterfaceC1891Sn interfaceC1891Sn = this.A0F;
                if (A12[2].charAt(1) != 'L') {
                    String[] strArr = A12;
                    strArr[7] = "KFzunG53QMtOOn";
                    strArr[3] = "aPc56yFV1tAlmAUgPepRF";
                    interfaceC1891Sn.AIV(this.A05, 0, 0, 0L, 0);
                    A13();
                } else {
                    A12[6] = "nUjfXsthVVXbJTnF3ew6SY1qt1falvB3";
                    interfaceC1891Sn.AIV(this.A05, 0, 0, 0L, 4);
                    A13();
                }
            }
            this.A04 = 2;
            return false;
        }
        if (this.A0M) {
            this.A0M = false;
            this.A0o.A02.put(A13);
            this.A0F.AIV(this.A05, 0, A13.length, 0L, 0);
            A13();
            this.A0U = true;
            return true;
        }
        int iPosition = 0;
        if (this.A0e) {
            iA1R = -4;
        } else {
            if (this.A03 == 1) {
                for (int i = 0; i < this.A0g.A0X.size(); i++) {
                    this.A0o.A02.put(this.A0g.A0X.get(i));
                }
                this.A03 = 2;
            }
            iPosition = this.A0o.A02.position();
            if (XL.A03(XQ.A1S)) {
                try {
                    iA1R = A1R(this.A0q, this.A0o, 0);
                } catch (C1778Ns unused) {
                    A1C(0);
                    A1m();
                    return true;
                }
            } else {
                iA1R = A1R(this.A0q, this.A0o, 0);
            }
        }
        if (AAT() || this.A0o.A08()) {
            this.A0B = this.A0A;
        }
        if (iA1R == -3) {
            return false;
        }
        if (iA1R == -5) {
            if (this.A03 == 2) {
                this.A0o.A0A();
                this.A03 = 1;
            }
            A1s(this.A0q.A00);
            return true;
        }
        if (this.A0o.A05()) {
            if (this.A03 == 2) {
                this.A0o.A0A();
                this.A03 = 1;
            }
            this.A0X = true;
            if (!this.A0U) {
                A11();
                return false;
            }
            try {
                if (!this.A0Q) {
                    this.A0V = true;
                    this.A0F.AIV(this.A05, 0, 0, 0L, 4);
                    A13();
                }
                return false;
            } catch (MediaCodec.CryptoException e) {
                throw A1S(e, this.A0g, N1.A02(e.getErrorCode()));
            }
        }
        if (this.A0d && !this.A0o.A07()) {
            this.A0o.A0A();
            if (this.A03 == 2) {
                this.A03 = 1;
            }
            return true;
        }
        this.A0d = false;
        boolean zA0E = this.A0o.A0E();
        if (this.A0y.A01() && zA0E) {
            this.A0o.A05.A01(iPosition);
        }
        this.A0e = A1N(zA0E);
        if (this.A0e) {
            return false;
        }
        if (this.A0N && !zA0E) {
            ZE.A0G(this.A0o.A02);
            if (this.A0o.A02.position() == 0) {
                return true;
            }
            this.A0N = false;
        }
        try {
            long j = this.A0o.A01;
            if (this.A0o.A04()) {
                this.A0u.add(Long.valueOf(j));
            }
            this.A0A = Math.max(this.A0A, j);
            this.A0o.A0B();
            A1u(this.A0o);
            if (zA0E) {
                this.A0F.AIX(this.A05, 0, this.A0o.A05, j, 0);
            } else {
                this.A0F.AIV(this.A05, 0, this.A0o.A02.limit(), j, 0);
            }
            A13();
            this.A0U = true;
            this.A03 = 0;
            this.A0h.A08++;
            return true;
        } catch (MediaCodec.CryptoException e2) {
            throw A1S(e2, this.A0g, N1.A02(e2.getErrorCode()));
        }
    }

    private boolean A1B() {
        return this.A06 >= 0;
    }

    private boolean A1C(int i) throws AnonymousClass96 {
        C1800Oo c1800OoA1U = A1U();
        this.A0p.A0A();
        int iA1R = A1R(c1800OoA1U, this.A0p, i | 4);
        if (iA1R == -5) {
            A1s(c1800OoA1U.A00);
            return true;
        }
        if (iA1R != -4 || !this.A0p.A05()) {
            return false;
        }
        this.A0X = true;
        A11();
        return false;
    }

    private boolean A1D(long j) {
        int size = this.A0u.size();
        for (int i = 0; i < size; i++) {
            Long l = this.A0u.get(i);
            if (A12[4].length() == 13) {
                throw new RuntimeException();
            }
            A12[5] = "OeDMDWfizj7sKAjWB";
            if (l.longValue() == j) {
                this.A0u.remove(i);
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:32:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:34:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:48:0x0134  */
    /* JADX WARN: Code duplicated, block: B:50:0x013c  */
    /* JADX WARN: Code duplicated, block: B:76:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:80:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:87:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:89:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:92:0x01dc A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:93:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:94:0x01df  */
    private boolean A1E(long j, long j2) throws AnonymousClass96 {
        boolean z;
        InterfaceC1891Sn interfaceC1891Sn;
        ByteBuffer byteBuffer;
        int i;
        boolean zA23;
        long j3;
        boolean z2;
        int iA6T;
        if (A1B()) {
            if (this.A0P || !this.A0V) {
                z = false;
                interfaceC1891Sn = this.A0F;
                byteBuffer = this.A0K;
                i = this.A06;
                if (A12[2].charAt(1) == 'L') {
                    A12[5] = "J8O0zdz2fG73RidZw";
                    zA23 = A23(j, j2, interfaceC1891Sn, byteBuffer, i, this.A0n.flags, this.A0n.presentationTimeUs, this.A0c, this.A0Y);
                }
            } else {
                try {
                    z = false;
                    try {
                        zA23 = A23(j, j2, this.A0F, this.A0K, this.A06, this.A0n.flags, this.A0n.presentationTimeUs, this.A0c, this.A0Y);
                    } catch (IllegalStateException unused) {
                        A11();
                        if (this.A0a) {
                            A1n();
                        }
                        return z;
                    }
                } catch (IllegalStateException unused2) {
                    z = false;
                }
            }
            if (zA23) {
                j3 = this.A0n.presentationTimeUs;
                if (A12[5].length() == 17) {
                    A12[6] = "TUjBcfuqYUvFvPlmb6NcYZ8fO8J4Q4nX";
                    A1q(j3);
                    if ((this.A0n.flags & 4) != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    A14();
                    if (!z2) {
                        return true;
                    }
                    A11();
                }
            }
            return z;
        }
        if (this.A0P && this.A0V) {
            try {
                iA6T = this.A0F.A6T(this.A0n);
            } catch (IllegalStateException unused3) {
                A11();
                if (A12[2].charAt(1) == 'L') {
                    String[] strArr = A12;
                    strArr[1] = "rdvpAEhvRO0Gy4NyZxmFWcXYWLwp7q5V";
                    strArr[0] = "SgIB4LNT9f4YBQXmHNlbacOZZDhdThsc";
                    if (this.A0a) {
                        A1n();
                    }
                    return false;
                }
            }
        } else {
            iA6T = this.A0F.A6T(this.A0n);
        }
        if (iA6T < 0) {
            if (A12[4].length() == 13) {
                throw new RuntimeException();
            }
            A12[4] = "fmh3xgUZ5fG3Tt8UITbUjoI3Pb2";
            if (iA6T == -2) {
                A12();
                return true;
            }
            if (iA6T == -3) {
                return true;
            }
            boolean z3 = this.A0Q;
            String[] strArr2 = A12;
            if (strArr2[7].length() != strArr2[3].length()) {
                A12[6] = "dGjhIhbttrayEYWXtWrZDoxzBWD66CMg";
                if (z3) {
                    if (this.A0X || this.A04 == 2) {
                        A11();
                    }
                }
            } else {
                A12[2] = "NLOh77HEl33ScGQMPesSuKb80EuP0xRN";
                if (z3) {
                    if (this.A0X) {
                        A11();
                    } else {
                        A11();
                    }
                }
            }
            return false;
        }
        if (this.A0b) {
            this.A0b = false;
            if (A12[2].charAt(1) == 'L') {
                String[] strArr3 = A12;
                strArr3[7] = "py08OPSoQqTvJ1";
                strArr3[3] = "sFsBaxySkBzAK9waIFgJ6";
                this.A0F.AIw(iA6T, false);
                return true;
            }
        } else {
            int i2 = this.A0n.size;
            String[] strArr4 = A12;
            if (strArr4[1].charAt(21) == strArr4[0].charAt(21)) {
                A12[5] = "lHqFjzqYYMjMrXV0o";
                if (i2 == 0) {
                    if ((this.A0n.flags & 4) != 0) {
                        A11();
                        return false;
                    }
                }
            } else if (i2 == 0) {
                if ((this.A0n.flags & 4) != 0) {
                    A11();
                    return false;
                }
            }
            this.A06 = iA6T;
            this.A0K = A0z(iA6T);
            if (this.A0K != null) {
                this.A0K.position(this.A0n.offset);
                this.A0K.limit(this.A0n.offset + this.A0n.size);
            }
            this.A0c = A1D(this.A0n.presentationTimeUs);
            this.A0Y = this.A0B == this.A0n.presentationTimeUs;
            if (this.A0P) {
                z = false;
                interfaceC1891Sn = this.A0F;
                byteBuffer = this.A0K;
                i = this.A06;
                if (A12[2].charAt(1) == 'L') {
                    A12[5] = "J8O0zdz2fG73RidZw";
                    zA23 = A23(j, j2, interfaceC1891Sn, byteBuffer, i, this.A0n.flags, this.A0n.presentationTimeUs, this.A0c, this.A0Y);
                    if (zA23) {
                        j3 = this.A0n.presentationTimeUs;
                        if (A12[5].length() == 17) {
                            A12[6] = "TUjBcfuqYUvFvPlmb6NcYZ8fO8J4Q4nX";
                            A1q(j3);
                            if ((this.A0n.flags & 4) != 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            A14();
                            if (!z2) {
                                return true;
                            }
                            A11();
                        }
                    }
                    return z;
                }
            } else {
                z = false;
                interfaceC1891Sn = this.A0F;
                byteBuffer = this.A0K;
                i = this.A06;
                if (A12[2].charAt(1) == 'L') {
                    A12[5] = "J8O0zdz2fG73RidZw";
                    zA23 = A23(j, j2, interfaceC1891Sn, byteBuffer, i, this.A0n.flags, this.A0n.presentationTimeUs, this.A0c, this.A0Y);
                    if (zA23) {
                        j3 = this.A0n.presentationTimeUs;
                        if (A12[5].length() == 17) {
                            A12[6] = "TUjBcfuqYUvFvPlmb6NcYZ8fO8J4Q4nX";
                            A1q(j3);
                            if ((this.A0n.flags & 4) != 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            A14();
                            if (!z2) {
                                return true;
                            }
                            A11();
                        }
                    }
                    return z;
                }
            }
        }
        throw new RuntimeException();
    }

    private boolean A1F(MediaCrypto mediaCrypto, boolean z) throws C1901Sx {
        if (this.A0L == null) {
            try {
                List<C1894Sq> listA10 = A10(z);
                if (this.A0v) {
                    this.A0L = new ArrayDeque<>(listA10);
                } else {
                    this.A0L = new ArrayDeque<>(Collections.singletonList(listA10.get(0)));
                }
                this.A0H = null;
            } catch (TK e) {
                throw new C1901Sx(this.A0g, e, z, -49998);
            }
        }
        if (!this.A0i && A21()) {
            this.A0L.addFirst(C1894Sq.A02(A0x(799, 22, 77), this.A0g.A0W, this.A0g.A0W, null, false, true, false, false, false));
        }
        if (this.A0L.isEmpty()) {
            throw new C1901Sx(this.A0g, (Throwable) null, z, -49999);
        }
        C1894Sq c1894SqPeekFirst = this.A0L.peekFirst();
        String[] strArr = A12;
        if (strArr[7].length() == strArr[3].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A12;
        strArr2[1] = "Y8Eah7HmSE31dMaw3HeGDc2wn5ZpizJ6";
        strArr2[0] = "8IvczACA6a6Tv83PRas4ecHJJZa4hXiD";
        C1894Sq c1894Sq = c1894SqPeekFirst;
        while (true) {
            C1894Sq c1894SqPeekFirst2 = this.A0L.peekFirst();
            if (!A25(c1894SqPeekFirst2)) {
                return false;
            }
            try {
                A17(c1894Sq, c1894SqPeekFirst2, mediaCrypto);
                return true;
            } catch (Exception e2) {
                MV.A0A(A0x(220, 18, 62), A0x(156, 30, 55) + c1894SqPeekFirst2, e2);
                this.A0L.removeFirst();
                C1901Sx c1901Sx = new C1901Sx(this.A0g, e2, z, c1894SqPeekFirst2);
                if (this.A0H == null) {
                    this.A0H = c1901Sx;
                } else {
                    C1901Sx c1901SxA00 = this.A0H.A00(c1901Sx);
                    if (A12[4].length() != 13) {
                        A12[2] = "YLHml15JK3079Tzc76bR7yFoMXJ7q3lT";
                        this.A0H = c1901SxA00;
                    } else {
                        A12[2] = "hLHGswqJ0S14jzHU08KrZdYdYrNAsrgz";
                        this.A0H = c1901SxA00;
                    }
                }
                boolean zIsEmpty = this.A0L.isEmpty();
                if (A12[6].charAt(2) != 'j') {
                    A12[4] = "iITBQiH2ziha3nP2oIl35xEMLxVtpQ";
                    if (zIsEmpty) {
                        throw this.A0H;
                    }
                } else {
                    String[] strArr3 = A12;
                    strArr3[7] = "jtQO23kFmICY2j";
                    strArr3[3] = "njbYyadv5IcPewd8l7JvW";
                    if (zIsEmpty) {
                        throw this.A0H;
                    }
                }
            }
        }
        throw this.A0H;
    }

    public static boolean A1G(VC vc) {
        return vc.A07 == 0 || vc.A07 == 2;
    }

    public static boolean A1H(C1894Sq c1894Sq) {
        String str = c1894Sq.A03;
        return N1.A02 <= 17 && (A0x(566, 24, 79).equals(str) || A0x(419, 31, 49).equals(str));
    }

    public static boolean A1I(String str) {
        if (N1.A02 > 23 || !A0x(541, 25, 84).equals(str)) {
            if (N1.A02 <= 19) {
                if (!A0x(787, 6, 125).equals(N1.A03) || (!A0x(450, 31, 51).equals(str) && !A0x(481, 38, 73).equals(str))) {
                }
            }
            return false;
        }
        return true;
    }

    public static boolean A1J(String str) {
        return N1.A02 == 21 && A0x(519, 22, 70).equals(str);
    }

    public static boolean A1K(String str) {
        return N1.A02 < 18 || (N1.A02 == 18 && (A0x(382, 15, 93).equals(str) || A0x(397, 22, 17).equals(str))) || (N1.A02 == 19 && N1.A06.startsWith(A0x(667, 7, 93)) && (A0x(238, 18, 64).equals(str) || A0x(256, 25, 7).equals(str)));
    }

    public static boolean A1L(String str, VC vc) {
        return N1.A02 < 21 && vc.A0X.isEmpty() && A0x(306, 25, 2).equals(str);
    }

    public static boolean A1M(String str, VC vc) {
        return N1.A02 <= 18 && vc.A06 == 1 && A0x(281, 25, 43).equals(str);
    }

    private boolean A1N(boolean z) throws AnonymousClass96 {
        if (this.A0D == null || (!z && this.A0x)) {
            return false;
        }
        int iA9n = this.A0D.A9n();
        if (iA9n != 1) {
            return iA9n != 4;
        }
        throw A1S(this.A0D.A8b(), this.A0g, ((C1856Re) AbstractC1722Ln.A01(this.A0D.A8b())).A00);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass97
    public void A1X() {
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass97
    public void A1Y() {
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass97
    public void A1Z() {
        this.A0g = null;
        A18(C1903Sz.A04);
        this.A0t.clear();
        this.A0L = null;
        try {
            A1n();
            try {
                if (this.A0D != null) {
                    this.A0D.AIq(null);
                }
                try {
                    if (this.A0E != null && this.A0E != this.A0D) {
                        this.A0E.AIq(null);
                    }
                } finally {
                    this.A0D = null;
                    this.A0E = null;
                }
            } catch (Throwable th) {
                try {
                    if (this.A0E != null && this.A0E != this.A0D) {
                        this.A0E.AIq(null);
                    }
                    throw th;
                } finally {
                    this.A0D = null;
                    this.A0E = null;
                }
            }
        } catch (Throwable th2) {
            try {
                if (this.A0D != null) {
                    this.A0D.AIq(null);
                }
                try {
                    if (this.A0E != null && this.A0E != this.A0D) {
                        this.A0E.AIq(null);
                    }
                    throw th2;
                } finally {
                    this.A0D = null;
                    this.A0E = null;
                }
            } catch (Throwable th3) {
                try {
                    if (this.A0E != null && this.A0E != this.A0D) {
                        this.A0E.AIq(null);
                    }
                    throw th3;
                } finally {
                    this.A0D = null;
                    this.A0E = null;
                }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass97
    public void A1a(long j, boolean z) throws AnonymousClass96 {
        this.A0X = false;
        this.A0a = false;
        if (this.A0F != null) {
            A1m();
        }
        this.A0I.A03.A01();
        this.A0t.clear();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass97
    @MetaExoPlayerCustomization
    public void A1b(boolean z, boolean z2) throws AnonymousClass96 {
        this.A0h = new O7();
        this.A0f = 0L;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass97
    public void A1c(VC[] vcArr, long j, long j2) throws AnonymousClass96 {
    }

    public final float A1f() {
        return this.A00;
    }

    public abstract int A1g(InterfaceC1891Sn interfaceC1891Sn, C1894Sq c1894Sq, VC vc, VC vc2);

    public abstract int A1h(TG tg, InterfaceC1872Ru interfaceC1872Ru, VC vc) throws TK;

    public final long A1i() {
        return this.A0I.A02;
    }

    public final InterfaceC1891Sn A1j() {
        return this.A0F;
    }

    public final C1894Sq A1k() {
        return this.A0G;
    }

    public abstract List<C1894Sq> A1l(TG tg, VC vc, boolean z) throws TK;

    public void A1m() throws AnonymousClass96 {
        this.A07 = -9223372036854775807L;
        A13();
        A14();
        this.A0d = true;
        this.A0e = false;
        this.A0c = false;
        this.A0u.clear();
        this.A0M = false;
        this.A0b = false;
        this.A0Y = false;
        this.A0B = -9223372036854775807L;
        if (this.A0R || ((this.A0O && this.A0V) || A20())) {
            A1n();
            A1p();
        } else {
            int i = this.A04;
            if (A12[4].length() == 13) {
                throw new RuntimeException();
            }
            A12[2] = "3LMUuf0z30ObLEFaKXIbnGSUSWG3PKmC";
            if (i != 0) {
                A1n();
                A1p();
            } else {
                this.A0F.flush();
                this.A0U = false;
            }
        }
        if (!this.A0W || this.A0g == null) {
            return;
        }
        this.A03 = 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void A1n() {
        this.A07 = -9223372036854775807L;
        this.A09 = -9223372036854775807L;
        this.A08 = -9223372036854775807L;
        A13();
        A14();
        this.A0C = null;
        this.A0T = false;
        this.A0e = false;
        this.A0c = false;
        this.A0u.clear();
        this.A0G = null;
        this.A0W = false;
        this.A0U = false;
        this.A0N = false;
        this.A0R = false;
        this.A02 = 0;
        this.A0Q = false;
        this.A0O = false;
        this.A0S = false;
        this.A0M = false;
        this.A0b = false;
        this.A0V = false;
        this.A03 = 0;
        this.A04 = 0;
        if (this.A0F != null) {
            this.A0h.A03++;
            try {
                C1898Su.A02().A0L(A22(), this.A0z, this.A0y.A00(), EnumC2006Xh.A04, this.A0J, this.A0F);
                this.A0F = null;
                InterfaceC1858Rg interfaceC1858Rg = this.A0D;
                if (A12[2].charAt(1) != 'L') {
                    throw new RuntimeException();
                }
                A12[6] = "fsjxfUGgDEmpViQz93UJV7F9at6b5jlg";
                if (interfaceC1858Rg == null || this.A0E == this.A0D) {
                    return;
                }
                try {
                    this.A0D.AIq(null);
                } finally {
                    this.A0D = null;
                    this.A0J = null;
                }
            } catch (Throwable th) {
                this.A0F = null;
                if (this.A0D != null && this.A0E != this.A0D) {
                    try {
                        this.A0D.AIq(null);
                    } finally {
                        this.A0D = null;
                        this.A0J = null;
                    }
                }
                throw th;
            }
        }
    }

    public void A1o() throws AnonymousClass96 {
    }

    public final void A1p() throws AnonymousClass96 {
        if (this.A0F != null || this.A0g == null) {
            return;
        }
        this.A0D = this.A0E;
        if (this.A0D != null) {
            this.A0D.A86();
            if (0 != 0) {
                throw new NullPointerException(A0x(759, 21, 79));
            }
            if (this.A0D.A8b() == null) {
                return;
            }
        }
        try {
            if (A1F(null, false)) {
                String str = this.A0G.A03;
                this.A02 = A0w(str);
                this.A0N = A1L(str, this.A0g);
                this.A0R = A1K(str);
                this.A0Q = A1H(this.A0G);
                this.A0O = A1I(str);
                this.A0P = A1J(str);
                this.A0S = A1M(str, this.A0g);
                this.A07 = A9n() == 2 ? SystemClock.elapsedRealtime() + 1000 : -9223372036854775807L;
                A13();
                A14();
                this.A09 = -9223372036854775807L;
                this.A0d = true;
                this.A0h.A02++;
            }
        } catch (C1901Sx e) {
            if (this.A0m > 0) {
                long j = this.A09;
                if (A12[2].charAt(1) == 'L') {
                    A12[5] = "G2iCu0GaU7Jekh0fr";
                    if (j == -9223372036854775807L || System.currentTimeMillis() - this.A09 <= this.A0m) {
                        if (this.A09 == -9223372036854775807L) {
                            MV.A07(A0x(220, 18, 62), A0x(59, 36, 89));
                            this.A09 = System.currentTimeMillis();
                        }
                        if (this.A0L == null) {
                            return;
                        }
                        boolean zIsEmpty = this.A0L.isEmpty();
                        if (A12[6].charAt(2) != 'j') {
                            throw new RuntimeException();
                        }
                        A12[4] = "kxO";
                        if (!zIsEmpty) {
                            return;
                        }
                        if (A12[6].charAt(2) == 'j') {
                            A12[2] = "vLWj47sMBzjfYM8dA8bIsPTIXbhrtFDz";
                            this.A0L = null;
                            return;
                        }
                    }
                }
                throw new RuntimeException();
            }
            throw A1S(e, this.A0g, 4001);
        }
    }

    public void A1q(long j) {
    }

    @MetaExoPlayerCustomization
    public void A1r(VC vc) {
    }

    public void A1s(VC vc) throws AnonymousClass96 {
        A1r(vc);
        VC vc2 = this.A0g;
        this.A0g = vc;
        if (!N1.A1E(this.A0g.A0O, vc2 == null ? null : vc2.A0O)) {
            if (this.A0g.A0O == null) {
                this.A0E = null;
            } else {
                if (this.A0r == null) {
                    throw A1S(new C1801Op(A0x(186, 34, 84)), this.A0g, 4005);
                }
                this.A0E = this.A0r.A3Y(null, this.A0g);
                if (this.A0E == this.A0D) {
                    this.A0E.AIq(null);
                }
            }
        }
        boolean z = false;
        if (this.A0E == this.A0D && this.A0F != null) {
            switch (A1g(this.A0F, this.A0G, vc2, this.A0g)) {
                case 0:
                    break;
                case 1:
                    z = true;
                    break;
                case 2:
                default:
                    throw new IllegalStateException();
                case 3:
                    z = true;
                    this.A0W = true;
                    this.A03 = 1;
                    this.A0M = this.A02 == 2 || (this.A02 == 1 && this.A0g.A0L == vc2.A0L && this.A0g.A0A == vc2.A0A);
                    break;
            }
        }
        if (z) {
            return;
        }
        this.A0L = null;
        if (this.A0U) {
            this.A04 = 1;
        } else {
            A1n();
            A1p();
        }
    }

    public void A1t(VC vc) throws AnonymousClass96 {
    }

    public abstract void A1u(T2 t2);

    public abstract void A1v(@MetaExoPlayerCustomization InterfaceC1891Sn interfaceC1891Sn, MediaFormat mediaFormat) throws AnonymousClass96;

    public abstract void A1w(C1894Sq c1894Sq, InterfaceC1891Sn interfaceC1891Sn, VC vc, MediaCrypto mediaCrypto) throws TK;

    @MetaExoPlayerCustomization
    public abstract void A1x(String str);

    public abstract void A1y(String str, long j, long j2);

    public void A1z(String str, VC vc) throws AnonymousClass96 {
        A1t(vc);
    }

    public boolean A20() {
        return false;
    }

    public final boolean A21() {
        return A24(this.A0g);
    }

    public abstract boolean A22();

    public abstract boolean A23(long j, long j2, InterfaceC1891Sn interfaceC1891Sn, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z, boolean z2) throws AnonymousClass96;

    public final boolean A24(VC vc) {
        if (vc == null || !this.A0k || !A0x(838, 10, 78).equalsIgnoreCase(vc.A0W)) {
            return false;
        }
        if (A12[4].length() == 13) {
            throw new RuntimeException();
        }
        String[] strArr = A12;
        strArr[1] = "WW4M6JFpQeSHvLGUIeAfBchuKJcghMA7";
        strArr[0] = "aHC61ch6l6BR32SISMY8ucxktTHOBS9P";
        return true;
    }

    public boolean A25(C1894Sq c1894Sq) {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1884Sg
    public boolean AB7() {
        return this.A0a;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1884Sg
    @MetaExoPlayerCustomization
    public boolean ABM() {
        if (this.A0g == null) {
            EnumC2022Xz enumC2022Xz = EnumC2022Xz.A07;
            if (A12[6].charAt(2) != 'j') {
                throw new RuntimeException();
            }
            A12[4] = "cxwUJfXAxB7onBQ";
            super.A0B = enumC2022Xz;
        } else if (this.A0e) {
            super.A0B = EnumC2022Xz.A0A;
        } else if (!A1d() && !A1B()) {
            super.A0B = EnumC2022Xz.A06;
        }
        return (this.A0g == null || this.A0e || (!A1d() && !A1B() && (this.A07 == -9223372036854775807L || SystemClock.elapsedRealtime() >= this.A07))) ? false : true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1884Sg
    public void AJo(long j, long j2) throws AnonymousClass96 {
        if (this.A0a) {
            A1o();
            return;
        }
        VC vc = this.A0g;
        String[] strArr = A12;
        if (strArr[7].length() == strArr[3].length()) {
            throw new RuntimeException();
        }
        A12[4] = "hFMqINAGYBoRSJrHCZ0N5Kegl";
        if (vc != null || A1C(2)) {
            A1p();
            if (this.A0F != null) {
                try {
                    try {
                        AbstractC1753Mt.A02(A0x(727, 12, 114));
                        while (A1E(j, j2)) {
                        }
                        while (A1A()) {
                        }
                        this.A08 = -9223372036854775807L;
                    } catch (IllegalStateException e) {
                        if (!A19()) {
                            throw A1S(e, this.A0g, 4003);
                        }
                    }
                    AbstractC1753Mt.A00();
                } catch (Throwable th) {
                    AbstractC1753Mt.A00();
                    throw th;
                }
            } else {
                this.A0h.A0A += A1Q(j);
                A1C(1);
            }
            this.A0h.A02();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1813Pe
    public final int ALf(VC vc) throws AnonymousClass96 {
        try {
            return A1h(this.A0s, this.A0r, vc);
        } catch (TK e) {
            throw A1S(e, vc, 4002);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass97, com.facebook.ads.redexgen.X.InterfaceC1813Pe
    public final int ALh() {
        return 8;
    }
}
