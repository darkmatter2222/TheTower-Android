package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.util.Log;
import com.facebook.ads.AdError;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7y, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C13927y implements TE {
    public static byte[] A0M;
    public static String[] A0N = {"EODIHkgA2ZyrIgnLGnp0dpS4o2nJxdd", "WQo", "GliZIkNeiCnyTXys850SVrhp4KurKCVm", "6oWQL2d3pXYFDFwkyJzEliAr3yK7LktZ", "mstNtXyga4JetAb1MMzdB19HSEn7nvfv", "1tgZmsf1cc3q2ZPragL47xg7EPzshINt", "vZm65Fq1JHlbcWfmwU5AQjRPykSJkysz", "BT6lEJ7JTAeLRZHkfDUXugVZieTM5hq"};
    public long A00;
    public long A01;
    public long A02;
    public long A03;
    public long A04;
    public Uri A05;
    public TE A06;
    public NX A07;
    public NX A08;

    @MetaExoPlayerCustomization
    public C2327e7 A09;
    public C2341eL A0A;
    public boolean A0B;
    public boolean A0C;
    public final TE A0D;
    public final TE A0E;
    public final TE A0F;
    public final InterfaceC2331eB A0G;
    public final InterfaceC2334eE A0H;
    public final InterfaceC2340eK A0I;
    public final boolean A0J;
    public final boolean A0K;
    public final boolean A0L;

    static {
        A05();
    }

    public C13927y(InterfaceC2331eB interfaceC2331eB, final TE te, TE te2, final NL nl, InterfaceC2340eK interfaceC2340eK, int i, final LS ls, final int i2, InterfaceC2334eE interfaceC2334eE) {
        this.A0G = interfaceC2331eB;
        this.A0D = te2;
        this.A0I = interfaceC2340eK == null ? InterfaceC2340eK.A00 : interfaceC2340eK;
        this.A0J = (i & 1) != 0;
        this.A0L = (i & 2) != 0;
        this.A0K = (i & 4) != 0;
        if (te != null) {
            te = ls != null ? new TE(te, ls, i2) { // from class: com.facebook.ads.redexgen.X.9A
                public static byte[] A03;
                public static String[] A04 = {"fi42VJOcvh6gHZK2DTPtDLqKKJ6VNkoR", "48gk7M", "6L6spAAwpgwWYSE0", "d4FLyAPw7CK6GF6vAtSemAxDbucATq9m", "bvhFcp", "6GnnHW3XSw", "yktXoX", "ep06XeFGBv"};
                public final int A00;
                public final LS A01;
                public final TE A02;

                static {
                    A01();
                }

                {
                    this.A02 = (TE) AbstractC1722Ln.A01(te);
                    AbstractC1722Ln.A01(ls);
                    this.A01 = null;
                    this.A00 = i2;
                }

                public static String A00(int i3, int i4, int i5) {
                    byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i3, i3 + i4);
                    int i6 = 0;
                    while (true) {
                        int length = bArrCopyOfRange.length;
                        if (A04[3].charAt(7) == 'J') {
                            throw new RuntimeException();
                        }
                        String[] strArr = A04;
                        strArr[7] = "vffMbrqZhi";
                        strArr[5] = "OYF6OnDYEA";
                        if (i6 >= length) {
                            return new String(bArrCopyOfRange);
                        }
                        bArrCopyOfRange[i6] = (byte) ((bArrCopyOfRange[i6] ^ i5) ^ 8);
                        i6++;
                    }
                }

                public static void A01() {
                    A03 = new byte[]{33, 35, 62, 50, 52, 52, 53, Ascii.RS, 35, 5, 57, 35, 62, 38};
                }

                @Override // com.facebook.ads.redexgen.X.TE
                public final void A4T(InterfaceC1768Ni interfaceC1768Ni) {
                    AbstractC1722Ln.A01(interfaceC1768Ni);
                    this.A02.A4T(interfaceC1768Ni);
                }

                @Override // com.facebook.ads.redexgen.X.TE
                public final Map<String, List<String>> A9W() {
                    return this.A02.A9W();
                }

                @Override // com.facebook.ads.redexgen.X.TE
                public final Uri AA2() {
                    return this.A02.AA2();
                }

                @Override // com.facebook.ads.redexgen.X.TE
                public final long AHv(NX nx) throws IOException {
                    throw new NullPointerException(A00(0, 14, 89));
                }

                @Override // com.facebook.ads.redexgen.X.TE
                public final void close() throws IOException {
                    this.A02.close();
                }

                @Override // com.facebook.ads.redexgen.X.KR
                public final int read(byte[] bArr, int i3, int i4) throws IOException {
                    throw new NullPointerException(A00(0, 14, 89));
                }
            } : te;
            this.A0F = te;
            this.A0E = nl != null ? new TE(te, nl) { // from class: com.facebook.ads.redexgen.X.98
                public static String[] A04 = {"UJHVwBYxPEVBKbkCLrBMcLtCT6WuZcAu", "JGdCep40AY2ra8A5tRqCMSkWjrTrM01Y", "jpmm8WTAjiaT6F1GW", "hCOCNPdYrQe6i9Dr4VlHJtZD0QWRqRvI", "UM18O6ty1otoSDqmzVN25H8CnUfpg3Id", "liOUxUbxSG7kHzPVcyH04AFcb3RIHNnN", "83qHFCna6vZvrK3QM6kBLRxUZ4hvrfyz", "80YJwI2nBCNK3O4CL"};
                public long A00;
                public boolean A01;
                public final NL A02;
                public final TE A03;

                {
                    this.A03 = (TE) AbstractC1722Ln.A01(te);
                    this.A02 = (NL) AbstractC1722Ln.A01(nl);
                }

                @Override // com.facebook.ads.redexgen.X.TE
                public final void A4T(InterfaceC1768Ni interfaceC1768Ni) {
                    AbstractC1722Ln.A01(interfaceC1768Ni);
                    this.A03.A4T(interfaceC1768Ni);
                }

                @Override // com.facebook.ads.redexgen.X.TE
                public final Map<String, List<String>> A9W() {
                    return this.A03.A9W();
                }

                @Override // com.facebook.ads.redexgen.X.TE
                public final Uri AA2() {
                    return this.A03.AA2();
                }

                @Override // com.facebook.ads.redexgen.X.TE
                public final long AHv(NX nx) throws IOException {
                    this.A00 = this.A03.AHv(nx);
                    if (this.A00 == 0) {
                        return 0L;
                    }
                    if (nx.A03 == -1) {
                        long j = this.A00;
                        if (A04[6].charAt(14) == 's') {
                            throw new RuntimeException();
                        }
                        String[] strArr = A04;
                        strArr[5] = "TpcC34pmvpLXayexhoYKr45IxXzse8Ke";
                        strArr[0] = "xYCJnhqVgzWyWEoMI8eoYFyWKlfa4Hwu";
                        if (j != -1) {
                            nx = nx.A05(0L, this.A00);
                        }
                    }
                    this.A01 = true;
                    this.A02.AHx(nx);
                    return this.A00;
                }

                @Override // com.facebook.ads.redexgen.X.TE
                public final void close() throws IOException {
                    try {
                        this.A03.close();
                        boolean z = this.A01;
                        String[] strArr = A04;
                        if (strArr[4].charAt(17) != strArr[3].charAt(17)) {
                            throw new RuntimeException();
                        }
                        String[] strArr2 = A04;
                        strArr2[7] = "Q3XntvrUZwdHLkhNL";
                        strArr2[2] = "I621lVCee7gkMKd4D";
                        if (z) {
                            this.A01 = false;
                            this.A02.close();
                        }
                    } catch (Throwable th) {
                        if (this.A01) {
                            this.A01 = false;
                            this.A02.close();
                        }
                        throw th;
                    }
                }

                @Override // com.facebook.ads.redexgen.X.KR
                public final int read(byte[] bArr, int i3, int i4) throws IOException {
                    if (this.A00 == 0) {
                        return -1;
                    }
                    TE te3 = this.A03;
                    if (A04[6].charAt(14) == 's') {
                        throw new RuntimeException();
                    }
                    String[] strArr = A04;
                    strArr[5] = "2c3CIpWyvIGDnm7MoZsVV0a27dM3iQpB";
                    strArr[0] = "mK1vyJexEQCNSP1Qdv3UbXCFrYuSPrXM";
                    int i5 = te3.read(bArr, i3, i4);
                    if (i5 > 0) {
                        this.A02.write(bArr, i3, i5);
                        if (this.A00 != -1) {
                            this.A00 -= (long) i5;
                        }
                    }
                    return i5;
                }
            } : null;
        } else {
            this.A0F = C9B.A02;
            this.A0E = null;
        }
        this.A0H = interfaceC2334eE;
    }

    private int A00(NX nx) {
        if (this.A0L && this.A0C) {
            return 0;
        }
        if (!this.A0K || nx.A03 != -1) {
            return -1;
        }
        if (A0N[2].charAt(18) != '0') {
            throw new RuntimeException();
        }
        A0N[2] = "W4c5ltPVk8tlmclkH20KnHifTbatFjEL";
        return 1;
    }

    public static Uri A01(InterfaceC2331eB interfaceC2331eB, String str, Uri uri) {
        Uri uriA01 = AbstractC2351eV.A01(interfaceC2331eB.A83(str));
        return uriA01 != null ? uriA01 : uri;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0M, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 25);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void A03() throws IOException {
        if (this.A06 == null) {
            return;
        }
        try {
            this.A06.close();
        } finally {
            this.A07 = null;
            this.A06 = null;
            if (this.A0A != null) {
                this.A0G.AIu(this.A0A);
                this.A0A = null;
            }
        }
    }

    private void A04() {
        if (0 == 0 || this.A04 <= 0) {
            return;
        }
        this.A0G.A7k();
        throw new NullPointerException(A02(103, 17, 123));
    }

    public static void A05() {
        A0M = new byte[]{Ascii.NAK, 55, 53, 62, 51, Ascii.DC2, 55, 34, 55, 5, 57, 35, 36, 53, 51, Ascii.RS, 50, 40, 49, 57, 51, 122, 41, 125, 40, 45, 57, 60, 41, 56, 125, 47, 56, 57, 52, 47, 56, 62, 41, 56, 57, 125, 8, Ascii.SI, Ascii.DC4, 115, 125, 9, 53, 52, 46, 125, 48, 52, 58, 53, 41, 125, 62, 60, 40, 46, 56, 125, 47, 56, 49, 60, 41, 52, 43, 56, 125, 8, Ascii.SI, Ascii.DC4, 46, 125, 58, 56, 41, 125, 47, 56, 46, 50, 49, 43, 56, 57, 125, 52, 51, 62, 50, 47, 47, 56, 62, 41, 49, 36, 115, Ascii.CR, Ascii.FF, 33, 3, 1, 10, 7, 6, 32, Ascii.ESC, Ascii.SYN, 7, 17, 48, 7, 3, 6};
    }

    /* JADX WARN: Code duplicated, block: B:66:0x019a  */
    /* JADX WARN: Code duplicated, block: B:68:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:72:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:74:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:77:0x01d7  */
    @MetaExoPlayerCustomization
    private void A06(NX nx, boolean z, boolean z2) throws IOException {
        C2341eL c2341eLALT;
        long jMin;
        NX nxA09;
        TE te;
        long jAHv;
        C2353eX c2353eX;
        boolean zA0D;
        Uri uri;
        String str = (String) N1.A0f(nx.A08);
        EnumC2329e9 enumC2329e9 = z2 ? EnumC2329e9.A02 : EnumC2329e9.A05;
        if (!this.A0B) {
            boolean z3 = this.A0J;
            if (A0N[4].charAt(1) != 'h') {
                String[] strArr = A0N;
                strArr[7] = "JT7saidIq7sqYLRpMzQbt6gHMTzwGQC";
                strArr[0] = "yOLGqMeUmt8xF0b0ejupTLff4oBz1pg";
                if (z3) {
                    try {
                        c2341eLALT = this.A0G.ALT(str, this.A03, this.A00, enumC2329e9);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                } else {
                    str = str;
                    c2341eLALT = this.A0G.ALU(str, this.A03, this.A00, enumC2329e9);
                }
            }
            throw new RuntimeException();
        }
        c2341eLALT = null;
        if (c2341eLALT == null) {
            te = this.A0F;
            nxA09 = nx.A04().A04(this.A03).A03(this.A00).A07(this.A09).A09();
        } else {
            if (c2341eLALT.A05) {
                Uri uriFromFile = Uri.fromFile((File) N1.A0f(c2341eLALT.A03));
                long j = c2341eLALT.A02;
                long j2 = this.A03 - j;
                long jMin2 = c2341eLALT.A01 - j2;
                if (this.A00 != -1) {
                    jMin2 = Math.min(jMin2, this.A00);
                }
                nxA09 = nx.A04().A06(uriFromFile).A05(j).A04(j2).A03(jMin2).A07(this.A09).A09();
                te = this.A0D;
                if (A0N[6].charAt(5) != 'O') {
                    A0N[2] = "7dgnQnYhiJfp8yUJUL04bl6EtBahXoSC";
                }
                throw new RuntimeException();
            }
            if (c2341eLALT.A0C()) {
                jMin = this.A00;
            } else {
                jMin = c2341eLALT.A01;
                if (this.A00 != -1) {
                    jMin = Math.min(jMin, this.A00);
                }
            }
            nxA09 = nx.A04().A04(this.A03).A03(jMin).A07(this.A09).A09();
            if (this.A0E != null) {
                te = this.A0E;
            } else {
                te = this.A0F;
                this.A0G.AIu(c2341eLALT);
                c2341eLALT = null;
            }
        }
        this.A01 = (this.A0B || te != this.A0F) ? Long.MAX_VALUE : this.A03 + 102400;
        if (z) {
            AbstractC1722Ln.A08(A0A());
            if (te == this.A0F) {
                return;
            }
            try {
                A03();
            } catch (Throwable th) {
                if (((C2341eL) N1.A0f(c2341eLALT)).A0B()) {
                    this.A0G.AIu(c2341eLALT);
                }
                throw th;
            }
        }
        if (c2341eLALT != null) {
            boolean zA0B = c2341eLALT.A0B();
            if (A0N[6].charAt(5) != 'O') {
                A0N[2] = "EGh6OH0nAuqmyDhdsz0MXNjXqdUFLTgG";
                if (zA0B) {
                    this.A0A = c2341eLALT;
                }
                this.A06 = te;
                this.A07 = nxA09;
                this.A02 = 0L;
                jAHv = te.AHv(nxA09);
                c2353eX = new C2353eX();
                if (nxA09.A03 == -1 && jAHv != -1) {
                    this.A00 = jAHv;
                    C2353eX.A00(c2353eX, this.A03 + this.A00);
                }
                if (A0C()) {
                    this.A05 = te.AA2();
                    if (!nx.A06.equals(this.A05)) {
                        uri = this.A05;
                    } else {
                        uri = null;
                    }
                    C2353eX.A01(c2353eX, uri);
                }
                zA0D = A0D();
                if (A0N[6].charAt(5) != 'O') {
                    A0N[6] = "QunNUHcgR7Xa5uZxGh7xKDLdVQCZYJKb";
                    if (zA0D) {
                        this.A0G.A4f(str, c2353eX);
                    }
                    A08(str, this.A05);
                    return;
                }
            }
        } else {
            this.A06 = te;
            this.A07 = nxA09;
            this.A02 = 0L;
            jAHv = te.AHv(nxA09);
            c2353eX = new C2353eX();
            if (nxA09.A03 == -1) {
                this.A00 = jAHv;
                C2353eX.A00(c2353eX, this.A03 + this.A00);
            }
            if (A0C()) {
                this.A05 = te.AA2();
                if (!nx.A06.equals(this.A05)) {
                    uri = this.A05;
                } else {
                    uri = null;
                }
                C2353eX.A01(c2353eX, uri);
            }
            zA0D = A0D();
            if (A0N[6].charAt(5) != 'O') {
                A0N[6] = "QunNUHcgR7Xa5uZxGh7xKDLdVQCZYJKb";
                if (zA0D) {
                    this.A0G.A4f(str, c2353eX);
                }
                A08(str, this.A05);
                return;
            }
        }
        throw new RuntimeException();
    }

    private void A07(String str) throws IOException {
        this.A00 = 0L;
        if (A0D()) {
            C2353eX c2353eX = new C2353eX();
            C2353eX.A00(c2353eX, this.A03);
            this.A0G.A4f(str, c2353eX);
        }
    }

    @MetaExoPlayerCustomization
    private void A08(String str, Uri uri) {
        if (A0D()) {
            C2353eX c2353eX = new C2353eX();
            if (!uri.equals(this.A05)) {
                C2353eX.A01(c2353eX, this.A05);
            } else {
                C2353eX.A01(c2353eX, null);
            }
            try {
                this.A0G.A4f(str, c2353eX);
            } catch (C2328e8 e) {
                Log.w(A02(0, 15, 79), A02(15, 88, 68), e);
            }
        }
    }

    private void A09(Throwable th) {
        if (A0B() || (th instanceof C2328e8)) {
            this.A0C = true;
        }
    }

    private boolean A0A() {
        return this.A06 == this.A0F;
    }

    private boolean A0B() {
        return this.A06 == this.A0D;
    }

    private boolean A0C() {
        return !A0B();
    }

    private boolean A0D() {
        return this.A06 == this.A0E;
    }

    public final InterfaceC2331eB A0E() {
        return this.A0G;
    }

    public final InterfaceC2340eK A0F() {
        return this.A0I;
    }

    @Override // com.facebook.ads.redexgen.X.TE
    public final void A4T(InterfaceC1768Ni interfaceC1768Ni) {
        AbstractC1722Ln.A01(interfaceC1768Ni);
        this.A0D.A4T(interfaceC1768Ni);
        this.A0F.A4T(interfaceC1768Ni);
    }

    @Override // com.facebook.ads.redexgen.X.TE
    public final Map<String, List<String>> A9W() {
        return A0C() ? this.A0F.A9W() : Collections.emptyMap();
    }

    @Override // com.facebook.ads.redexgen.X.TE
    public final Uri AA2() {
        return this.A05;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00ea A[Catch: all -> 0x0105, TRY_ENTER, TryCatch #0 {all -> 0x0105, blocks: (B:2:0x0000, B:6:0x0037, B:12:0x0059, B:14:0x006b, B:20:0x008e, B:21:0x0095, B:25:0x009e, B:27:0x00a4, B:29:0x00aa, B:31:0x00b0, B:33:0x00b6, B:34:0x00b8, B:36:0x00bd, B:35:0x00ba, B:46:0x00f0, B:47:0x00f3, B:49:0x00f9, B:50:0x00fc, B:44:0x00ea, B:24:0x009c), top: B:57:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00f9 A[Catch: all -> 0x0105, TryCatch #0 {all -> 0x0105, blocks: (B:2:0x0000, B:6:0x0037, B:12:0x0059, B:14:0x006b, B:20:0x008e, B:21:0x0095, B:25:0x009e, B:27:0x00a4, B:29:0x00aa, B:31:0x00b0, B:33:0x00b6, B:34:0x00b8, B:36:0x00bd, B:35:0x00ba, B:46:0x00f0, B:47:0x00f3, B:49:0x00f9, B:50:0x00fc, B:44:0x00ea, B:24:0x009c), top: B:57:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00fc A[Catch: all -> 0x0105, TryCatch #0 {all -> 0x0105, blocks: (B:2:0x0000, B:6:0x0037, B:12:0x0059, B:14:0x006b, B:20:0x008e, B:21:0x0095, B:25:0x009e, B:27:0x00a4, B:29:0x00aa, B:31:0x00b0, B:33:0x00b6, B:34:0x00b8, B:36:0x00bd, B:35:0x00ba, B:46:0x00f0, B:47:0x00f3, B:49:0x00f9, B:50:0x00fc, B:44:0x00ea, B:24:0x009c), top: B:57:0x0000 }] */
    @Override // com.facebook.ads.redexgen.X.TE
    @MetaExoPlayerCustomization
    public final long AHv(NX nx) throws IOException {
        try {
            String strA5H = this.A0I.A5H(nx);
            NX nxA09 = nx.A04().A08(strA5H).A09();
            this.A08 = nxA09;
            this.A05 = A01(this.A0G, strA5H, nxA09.A06);
            this.A03 = nx.A04;
            this.A09 = new C2327e7(nx.A07);
            this.A0B = A00(nx) != -1;
            boolean z = this.A0B;
            boolean z2 = this.A0B;
            if (A0N[4].charAt(1) == 'h') {
                throw new RuntimeException();
            }
            A0N[4] = "DKZf1VuH8SAQQeVRHDRzVNWOaR28tamI";
            if (z2) {
                this.A00 = -1L;
            } else {
                this.A00 = AbstractC2351eV.A00(this.A0G.A83(strA5H));
                if (this.A00 != -1) {
                    this.A00 -= nx.A04;
                    long j = this.A00;
                    if (A0N[4].charAt(1) == 'h') {
                        throw new RuntimeException();
                    }
                    A0N[1] = "";
                    if (j < 0) {
                        throw new NQ(AdError.REMOTE_ADS_SERVICE_ERROR);
                    }
                }
            }
            boolean z3 = nx.A07.A08 <= 0 && nx.A07.A07 <= 0;
            if (nx.A03 != -1) {
                this.A00 = this.A00 == -1 ? nx.A03 : Math.min(this.A00, nx.A03);
            }
            long j2 = this.A00;
            String[] strArr = A0N;
            if (strArr[5].charAt(24) == strArr[3].charAt(24)) {
                if (j2 <= 0) {
                    if (this.A00 == -1) {
                    }
                }
                if (nx.A03 != -1) {
                }
            }
            A0N[4] = "LD2ew1FtkfnlOPATYBkIiVwopmp1IvEa";
            if (j2 <= 0) {
                if (this.A00 == -1) {
                }
            }
            return nx.A03 != -1 ? nx.A03 : this.A00;
            A06(nxA09, false, z3);
            if (nx.A03 != -1) {
            }
        } catch (Throwable th) {
            A09(th);
            throw th;
        }
    }

    @Override // com.facebook.ads.redexgen.X.TE
    public final void close() throws IOException {
        this.A08 = null;
        this.A05 = null;
        this.A03 = 0L;
        A04();
        try {
            A03();
        } catch (Throwable th) {
            A09(th);
            throw th;
        }
    }

    @Override // com.facebook.ads.redexgen.X.KR
    public final int read(byte[] bArr, int i, int i2) throws Throwable {
        if (i2 == 0) {
            return 0;
        }
        if (this.A00 == 0) {
            return -1;
        }
        NX nx = (NX) AbstractC1722Ln.A01(this.A08);
        NX nx2 = (NX) AbstractC1722Ln.A01(this.A07);
        try {
            if (this.A03 >= this.A01) {
                A06(nx, true, false);
            }
            try {
                int i3 = ((TE) AbstractC1722Ln.A01(this.A06)).read(bArr, i, i2);
                if (i3 != -1) {
                    if (A0B()) {
                        this.A04 += (long) i3;
                    }
                    this.A03 += (long) i3;
                    this.A02 += (long) i3;
                    if (this.A00 != -1) {
                        this.A00 -= (long) i3;
                    }
                } else if (A0C() && (nx2.A03 == -1 || this.A02 < nx2.A03)) {
                    A07((String) N1.A0f(nx.A08));
                } else if (this.A00 > 0 || this.A00 == -1) {
                    A03();
                    A06(nx, false, false);
                    return read(bArr, i, i2);
                }
                return i3;
            } catch (Throwable th) {
                th = th;
                A09(th);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
