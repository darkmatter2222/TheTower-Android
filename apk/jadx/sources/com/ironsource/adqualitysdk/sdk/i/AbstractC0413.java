package com.ironsource.adqualitysdk.sdk.i;

import com.google.common.base.Ascii;
import com.ironsource.adqualitysdk.sdk.StringFog;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ژ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC0413 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final /* synthetic */ boolean f1943 = true;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final byte[] f1945 = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final byte[] f1944 = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, Base64.padSymbol, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, Ascii.VT, Ascii.FF, Ascii.CR, Ascii.SO, Ascii.SI, Ascii.DLE, 17, Ascii.DC2, 19, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.CAN, Ascii.EM, -9, -9, -9, -9, -9, -9, Ascii.SUB, Ascii.ESC, Ascii.FS, Ascii.GS, Ascii.RS, Ascii.US, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9};

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static int m2086(byte[] bArr, byte[] bArr2, int i, byte[] bArr3) {
        byte b = bArr[2];
        if (b == 61) {
            bArr2[i] = (byte) ((((bArr3[bArr[1]] << Ascii.CAN) >>> 12) | ((bArr3[bArr[0]] << Ascii.CAN) >>> 6)) >>> 16);
            return 1;
        }
        byte b2 = bArr[3];
        if (b2 == 61) {
            int i2 = ((bArr3[bArr[1]] << Ascii.CAN) >>> 12) | ((bArr3[bArr[0]] << Ascii.CAN) >>> 6) | ((bArr3[b] << Ascii.CAN) >>> 18);
            bArr2[i] = (byte) (i2 >>> 16);
            bArr2[i + 1] = (byte) (i2 >>> 8);
            return 2;
        }
        int i3 = ((bArr3[bArr[1]] << Ascii.CAN) >>> 12) | ((bArr3[bArr[0]] << Ascii.CAN) >>> 6) | ((bArr3[b] << Ascii.CAN) >>> 18) | ((bArr3[b2] << Ascii.CAN) >>> 24);
        bArr2[i] = (byte) (i3 >> 16);
        bArr2[i + 1] = (byte) (i3 >> 8);
        bArr2[i + 2] = (byte) i3;
        return 3;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m2087(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = f1945;
        int i = ((length + 2) / 3) * 4;
        int i2 = (i / Integer.MAX_VALUE) + i;
        byte[] bArr3 = new byte[i2];
        int i3 = length - 2;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < i3) {
            int i7 = ((bArr[i4] << Ascii.CAN) >>> 8) | ((bArr[i4 + 1] << Ascii.CAN) >>> 16) | ((bArr[i4 + 2] << Ascii.CAN) >>> 24);
            bArr3[i5] = bArr2[i7 >>> 18];
            int i8 = i5 + 1;
            bArr3[i8] = bArr2[(i7 >>> 12) & 63];
            bArr3[i5 + 2] = bArr2[(i7 >>> 6) & 63];
            bArr3[i5 + 3] = bArr2[i7 & 63];
            i6 += 4;
            if (i6 == Integer.MAX_VALUE) {
                bArr3[i5 + 4] = 10;
                i6 = 0;
                i5 = i8;
            }
            i4 += 3;
            i5 += 4;
        }
        if (i4 < length) {
            int i9 = length - i4;
            int i10 = (i9 > 2 ? (bArr[i4 + 2] << Ascii.CAN) >>> 24 : 0) | (i9 > 0 ? (bArr[i4] << Ascii.CAN) >>> 8 : 0) | (i9 > 1 ? (bArr[i4 + 1] << Ascii.CAN) >>> 16 : 0);
            if (i9 == 1) {
                bArr3[i5] = bArr2[i10 >>> 18];
                bArr3[i5 + 1] = bArr2[(i10 >>> 12) & 63];
                bArr3[i5 + 2] = Base64.padSymbol;
                bArr3[i5 + 3] = Base64.padSymbol;
            } else if (i9 == 2) {
                bArr3[i5] = bArr2[i10 >>> 18];
                bArr3[i5 + 1] = bArr2[(i10 >>> 12) & 63];
                bArr3[i5 + 2] = bArr2[(i10 >>> 6) & 63];
                bArr3[i5 + 3] = Base64.padSymbol;
            } else if (i9 == 3) {
                bArr3[i5] = bArr2[i10 >>> 18];
                bArr3[i5 + 1] = bArr2[(i10 >>> 12) & 63];
                bArr3[i5 + 2] = bArr2[(i10 >>> 6) & 63];
                bArr3[i5 + 3] = bArr2[i10 & 63];
            }
            if (i6 + 4 == Integer.MAX_VALUE) {
                bArr3[i5 + 4] = 10;
                i5++;
            }
            i5 += 4;
        }
        if (f1943 || i5 == i2) {
            return new String(bArr3, 0, i2);
        }
        throw new AssertionError();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static byte[] m2088(String str) throws C0390 {
        byte[] bytes = str.getBytes();
        int length = bytes.length;
        byte[] bArr = f1944;
        byte[] bArr2 = new byte[((length * 3) / 4) + 2];
        byte[] bArr3 = new byte[4];
        int i = 0;
        int iM2086 = 0;
        for (int i2 = 0; i2 < length; i2++) {
            byte b = (byte) (bytes[i2] & 127);
            byte b2 = bArr[b];
            if (b2 < -5) {
                throw new C0390(AbstractC0897.m2299("+OKcXIeSiZz5\n", "0Ib5P+7/6PA=\n", new StringBuilder().append(StringFog.decrypt("pJ29oY2Z6/jQyPnooYjt6cafseC9mfvpg4754LvY\n", "5vzZgc/4mJ0=\n")).append(i2).append(StringFog.decrypt("D8w=\n", "NexekbiRTc4=\n")).append((int) bytes[i2])));
            }
            if (b2 >= -1) {
                if (b == 61) {
                    int i3 = length - i2;
                    byte b3 = (byte) (bytes[length - 1] & 127);
                    if (i == 0 || i == 1) {
                        throw new C0390(StringFog.decrypt("aAYInrPzUtpxCRqbtvRR2mMRCpr/vQvdIQkK373jQp8hBxiZrP9C2g==\n", "AWh+/9+aNvo=\n") + i2);
                    }
                    if ((i == 3 && i3 > 2) || (i == 4 && i3 > 1)) {
                        throw new C0390(StringFog.decrypt("esKE+G1rcQZo2pT5JCIrASrFgfB3YHpfKtCJ+2pkelUqxo74JGpwBm/Ng/NgYHIGfMKM6WEld1Iq\nzIb6d2BiBg==\n", "CqPgnAQFFiY=\n") + i2);
                    }
                    if (b3 != 61 && b3 != 10) {
                        throw new C0390(StringFog.decrypt("ICdiKvPaIkozKG0w8p8uCzZpaCvh3ioDIWl1N/bWKgMrLiEn7ssj\n", "RUkBRZe/Rmo=\n"));
                    }
                    break;
                    break;
                }
                int i4 = i + 1;
                bArr3[i] = b;
                if (i4 == 4) {
                    iM2086 += m2086(bArr3, bArr2, iM2086, bArr);
                    i = 0;
                } else {
                    i = i4;
                }
            }
        }
        if (i != 0) {
            if (i == 1) {
                throw new C0390(StringFog.decrypt("Buzn+3ld00IH5ODwfFaUFhbt6O50W4dTB6Xo6DVXlVAG4P28\n", "dYWJnBU48zY=\n") + (length - 1));
            }
            bArr3[i] = Base64.padSymbol;
            iM2086 += m2086(bArr3, bArr2, iM2086, bArr);
        }
        byte[] bArr4 = new byte[iM2086];
        System.arraycopy(bArr2, 0, bArr4, 0, iM2086);
        return bArr4;
    }
}
