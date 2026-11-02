package com.facebook.ads.redexgen.X;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.i5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2569i5 {
    public static boolean A00;
    public static byte[] A01;
    public static String[] A02 = {"Y0rICHp14ARSNu9MlXOQlrQKpJ7V2hwf", "9bmfgm9m8nITbmWk0ICcMAG3MrS", "cwEc0HiI6y8ZhWJ4MUGuUSsWKgKIPOUb", "CeguwAwwe", "1UN8Pz5pD", "KG5kSs2s3o8nfvSCZiVMOrQyfdZTA2DP", "BO8EwxINC4bfwl9QwPIiUjcYWt5Jq71N", "VnsxrIf3KddrD6MinhDJfsdqz9CBs5tu"};

    static {
        A03();
        A00 = true;
    }

    public static BitmapDrawable A00(C1618Hi c1618Hi, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            byte[] bArrDecode = Base64.decode(str, 0);
            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
            if (bitmapDecodeByteArray != null && (!A00 || A05(c1618Hi, bitmapDecodeByteArray))) {
                BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmapDecodeByteArray);
                bitmapDrawable.setTileModeXY(Shader.TileMode.REPEAT, Shader.TileMode.REPEAT);
                Resources resources = c1618Hi.getResources();
                if (resources != null) {
                    DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                    if (displayMetrics != null) {
                        bitmapDrawable.setTargetDensity(displayMetrics.densityDpi);
                    } else {
                        A04(c1618Hi, A02(0, 23, 116));
                    }
                } else {
                    A04(c1618Hi, A02(23, 18, InterfaceC3669k1.d.b.j));
                }
                return bitmapDrawable;
            }
            return null;
        } catch (Throwable th) {
            c1618Hi.A08().ABz(A02(59, 3, 42), AbstractC2786lf.A1u, new C2787lg(th));
            return null;
        }
    }

    public static C2568i4 A01(C1618Hi c1618Hi, String str) {
        BitmapDrawable bitmapDrawableA00;
        try {
            if (TextUtils.isEmpty(str) || (bitmapDrawableA00 = A00(c1618Hi, str)) == null) {
                return null;
            }
            C2568i4 c2568i4 = new C2568i4(c1618Hi);
            c2568i4.setBackground(bitmapDrawableA00);
            c2568i4.setClickable(false);
            c2568i4.setFocusable(false);
            return c2568i4;
        } catch (Throwable th) {
            c1618Hi.A08().ABz(A02(59, 3, 42), AbstractC2786lf.A1u, new C2787lg(th));
            return null;
        }
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A02[2].charAt(4) == 'h') {
                throw new RuntimeException();
            }
            A02[5] = "V4DWKv2CalsHghC0GoFw5ZQ5aRA0odCa";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 71);
            i4++;
        }
    }

    public static void A03() {
        A01 = new byte[]{-1, 36, 46, 43, 39, Ascii.FS, 52, 8, 32, 47, 45, 36, Ascii.RS, 46, -37, 36, 46, -37, 41, 48, 39, 39, -23, 9, Ascii.FS, 42, 38, 44, 41, Ascii.SUB, Ascii.FS, 42, -41, 32, 42, -41, 37, 44, 35, 35, -27, -65, -54, -43, -46, -51, -54, -35, -46, -40, -41, -119, -49, -54, -46, -43, -50, -51, -105, -34, -32, -35};
    }

    public static void A04(C1618Hi c1618Hi, String str) {
        c1618Hi.A08().ABz(A02(59, 3, 42), AbstractC2786lf.A1u, new C2787lg(str));
    }

    public static boolean A05(C1618Hi c1618Hi, Bitmap bitmap) {
        int i = 0;
        while (true) {
            int width = bitmap.getWidth();
            if (A02[2].charAt(4) == 'h') {
                throw new RuntimeException();
            }
            A02[2] = "44dBdHmZhYYzc5DiIB6SXSnn6xfqMO61";
            if (i >= width) {
                return true;
            }
            for (int i2 = 0; i2 < bitmap.getHeight(); i2++) {
                if (Color.alpha(bitmap.getPixel(i, i2)) / 255.0f > 0.03f) {
                    A04(c1618Hi, A02(41, 18, 34));
                    return false;
                }
            }
            i++;
        }
    }
}
