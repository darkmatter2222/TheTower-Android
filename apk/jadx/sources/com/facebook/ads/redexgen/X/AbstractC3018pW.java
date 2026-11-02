package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.pW, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3018pW {
    public static byte[] A00;
    public static final Handler A01;
    public static final Set<String> A02;

    static {
        A03();
        A02 = new HashSet();
        A01 = new Handler(Looper.getMainLooper());
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 118);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{-60, -52, 8, Ascii.CR, Ascii.ETB, Ascii.DC4, Ascii.DLE, 5, Ascii.GS, 9, 8, -60, 10, 19, Ascii.SYN, -60, Ascii.CAN, 9, Ascii.ETB, Ascii.CAN, -60, 5, 8, Ascii.ETB, -60, 19, Ascii.DC2, Ascii.DLE, Ascii.GS, -51, -4, 8, 6, -57, -1, -6, -4, -2, -5, 8, 8, 4, -57, 4, -6, Ascii.CR, -6, 7, -6, Base64.padSymbol, 73, 71, 8, SignedBytes.MAX_POWER_OF_TWO, 59, Base64.padSymbol, 63, 60, 73, 73, 69, 8, 81, 59, 69, 67, 84, 59, 77, 66, 67};
    }

    public static void A04(Context context, String str) {
        if (AdInternalSettings.isTestMode(context)) {
            String str2 = str + A01(0, 30, 46);
        }
    }

    public static void A05(C1617Hh c1617Hh, InterfaceC3056q8 interfaceC3056q8, String str) {
        if (str == null || A02.contains(str)) {
            return;
        }
        if (A08(c1617Hh.getPackageManager(), str)) {
            interfaceC3056q8.AGA(str);
            return;
        }
        A02.add(str);
        A01.removeCallbacksAndMessages(null);
        A01.postDelayed(new RunnableC3017pV(new int[]{0}, str, c1617Hh, interfaceC3056q8), 1000L);
    }

    public static void A06(C1617Hh c1617Hh, String str) {
        if (!(c1617Hh.getPackageName().equals(A01(30, 19, 35)) || c1617Hh.getPackageName().equals(A01(49, 22, 100)))) {
            AbstractC2462gJ.A00(c1617Hh).A0K(str, null, 5);
        } else {
            A01.removeCallbacksAndMessages(null);
            A02.remove(str);
        }
    }

    public static void A07(C1617Hh c1617Hh, String str, InterfaceC3056q8 interfaceC3056q8) {
        if (c1617Hh.getPackageName().equals(A01(30, 19, 35)) || c1617Hh.getPackageName().equals(A01(49, 22, 100))) {
            A05(c1617Hh, interfaceC3056q8, str);
        } else {
            AbstractC2462gJ.A00(c1617Hh).A0K(str, interfaceC3056q8, 4);
        }
    }

    public static boolean A08(PackageManager packageManager, String str) {
        if (packageManager == null) {
            return false;
        }
        try {
            packageManager.getPackageGids(str);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }
}
