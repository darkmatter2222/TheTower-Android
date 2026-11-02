package com.google.crypto.tink.signature.internal;

import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.PublicKeySign;
import com.google.crypto.tink.PublicKeyVerify;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.signature.RsaSsaPkcs1Parameters;
import com.google.crypto.tink.signature.RsaSsaPkcs1PrivateKey;
import com.google.crypto.tink.subtle.Bytes;
import com.google.crypto.tink.subtle.EngineFactory;
import com.google.crypto.tink.subtle.RsaSsaPkcs1VerifyJce;
import com.google.crypto.tink.subtle.Validators;
import com.google.errorprone.annotations.Immutable;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.Provider;
import java.security.Signature;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.spec.RSAPrivateCrtKeySpec;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public final class RsaSsaPkcs1SignJce implements PublicKeySign {

    @Nullable
    Provider conscryptOrNull;
    private final byte[] messageSuffix;
    private final byte[] outputPrefix;
    private final RSAPrivateCrtKey privateKey;
    private final String signatureAlgorithm;
    private final PublicKeyVerify verifier;
    public static final TinkFipsUtil.AlgorithmFipsCompatibility FIPS = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_REQUIRES_BORINGCRYPTO;
    private static final byte[] EMPTY = new byte[0];
    private static final byte[] legacyMessageSuffix = {0};
    private static final byte[] testData = {1, 2, 3};

    private RsaSsaPkcs1SignJce(RSAPrivateCrtKey rSAPrivateCrtKey, RsaSsaPkcs1Parameters.HashType hashType, byte[] bArr, byte[] bArr2, PublicKeyVerify publicKeyVerify, @Nullable Provider provider) throws GeneralSecurityException {
        if (!FIPS.isCompatible()) {
            throw new GeneralSecurityException("Can not use RSA PKCS1.5 in FIPS-mode, as BoringCrypto module is not available.");
        }
        validateHash(hashType);
        Validators.validateRsaModulusSize(rSAPrivateCrtKey.getModulus().bitLength());
        Validators.validateRsaPublicExponent(rSAPrivateCrtKey.getPublicExponent());
        this.privateKey = rSAPrivateCrtKey;
        this.signatureAlgorithm = RsaSsaPkcs1VerifyConscrypt.toRsaSsaPkcs1Algo(hashType);
        this.outputPrefix = bArr;
        this.messageSuffix = bArr2;
        this.verifier = publicKeyVerify;
        this.conscryptOrNull = provider;
    }

    public static PublicKeySign create(RsaSsaPkcs1PrivateKey rsaSsaPkcs1PrivateKey) throws GeneralSecurityException {
        return createWithProviderOrNull(rsaSsaPkcs1PrivateKey, RsaSsaPkcs1VerifyConscrypt.conscryptProviderOrNull());
    }

    public static PublicKeySign createWithProvider(RsaSsaPkcs1PrivateKey rsaSsaPkcs1PrivateKey, Provider provider) throws GeneralSecurityException {
        if (provider != null) {
            return createWithProviderOrNull(rsaSsaPkcs1PrivateKey, provider);
        }
        throw new NullPointerException("provider must not be null");
    }

    private static PublicKeySign createWithProviderOrNull(RsaSsaPkcs1PrivateKey rsaSsaPkcs1PrivateKey, @Nullable Provider provider) throws GeneralSecurityException {
        RsaSsaPkcs1SignJce rsaSsaPkcs1SignJce = new RsaSsaPkcs1SignJce((RSAPrivateCrtKey) (provider != null ? KeyFactory.getInstance("RSA", provider) : EngineFactory.KEY_FACTORY.getInstance("RSA")).generatePrivate(new RSAPrivateCrtKeySpec(rsaSsaPkcs1PrivateKey.getPublicKey().getModulus(), rsaSsaPkcs1PrivateKey.getParameters().getPublicExponent(), rsaSsaPkcs1PrivateKey.getPrivateExponent().getBigInteger(InsecureSecretKeyAccess.get()), rsaSsaPkcs1PrivateKey.getPrimeP().getBigInteger(InsecureSecretKeyAccess.get()), rsaSsaPkcs1PrivateKey.getPrimeQ().getBigInteger(InsecureSecretKeyAccess.get()), rsaSsaPkcs1PrivateKey.getPrimeExponentP().getBigInteger(InsecureSecretKeyAccess.get()), rsaSsaPkcs1PrivateKey.getPrimeExponentQ().getBigInteger(InsecureSecretKeyAccess.get()), rsaSsaPkcs1PrivateKey.getCrtCoefficient().getBigInteger(InsecureSecretKeyAccess.get()))), rsaSsaPkcs1PrivateKey.getParameters().getHashType(), rsaSsaPkcs1PrivateKey.getOutputPrefix().toByteArray(), rsaSsaPkcs1PrivateKey.getParameters().getVariant().equals(RsaSsaPkcs1Parameters.Variant.LEGACY) ? legacyMessageSuffix : EMPTY, provider != null ? RsaSsaPkcs1VerifyConscrypt.createWithProvider(rsaSsaPkcs1PrivateKey.getPublicKey(), provider) : RsaSsaPkcs1VerifyJce.create(rsaSsaPkcs1PrivateKey.getPublicKey()), provider);
        rsaSsaPkcs1SignJce.sign(testData);
        return rsaSsaPkcs1SignJce;
    }

    private Signature getSignature() throws GeneralSecurityException {
        Provider provider = this.conscryptOrNull;
        return provider != null ? Signature.getInstance(this.signatureAlgorithm, provider) : EngineFactory.SIGNATURE.getInstance(this.signatureAlgorithm);
    }

    private static void validateHash(RsaSsaPkcs1Parameters.HashType hashType) throws GeneralSecurityException {
        if (hashType != RsaSsaPkcs1Parameters.HashType.SHA256 && hashType != RsaSsaPkcs1Parameters.HashType.SHA384 && hashType != RsaSsaPkcs1Parameters.HashType.SHA512) {
            throw new GeneralSecurityException("Unsupported hash: " + hashType);
        }
    }

    @Override // com.google.crypto.tink.PublicKeySign
    public byte[] sign(byte[] bArr) throws GeneralSecurityException {
        Signature signature = getSignature();
        signature.initSign(this.privateKey);
        signature.update(bArr);
        byte[] bArr2 = this.messageSuffix;
        if (bArr2.length > 0) {
            signature.update(bArr2);
        }
        byte[] bArrSign = signature.sign();
        byte[] bArr3 = this.outputPrefix;
        if (bArr3.length > 0) {
            bArrSign = Bytes.concat(bArr3, bArrSign);
        }
        try {
            this.verifier.verify(bArrSign, bArr);
            return bArrSign;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException("RSA signature computation error", e);
        }
    }
}
