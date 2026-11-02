package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.internal.api.AdSettingsApi;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.facebook.ads.internal.settings.MultithreadedBundleWrapper;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.UUID;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.jW, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2656jW implements AdSettingsApi {
    public static byte[] A00;
    public static String[] A01 = {"TFkOB7WAPr6F4oSDAD2lBM3orjMmpCql", "qm70b4Ur0FRBuwfAT3tN36vqG0Nf4UFd", "zPpQ1cnfbXvczPvVr", "8IvLkkrNdMNEKNCoxjkf6IUs19Br2Jri", "GW45NL8mXfcvSmeq7", "yk6fztNbTNbTdYOeWP4a4qU6KiJuVBGT", "Yi7aT5eKgI7tScmdPed7vydq7f2NoqCT", "ldtlhzHQs0POAzCz5K2SoOIZIeNjlq2l"};
    public static final String A02;
    public static final Collection<String> A03;
    public static volatile boolean A04;

    static {
        A01();
        A02 = AdInternalSettings.class.getSimpleName();
        A03 = new HashSet();
        A03.add(A00(262, 3, 49));
        A03.add(A00(252, 10, kotlin.fh.h1));
        A03.add(A00(265, 7, 32));
        A03.add(A00(272, 8, 111));
        A04 = false;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 48);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{124, 119, 101, 8, Ascii.SI, 9, 4, Ascii.US, Ascii.RS, Ascii.CR, Ascii.DC2, Ascii.CAN, Ascii.RS, 4, Ascii.DC2, Ascii.US, 4, 19, Ascii.SUB, 8, 19, 4, Ascii.DLE, Ascii.RS, 2, 107, 90, 76, 75, Ascii.US, 82, 80, 91, 90, Ascii.US, 91, 90, 73, 86, 92, 90, Ascii.US, 87, 94, 76, 87, 5, Ascii.US, 45, Ascii.DC2, Ascii.US, Ascii.DC4, 90, Ascii.SO, Ascii.US, 9, Ascii.SO, 19, Ascii.DC4, Ascii.GS, 90, 3, Ascii.NAK, Ascii.SI, 8, 90, Ascii.ESC, 10, 10, 90, Ascii.CR, 19, Ascii.SO, Ascii.DC2, 90, 60, Ascii.ESC, Ascii.EM, Ascii.US, Ascii.CAN, Ascii.NAK, Ascii.NAK, 17, 93, 9, 90, Ascii.ESC, Ascii.RS, 90, Ascii.SI, Ascii.DC4, 19, Ascii.SO, 9, 90, 3, Ascii.NAK, Ascii.SI, 90, Ascii.ETB, Ascii.SI, 9, Ascii.SO, 90, 9, 10, Ascii.US, Ascii.EM, 19, Ascii.FS, 3, 90, Ascii.SO, Ascii.DC2, Ascii.US, 90, Ascii.RS, Ascii.US, Ascii.FF, 19, Ascii.EM, Ascii.US, 90, Ascii.DC2, Ascii.ESC, 9, Ascii.DC2, Ascii.US, Ascii.RS, 90, 51, 62, 90, Ascii.SO, Ascii.NAK, 90, Ascii.US, Ascii.DC4, 9, Ascii.SI, 8, Ascii.US, 90, Ascii.SO, Ascii.DC2, Ascii.US, 90, Ascii.RS, Ascii.US, Ascii.SYN, 19, Ascii.FF, Ascii.US, 8, 3, 90, Ascii.NAK, Ascii.FS, 90, Ascii.SO, Ascii.US, 9, Ascii.SO, 90, Ascii.ESC, Ascii.RS, 9, 86, 90, Ascii.ESC, Ascii.RS, Ascii.RS, 90, Ascii.SO, Ascii.DC2, Ascii.US, 90, Ascii.FS, Ascii.NAK, Ascii.SYN, Ascii.SYN, Ascii.NAK, Ascii.CR, 19, Ascii.DC4, Ascii.GS, 90, Ascii.EM, Ascii.NAK, Ascii.RS, Ascii.US, 90, Ascii.CAN, Ascii.US, Ascii.FS, Ascii.NAK, 8, Ascii.US, 90, Ascii.SYN, Ascii.NAK, Ascii.ESC, Ascii.RS, 19, Ascii.DC4, Ascii.GS, 90, Ascii.ESC, Ascii.DC4, 90, Ascii.ESC, Ascii.RS, SignedBytes.MAX_POWER_OF_TWO, 90, 59, Ascii.RS, 41, Ascii.US, Ascii.SO, Ascii.SO, 19, Ascii.DC4, Ascii.GS, 9, 84, Ascii.ESC, Ascii.RS, Ascii.RS, 46, Ascii.US, 9, Ascii.SO, 62, Ascii.US, Ascii.FF, 19, Ascii.EM, Ascii.US, 82, 88, Ascii.SUB, Ascii.ESC, 8, Ascii.ETB, Ascii.GS, Ascii.ESC, 55, Ascii.SUB, 54, Ascii.US, Ascii.CR, Ascii.SYN, 60, 52, 52, 60, 55, 62, 4, 40, 63, 48, 114, 101, 106, 102, 114, 127, 104, 40, 38, 96, 41, Base64.padSymbol, 48, 39, 103, 105, 43, 47};
    }

    public static void A02(String str) {
        if (A04) {
            return;
        }
        A04 = true;
        Log.i(A02, A00(25, 23, 15) + str);
        Log.i(A02, A00(48, 192, 74) + str + A00(0, 3, 110));
    }

    @Override // com.facebook.ads.internal.api.AdSettingsApi
    public final boolean isTestMode(Context context) {
        if (AdInternalSettings.isDebugBuild() || AdInternalSettings.isExplicitTestMode() || A03.contains(Build.PRODUCT)) {
            return true;
        }
        MultithreadedBundleWrapper multithreadedBundleWrapper = AdInternalSettings.sSettingsBundle;
        String strA00 = A00(3, 22, kotlin.fh.h1);
        String string = multithreadedBundleWrapper.getString(strA00, null);
        if (string == null) {
            SharedPreferences sharedPreferencesA00 = AbstractC2957oU.A00(context);
            String strA01 = A00(240, 12, 78);
            string = sharedPreferencesA00.getString(strA01, null);
            if (TextUtils.isEmpty(string)) {
                UUID uuidRandomUUID = UUID.randomUUID();
                if (A01[6].charAt(4) == 'r') {
                    throw new RuntimeException();
                }
                String[] strArr = A01;
                strArr[4] = "ACuTT9OHS44wxpENU";
                strArr[2] = "rDA9ItLQjR7JTNF9w";
                string = uuidRandomUUID.toString();
                sharedPreferencesA00.edit().putString(strA01, string).apply();
            }
            AdInternalSettings.sSettingsBundle.putString(strA00, string);
        }
        if (AdInternalSettings.getTestDevicesList().contains(string)) {
            return true;
        }
        A02(string);
        return false;
    }

    @Override // com.facebook.ads.internal.api.AdSettingsApi
    public final void turnOnDebugger() {
        AbstractC2933o5.A02();
    }
}
