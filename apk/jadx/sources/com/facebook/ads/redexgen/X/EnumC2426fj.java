package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.fj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class EnumC2426fj {
    public static byte[] A01;
    public static String[] A02 = {"uWeYqRqj2CFddaK1TEbbXELMXn1", "pwHLR6E7O8pCQEo2Mdq2SIJTtAJsUy1b", "hzLxTv7mFlWS1jMhemum6kg3dZSMAgOI", "fLAfUk9iUPLdjKf71Gd3YKMhyYHXnvWI", "S7n3yA9UQyVOq9dOcIqrhChCL6ten", "TvghY6oRatwNhskHrQ5x3iw7tpebf6gH", "qf5wewW9IstP4QCsRPqhuigoLiQSUPC2", "ByvIinkqPsCgY7QXgHZrWkdUD8Lcf6oa"};
    public static final /* synthetic */ EnumC2426fj[] A03;
    public static final EnumC2426fj A04;
    public static final EnumC2426fj A05;
    public final String A00;

    static {
        A02();
        String strA01 = A01(0, 22, 20);
        A04 = new EnumC2426fj(strA01, 0, strA01);
        String strA02 = A01(22, 20, 94);
        A05 = new EnumC2426fj(strA02, 1, strA02);
        A03 = A03();
    }

    public EnumC2426fj(String str, int i, String str2) {
        super(str, i);
        this.A00 = str2;
    }

    public static EnumC2426fj A00(String str) {
        for (EnumC2426fj enumC2426fj : values()) {
            if (enumC2426fj.A00.equalsIgnoreCase(str)) {
                return enumC2426fj;
            }
        }
        return A04;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 76);
            String[] strArr = A02;
            if (strArr[2].charAt(31) != strArr[3].charAt(31)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[2] = "lLINjPSI7KynJ6Z03rXFIgcUMrVc0i0I";
            strArr2[3] = "WuF6uC9vMpC4p9fN33UW4I9vqGxizPCI";
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{Ascii.EM, Ascii.CR, Ascii.FF, Ascii.ETB, 7, Ascii.VT, 19, 17, 8, 7, Ascii.ETB, Ascii.SYN, 7, Ascii.SO, 17, Ascii.FS, Ascii.GS, Ascii.ETB, 7, Ascii.GS, Ascii.SYN, Ascii.FS, 68, 91, 86, 87, 93, 77, 84, 93, SignedBytes.MAX_POWER_OF_TWO, 81, 87, 77, 70, 91, 95, 87, 77, 87, 92, 86};
    }

    public static /* synthetic */ EnumC2426fj[] A03() {
        EnumC2426fj[] enumC2426fjArr = new EnumC2426fj[2];
        EnumC2426fj enumC2426fj = A04;
        if (A02[4].length() != 29) {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[6] = "f80i3KOQjsW6P8tLVdIzmwewPXrTfxh0";
        strArr[7] = "jKvyurir8soCACtK72T4v7dMdJCULeIM";
        enumC2426fjArr[0] = enumC2426fj;
        enumC2426fjArr[1] = A05;
        return enumC2426fjArr;
    }

    public static EnumC2426fj valueOf(String str) {
        return (EnumC2426fj) Enum.valueOf(EnumC2426fj.class, str);
    }

    public static EnumC2426fj[] values() {
        return (EnumC2426fj[]) A03.clone();
    }
}
