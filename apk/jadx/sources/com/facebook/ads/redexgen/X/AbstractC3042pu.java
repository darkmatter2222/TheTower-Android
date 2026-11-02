package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.pu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3042pu {
    public static byte[] A00;
    public static String[] A01 = {"Fo6fOQ0HsfRCx9yL67VckHygYzLCvQ6y", "riZa98GPY3AWbvMANKZcBcQCalEMJFPN", "xF93Q6Q84wP28NgbQeYEf1tSiFipj5la", "S1Y1MsvNK5D8hutCnbiwxRc7t2kGsxbE", "4KEw8B1iO7iJz6LKFlaUEil7rK", "9ZIqru89IY59Cmn5xddtyFRfmlsWf5Vx", "UXJRrEbADYCqrbNeMotiPdb4vjzmnMhB", "uyLj4bmIt"};

    static {
        A05();
    }

    public static EnumC3041pt A00(C2755lA c2755lA) {
        try {
            return A07() || A06() || A08(A01(47, 2, 99)) ? EnumC3041pt.A04 : EnumC3041pt.A06;
        } catch (Throwable th) {
            c2755lA.A08().ABz(A01(40, 7, 1), AbstractC2786lf.A1M, new C2787lg(th));
            return EnumC3041pt.A05;
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 47);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A02(Context context, String str) throws PackageManager.NameNotFoundException, NoSuchAlgorithmException, CertificateException {
        StringBuilder sb = new StringBuilder();
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return A01(0, 0, 21);
        }
        for (Signature signature : packageManager.getPackageInfo(str, 64).signatures) {
            String[] strArr = A01;
            if (strArr[3].charAt(2) == strArr[1].charAt(2)) {
                throw new RuntimeException();
            }
            A01[0] = "2riYAheGk3Amb0xMR1UIKZqnGyXb5VAT";
            sb.append(C3048q0.A04(MessageDigest.getInstance(A01(31, 4, 74)).digest(A04(signature).getEncoded())));
            sb.append(A01(26, 1, 54));
        }
        return sb.toString();
    }

    public static String A03(C2755lA c2755lA, String str) {
        try {
            return A02(c2755lA, str);
        } catch (Exception e) {
            c2755lA.A08().ABz(A01(40, 7, 1), AbstractC2786lf.A1M, new C2787lg(e));
            return null;
        }
    }

    public static PublicKey A04(Signature signature) throws CertificateException {
        return CertificateFactory.getInstance(A01(35, 5, 32)).generateCertificate(new ByteArrayInputStream(signature.toByteArray())).getPublicKey();
    }

    public static void A05() {
        A00 = new byte[]{-76, -8, -2, -8, -7, -22, -14, -76, -26, -11, -11, -76, -40, -6, -11, -22, -9, -6, -8, -22, -9, -77, -26, -11, -16, -109, -96, -2, -17, 2, -10, -52, -63, -70, -86, -89, 125, -124, 127, -120, -105, -107, -98, -107, -94, -103, -109, 5, 7, -30, -45, -31, -30, -101, -39, -45, -25, -31};
    }

    public static boolean A06() {
        String str = Build.TAGS;
        return str != null && str.contains(A01(49, 9, 63));
    }

    public static boolean A07() {
        return new File(A01(0, 25, 86)).exists();
    }

    public static boolean A08(String str) {
        File[] fileArrListFiles;
        String str2 = System.getenv(A01(27, 4, 127));
        if (str2 == null) {
            return false;
        }
        for (String str3 : str2.split(A01(25, 1, 42))) {
            File file = new File(str3);
            if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                for (File file2 : fileArrListFiles) {
                    if (file2.getName().equals(str)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
