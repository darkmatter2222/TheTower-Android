package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Lp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1724Lp {
    public static byte[] A02;
    public final File A00;
    public final File A01;

    static {
        A02();
    }

    public C1724Lp(File file) {
        this.A01 = file;
        this.A00 = new File(file.getPath() + A00(16, 4, 50));
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 109);
        }
        return new String(bArrCopyOfRange);
    }

    private void A01() {
        if (this.A00.exists()) {
            this.A01.delete();
            this.A00.renameTo(this.A01);
        }
    }

    public static void A02() {
        A02 = new byte[]{Ascii.FF, 88, 67, Ascii.FF, 78, 77, 79, 71, 89, 92, Ascii.FF, 74, 69, SignedBytes.MAX_POWER_OF_TWO, 73, Ascii.FF, 113, Base64.padSymbol, 62, 52, 78, 123, 96, 98, 102, 108, 73, 102, 99, 106, 71, 107, 113, 104, 96, 106, 35, 112, 36, 103, 118, 97, 101, 112, 97, 36, 70, 106, 112, 105, 97, 107, 34, 113, 37, 119, 96, 107, 100, 104, 96, 37, 99, 108, 105, 96, 37};
    }

    public final C1723Lo A03() throws IOException {
        if (this.A01.exists()) {
            if (this.A00.exists()) {
                this.A01.delete();
            } else if (!this.A01.renameTo(this.A00)) {
                MV.A07(A00(20, 10, 98), A00(46, 21, 104) + this.A01 + A00(0, 16, 65) + this.A00);
            }
        }
        try {
            return new C1723Lo(this.A01);
        } catch (FileNotFoundException e) {
            File parentFile = this.A01.getParentFile();
            String strA00 = A00(30, 16, 105);
            if (parentFile == null || !parentFile.mkdirs()) {
                throw new IOException(strA00 + this.A01, e);
            }
            try {
                return new C1723Lo(this.A01);
            } catch (FileNotFoundException e2) {
                throw new IOException(strA00 + this.A01, e2);
            }
        }
    }

    public final InputStream A04() throws FileNotFoundException {
        A01();
        return new FileInputStream(this.A01);
    }

    public final void A05() {
        this.A01.delete();
        this.A00.delete();
    }

    public final void A06(OutputStream outputStream) throws IOException {
        outputStream.close();
        this.A00.delete();
    }

    public final boolean A07() {
        return this.A01.exists() || this.A00.exists();
    }
}
