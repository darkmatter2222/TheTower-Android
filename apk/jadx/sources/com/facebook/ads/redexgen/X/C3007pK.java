package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.facebook.ads.internal.util.activity.ActivityUtils;
import com.facebook.ads.internal.util.activity.AdActivityIntent;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.google.common.base.Ascii;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.pK, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3007pK {
    public static byte[] A00;
    public static String[] A01 = {"HfGv3264Bq2TQ34NqRtE4P30TXR", "AZVpgJ8fi5FDz5AiC", "FCmmf0GU", "NGZF99o8OEHjBvmOxlLxN", "MEp80XUn5zKurDhCJ73", "hVp2plT6ulDLwck", "CErebgOhZelO8plRL7vU3", "v0a34uu5Y8rm3tpqkSr554RtUBdvL4ru"};

    static {
        A09();
    }

    private int A00(C1618Hi c1618Hi) {
        PackageInfo packageInfo;
        try {
            PackageManager packageManager = c1618Hi.getPackageManager();
            if (packageManager == null || (packageInfo = packageManager.getPackageInfo(A07(432, 19, 9), 0)) == null || TextUtils.isEmpty(packageInfo.versionName)) {
                return -1;
            }
            return Integer.parseInt(packageInfo.versionName.split(A07(166, 2, 74), 2)[0]);
        } catch (PackageManager.NameNotFoundException | NumberFormatException unused) {
            return -1;
        }
    }

    public static Intent A01(Uri uri) {
        Intent intent = new Intent(A07(186, 26, 50), uri);
        intent.setComponent(null);
        intent.setSelector(null);
        return intent;
    }

    public static Intent A02(C1618Hi c1618Hi, Uri uri) {
        Intent intentA01 = A01(uri);
        intentA01.addCategory(A07(212, 33, 67));
        intentA01.addFlags(268435456);
        intentA01.putExtra(A07(308, 34, 31), c1618Hi.getPackageName());
        intentA01.putExtra(A07(514, 14, 72), false);
        if (C2863mv.A24(c1618Hi)) {
            if (A07(528, 2, 65).equals(uri.getScheme())) {
                intentA01.setPackage(A07(432, 19, 9));
            }
        }
        return intentA01;
    }

    public static Intent A03(C1618Hi c1618Hi, Uri uri) {
        Intent intentA01 = A01(uri);
        intentA01.setPackage(A07(342, 19, 121));
        intentA01.putExtra(A07(271, 8, 19), c1618Hi.getPackageName());
        intentA01.putExtra(A07(714, 7, 91), true);
        return intentA01;
    }

    public static Uri A04(C1618Hi c1618Hi, Uri uri) {
        boolean zEquals = A07(IronSourceError.ERROR_NT_INSTANCE_LOAD_TIMEOUT, 6, 21).equals(uri.getScheme());
        String strA07 = A07(607, 26, 91);
        if (zEquals) {
            return AbstractC3011pP.A00(strA07 + uri.getEncodedQuery());
        }
        if (uri.toString().startsWith(strA07)) {
            return uri;
        }
        c1618Hi.A0F().AC4(5);
        return null;
    }

    private final EnumC2358ec A05(C1618Hi c1618Hi, Uri uri, String str, Map<String, String> map) throws C2995p6 {
        if (AbstractC3049q1.A03(c1618Hi, uri)) {
            return EnumC2358ec.A09;
        }
        boolean zA05 = AbstractC2864mw.A05(c1618Hi);
        if (A0G(uri) && zA05) {
            A0C(c1618Hi, uri, str, map);
            return EnumC2358ec.A07;
        }
        c1618Hi.A0F().AAb(zA05);
        A0A(c1618Hi, uri);
        return EnumC2358ec.A06;
    }

    public static EnumC2358ec A06(C3007pK c3007pK, C1618Hi c1618Hi, Uri uri, String str, Map<String, String> map) throws C2995p6 {
        boolean z = A0G(uri) && A07(721, 15, 25).equals(uri.getHost());
        if (!A07(IronSourceError.ERROR_NT_INSTANCE_LOAD_TIMEOUT, 6, 21).equals(uri.getScheme()) && !z) {
            return c3007pK.A05(c1618Hi, uri, str, map);
        }
        try {
            c3007pK.A0B(c1618Hi, uri, str);
            return EnumC2358ec.A02;
        } catch (C3005pI unused) {
            return c3007pK.A05(c1618Hi, uri, str, map);
        }
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 60);
        }
        return new String(bArrCopyOfRange);
    }

    private String A08(String str) {
        return Base64.encodeToString(str.getBytes(), 0);
    }

    public static void A09() {
        A00 = new byte[]{-49, -36, -19, -44, -48, -62, -49, -19, -31, -45, -47, -29, -32, -45, -19, -30, -35, -39, -45, -36, -20, -7, 10, -14, -5, -2, 10, -20, -17, 10, -18, -6, -7, -1, -16, -7, -1, -56, -58, -47, -47, -54, -41, -28, -55, -44, -46, -58, -50, -45, -6, Ascii.CAN, 37, -34, 43, -41, 42, 43, Ascii.CAN, 41, 43, -41, -8, 44, Ascii.ESC, 32, Ascii.FS, 37, Ascii.SUB, Ascii.FS, 5, Ascii.FS, 43, 46, 38, 41, 34, -8, Ascii.SUB, 43, 32, 45, 32, 43, 48, -27, -41, 4, Ascii.CAN, 34, Ascii.FS, -41, 42, 44, 41, Ascii.FS, -41, 43, Ascii.US, Ascii.CAN, 43, -41, 32, 43, -34, 42, -41, 32, 37, -41, 48, 38, 44, 41, -41, -8, 37, Ascii.ESC, 41, 38, 32, Ascii.ESC, 4, Ascii.CAN, 37, 32, Ascii.GS, Ascii.FS, 42, 43, -27, 47, 36, 35, -41, Ascii.GS, 32, 35, Ascii.FS, -27, -88, -69, -73, -75, -92, -62, -72, -75, -81, -60, -64, -65, -13, -30, -25, -29, -20, -31, -29, -52, -29, -14, -11, -19, -16, -23, -30, -76, -84, -71, -86, -84, -82, -65, -76, -63, -76, -65, -60, -58, -45, -55, -41, -44, -50, -55, -49, -36, -46, -32, -35, -41, -46, -100, -41, -36, -30, -45, -36, -30, -100, -49, -47, -30, -41, -35, -36, -100, -60, -73, -77, -59, -32, -19, -29, -15, -18, -24, -29, -83, -24, -19, -13, -28, -19, -13, -83, -30, -32, -13, -28, -26, -18, -15, -8, -83, -63, -47, -50, -42, -46, -64, -63, -53, -60, -90, -77, -77, -80, -17, -1, -4, 4, 0, -14, -1, -30, -33, -39, -76, -60, -63, -55, -59, -73, -60, -79, -58, -53, -62, -73, -78, -80, -69, -69, -76, -63, -104, -77, -39, -41, -30, -30, -37, -24, -54, -17, -26, -37, -72, -72, -55, -76, -55, -50, -59, -70, -77, -68, -71, -75, -66, -60, -92, -65, -69, -75, -66, -66, -54, -56, -119, -68, -55, -65, -51, -54, -60, -65, -119, -67, -51, -54, -46, -50, -64, -51, -119, -68, -53, -53, -57, -60, -66, -68, -49, -60, -54, -55, -70, -60, -65, Ascii.CAN, 36, 34, -29, Ascii.SYN, 35, Ascii.EM, 39, 36, Ascii.RS, Ascii.EM, -29, 43, Ascii.SUB, 35, Ascii.EM, Ascii.RS, 35, Ascii.FS, -7, 5, 3, -60, -4, -9, -7, -5, -8, 5, 5, 1, -60, -3, 5, 5, -3, 2, -5, 6, 2, -9, Ascii.SI, 9, 10, 5, 8, -5, -9, 4, -60, -35, 5, 5, -3, 2, -5, -26, 2, -9, Ascii.SI, -23, 10, 5, 8, -5, -41, -28, -27, Ascii.FF, -5, 8, 2, -9, Ascii.SI, -37, Ascii.SO, 10, -5, 8, 4, -9, 2, -41, -7, 10, -1, Ascii.FF, -1, 10, Ascii.SI, -88, -76, -78, 115, -85, -90, -88, -86, -89, -76, -76, -80, 115, -80, -90, -71, -90, -77, -90, -22, -10, -11, -19, -16, -18, -26, -6, -4, -9, -9, -10, -7, -5, -6, -44, -4, -13, -5, -16, -34, -16, -11, -21, -10, -2, -76, -64, -65, -73, -70, -72, -80, -60, -58, -63, -63, -64, -61, -59, -60, -92, -63, -67, -70, -59, -92, -76, -61, -74, -74, -65, -98, -58, -67, -59, -70, -88, -70, -65, -75, -64, -56, -25, -10, -23, -27, -8, -23, -29, -14, -23, -5, -29, -8, -27, -26, -29, -33, Ascii.FF, Ascii.SI, Ascii.DC2, Ascii.SUB, Ascii.VT, Ascii.CAN, Ascii.VT, 10, 5, 9, Ascii.DC2, Ascii.SI, 9, 17, 5, 10, Ascii.VT, Ascii.DC2, 7, Ascii.US, 5, 19, Ascii.EM, -5, -12, 1, -9, -1, -8, 5, -25, -4, 0, -8, -53, -41, -41, -45, -75, -63, -63, -67, -121, 124, 124, -67, -71, -82, -58, 123, -76, -68, -68, -76, -71, -78, 123, -80, -68, -70, 124, -64, -63, -68, -65, -78, 124, -82, -67, -67, -64, 124, -7, 5, 5, 1, 4, -1, Ascii.VT, Ascii.VT, 7, 10, -47, -58, -58, 7, 3, -8, Ascii.DLE, -59, -2, 6, 6, -2, 3, -4, -59, -6, 6, 4, -58, -5, -42, -80, -85, -60, -55, -50, -49, -68, -55, -49, -70, -62, -68, -56, -64, -50, -63, -53, -73, -69, -71, -69, -73, -66, -63, -60, -52, -67, -54, -73, -69, -60, -63, -69, -61, -53, -73, -57, -58, -73, -69, -52, -71, 35, 45, Ascii.EM, Ascii.GS, 44, Ascii.US, Ascii.ESC, 46, 35, 48, Ascii.US, Ascii.EM, Ascii.ESC, 45, Ascii.EM, Ascii.GS, 46, Ascii.ESC, Ascii.EM, 48, -20, -81, -71, -91, -68, 120, -91, -86, -85, -71, -81, -83, -76, -66, -78, -61, -68, -74, -59, 6, Ascii.CR, -4, 9, 3, -8, Ascii.DLE, -59, -63, -74, -50, -125, -68, -60, -60, -68, -63, -70, -125, -72, -60, -62, -39, -37, -40, -42, -40, -56, -52, -40, -51, -50, -55, -53, -56, -58, -56, -72, -68, -56, -67, -66, -72, -69, -53, -70, -57, -67, -72, -62, -68, -56, -57, -72, -50, -53, -59, Ascii.ETB, Ascii.EM, Ascii.SYN, Ascii.DC4, Ascii.SYN, 6, 10, Ascii.SYN, Ascii.VT, Ascii.FF, 6, 9, Ascii.EM, 8, Ascii.NAK, Ascii.VT, 6, Ascii.NAK, 8, Ascii.DC4, Ascii.FF, -67, -65, -68, -70, -68, -84, -80, -68, -79, -78, -84, -71, -82, -81, -78, -71, -84, -64, -62, -81, -63, -74, -63, -71, -78, -83, -81, -84, -86, -84, -100, -96, -84, -95, -94, -100, -87, -98, -97, -94, -87, -100, -79, -90, -79, -87, -94, -13, -26, -12, -22, -5, -26, -50, -16, -27, -26, -16, -23, -28, -20, -16, -32, -60, -33, Ascii.ETB, 10, 6, Ascii.CAN, -11, Ascii.SUB, 17, 6};
    }

    private void A0A(C1618Hi c1618Hi, Uri uri) throws C2995p6 {
        C2997p8.A0F(c1618Hi, A02(c1618Hi, uri));
    }

    private final void A0B(C1618Hi c1618Hi, Uri uri, String str) throws C2995p6, C3005pI {
        if (!A0I(c1618Hi)) {
            throw new C3005pI();
        }
        if (C2863mv.A1I(c1618Hi)) {
            String queryParameter = uri.getQueryParameter(A07(633, 2, 11));
            if (!TextUtils.isEmpty(queryParameter)) {
                AbstractC2473gU.A03(queryParameter, A07(635, 13, 31), uri.toString());
            }
        }
        boolean z = (c1618Hi.A0H().A01() && C2863mv.A1g(c1618Hi)) || (C2863mv.A25(c1618Hi) && A0J(c1618Hi));
        if ((!z && C2863mv.A2T(c1618Hi) && C2997p8.A0G(c1618Hi, A03(c1618Hi, uri))) || A0N(c1618Hi, uri, str) || A0L(c1618Hi, uri)) {
            return;
        }
        Intent intentA02 = A02(c1618Hi, uri);
        intentA02.setPackage(A07(342, 19, 121));
        String[] strArr = A01;
        if (strArr[1].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[1] = "oySe08AdloN619CTf";
        strArr2[4] = "wfeca9V2a8KiRHzYJ69";
        if (Build.VERSION.SDK_INT >= 24 && z) {
            intentA02.addFlags(268472320);
        }
        C2997p8.A0F(c1618Hi, intentA02);
        if (A01[2].length() != 8) {
            throw new RuntimeException();
        }
        A01[5] = "qFbJT162g8rKXFE";
    }

    private void A0C(C1618Hi c1618Hi, Uri uri, String str, Map<String, String> map) {
        AdActivityIntent adActivityIntentA06 = C2997p8.A06(c1618Hi);
        if (!ProcessUtils.isRemoteRenderingProcess()) {
            adActivityIntentA06.addFlags(268435456);
        }
        adActivityIntentA06.putExtra(A07(857, 8, 101), EnumC2955oR.A04);
        adActivityIntentA06.putExtra(A07(249, 10, 81), uri.toString());
        adActivityIntentA06.putExtra(A07(297, 11, 20), str);
        adActivityIntentA06.putExtra(A07(553, 11, 87), System.currentTimeMillis());
        if (map != null) {
            String strA07 = A07(279, 10, 58);
            adActivityIntentA06.putExtra(strA07, map.get(strA07));
            String strA08 = A07(675, 21, 126);
            adActivityIntentA06.putExtra(strA08, map.get(strA08));
            String strA09 = A07(648, 27, 28);
            adActivityIntentA06.putExtra(strA09, map.get(strA09));
            String strA010 = A07(IronSourceError.ERROR_AD_UNIT_CAPPED, 23, kotlin.fh.g1);
            adActivityIntentA06.putExtra(strA010, map.get(strA010));
            String strA011 = A07(259, 12, 22);
            adActivityIntentA06.putExtra(strA011, map.get(strA011));
            String strA012 = A07(289, 8, 25);
            adActivityIntentA06.putExtra(strA012, map.get(strA012));
            String strA013 = A07(849, 8, 63);
            String str2 = map.get(strA013);
            if (str2 != null) {
                adActivityIntentA06.putExtra(strA013, str2);
            }
            if (A01[5].length() != 15) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[1] = "uZm3VU4116rBIdka1";
            strArr[4] = "BeLmzDhDkOndpTZoDRc";
            String strA014 = A07(696, 12, 10);
            String str3 = map.get(strA014);
            if (str3 != null) {
                adActivityIntentA06.putExtra(strA014, Boolean.valueOf(str3));
            }
            A0F(map, adActivityIntentA06, A07(736, 10, 45));
            A0F(map, adActivityIntentA06, A07(817, 22, 1));
            A0F(map, adActivityIntentA06, A07(792, 25, 17));
            A0F(map, adActivityIntentA06, A07(771, 21, kotlin.fh.h1));
            A0F(map, adActivityIntentA06, A07(746, 25, 29));
        }
        try {
            C2997p8.A0D(c1618Hi, adActivityIntentA06);
        } catch (C2995p6 e) {
            Throwable cause = e.getCause();
            C2995p6 cause2 = e;
            if (cause != null) {
                cause2 = e.getCause();
            }
            c1618Hi.A08().ABz(A07(168, 11, 15), AbstractC2786lf.A0D, new C2787lg(cause2));
            Log.e(A07(149, 17, 66), A07(50, 90, 123), cause2);
        }
    }

    public static void A0D(C3007pK c3007pK, C1618Hi c1618Hi, Uri uri, String str) {
        c3007pK.A0O(c1618Hi, uri, str);
    }

    public static void A0E(C3007pK c3007pK, C1618Hi c1618Hi, Uri uri, String str) throws C2995p6 {
        A06(c3007pK, c1618Hi, uri, str, null);
    }

    public static void A0F(Map<String, String> map, Intent intent, String str) {
        String str2 = map.get(str);
        if (str2 != null) {
            intent.putExtra(str, str2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0038  */
    public static boolean A0G(Uri uri) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 24) {
            boolean zIsCleartextTrafficPermitted = NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
            String[] strArr = A01;
            if (strArr[1].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            A01[7] = "9DaYNTGnU6m41BFJKxw5hEDOoLHVmNBK";
            if (zIsCleartextTrafficPermitted || NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(uri.getHost())) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = true;
        }
        String scheme = uri.getScheme();
        return (z && A07(564, 4, 39).equalsIgnoreCase(scheme)) || A07(602, 5, 85).equalsIgnoreCase(scheme);
    }

    private boolean A0H(C1618Hi c1618Hi) {
        if (!C2863mv.A1E(c1618Hi)) {
            return false;
        }
        int iA0C = C2863mv.A0C(c1618Hi);
        if (A01[7].charAt(2) != 'a') {
            throw new RuntimeException();
        }
        A01[2] = "JMUKVK1n";
        int iA00 = A00(c1618Hi);
        return iA0C != -1 && iA00 != -1 && iA0C <= iA00 && Build.VERSION.SDK_INT >= 28;
    }

    private boolean A0I(C1618Hi c1618Hi) {
        Intent intent = new Intent(A07(186, 26, 50), AbstractC3011pP.A00(A07(568, 34, 17)));
        PackageManager packageManager = c1618Hi.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 0)) {
            if (resolveInfo.activityInfo != null && resolveInfo.activityInfo.applicationInfo != null) {
                if (A07(342, 19, 121).equals(resolveInfo.activityInfo.applicationInfo.packageName)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean A0J(C1618Hi c1618Hi) {
        boolean z = Build.VERSION.SDK_INT >= 24;
        boolean zA0K = A0K(c1618Hi);
        boolean z2 = z && zA0K;
        boolean z3 = true;
        boolean z4 = true;
        boolean zA0C = true;
        if (C2863mv.A2F(c1618Hi)) {
            Resources system = Resources.getSystem();
            String strA07 = A07(451, 26, 75);
            String strA08 = A07(245, 4, 8);
            String strA09 = A07(179, 7, 41);
            int identifier = system.getIdentifier(strA07, strA08, strA09);
            z3 = identifier != 0 ? Resources.getSystem().getBoolean(identifier) : true;
            String[] strArr = A01;
            if (strArr[6].length() == strArr[3].length()) {
                A01[5] = "0rfBgNygkjU7mub";
                int identifier2 = system.getIdentifier(A07(477, 37, 21), strA08, strA09);
                z4 = identifier2 != 0 ? Resources.getSystem().getBoolean(identifier2) : true;
                zA0C = AbstractC3020pY.A0C(c1618Hi);
                z2 &= z3 && z4 && zA0C;
                String[] strArr2 = A01;
                if (strArr2[6].length() == strArr2[3].length()) {
                    A01[5] = "kny6086MT0ulmqJ";
                }
            }
            throw new RuntimeException();
        }
        c1618Hi.A0F().ACw(zA0K, z2, z3, z4, zA0C);
        return z2;
    }

    public static boolean A0K(C1618Hi c1618Hi) {
        try {
            Activity activityA0E = c1618Hi.A0E();
            PackageManager packageManager = c1618Hi.getPackageManager();
            if (activityA0E == null || packageManager == null) {
                return false;
            }
            ActivityInfo activityInfo = Build.VERSION.SDK_INT > 32 ? packageManager.getActivityInfo(activityA0E.getComponentName(), PackageManager.ComponentInfoFlags.of(0L)) : packageManager.getActivityInfo(activityA0E.getComponentName(), 128);
            Field declaredField = ActivityInfo.class.getDeclaredField(A07(839, 10, 69));
            declaredField.setAccessible(true);
            Object obj = declaredField.get(activityInfo);
            return (obj instanceof Integer) && ((Integer) obj).intValue() != 0;
        } catch (PackageManager.NameNotFoundException | IllegalAccessException | NoSuchFieldException e) {
            c1618Hi.A0F().ACv(e.getMessage());
        }
        return false;
    }

    public static boolean A0L(C1618Hi c1618Hi, Uri uri) {
        String strA07 = A07(342, 19, 121);
        if (!C2863mv.A1G(c1618Hi)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 23) {
            c1618Hi.A0F().AC4(1);
            return false;
        }
        PackageManager packageManager = c1618Hi.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(strA07, 0);
            if (packageInfo != null && !TextUtils.isEmpty(packageInfo.versionName)) {
                String[] strArrSplit = packageInfo.versionName.split(A07(166, 2, 74), 2);
                if (strArrSplit.length < 1) {
                    c1618Hi.A0F().AC4(2);
                    return false;
                }
                if (Integer.parseInt(strArrSplit[0]) < C2863mv.A0E(c1618Hi)) {
                    c1618Hi.A0F().AC4(3);
                    return false;
                }
            }
            Intent intent = new Intent(A07(186, 26, 50));
            String packageName = c1618Hi.getPackageName();
            intent.setPackage(strA07);
            Uri uriA04 = A04(c1618Hi, uri);
            if (uriA04 == null) {
                return false;
            }
            intent.setData(uriA04);
            intent.putExtra(A07(271, 8, 19), packageName);
            if (intent.resolveActivity(packageManager) == null) {
                c1618Hi.A0F().AC4(6);
                return false;
            }
            Activity activityA0E = c1618Hi.A0E();
            if (activityA0E == null) {
                activityA0E = ActivityUtils.A00();
            }
            if (activityA0E == null) {
                c1618Hi.A0F().AC4(7);
                return false;
            }
            activityA0E.startActivityForResult(intent, 945321098);
            c1618Hi.A0F().AC4(0);
            return true;
        } catch (PackageManager.NameNotFoundException | NumberFormatException unused) {
            c1618Hi.A0F().AC4(4);
            return false;
        }
    }

    private boolean A0M(C1618Hi c1618Hi, Uri uri, String str) throws C2995p6 {
        try {
            Activity activityA0E = c1618Hi.A0E();
            String string = uri.toString();
            if (activityA0E != null && !TextUtils.isEmpty(string)) {
                Intent intent = new Intent();
                if (C2863mv.A1F(c1618Hi)) {
                    String strA05 = LA.A05(str);
                    if (TextUtils.isEmpty(strA05)) {
                        return false;
                    }
                    intent.putExtra(A07(0, 20, 82), A08(strA05));
                }
                intent.setComponent(new ComponentName(A07(432, 19, 9), A07(361, 71, 90)));
                intent.putExtra(A07(140, 9, 39), string);
                intent.putExtra(A07(37, 13, 73), A08(A07(20, 17, 111)));
                if (C2997p8.A0G(c1618Hi, intent)) {
                    return true;
                }
                activityA0E.startActivityForResult(intent, 2);
                return true;
            }
            return false;
        } catch (ActivityNotFoundException | IllegalStateException e) {
            c1618Hi.A0F().AC3(e.getMessage());
            return false;
        }
    }

    private boolean A0N(C1618Hi c1618Hi, Uri uri, String str) throws C2995p6 {
        return A0H(c1618Hi) && A0M(c1618Hi, uri, str);
    }

    private final boolean A0O(C1618Hi c1618Hi, Uri uri, String str) {
        return C2997p8.A0I(c1618Hi, uri, str);
    }

    public static boolean A0P(C3007pK c3007pK, C1618Hi c1618Hi, Uri uri, String str) {
        try {
            A0E(c3007pK, c1618Hi, uri, str);
            return true;
        } catch (C2995p6 e) {
            Throwable cause = e.getCause();
            C2995p6 cause2 = e;
            if (cause != null) {
                cause2 = e.getCause();
            }
            c1618Hi.A08().ABz(A07(168, 11, 15), AbstractC2786lf.A05, new C2787lg(cause2));
            return false;
        }
    }
}
