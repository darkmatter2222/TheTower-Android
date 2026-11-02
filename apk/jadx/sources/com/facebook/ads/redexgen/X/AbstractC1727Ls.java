package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.os.IBinder;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ls, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC1727Ls {
    public static Method A00;
    public static byte[] A01;
    public static String[] A02 = {"Ew43nY4XtVoC5zlDtkt2ZWcN1dsEGxa", "fn2q5rJwxjNsJISI", "4R0AbhH5RA3TlqK9gDIiy", "VfnXVFOu7PusRmCJEAqAZxiewZgMCJeR", "4q53lVY6OzLtolmL0oLZ86FUrdMd1", "DSFwamS7NgBawa1FfsKE3t3M6ZVZ6", "hwUNrRKyYm9d1FcTsZtGT6Jy3Iu78Lug", "C875yeeqymeyePPFGyiScmxWvDpzbWmg"};

    static {
        A03();
    }

    public static IBinder A00(Bundle bundle, String str) {
        return N1.A02 >= 18 ? bundle.getBinder(str) : A01(bundle, str);
    }

    public static IBinder A01(Bundle bundle, String str) {
        Method method = A00;
        String strA02 = A02(0, 10, 72);
        if (method == null) {
            try {
                A00 = Bundle.class.getMethod(A02(88, 10, 1), String.class);
                A00.setAccessible(true);
                method = A00;
            } catch (NoSuchMethodException e) {
                MV.A09(strA02, A02(52, 36, 125), e);
                return null;
            }
        }
        try {
            return (IBinder) method.invoke(bundle, str);
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
            MV.A09(strA02, A02(10, 42, 87), e2);
            return null;
        }
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = (bArrCopyOfRange[i4] ^ i3) ^ 124;
            String[] strArr = A02;
            if (strArr[2].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            A02[1] = "nYOMXcFf94ybqm7";
            bArrCopyOfRange[i4] = (byte) i5;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A01 = new byte[]{118, 65, 90, 80, 88, 81, 97, SignedBytes.MAX_POWER_OF_TWO, 93, 88, 109, 74, 66, 71, 78, 79, Ascii.VT, 95, 68, Ascii.VT, 66, 69, 93, 68, SignedBytes.MAX_POWER_OF_TWO, 78, Ascii.VT, 76, 78, 95, 98, 105, 66, 69, 79, 78, 89, Ascii.VT, 93, 66, 74, Ascii.VT, 89, 78, 77, 71, 78, 72, 95, 66, 68, 69, 71, 96, 104, 109, 100, 101, 33, 117, 110, 33, 115, 100, 117, 115, 104, 100, 119, 100, 33, 102, 100, 117, 72, 67, 104, 111, 101, 100, 115, 33, 108, 100, 117, 105, 110, 101, Ascii.SUB, Ascii.CAN, 9, 52, 63, Ascii.DC4, 19, Ascii.EM, Ascii.CAN, Ascii.SI};
    }
}
