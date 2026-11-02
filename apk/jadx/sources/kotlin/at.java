package kotlin;

import android.util.Base64;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.ArraysKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class at {
    public final ex0 a;

    public at(ex0 flags) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = flags;
    }

    public final v01 a(String unencryptedString) {
        v01 j01Var;
        v01 m01Var;
        Intrinsics.checkNotNullParameter(unencryptedString, "unencryptedString");
        s11 s11Var = s11.CUI_NAME_BLOB_ENCRYPTION;
        WeakHashMap weakHashMap = hs3.a;
        rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
        try {
            try {
                KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
                keyGenerator.init(128);
                SecretKey secretKeyGenerateKey = keyGenerator.generateKey();
                byte[] encoded = secretKeyGenerateKey.getEncoded();
                if (encoded == null || encoded.length != 16) {
                    m01Var = new m01("Encoded symmetric key had unexected length: " + (encoded != null ? Integer.valueOf(encoded.length) : null));
                } else {
                    Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7PADDING");
                    cipher.init(1, secretKeyGenerateKey);
                    byte[] iv = cipher.getIV();
                    if (iv.length != 16) {
                        m01Var = new m01("iv had unexpected length: " + iv.length);
                    } else {
                        byte[] bArrDoFinal = cipher.doFinal(StringsKt.encodeToByteArray(unencryptedString));
                        KeyGenerator keyGenerator2 = KeyGenerator.getInstance("HmacSHA1");
                        keyGenerator2.init(128);
                        SecretKey secretKeyGenerateKey2 = keyGenerator2.generateKey();
                        byte[] encoded2 = secretKeyGenerateKey2.getEncoded();
                        if (encoded2 == null || encoded2.length != 16) {
                            m01Var = new m01("Hmac is unexpected size: " + (encoded2 != null ? Integer.valueOf(encoded2.length) : null));
                        } else {
                            Intrinsics.checkNotNull(encoded2);
                            byte[] bArrA = zs.a(encoded, encoded2);
                            if (bArrA == null) {
                                m01Var = new m01("Unable to compute sha1 of symmetric key.");
                            } else {
                                byte[] iv2 = cipher.getIV();
                                Intrinsics.checkNotNullExpressionValue(iv2, "getIV(...)");
                                byte[] bArrPlus = ArraysKt.plus(bArrA, iv2);
                                Intrinsics.checkNotNull(bArrDoFinal);
                                byte[] bArrPlus2 = ArraysKt.plus(bArrPlus, bArrDoFinal);
                                PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(this.a.r(), 8)));
                                Cipher cipher2 = Cipher.getInstance("RSA/None/OAEPwithSHA-1andMGF1Padding");
                                cipher2.init(1, publicKeyGeneratePublic);
                                byte[] bArrDoFinal2 = cipher2.doFinal(((is1) is1.v().b(du.a(encoded)).a(du.a(encoded2)).h().b()).c());
                                byte[] bArrDecode = Base64.decode(this.a.s(), 11);
                                if (bArrDecode.length != 5) {
                                    m01Var = new m01("sha1 has of public key has unexpected size: " + bArrDecode.length + "}");
                                } else {
                                    Intrinsics.checkNotNull(bArrDecode);
                                    Intrinsics.checkNotNull(bArrDoFinal2);
                                    byte[] bArrPlus3 = ArraysKt.plus(ArraysKt.plus(bArrDecode, bArrDoFinal2), bArrPlus2);
                                    Intrinsics.checkNotNull(secretKeyGenerateKey2);
                                    j01Var = new q01(Base64.encodeToString(ArraysKt.plus(bArrPlus3, zs.a(secretKeyGenerateKey2, bArrPlus2)), 11));
                                    m01Var = j01Var;
                                }
                            }
                        }
                    }
                }
            } catch (Exception e) {
                j01Var = new j01(e, null, null, 6);
            }
            if (m01Var instanceof i01) {
                xs3.a((i01) m01Var, false);
            }
            CloseableKt.closeFinally(rr3VarA, null);
            return m01Var;
        } catch (Throwable th) {
            try {
                rr3VarA.b(th);
                if (th instanceof v24) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                    rr3VarA.a(th);
                }
                if (th instanceof TimeoutCancellationException) {
                    throw new i21(th);
                }
                if (th instanceof CancellationException) {
                    throw new wz0(th);
                }
                if (th instanceof w01) {
                    throw th;
                }
                throw new b01(th);
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.closeFinally(rr3VarA, th2);
                    throw th3;
                }
            }
        }
    }
}
