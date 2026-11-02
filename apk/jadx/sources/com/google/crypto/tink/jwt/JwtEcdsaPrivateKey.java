package com.google.crypto.tink.jwt;

import com.google.crypto.tink.Key;
import com.google.crypto.tink.signature.EcdsaPrivateKey;
import com.google.crypto.tink.util.SecretBigInteger;
import com.google.errorprone.annotations.Immutable;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public final class JwtEcdsaPrivateKey extends JwtSignaturePrivateKey {
    private final EcdsaPrivateKey ecdsaPrivateKey;
    public final JwtEcdsaPublicKey publicKey;

    private JwtEcdsaPrivateKey(JwtEcdsaPublicKey jwtEcdsaPublicKey, EcdsaPrivateKey ecdsaPrivateKey) {
        this.publicKey = jwtEcdsaPublicKey;
        this.ecdsaPrivateKey = ecdsaPrivateKey;
    }

    public static JwtEcdsaPrivateKey create(JwtEcdsaPublicKey jwtEcdsaPublicKey, SecretBigInteger secretBigInteger) throws GeneralSecurityException {
        return new JwtEcdsaPrivateKey(jwtEcdsaPublicKey, EcdsaPrivateKey.builder().setPublicKey(jwtEcdsaPublicKey.getEcdsaPublicKey()).setPrivateValue(secretBigInteger).build());
    }

    @Override // com.google.crypto.tink.Key
    public boolean equalsKey(Key key) {
        if (!(key instanceof JwtEcdsaPrivateKey)) {
            return false;
        }
        JwtEcdsaPrivateKey jwtEcdsaPrivateKey = (JwtEcdsaPrivateKey) key;
        return jwtEcdsaPrivateKey.publicKey.equalsKey(this.publicKey) && this.ecdsaPrivateKey.equalsKey(jwtEcdsaPrivateKey.ecdsaPrivateKey);
    }

    EcdsaPrivateKey getEcdsaPrivateKey() {
        return this.ecdsaPrivateKey;
    }

    @Override // com.google.crypto.tink.jwt.JwtSignaturePrivateKey, com.google.crypto.tink.Key
    public JwtEcdsaParameters getParameters() {
        return this.publicKey.getParameters();
    }

    public SecretBigInteger getPrivateValue() {
        return this.ecdsaPrivateKey.getPrivateValue();
    }

    @Override // com.google.crypto.tink.jwt.JwtSignaturePrivateKey, com.google.crypto.tink.PrivateKey
    public JwtEcdsaPublicKey getPublicKey() {
        return this.publicKey;
    }
}
