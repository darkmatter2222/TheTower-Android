package com.facebook.ads.redexgen.X;

import android.util.Base64;
import com.google.common.base.Ascii;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Set;
import javax.annotation.Nullable;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ar, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2126ar {
    public static byte[] A00;

    static {
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 1);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A01(byte[] bArr, String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.reset();
        return Base64.encodeToString(messageDigest.digest(bArr), 0);
    }

    public static void A02() {
        A00 = new byte[]{99, 120, 113, Ascii.GS, 1, 58, 1, Ascii.SO, Ascii.CR, 3, 10, 79, Ascii.ESC, 0, 79, 9, 6, 1, Ascii.VT, 79, Ascii.EM, Ascii.SO, 3, 6, Ascii.VT, 79, Ascii.FF, 10, Ascii.GS, Ascii.ESC, 6, 9, 6, Ascii.FF, Ascii.SO, Ascii.ESC, 10, 79, 0, Ascii.GS, 79, Ascii.US, Ascii.SUB, Ascii.CR, 3, 6, Ascii.FF, 79, 4, 10, Ascii.SYN, 65};
    }

    public static void A03(@Nullable HttpsURLConnection httpsURLConnection, @Nullable Set<String> set, Set<String> set2) throws Exception {
        String strA00 = A00(0, 5, 49);
        try {
            for (Certificate certificate : httpsURLConnection.getServerCertificates()) {
                X509Certificate x509Certificate = (X509Certificate) certificate;
                String strA01 = A01(x509Certificate.getEncoded(), strA00);
                if (set != null && set.contains(strA01)) {
                    return;
                }
                String strA02 = A01(x509Certificate.getPublicKey().getEncoded(), strA00);
                if (set2 != null && set2.contains(strA02)) {
                    return;
                }
            }
            throw new CertificateException(A00(5, 47, 110));
        } catch (Exception e) {
            throw e;
        }
    }
}
