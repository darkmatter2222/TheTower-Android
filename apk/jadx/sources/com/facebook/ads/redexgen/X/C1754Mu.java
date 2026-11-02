package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Mu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1754Mu implements NL {
    public static byte[] A0A;
    public static String[] A0B = {"S3jBe1AnZBAO9fFmqljDrlTiATLd8G7i", "MQ", "TqvHnjyZJZAcHPLwr0XJZBn9OAh7guXr", "kb9niUSg8dUZGiZsU6x6EESMYNcSyAwI", "oNm80KsUFWfPFhTFWMw4FT7xcvpVHBPL", "aXJxY4MD20XbghYIcDsXFSRJsdR3dh3z", "Q1NYpkVyW3f3SUk8jVMG66U91TM", "WIJCLWmxdgAqe4fG4lyzxlu1vsJDVOH"};
    public long A00;
    public long A01;
    public long A02;
    public NX A03;
    public C2356ea A04;
    public File A05;
    public OutputStream A06;
    public final int A07;
    public final long A08;
    public final InterfaceC2331eB A09;

    static {
        A02();
    }

    public C1754Mu(InterfaceC2331eB interfaceC2331eB, long j, int i) {
        AbstractC1722Ln.A0A(j > 0 || j == -1, A00(115, 48, 17));
        if (j != -1 && j < 2097152) {
            MV.A07(A00(0, 13, 88), A00(13, 102, 52));
        }
        this.A09 = (InterfaceC2331eB) AbstractC1722Ln.A01(interfaceC2331eB);
        this.A08 = j == -1 ? Long.MAX_VALUE : j;
        this.A07 = i;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 79);
        }
        return new String(bArrCopyOfRange);
    }

    private void A01() throws IOException {
        if (this.A06 == null) {
            return;
        }
        try {
            this.A06.flush();
            N1.A10(this.A06);
            this.A06 = null;
            File file = this.A05;
            String[] strArr = A0B;
            if (strArr[3].charAt(19) == strArr[2].charAt(19)) {
                throw new RuntimeException();
            }
            A0B[4] = "F0yakpM0e0s31RuZIqZK9Sed4G4tdyDQ";
            File file2 = (File) N1.A0f(file);
            this.A05 = null;
            if (1 != 0) {
                this.A09.A5e(file2, this.A02);
            } else {
                file2.delete();
            }
        } catch (Throwable th) {
            N1.A10(this.A06);
            this.A06 = null;
            File file3 = (File) N1.A0f(this.A05);
            this.A05 = null;
            if (0 != 0) {
                this.A09.A5e(file3, this.A02);
            } else {
                file3.delete();
            }
            throw th;
        }
    }

    public static void A02() {
        A0A = new byte[]{84, 118, 116, 127, 114, 83, 118, 99, 118, 68, 126, 121, 124, Ascii.GS, 9, Ascii.SUB, Ascii.FS, Ascii.SYN, Ascii.RS, Ascii.NAK, Ascii.SI, 40, Ascii.DC2, 1, Ascii.RS, 91, Ascii.DC2, 8, 91, Ascii.EM, Ascii.RS, Ascii.ETB, Ascii.DC4, Ascii.FF, 91, Ascii.SI, 19, Ascii.RS, 91, Ascii.SYN, Ascii.DC2, Ascii.NAK, Ascii.DC2, Ascii.SYN, Ascii.SO, Ascii.SYN, 91, 9, Ascii.RS, Ascii.CAN, Ascii.DC4, Ascii.SYN, Ascii.SYN, Ascii.RS, Ascii.NAK, Ascii.US, Ascii.RS, Ascii.US, 91, Ascii.CR, Ascii.SUB, Ascii.ETB, Ascii.SO, Ascii.RS, 91, Ascii.DC4, Ascii.GS, 91, 73, 75, 66, 76, 74, 78, 73, 85, 91, 47, 19, Ascii.DC2, 8, 91, Ascii.SYN, Ascii.SUB, 2, 91, Ascii.CAN, Ascii.SUB, Ascii.SO, 8, Ascii.RS, 91, Ascii.VT, Ascii.DC4, Ascii.DC4, 9, 91, Ascii.CAN, Ascii.SUB, Ascii.CAN, 19, Ascii.RS, 91, Ascii.VT, Ascii.RS, 9, Ascii.GS, Ascii.DC4, 9, Ascii.SYN, Ascii.SUB, Ascii.NAK, Ascii.CAN, Ascii.RS, 85, 56, 44, 63, 57, 51, 59, 48, 42, Ascii.CR, 55, 36, 59, 126, 51, 43, 45, 42, 126, 60, 59, 126, 46, 49, 45, 55, 42, 55, 40, 59, 126, 49, 44, 126, Ascii.GS, 112, Ascii.DC2, Ascii.ESC, Ascii.DLE, Ascii.EM, 10, Ascii.SYN, 1, Ascii.VT, Ascii.DLE, Ascii.CR, Ascii.ESC, 10, 112};
    }

    private void A03(NX nx) throws IOException {
        this.A05 = this.A09.ALR((String) N1.A0f(nx.A08), nx.A04 + this.A00, nx.A03 != -1 ? Math.min(nx.A03 - this.A00, this.A01) : -1L);
        FileOutputStream fileOutputStream = new FileOutputStream(this.A05);
        if (this.A07 > 0) {
            if (this.A04 == null) {
                this.A04 = new C2356ea(fileOutputStream, this.A07);
            } else {
                this.A04.A00(fileOutputStream);
            }
            this.A06 = this.A04;
        } else {
            this.A06 = fileOutputStream;
        }
        if (A0B[7].length() != 31) {
            throw new RuntimeException();
        }
        A0B[1] = "DINaTunZsBLfasiAvgsJ0K8yL";
        this.A02 = 0L;
    }

    @Override // com.facebook.ads.redexgen.X.NL
    public final void AHx(NX nx) throws C1756Mw {
        AbstractC1722Ln.A01(nx.A08);
        if (nx.A03 == -1) {
            if (A0B[6].length() == 27) {
                String[] strArr = A0B;
                strArr[3] = "P5KXrHTHI80nGw08HICucI37BAioyNmr";
                strArr[2] = "iCjsqaFtiCagOHwORRVVrWaHLSIsJK3H";
                if (nx.A06(2)) {
                    if (A0B[7].length() == 31) {
                        A0B[4] = "jhmCfWfHkRUhpQgY0M3snOIXb3CQqWEE";
                        this.A03 = null;
                        return;
                    }
                }
            }
            throw new RuntimeException();
        }
        this.A03 = nx;
        this.A01 = nx.A06(4) ? this.A08 : Long.MAX_VALUE;
        this.A00 = 0L;
        try {
            A03(nx);
        } catch (IOException e) {
            throw new C1756Mw(e);
        }
    }

    @Override // com.facebook.ads.redexgen.X.NL
    public final void close() throws C1756Mw {
        if (this.A03 == null) {
            return;
        }
        try {
            A01();
        } catch (IOException e) {
            throw new C1756Mw(e);
        }
    }

    @Override // com.facebook.ads.redexgen.X.NL
    public final void write(byte[] bArr, int i, int i2) throws C1756Mw {
        NX nx = this.A03;
        if (nx == null) {
            return;
        }
        int i3 = 0;
        while (i3 < i2) {
            try {
                if (this.A02 == this.A01) {
                    A01();
                    A03(nx);
                }
                int iMin = (int) Math.min(i2 - i3, this.A01 - this.A02);
                ((OutputStream) N1.A0f(this.A06)).write(bArr, i + i3, iMin);
                i3 += iMin;
                this.A02 += (long) iMin;
                this.A00 += (long) iMin;
            } catch (IOException e) {
                throw new C1756Mw(e);
            }
        }
    }
}
