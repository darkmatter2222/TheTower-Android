package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;
import java.util.Locale;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.mk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2852mk {
    public static int A03;
    public static byte[] A04;
    public C2851mj A00;
    public boolean A01;
    public final File A02;

    static {
        A02();
        A03 = 1000;
    }

    public C2852mk(File file) throws IOException {
        this.A02 = file;
        if (!file.exists()) {
            this.A00 = C2851mj.A03(file);
        } else if (!file.isFile()) {
            throw new IOException(String.format(Locale.US, A01(25, 32, 30), file.getCanonicalPath()));
        }
    }

    private C2851mj A00() throws IOException {
        if (this.A01) {
            throw new IOException(A01(86, 28, 15));
        }
        if (this.A00 == null) {
            this.A00 = C2851mj.A04(this.A02);
        }
        return this.A00;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 93);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A04 = new byte[]{Ascii.ESC, 54, 62, 65, 58, 57, -11, 73, 68, -11, 57, 58, 65, 58, 73, 58, -11, 59, 62, 65, 58, -11, -4, -6, 72, -63, -28, -25, -32, -101, -94, -96, -18, -94, -101, -28, -18, -101, -23, -22, -17, -101, -36, -101, -19, -32, -36, -33, -36, -35, -25, -32, -101, -31, -28, -25, -32, Ascii.CAN, Base64.padSymbol, 69, 48, 59, 56, 51, -17, 53, 52, 67, 50, 55, -17, 66, 67, 48, 65, 67, -17, 56, Base64.padSymbol, 51, 52, 71, 9, -17, -12, 51, -66, -47, -49, -37, -34, -48, -116, -46, -43, -40, -47, -116, -51, -40, -34, -47, -51, -48, -27, -116, -48, -43, -33, -36, -37, -33, -47, -48};
    }

    private void A03(int i, long j) throws IOException {
        this.A00.A03[i] = j;
        this.A00.A02.seek(C2851mj.A02(i));
        this.A00.A02.writeLong(j);
    }

    private void A04(long j, byte[] bArr) throws IOException {
        this.A00.A02.seek(j);
        this.A00.A02.write(bArr);
    }

    public final synchronized int A05() throws IOException {
        return A00().A00;
    }

    public final synchronized C2843mb A06(int i, byte[] bArr, int i2, int[] iArr, int i3) throws IOException {
        C2851mj c2851mjA00 = A00();
        int i4 = 1;
        if (i < 0) {
            throw new IOException(String.format(Locale.US, A01(57, 29, 114), Integer.valueOf(i)));
        }
        int i5 = i;
        int i6 = 0;
        long j = -1;
        boolean z = false;
        while (i5 < c2851mjA00.A00) {
            if ((i5 - i) + i3 >= iArr.length) {
                z = true;
                break;
            }
            long j2 = c2851mjA00.A03[i5];
            long j3 = (i5 == c2851mjA00.A00 - i4 ? c2851mjA00.A01 : c2851mjA00.A03[i5 + 1]) - j2;
            if (j == -1) {
                j = j2;
            }
            if (((int) j3) + i6 + i2 > bArr.length) {
                z = true;
                break;
            }
            i6 += (int) j3;
            iArr[(i5 - i) + i3] = (int) j3;
            i5++;
            i4 = 1;
        }
        if (i5 <= i) {
            return new C2843mb(z ? EnumC2842ma.A03 : EnumC2842ma.A04, i, i, 0);
        }
        c2851mjA00.A02.seek(j);
        c2851mjA00.A02.read(bArr, i2, i6);
        return new C2843mb(EnumC2842ma.A02, i, i5, i6);
    }

    public final synchronized void A07() throws IOException {
        this.A01 = true;
        if (this.A00 == null) {
            return;
        }
        RandomAccessFile randomAccessFile = this.A00.A02;
        this.A00 = null;
        randomAccessFile.close();
    }

    public final synchronized void A08() throws IOException {
        if (this.A01) {
            throw new IOException(A01(86, 28, 15));
        }
        A07();
        if (!this.A02.delete()) {
            throw new IOException(String.format(Locale.US, A01(0, 25, 120), this.A02.getCanonicalPath()));
        }
    }

    public final synchronized boolean A09(byte[] bArr) throws IOException {
        C2851mj c2851mjA00 = A00();
        if (A05() == A03) {
            return false;
        }
        A03(c2851mjA00.A00, c2851mjA00.A01);
        A04(c2851mjA00.A01, bArr);
        c2851mjA00.A02.getFD().sync();
        c2851mjA00.A00++;
        c2851mjA00.A01 += (long) bArr.length;
        return true;
    }
}
