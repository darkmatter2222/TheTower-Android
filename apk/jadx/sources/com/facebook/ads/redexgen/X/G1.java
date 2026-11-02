package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import androidx.core.view.ViewCompat;
import com.google.common.base.Ascii;
import java.util.ArrayList;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class G1 {
    public static String[] A00 = {"hdmHMjdsCvnnIiAm68nbzST5FT4P5mLb", "EH3LUmZxwOvThvXMHcswnn58jDASieiK", "ljU4lnctUqCxo644HWpRzVkau739AG18", "cf0wMMVzQ5eDMzw1G9WbfLTL5VaSUv", "l50byEuqIAJWTFcEqiPP3cq5SFvrKOhf", "BkuhnFfUhQO532vAuKLRONmm63PuLWNO", "lueSUxwI7577CW", "p49ZYnIXKwO4jtZLxoBrhqW2OVcn4ZYc"};
    public static final short[] A02 = {512, 512, 456, 512, 328, 456, 335, 512, 405, 328, 271, 456, 388, 335, 292, 512, 454, 405, 364, 328, 298, 271, 496, 456, 420, 388, 360, 335, 312, 292, 273, 512, 482, 454, 428, 405, 383, 364, 345, 328, 312, 298, 284, 271, 259, 496, 475, 456, 437, 420, 404, 388, 374, 360, 347, 335, 323, 312, 302, 292, 282, 273, 265, 512, 497, 482, 468, 454, 441, 428, 417, 405, 394, 383, 373, 364, 354, 345, 337, 328, 320, 312, 305, 298, 291, 284, 278, 271, 265, 259, 507, 496, 485, 475, 465, 456, 446, 437, 428, 420, 412, 404, 396, 388, 381, 374, 367, 360, 354, 347, 341, 335, 329, 323, 318, 312, 307, 302, 297, 292, 287, 282, 278, 273, 269, 265, 261, 512, 505, 497, 489, 482, 475, 468, 461, 454, 447, 441, 435, 428, 422, 417, 411, 405, 399, 394, 389, 383, 378, 373, 368, 364, 359, 354, 350, 345, 341, 337, 332, 328, 324, 320, 316, 312, 309, 305, 301, 298, 294, 291, 287, 284, 281, 278, 274, 271, 268, 265, 262, 259, 257, 507, 501, 496, 491, 485, 480, 475, 470, 465, 460, 456, 451, 446, 442, 437, 433, 428, 424, 420, 416, 412, 408, 404, 400, 396, 392, 388, 385, 381, 377, 374, 370, 367, 363, 360, 357, 354, 350, 347, 344, 341, 338, 335, 332, 329, 326, 323, 320, 318, 315, 312, 310, 307, 304, 302, 299, 297, 294, 292, 289, 287, 285, 282, 280, 278, 275, 273, 271, 269, 267, 265, 263, 261, 259};
    public static final byte[] A01 = {9, Ascii.VT, Ascii.FF, Ascii.CR, Ascii.CR, Ascii.SO, Ascii.SO, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.DLE, Ascii.DLE, Ascii.DLE, Ascii.DLE, 17, 17, 17, 17, 17, 17, 17, Ascii.DC2, Ascii.DC2, Ascii.DC2, Ascii.DC2, Ascii.DC2, Ascii.DC2, Ascii.DC2, Ascii.DC2, Ascii.DC2, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN};

    public static void A00(int[] iArr, int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = i - 1;
        int i8 = i2 - 1;
        int i9 = (i3 * 2) + 1;
        short s = A02[i3];
        byte b = A01[i3];
        int[] iArr2 = new int[i9];
        long j = 0;
        if (i6 == 1) {
            int i10 = (i5 * i2) / i4;
            int i11 = ((i5 + 1) * i2) / i4;
            while (i10 < i11) {
                long j2 = j;
                long j3 = j;
                long j4 = j;
                long j5 = j;
                long j6 = j;
                long j7 = j;
                long j8 = j;
                long j9 = j;
                int i12 = i * i10;
                for (int i13 = 0; i13 <= i3; i13++) {
                    iArr2[i13] = iArr[i12];
                    j9 += (long) (((iArr[i12] >>> 16) & 255) * (i13 + 1));
                    j8 += (long) (((iArr[i12] >>> 8) & 255) * (i13 + 1));
                    j7 += (long) ((iArr[i12] & 255) * (i13 + 1));
                    j3 += (long) ((iArr[i12] >>> 16) & 255);
                    j2 += (long) ((iArr[i12] >>> 8) & 255);
                    j += (long) (iArr[i12] & 255);
                }
                for (int i14 = 1; i14 <= i3; i14++) {
                    if (i14 <= i7) {
                        i12++;
                    }
                    iArr2[i14 + i3] = iArr[i12];
                    j9 += (long) (((iArr[i12] >>> 16) & 255) * ((i3 + 1) - i14));
                    j8 += (long) (((iArr[i12] >>> 8) & 255) * ((i3 + 1) - i14));
                    j7 += (long) ((iArr[i12] & 255) * ((i3 + 1) - i14));
                    j6 += (long) ((iArr[i12] >>> 16) & 255);
                    j5 += (long) ((iArr[i12] >>> 8) & 255);
                    j4 += (long) (iArr[i12] & 255);
                }
                int i15 = i3;
                int i16 = i3;
                if (i16 > i7) {
                    i16 = i7;
                }
                int i17 = (i10 * i) + i16;
                int i18 = i10 * i;
                for (int i19 = 0; i19 < i; i19++) {
                    iArr[i18] = (int) (((long) (iArr[i18] & ViewCompat.MEASURED_STATE_MASK)) | ((((((long) s) * j9) >>> b) & 255) << 16) | ((((((long) s) * j8) >>> b) & 255) << 8) | (((((long) s) * j7) >>> b) & 255));
                    i18++;
                    long j10 = j9 - j3;
                    long j11 = j8 - j2;
                    long j12 = j7 - j;
                    int i20 = (i15 + i9) - i3;
                    if (i20 >= i9) {
                        i20 -= i9;
                    }
                    long j13 = j3 - ((long) ((iArr2[i20] >>> 16) & 255));
                    long j14 = j2 - ((long) ((iArr2[i20] >>> 8) & 255));
                    long j15 = j - ((long) (iArr2[i20] & 255));
                    if (i16 < i7) {
                        i17++;
                        i16++;
                    }
                    iArr2[i20] = iArr[i17];
                    long j16 = j6 + ((long) ((iArr[i17] >>> 16) & 255));
                    long j17 = j5 + ((long) ((iArr[i17] >>> 8) & 255));
                    long j18 = j4 + ((long) (iArr[i17] & 255));
                    j9 = j10 + j16;
                    j8 = j11 + j17;
                    j7 = j12 + j18;
                    int i21 = i15 + 1;
                    if (i21 >= i9) {
                        i21 = 0;
                    }
                    i15 = i21;
                    j3 = j13 + ((long) ((iArr2[i21] >>> 16) & 255));
                    j2 = j14 + ((long) ((iArr2[i21] >>> 8) & 255));
                    j = j15 + ((long) (iArr2[i21] & 255));
                    j6 = j16 - ((long) ((iArr2[i21] >>> 16) & 255));
                    j5 = j17 - ((long) ((iArr2[i21] >>> 8) & 255));
                    j4 = j18 - ((long) (iArr2[i21] & 255));
                }
                i10++;
                j = 0;
            }
            return;
        }
        if (i6 == 2) {
            int i22 = (i5 * i) / i4;
            int i23 = ((i5 + 1) * i) / i4;
            while (i22 < i23) {
                long j19 = 0;
                long j20 = 0;
                long j21 = 0;
                long j22 = 0;
                long j23 = 0;
                long j24 = 0;
                long j25 = 0;
                long j26 = 0;
                long j27 = 0;
                int i24 = i22;
                for (int i25 = 0; i25 <= i3; i25++) {
                    iArr2[i25] = iArr[i24];
                    j27 += (long) (((iArr[i24] >>> 16) & 255) * (i25 + 1));
                    j26 += (long) (((iArr[i24] >>> 8) & 255) * (i25 + 1));
                    j25 += (long) ((iArr[i24] & 255) * (i25 + 1));
                    j21 += (long) ((iArr[i24] >>> 16) & 255);
                    j20 += (long) ((iArr[i24] >>> 8) & 255);
                    j19 += (long) (iArr[i24] & 255);
                }
                for (int i26 = 1; i26 <= i3; i26++) {
                    if (i26 <= i8) {
                        i24 += i;
                    }
                    iArr2[i26 + i3] = iArr[i24];
                    j27 += (long) (((iArr[i24] >>> 16) & 255) * ((i3 + 1) - i26));
                    j26 += (long) (((iArr[i24] >>> 8) & 255) * ((i3 + 1) - i26));
                    j25 += (long) ((iArr[i24] & 255) * ((i3 + 1) - i26));
                    j24 += (long) ((iArr[i24] >>> 16) & 255);
                    j23 += (long) ((iArr[i24] >>> 8) & 255);
                    j22 += (long) (iArr[i24] & 255);
                }
                int i27 = i3;
                int i28 = i3;
                if (i28 > i8) {
                    i28 = i8;
                }
                int i29 = (i28 * i) + i22;
                int i30 = i22;
                for (int i31 = 0; i31 < i2; i31++) {
                    iArr[i30] = (int) (((long) (iArr[i30] & ViewCompat.MEASURED_STATE_MASK)) | ((((((long) s) * j27) >>> b) & 255) << 16) | ((((((long) s) * j26) >>> b) & 255) << 8) | (((((long) s) * j25) >>> b) & 255));
                    i30 += i;
                    long j28 = j27 - j21;
                    long j29 = j26 - j20;
                    long j30 = j25 - j19;
                    int i32 = (i27 + i9) - i3;
                    if (i32 >= i9) {
                        i32 -= i9;
                    }
                    long j31 = j21 - ((long) ((iArr2[i32] >>> 16) & 255));
                    long j32 = j20 - ((long) ((iArr2[i32] >>> 8) & 255));
                    long j33 = j19 - ((long) (iArr2[i32] & 255));
                    if (i28 < i8) {
                        i29 += i;
                        i28++;
                    }
                    iArr2[i32] = iArr[i29];
                    long j34 = j24 + ((long) ((iArr[i29] >>> 16) & 255));
                    long j35 = j23 + ((long) ((iArr[i29] >>> 8) & 255));
                    long j36 = j22 + ((long) (iArr[i29] & 255));
                    j27 = j28 + j34;
                    j26 = j29 + j35;
                    j25 = j30 + j36;
                    i27++;
                    if (i27 >= i9) {
                        i27 = 0;
                    }
                    j21 = j31 + ((long) ((iArr2[i27] >>> 16) & 255));
                    j20 = j32 + ((long) ((iArr2[i27] >>> 8) & 255));
                    j19 = j33 + ((long) (iArr2[i27] & 255));
                    j24 = j34 - ((long) ((iArr2[i27] >>> 16) & 255));
                    j23 = j35 - ((long) ((iArr2[i27] >>> 8) & 255));
                    j22 = j36 - ((long) (iArr2[i27] & 255));
                }
                i22++;
                String[] strArr = A00;
                if (strArr[4].charAt(24) == strArr[0].charAt(24)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A00;
                strArr2[4] = "dRrOf81uK3m7JlCVGnAp7HBN8Ud450kD";
                strArr2[0] = "ERfsWS88AUosonNdTmqfcWCTdCaDCKBU";
            }
        }
    }

    @Nullable
    public final Bitmap A02(Bitmap bitmap, float f) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        try {
            int[] iArr = new int[width * height];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            int i = AbstractC3100qq.A00;
            ArrayList arrayList = new ArrayList(i);
            ArrayList arrayList2 = new ArrayList(i);
            for (int i2 = 0; i2 < i; i2++) {
                int i3 = height;
                arrayList.add(new CallableC3099qp(iArr, width, i3, (int) f, i, i2, 1));
                height = i3;
                arrayList2.add(new CallableC3099qp(iArr, width, height, (int) f, i, i2, 2));
            }
            try {
                AbstractC3100qq.A01.invokeAll(arrayList);
                try {
                    AbstractC3100qq.A01.invokeAll(arrayList2);
                    try {
                        return Bitmap.createBitmap(iArr, width, height, Bitmap.Config.ARGB_8888);
                    } catch (OutOfMemoryError unused) {
                        return null;
                    }
                } catch (InterruptedException unused2) {
                    return null;
                }
            } catch (InterruptedException unused3) {
                return null;
            }
        } catch (OutOfMemoryError unused4) {
            return null;
        }
    }
}
