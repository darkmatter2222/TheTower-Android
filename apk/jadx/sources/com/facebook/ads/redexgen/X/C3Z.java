package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3Z, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3Z extends C4H implements InterfaceC1809Ox {
    public static byte[] A0J;
    public static String[] A0K = {"dJ1YV3jThjOwmigxZfa0WIEeV1TCs5d", "hQKoR2s3XjG2tZwsIwpqT2xBbm3fjsKt", "xiXXnVe2lpGRoK7OeNWdVisEgpez07tP", "LSwr", "ihVCdHgoZFWIWG03j", "mJMbvy0sGnDWHltuIsS6w9lBBRVC4B86", "ZAPRWjlsGBrRu8ymN", "xuGgiynb"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public long A04;
    public long A05;
    public MediaFormat A06;
    public VC A07;
    public PW A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public boolean A0D;
    public final Context A0E;
    public final C1829Qd A0F;
    public final boolean A0G;
    public final boolean A0H;
    public final InterfaceC1840Qo A0I;

    static {
        A09();
    }

    public C3Z(Context context, C2001Xc c2001Xc, C2004Xf c2004Xf, TG tg, InterfaceC1872Ru interfaceC1872Ru, boolean z, boolean z2, boolean z3, Handler handler, InterfaceC1830Qe interfaceC1830Qe, QG qg, LZ... lzArr) {
        this(context, c2001Xc, c2004Xf, tg, interfaceC1872Ru, z, z2, z3, handler, interfaceC1830Qe, new SI(qg, lzArr));
    }

    public C3Z(Context context, C2001Xc c2001Xc, C2004Xf c2004Xf, TG tg, InterfaceC1872Ru interfaceC1872Ru, boolean z, boolean z2, boolean z3, Handler handler, InterfaceC1830Qe interfaceC1830Qe, InterfaceC1840Qo interfaceC1840Qo) {
        super(1, c2001Xc, c2004Xf, tg, interfaceC1872Ru, z, false, 0, 0);
        this.A01 = 0;
        this.A02 = 0;
        this.A05 = 0L;
        this.A0E = context.getApplicationContext();
        this.A0I = interfaceC1840Qo;
        this.A0G = z2;
        this.A0H = z3;
        this.A0F = new C1829Qd(handler, interfaceC1830Qe);
        interfaceC1840Qo.AKn(new SG(this));
        interfaceC1840Qo.AKi(c2001Xc.A0E);
    }

    @MetaExoPlayerCustomization
    private int A00() {
        return this.A0z.A0I ? YE.A00(this.A0z.A03, this.A0z.A04, this.A0z.A05) : this.A0z.A09;
    }

    public static int A01(VC vc) {
        if (A07(99, 9, 120).equals(vc.A0W)) {
            return vc.A0C;
        }
        return 2;
    }

    private int A02(C1894Sq c1894Sq, VC vc) {
        if (!A07(38, 22, 67).equals(c1894Sq.A03) || N1.A02 >= 24 || (N1.A02 == 23 && N1.A18(this.A0E))) {
            return vc.A0B;
        }
        return -1;
    }

    private final int A03(C1894Sq c1894Sq, VC vc, VC[] vcArr) {
        return A02(c1894Sq, vc);
    }

    private final MediaFormat A04(VC vc, String str, int i) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString(A07(150, 4, 46), str);
        mediaFormat.setInteger(A07(108, 13, 2), vc.A06);
        mediaFormat.setInteger(A07(172, 11, 7), vc.A0G);
        MX.A06(mediaFormat, vc.A0X);
        MX.A04(mediaFormat, A07(136, 14, 49), i);
        if (N1.A02 >= 23) {
            mediaFormat.setInteger(A07(164, 8, 108), 0);
        }
        if (vc.A0R != null && vc.A0R.equals(A07(154, 10, 96)) && this.A0z.A0J) {
            mediaFormat.setInteger(A07(60, 19, 15), A00());
            mediaFormat.setInteger(A07(79, 20, 24), this.A0z.A0A);
        }
        return mediaFormat;
    }

    public static /* synthetic */ PW A05(C3Z c3z) {
        return null;
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0J, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 83);
        }
        return new String(bArrCopyOfRange);
    }

    private void A08() {
        long jA8G = this.A0I.A8G(AB7());
        if (jA8G != Long.MIN_VALUE) {
            if (!this.A0A) {
                jA8G = Math.max(this.A04, jA8G);
            }
            this.A04 = jA8G;
            this.A0A = false;
        }
    }

    public static void A09() {
        A0J = new byte[]{98, 74, 75, 70, 78, 108, SignedBytes.MAX_POWER_OF_TWO, 75, 74, 76, 110, 90, 75, 70, SignedBytes.MAX_POWER_OF_TWO, 125, 74, 65, 75, 74, 93, 74, 93, 116, 118, 99, Ascii.NAK, 104, 126, 120, Ascii.NAK, 90, 90, 88, Ascii.NAK, 95, 94, 88, 95, 93, 72, 62, 119, 127, 127, 119, 124, 117, 62, 98, 113, 103, 62, 116, 117, 115, 127, 116, 117, 98, Base64.padSymbol, Base64.padSymbol, 63, 113, 56, 46, 63, 113, 57, 58, 58, 57, 63, 40, 113, 40, 37, 44, 57, 42, 42, 40, 102, 63, 42, 57, 44, 46, 63, 102, 57, 46, 45, 102, 39, 46, Base64.padSymbol, 46, 39, 74, 94, 79, 66, 68, 4, 89, 74, 92, 50, 57, 48, 63, 63, 52, Base64.padSymbol, 124, 50, 62, 36, 63, 37, Ascii.ETB, Ascii.SUB, Ascii.CR, Ascii.DLE, 19, Ascii.VT, Ascii.SUB, 113, 124, 107, 118, 104, 117, 109, 124, Ascii.SI, 3, Ascii.SUB, 79, Ascii.VT, Ascii.FF, Ascii.DC2, Ascii.ETB, Ascii.SYN, 79, 17, Ascii.VT, Ascii.CAN, 7, Ascii.DLE, Ascii.DC4, Ascii.DLE, Ascii.CAN, 94, 67, 7, 82, Ascii.GS, 7, 3, Ascii.GS, 7, 1, 79, 77, 86, 80, 77, 86, 75, 70, 39, 53, 57, 36, 56, 49, 121, 38, 53, 32, 49, 98, 112, 124, 98, 100, 127, 118, 115, 108, 123, 102, 111, 101, 125, 108};
    }

    private boolean A0A(VC vc) {
        if (A07(99, 9, 120).equals(vc.A0W)) {
            return false;
        }
        return this.A0I.ALg(vc);
    }

    public static boolean A0B(String str) {
        if (N1.A02 < 24 && A07(23, 15, 104).equals(str)) {
            if (A07(183, 7, 66).equals(N1.A05) && (N1.A03.startsWith(A07(190, 8, 90)) || N1.A03.startsWith(A07(121, 7, 44)) || N1.A03.startsWith(A07(128, 8, 74)))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.AnonymousClass97
    public final void A1X() {
        super.A1X();
        this.A0I.AID();
    }

    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.AnonymousClass97
    public final void A1Y() {
        A08();
        this.A0I.pause();
        super.A1Y();
    }

    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.AnonymousClass97
    public final void A1Z() {
        try {
            this.A0I.flush();
            try {
                super.A1Z();
            } finally {
                this.A0h.A02();
                this.A0F.A07(this.A0h);
            }
        } catch (Throwable th) {
            try {
                super.A1Z();
                throw th;
            } finally {
                this.A0h.A02();
                this.A0F.A07(this.A0h);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.AnonymousClass97
    public final void A1a(long j, boolean z) throws AnonymousClass96 {
        super.A1a(j, z);
        if (this.A0C) {
            this.A0I.A72();
        } else {
            this.A0I.flush();
        }
        this.A04 = j;
        this.A09 = true;
        this.A0A = true;
    }

    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.AnonymousClass97
    public final void A1b(boolean z, boolean z2) throws AnonymousClass96 {
        super.A1b(z, z2);
        this.A0F.A08(this.A0h);
        if (A1V().A00) {
            this.A0I.A6v();
        } else {
            this.A0I.A6Y();
        }
        this.A0I.AKy(A1W());
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final int A1g(InterfaceC1891Sn interfaceC1891Sn, C1894Sq c1894Sq, VC vc, VC vc2) {
        return (this.A0z.A0U && A02(c1894Sq, vc2) <= this.A00 && c1894Sq.A0U(vc, vc2, true) && vc.A08 == 0 && vc.A09 == 0 && vc2.A08 == 0 && vc2.A09 == 0) ? 1 : 0;
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final int A1h(TG tg, InterfaceC1872Ru interfaceC1872Ru, VC vc) throws TK {
        String str = vc.A0W;
        boolean z = false;
        if (!L8.A0C(str)) {
            return 0;
        }
        int i = N1.A02 >= 21 ? 32 : 0;
        boolean zA1G = C4H.A1G(vc);
        if (zA1G && A0A(vc) && TN.A0I() != null) {
            return i | 8 | 4;
        }
        if ((A07(99, 9, 120).equals(str) && !this.A0I.ALi(vc.A06, vc.A0C)) || !this.A0I.ALi(vc.A06, 2)) {
            return 1;
        }
        List<C1894Sq> listA1l = A1l(tg, vc, false);
        if (listA1l.isEmpty()) {
            return PX.A00(1);
        }
        if (!zA1G) {
            return PX.A00(2);
        }
        C1894Sq c1894Sq = listA1l.get(0);
        if (N1.A02 < 21 || ((vc.A0G == -1 || c1894Sq.A0Q(vc.A0G)) && (vc.A06 == -1 || c1894Sq.A0P(vc.A06)))) {
            z = true;
        }
        return ((z && c1894Sq.A0T(vc)) ? 16 : 8) | i | (z ? 4 : 3);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003b  */
    /* JADX WARN: Code duplicated, block: B:15:0x0041  */
    /* JADX WARN: Code duplicated, block: B:17:0x0052  */
    /* JADX WARN: Code duplicated, block: B:22:0x0064  */
    @Override // com.facebook.ads.redexgen.X.C4H
    public final List<C1894Sq> A1l(TG tg, VC vc, boolean z) throws TK {
        C1894Sq c1894SqA0I;
        List<C1894Sq> listSingletonList;
        if (vc.A0W == null) {
            List<C1894Sq> listEmptyList = Collections.emptyList();
            String[] strArr = A0K;
            if (strArr[4].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            A0K[7] = "Pcas";
            return listEmptyList;
        }
        boolean zA0A = A0A(vc);
        if (A0K[0].length() == 31) {
            A0K[7] = "JffLfi0vHy3seiOp3go0b68";
            if (zA0A) {
                c1894SqA0I = TN.A0I();
                if (c1894SqA0I != null) {
                    listSingletonList = Collections.singletonList(c1894SqA0I);
                    if (A0K[3].length() != 19) {
                        A0K[0] = "wzAq8m9B4I3i9ifDjepFX8ivHYW1Clz";
                        return listSingletonList;
                    }
                    String[] strArr2 = A0K;
                    strArr2[2] = "SdIYnzIVnDGBOVLyaHZ6DsfwYGmLymel";
                    strArr2[1] = "h3QOruHZ6rG9P1RQjfureWnYKyouTutT";
                    return listSingletonList;
                }
            }
        } else if (zA0A) {
            c1894SqA0I = TN.A0I();
            if (c1894SqA0I != null) {
                listSingletonList = Collections.singletonList(c1894SqA0I);
                if (A0K[3].length() != 19) {
                    A0K[0] = "wzAq8m9B4I3i9ifDjepFX8ivHYW1Clz";
                    return listSingletonList;
                }
                String[] strArr3 = A0K;
                strArr3[2] = "SdIYnzIVnDGBOVLyaHZ6DsfwYGmLymel";
                strArr3[1] = "h3QOruHZ6rG9P1RQjfureWnYKyouTutT";
                return listSingletonList;
            }
        }
        return Collections.unmodifiableList(tg.A8P(vc.A0W, z, false));
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final void A1o() throws AnonymousClass96 {
        try {
            this.A0I.AIF();
        } catch (C1839Qn e) {
            throw A1T(e, e.A01, e.A02, IronSourceConstants.errorCode_isReadyException);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final void A1s(VC vc) throws AnonymousClass96 {
        super.A1s(vc);
        this.A07 = vc;
        this.A0F.A05(this.A07, null);
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final void A1u(T2 t2) {
        if (!this.A09 || t2.A04()) {
            return;
        }
        long j = t2.A01;
        if (A0K[0].length() == 31) {
            String[] strArr = A0K;
            strArr[2] = "SvawHhH1x8GbPGYUd1Y93MPn0ACiLicP";
            strArr[1] = "6uHIbcitojGzvCSlo3fyQ1WMRiEqRzHo";
            if (Math.abs(j - this.A04) > 500000) {
                long j2 = t2.A01;
                String[] strArr2 = A0K;
                if (strArr2[4].length() == strArr2[6].length()) {
                    String[] strArr3 = A0K;
                    strArr3[2] = "17kJanhEdfGiqUZJVBg8atWLh4Sw2avR";
                    strArr3[1] = "vy2AT52lYTGJeQ2NFQyQo8ExJNUAUNN6";
                    this.A04 = j2;
                }
            }
            if (A0K[7].length() == 24) {
                throw new RuntimeException();
            }
            A0K[7] = "8wBdcseJYz9EbvVXqSDskBqQX";
            this.A09 = false;
            return;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final void A1v(InterfaceC1891Sn interfaceC1891Sn, MediaFormat mediaFormat) throws AnonymousClass96 {
        int iA01;
        MediaFormat mediaFormat2;
        int[] iArr;
        if (this.A06 != null) {
            iA01 = L8.A00(this.A06.getString(A07(150, 4, 46)));
            mediaFormat2 = this.A06;
        } else {
            iA01 = A01(this.A07);
            mediaFormat2 = mediaFormat;
        }
        String strA07 = A07(108, 13, 2);
        int integer = mediaFormat2.getInteger(strA07);
        String strA08 = A07(172, 11, 7);
        this.A03 = mediaFormat2.getInteger(strA08) * integer;
        if (this.A0B && integer == 6 && this.A07.A06 < 6) {
            iArr = new int[this.A07.A06];
            for (int i = 0; i < this.A07.A06; i++) {
                iArr[i] = i;
            }
        } else {
            iArr = null;
        }
        try {
            this.A0I.A5i(new C1689Ke().A11(A07(99, 9, 120)).A0i(iA01).A0b(mediaFormat.getInteger(strA07)).A0m(mediaFormat.getInteger(strA08)).A14(), 0, iArr);
        } catch (C1833Qh e) {
            throw A1S(e, e.A00, IronSourceConstants.errorCode_biddingDataException);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final void A1w(C1894Sq c1894Sq, InterfaceC1891Sn interfaceC1891Sn, VC vc, MediaCrypto mediaCrypto) {
        this.A00 = A03(c1894Sq, vc, A1e());
        this.A0B = A0B(c1894Sq.A03);
        String str = c1894Sq.A02;
        String strA07 = A07(99, 9, 120);
        this.A0D = strA07.equals(str) && !strA07.equals(vc.A0W);
        MediaFormat mediaFormatA04 = A04(vc, c1894Sq.A01, this.A00);
        interfaceC1891Sn.A5h(mediaFormatA04, null, mediaCrypto, 0, null);
        if (!this.A0D) {
            this.A06 = null;
        } else {
            this.A06 = mediaFormatA04;
            this.A06.setString(A07(150, 4, 46), vc.A0W);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    @MetaExoPlayerCustomization
    public final void A1x(String str) {
        this.A0F.A0F(str);
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    public final void A1y(String str, long j, long j2) {
        this.A0F.A0G(str, j, j2);
    }

    @Override // com.facebook.ads.redexgen.X.C4H
    @MetaExoPlayerCustomization
    public final boolean A22() {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x008a  */
    /* JADX WARN: Code duplicated, block: B:31:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:38:0x00fd  */
    @Override // com.facebook.ads.redexgen.X.C4H
    public final boolean A23(long j, long j2, InterfaceC1891Sn interfaceC1891Sn, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z, boolean z2) throws AnonymousClass96 {
        int iPosition;
        int iLimit;
        if (this.A0D && (i2 & 2) != 0) {
            interfaceC1891Sn.AIw(i, false);
            String[] strArr = A0K;
            if (strArr[2].charAt(10) == strArr[1].charAt(10)) {
                A0K[7] = "SOFul";
                return true;
            }
        } else {
            if (!z) {
                if (this.A0H) {
                    int iA01 = A01(this.A07);
                    if (A0K[0].length() != 31) {
                        String[] strArr2 = A0K;
                        strArr2[4] = "0sbBAAcGvWGKMA8r4";
                        strArr2[6] = "5rO2opBK86KQihg1G";
                        if (iA01 == 2) {
                            if (i2 == 0 && this.A03 > 0 && byteBuffer.limit() - byteBuffer.position() >= 12) {
                                iPosition = byteBuffer.position();
                                iLimit = byteBuffer.limit();
                                if (A0K[0].length() != 31) {
                                    throw new RuntimeException();
                                }
                                A0K[5] = "T4Ha6vahPkn7JLf1kooUxHz23Qk1EB7y";
                                byteBuffer.position(10);
                                short s = byteBuffer.getShort();
                                byteBuffer.position(iPosition);
                                byteBuffer.limit(iLimit);
                                this.A01 += byteBuffer.limit() - byteBuffer.position();
                                this.A02++;
                                this.A05 += (long) Math.abs((int) s);
                                if (this.A01 >= this.A03 * 2) {
                                    this.A0F.A00((int) (this.A05 / ((long) this.A02)));
                                    this.A01 = 0;
                                    this.A02 = 0;
                                    this.A05 = 0L;
                                }
                            }
                        }
                    } else {
                        A0K[5] = "DybQt325eBIiRLQUNvPK7uVyMMMzVB4X";
                        if (iA01 == 2) {
                            if (i2 == 0) {
                                iPosition = byteBuffer.position();
                                iLimit = byteBuffer.limit();
                                if (A0K[0].length() != 31) {
                                    throw new RuntimeException();
                                }
                                A0K[5] = "T4Ha6vahPkn7JLf1kooUxHz23Qk1EB7y";
                                byteBuffer.position(10);
                                short s2 = byteBuffer.getShort();
                                byteBuffer.position(iPosition);
                                byteBuffer.limit(iLimit);
                                this.A01 += byteBuffer.limit() - byteBuffer.position();
                                this.A02++;
                                this.A05 += (long) Math.abs((int) s2);
                                if (this.A01 >= this.A03 * 2) {
                                    this.A0F.A00((int) (this.A05 / ((long) this.A02)));
                                    this.A01 = 0;
                                    this.A02 = 0;
                                    this.A05 = 0L;
                                }
                            }
                        }
                    }
                }
                if (this.A0G && byteBuffer.limit() > byteBuffer.position()) {
                    int iPosition2 = byteBuffer.position();
                    int iLimit2 = byteBuffer.limit();
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(iLimit2 - iPosition2);
                    byteBufferAllocate.put(byteBuffer);
                    byteBufferAllocate.flip();
                    byteBuffer.position(iPosition2);
                    byteBuffer.limit(iLimit2);
                    C1829Qd c1829Qd = this.A0F;
                    byte[] bArrArray = byteBufferAllocate.array();
                    long j4 = j3 / 1000;
                    if (A0K[5].charAt(29) != 'B') {
                        String[] strArr3 = A0K;
                        strArr3[4] = "j1VYMrRVdKYDgwGLl";
                        strArr3[6] = "b8eXuv6yHVusngmMs";
                        c1829Qd.A0K(bArrArray, j4);
                    } else {
                        A0K[0] = "goZfJfG4UP4V3eYdjCcrhPCvumv5bJg";
                        c1829Qd.A0K(bArrArray, j4);
                    }
                }
                try {
                    if (!this.A0I.AAI(byteBuffer, j3, 1)) {
                        return false;
                    }
                    interfaceC1891Sn.AIw(i, false);
                    this.A0h.A09++;
                    return true;
                } catch (C1834Qi e) {
                    throw A1T(e, this.A07, e.A02, IronSourceConstants.errorCode_biddingDataException);
                } catch (C1839Qn e2) {
                    throw A1T(e2, this.A0g, e2.A02, IronSourceConstants.errorCode_isReadyException);
                }
            }
            interfaceC1891Sn.AIw(i, false);
            this.A0h.A0B++;
            InterfaceC1840Qo interfaceC1840Qo = this.A0I;
            String[] strArr4 = A0K;
            if (strArr4[2].charAt(10) == strArr4[1].charAt(10)) {
                A0K[7] = "dm9Z";
                interfaceC1840Qo.AAL();
                return true;
            }
        }
        throw new RuntimeException();
    }

    public final void A26() {
        this.A0A = true;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass97, com.facebook.ads.redexgen.X.InterfaceC1884Sg
    public final InterfaceC1809Ox A95() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1809Ox
    public final UW A9P() {
        return this.A0I.A9P();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1809Ox
    public final long A9S() {
        if (A9n() == 2) {
            A08();
        }
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass97, com.facebook.ads.redexgen.X.PR
    public final void AAM(int i, Object obj) throws AnonymousClass96 {
        switch (i) {
            case 2:
                this.A0I.setVolume(((Float) obj).floatValue());
                break;
            case 3:
                this.A0I.AKY((VL) obj);
                break;
            case 4:
            case 5:
            case 7:
            case 8:
            default:
                super.AAM(i, obj);
                break;
            case 6:
                this.A0I.AKa((C1675Jq) obj);
                break;
            case 9:
                this.A0I.AL6(((Boolean) obj).booleanValue());
                break;
            case 10:
                this.A0I.AKZ(((Integer) obj).intValue());
                break;
            case 11:
                this.A08 = null;
                break;
            case 12:
                if (N1.A02 >= 23) {
                    RG.A00(this.A0I, obj);
                }
                break;
        }
    }

    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.InterfaceC1884Sg
    public final boolean AB7() {
        return super.AB7() && this.A0I.AB7();
    }

    @Override // com.facebook.ads.redexgen.X.C4H, com.facebook.ads.redexgen.X.InterfaceC1884Sg
    public final boolean ABM() {
        return this.A0I.AAS() || super.ABM();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1809Ox
    public final void AKv(UW uw) {
        this.A0I.AKv(uw);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1884Sg, com.facebook.ads.redexgen.X.InterfaceC1813Pe
    public final String getName() {
        return A07(0, 23, 124);
    }
}
