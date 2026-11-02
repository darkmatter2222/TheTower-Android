package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ں, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0416 {

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final String f1948;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final byte[] f1949;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final String f1950;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f1951;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final SecretKeySpec f1952;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public Cipher f1953;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public Cipher f1954;

    static {
        StringFog.decrypt("mOOyaigJiLyS9P1PPiOrj9HYjkU+NbKsl+SuZxoSkrw=\n", "8ZHdBHtm/c4=\n");
        f1951 = StringFog.decrypt("E1X6wTA=\n", "RgG87AhoLds=\n");
        StringFog.decrypt("SGFhytnceb5QYmXT1LoE21pqcNzV2xyuWmAJ39M=\n", "GCMknZCIMe0=\n");
        f1950 = StringFog.decrypt("xlNDF+/f2g3XXVNrmc34RuN/fl8=\n", "hxYQOKydmSI=\n");
        f1948 = StringFog.decrypt("/B7c9nF8T1/zEJ+6a39MW/EWn612ekwc3jTil2B1VUH8EMW3cD4RTg==\n", "n3Gx2AITIDI=\n");
        f1949 = new byte[]{Ascii.DLE, 74, 71, -80, 32, 101, -47, 72, 117, -14, 0, -29, 70, 65, -12, 74};
    }

    public C0416(byte[] bArr, String str, String str2, String str3) {
        byte[] bArrDigest;
        try {
            bArrDigest = SecretKeyFactory.getInstance(StringFog.decrypt("Zs7u9Sl9NPd+zersJBtJknTF/+MlelHndM+G4CM=\n", "NoyromApfKQ=\n")).generateSecret(new PBEKeySpec((str + str2 + str3).toCharArray(), bArr, 1024, 256)).getEncoded();
        } catch (GeneralSecurityException unused) {
            String strDecrypt = StringFog.decrypt("z0tQI0YQ91XXQXcTckPVcfBhZw==\n", "hA4VdQcwthA=\n");
            String strDecrypt2 = StringFog.decrypt("zZlB+zCKphu9ikC5OIapDfCbT+04iqYHvY9L7ziLr0y9v1zgOIatQvmCSP80mq8M6ctP6SGapQP+\ngwA=\n", "nesumVHoymI=\n");
            String str4 = AbstractC0319.f1565;
            AbstractC0250.m1991(strDecrypt, strDecrypt2);
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(StringFog.decrypt("uuPz\n", "96fGEEJ+LfE=\n"));
                char[] charArray = (str + str2 + str3).toCharArray();
                for (char c : charArray) {
                    messageDigest.update((byte) c);
                }
                bArrDigest = messageDigest.digest();
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(StringFog.decrypt("ziOr+fst5EriI6vx5SvuB+IjqQ==\n", "h03dmJdEgGo=\n"), e);
            }
        }
        this.f1952 = new SecretKeySpec(bArrDigest, StringFog.decrypt("/Gad\n", "vSPOHbd8DzQ=\n"));
        m2091();
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized String m2089(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            try {
                String str2 = new String(this.f1953.doFinal(AbstractC0413.m2088(str)), f1951);
                String str3 = f1948;
                if (str2.indexOf(str3) != 0) {
                    throw new C0437(StringFog.decrypt("02Ar1rpbvKX0cWrUsFzyr7stI9ypSPCi/yUu06tIvKTpJSHXpgCm\n", "mwVKst8pnMs=\n") + str);
                }
                return str2.substring(str3.length(), str2.length());
            } catch (BadPaddingException e) {
                m2091();
                throw new C0437(AbstractC0270.m2002("MQ==\n", "C25OkCFTrgw=\n", new StringBuilder().append(e.getMessage()), str));
            } catch (IllegalBlockSizeException e2) {
                m2091();
                throw new C0437(AbstractC0270.m2002("0Q==\n", "63fdqRQYj7M=\n", new StringBuilder().append(e2.getMessage()), str));
            }
        } catch (C0390 e3) {
            m2091();
            throw new C0437(AbstractC0270.m2002("uQ==\n", "g7AbSgpZ0YU=\n", new StringBuilder().append(e3.getMessage()), str));
        } catch (UnsupportedEncodingException e4) {
            throw new RuntimeException(StringFog.decrypt("AK4gShftWi8sriBCCetQYiyuIg==\n", "ScBWK3uEPg8=\n"), e4);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized String m2090(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            try {
                return AbstractC0413.m2087(this.f1954.doFinal((f1948 + str).getBytes(f1951)));
            } catch (GeneralSecurityException e) {
                m2091();
                throw new RuntimeException(StringFog.decrypt("a4K01ESWDTlHgrTcWpAHdEeCtg==\n", "IuzCtSj/aRk=\n"), e);
            }
        } catch (UnsupportedEncodingException e2) {
            m2091();
            throw new RuntimeException(StringFog.decrypt("3+v8bxqYlpHz6/xnBJ6c3PPr/g==\n", "loWKDnbx8rE=\n"), e2);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2091() {
        try {
            String str = f1950;
            Cipher cipher = Cipher.getInstance(str);
            this.f1954 = cipher;
            SecretKeySpec secretKeySpec = this.f1952;
            byte[] bArr = f1949;
            cipher.init(1, secretKeySpec, new IvParameterSpec(bArr));
            Cipher cipher2 = Cipher.getInstance(str);
            this.f1953 = cipher2;
            cipher2.init(2, this.f1952, new IvParameterSpec(bArr));
        } catch (GeneralSecurityException e) {
            throw new RuntimeException(StringFog.decrypt("2g1GC5KZKiP2DUYDjJ8gbvYNRErM\n", "k2Mwav7wTgM=\n"), e);
        }
    }
}
