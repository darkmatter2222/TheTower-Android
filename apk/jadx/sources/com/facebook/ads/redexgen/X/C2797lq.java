package com.facebook.ads.redexgen.X;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.lq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2797lq {
    public static byte[] A02;
    public static String[] A03 = {"4UXivJ9bWzVmUKEORuimcsc25E9yHKjM", "eA36e27H2SQKTgfHA43cU1z3ajsDp04A", "C0QLMKXu1JepGMQqxbYq5t6gzwkqhJGP", "Vxu4w1TEkVm1YGegZeLuyUzWRGhVVehU", "9DWEeZJi13noDyT5Fh2XUwX4KzxcmXKd", "eTzqs10iSeQQ2KrnCOv26Mt4rNMbsJLV", "s8UczS0FAxqS0Axd9J", "JShALZiYLlnObKc6igiSgdntorMevFdl"};
    public static final String A04;
    public final C2755lA A00;
    public final String A01;

    static {
        A02();
        A04 = Build.VERSION.RELEASE;
    }

    public C2797lq(C2755lA c2755lA) {
        this(c2755lA, null);
    }

    public C2797lq(C2755lA c2755lA, String str) {
        this.A00 = c2755lA;
        this.A01 = str;
    }

    private String A00() {
        if (this.A01 != null) {
            return this.A01;
        }
        PendingIntent activity = PendingIntent.getActivity(this.A00, 0, new Intent(), Build.VERSION.SDK_INT >= 23 ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 0);
        if (activity == null) {
            return A01(0, 0, 80);
        }
        String creatorPackage = activity.getCreatorPackage();
        String[] strArr = A03;
        if (strArr[4].charAt(10) != strArr[7].charAt(10)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A03;
        strArr2[4] = "M2XECY7QMXn1FrH7rdbJ4411TvNMNnZf";
        strArr2[7] = "sSn4zkmjSjnaGqTVBa9HJwb0pjYj5M5c";
        return creatorPackage;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 84);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{-17, -4, -14, 0, -3, -9, -14, -68, -2, -13, 0, -5, -9, 1, 1, -9, -3, -4, -68, -48, -41, -36, -46, -19, -49, -47, -47, -45, -31, -31, -41, -48, -41, -38, -41, -30, -25, -19, -31, -45, -32, -28, -41, -47, -45, -47, -49, -40, -49, -36, -45, -51, -13, -21, -14, -15, -24};
    }

    public final int A03() {
        return AbstractC3020pY.A01(this.A00);
    }

    public final int A04() {
        try {
            return this.A00.getPackageManager().getPackageInfo(A00(), 0).versionCode;
        } catch (Throwable th) {
            this.A00.A08().ABz(A01(45, 7, 22), AbstractC2786lf.A1M, new C2787lg(th));
            return 0;
        }
    }

    public final String A05() {
        try {
            CharSequence applicationLabel = this.A00.getPackageManager().getApplicationLabel(this.A00.getPackageManager().getApplicationInfo(A00(), 0));
            if (applicationLabel != null && applicationLabel.length() > 0) {
                return applicationLabel.toString();
            }
        } catch (Throwable th) {
            this.A00.A08().ABz(A01(45, 7, 22), AbstractC2786lf.A1M, new C2787lg(th));
        }
        if (A03[6].length() != 18) {
            throw new RuntimeException();
        }
        A03[6] = "1fZ6UIp0jk3A9Vyxip";
        return A01(0, 0, 80);
    }

    public final String A06() {
        String str = null;
        try {
            str = this.A00.getPackageManager().getPackageInfo(A00(), 0).versionName;
        } catch (Throwable th) {
            this.A00.A08().ACp(A01(45, 7, 22), AbstractC2786lf.A1M, new C2787lg(th));
        }
        return !TextUtils.isEmpty(str) ? str : A01(0, 0, 80);
    }

    public final String A07() {
        String strA7j = this.A00.A05().A7j();
        return strA7j != null ? strA7j : A00();
    }

    public final String A08() {
        String networkOperatorName;
        TelephonyManager telephonyManager = (TelephonyManager) this.A00.getSystemService(A01(52, 5, 47));
        if (telephonyManager != null && (networkOperatorName = telephonyManager.getNetworkOperatorName()) != null && networkOperatorName.length() > 0) {
            return networkOperatorName;
        }
        String[] strArr = A03;
        if (strArr[5].charAt(29) != strArr[2].charAt(29)) {
            throw new RuntimeException();
        }
        A03[0] = "4uAFXpJjJNyMuVCL4IR188dhDRybrTml";
        return A01(0, 0, 80);
    }

    public final String A09() {
        if (Build.MANUFACTURER != null) {
            int length = Build.MANUFACTURER.length();
            String[] strArr = A03;
            if (strArr[5].charAt(29) != strArr[2].charAt(29)) {
                throw new RuntimeException();
            }
            A03[0] = "4KWcrXNI2CiMu5mhxtQIP5VVZPBJmlLQ";
            if (length > 0) {
                return Build.MANUFACTURER;
            }
        }
        return A01(0, 0, 80);
    }

    public final String A0A() {
        return (Build.MODEL == null || Build.MODEL.length() <= 0) ? A01(0, 0, 80) : Build.MODEL;
    }

    public final String A0B() {
        String installerPackageName;
        try {
            String strA00 = A00();
            if (strA00 != null && strA00.length() >= 0 && (installerPackageName = this.A00.getPackageManager().getInstallerPackageName(strA00)) != null && installerPackageName.length() > 0) {
                return installerPackageName;
            }
        } catch (Throwable th) {
            this.A00.A08().ACp(A01(45, 7, 22), AbstractC2786lf.A1M, new C2787lg(th));
        }
        return A01(0, 0, 80);
    }

    public final boolean A0C() {
        return this.A00.checkCallingOrSelfPermission(A01(0, 45, 58)) == 0;
    }
}
