package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.dZ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2294dZ {
    public static byte[] A00;
    public static String[] A01 = {"4URjdcTGi", "po9yLUIJbjuRtvjPhj4uP8cF498HgQ7z", "A5AHd5fBub1PIS7BLeiOb31fcQ17YwU8", "7guNTFBtCQQPAQraYFx6g1j01ajqBsWs", "X9RV0REptiddGsEup40thUtqdeB8esnY", "0C3GUy", "3nXE0n0RsgZda9T4UBJMMBhHqECNX4hJ", "fMU9hpupPxlpGPmSXOlz6ZuRTfjSB1qP"};

    static {
        A06();
    }

    public static int A00(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        int i5 = 1;
        if (i3 > i2 || i4 > i) {
            int i6 = i3 / 2;
            int i7 = i4 / 2;
            while (i6 / i5 >= i2 && i7 / i5 >= i) {
                i5 *= 2;
            }
        }
        return i5;
    }

    public static Bitmap A01(InputStream inputStream, int i, int i2) throws IOException {
        C2295da c2295da = new C2295da(inputStream);
        c2295da.mark(8192);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(c2295da, null, options);
        c2295da.reset();
        if (!c2295da.A00()) {
            options.inSampleSize = A00(options, i, i2);
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeStream(c2295da, null, options);
        }
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(c2295da);
        String[] strArr = A01;
        if (strArr[1].charAt(6) == strArr[3].charAt(6)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[1] = "xOKPhJohz1vwkifwSHBqQxwaG6oYsLRa";
        strArr2[3] = "yZ4TeTLFGP8GfQlVKCBWTEY5EmutY3CM";
        return bitmapDecodeStream;
    }

    public static Bitmap A02(String str, int i, int i2) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = A00(options, i, i2);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(str, options);
    }

    public static Bitmap A03(String str, int i, int i2, boolean z) throws IOException {
        try {
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            if (i <= 0 || i2 <= 0) {
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(fileInputStream);
                A07(fileInputStream);
                return bitmapDecodeStream;
            }
            if (z) {
                Bitmap bitmapA01 = A01(fileInputStream, i, i2);
                A07(fileInputStream);
                return bitmapA01;
            }
            Bitmap bitmapA02 = A02(str, i, i2);
            A07(fileInputStream);
            return bitmapA02;
        } catch (Throwable th) {
            A07(null);
            throw th;
        }
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 61);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A05(File file) {
        if (file != null) {
            return A04(0, 7, 117) + file.getPath();
        }
        return null;
    }

    public static void A06() {
        A00 = new byte[]{46, 33, 36, 45, 114, 103, 103};
    }

    public static void A07(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }
}
