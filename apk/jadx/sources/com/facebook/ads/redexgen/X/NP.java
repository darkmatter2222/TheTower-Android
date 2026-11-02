package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import com.google.common.base.Ascii;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class NP implements InterfaceC2275dG<Bitmap> {
    public static byte[] A06;
    public static String[] A07 = {"O8BWLXPdzHA", "6sEzkrKiC7tSlAyzako7Jr1QeLTjq7r7", "buIAODYM5Oo034kKCIV4I7ZzRqvLqiIh", "ENOGp8Grp5cb6hByXNSQMpF2JyONyocp", "tnh", "2Zn0DxkDz4CuR43sN", "3j1ga9q4MlHQ2cRzMN", "NuleDR7CXAFlpWhCDunnHJWIhrQ2pSEs"};
    public final int A00;
    public final int A01;
    public final String A02 = NP.class.getSimpleName();
    public final boolean A03;
    public final boolean A04;
    public final boolean A05;

    static {
        A02();
    }

    public NP(int i, int i2, boolean z, boolean z2, boolean z3) {
        this.A01 = i;
        this.A00 = i2;
        this.A05 = z;
        this.A03 = z2;
        this.A04 = z3;
    }

    public static C2274dF<Bitmap> A00(Throwable th) {
        return new C2274dF<>(false, null, th);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 8);
            if (A07[7].charAt(0) == 'p') {
                throw new RuntimeException();
            }
            A07[6] = "rTtdlTA5qc3UePbll3p";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        if (A07[4].length() != 3) {
            throw new RuntimeException();
        }
        A07[6] = "j2OKbozXXbIBudrsn6AX9zPsXXh";
        A06 = new byte[]{1, 91, 66, 95, 7, 44, 49, 40, 36, 53, 101, 44, 54, 101, 43, 48, 41, 41, 124, 65, 90, 92, 73, 77, 80, 86, 87, Ascii.EM, 93, 76, 75, 80, 87, 94, Ascii.EM, 95, 80, 85, 92, Ascii.EM, 90, 86, 84, 73, 75, 92, 74, 74, 80, 86, 87};
    }

    private void A03(File file, Bitmap bitmap) throws IOException {
        if (bitmap == null) {
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream = null;
        FileOutputStream fileOutputStream = null;
        FileInputStream fileInputStream = null;
        FileOutputStream fileOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            if (byteArrayOutputStream.size() >= 3145728) {
                return;
            }
            String str = file.getCanonicalPath() + A01(0, 4, 39);
            File file2 = new File(str);
            file2.createNewFile();
            fileOutputStream = new FileOutputStream(str);
            byteArrayOutputStream.writeTo(fileOutputStream);
            fileOutputStream.flush();
            fileInputStream = new FileInputStream(str);
            fileOutputStream2 = new FileOutputStream(file);
            byte[] bArr = new byte[1024];
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i <= 0) {
                    file2.delete();
                    return;
                }
                fileOutputStream2.write(bArr, 0, i);
            }
        } finally {
            AbstractC2294dZ.A07(byteArrayOutputStream);
            AbstractC2294dZ.A07(fileOutputStream);
            AbstractC2294dZ.A07(fileInputStream);
            AbstractC2294dZ.A07(fileOutputStream2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2275dG
    public final C2274dF<Bitmap> A4N(File file, InterfaceC2293dY interfaceC2293dY) {
        if (!this.A04) {
            return new C2274dF<>(true, null);
        }
        try {
            Bitmap bitmapA03 = AbstractC2294dZ.A03(file.getCanonicalPath(), this.A01, this.A00, this.A05);
            if (bitmapA03 != null) {
                return new C2274dF<>(true, bitmapA03);
            }
            interfaceC2293dY.ABp(new NE(A01(4, 14, 77)));
            return A00(null);
        } catch (Throwable th) {
            file.delete();
            interfaceC2293dY.ABp(th);
            return A00(th);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2275dG
    public final void A5m(File file, InterfaceC2293dY interfaceC2293dY) throws NE {
        if (this.A03) {
            try {
                Bitmap bitmapA03 = AbstractC2294dZ.A03(file.getCanonicalPath(), this.A01, this.A00, this.A05);
                if (bitmapA03 != null) {
                    A03(file, bitmapA03);
                } else {
                    file.delete();
                    throw new NE(A01(4, 14, 77));
                }
            } catch (NE e) {
                interfaceC2293dY.AC6(e);
                throw e;
            } catch (Throwable th) {
                interfaceC2293dY.AC6(th);
                throw new NE(A01(18, 33, 49), th);
            }
        }
    }
}
