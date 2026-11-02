package com.google.crypto.tink.signature.internal;

import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.PublicKeySign;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.ConscryptUtil;
import com.google.crypto.tink.signature.MlDsaParameters;
import com.google.crypto.tink.signature.MlDsaPrivateKey;
import com.google.errorprone.annotations.Immutable;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.Signature;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public final class MlDsaSignConscrypt implements PublicKeySign {
    public static final TinkFipsUtil.AlgorithmFipsCompatibility FIPS = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_NOT_FIPS;
    private static final String TEST_WORKLOAD = "test workload";
    private final String algorithm;
    private final byte[] outputPrefix;
    private final PrivateKey privateKey;
    private final Provider provider;
    private final int signatureLength;

    private MlDsaSignConscrypt(byte[] bArr, PrivateKey privateKey, String str, int i, Provider provider) {
        this.outputPrefix = bArr;
        this.privateKey = privateKey;
        this.algorithm = str;
        this.signatureLength = i;
        this.provider = provider;
    }

    public static PublicKeySign create(MlDsaPrivateKey mlDsaPrivateKey) throws GeneralSecurityException {
        if (!FIPS.isCompatible()) {
            throw new GeneralSecurityException("Can not use ML-DSA in FIPS-mode, as it is not yet certified in Conscrypt.");
        }
        Provider providerProviderOrNull = ConscryptUtil.providerOrNull();
        if (providerProviderOrNull != null) {
            return createWithProvider(mlDsaPrivateKey, providerProviderOrNull);
        }
        throw new GeneralSecurityException("Obtaining Conscrypt provider failed");
    }

    public static PublicKeySign createWithProvider(MlDsaPrivateKey mlDsaPrivateKey, Provider provider) throws GeneralSecurityException {
        if (provider == null) {
            throw new NullPointerException("provider must not be null");
        }
        if (!FIPS.isCompatible()) {
            throw new GeneralSecurityException("Can not use ML-DSA in FIPS-mode, as it is not yet certified in Conscrypt.");
        }
        if (mlDsaPrivateKey.getPublicKey().getParameters().getMlDsaInstance() != MlDsaParameters.MlDsaInstance.ML_DSA_65) {
            throw new GeneralSecurityException("Only ML-DSA-65 currently supported");
        }
        PrivateKey privateKeyGeneratePrivate = KeyFactory.getInstance("ML-DSA-65", provider).generatePrivate(new MlDsaVerifyConscrypt.RawKeySpec(mlDsaPrivateKey.getPrivateSeed().toByteArray(InsecureSecretKeyAccess.get())));
        ((MlDsaVerifyConscrypt) MlDsaVerifyConscrypt.createWithProvider(mlDsaPrivateKey.getPublicKey(), provider)).verify(signInternal(TEST_WORKLOAD.getBytes(StandardCharsets.UTF_8), mlDsaPrivateKey.getOutputPrefix().toByteArray(), privateKeyGeneratePrivate, "ML-DSA-65", 3309, provider), TEST_WORKLOAD.getBytes(StandardCharsets.UTF_8));
        return new MlDsaSignConscrypt(mlDsaPrivateKey.getOutputPrefix().toByteArray(), privateKeyGeneratePrivate, "ML-DSA-65", 3309, provider);
    }

    public static boolean isSupported() {
        return MlDsaVerifyConscrypt.isSupported();
    }

    private static byte[] signInternal(byte[] bArr, byte[] bArr2, PrivateKey privateKey, String str, int i, Provider provider) throws GeneralSecurityException {
        Signature signature = Signature.getInstance(str, provider);
        signature.initSign(privateKey);
        signature.update(bArr);
        byte[] bArr3 = new byte[bArr2.length + i];
        if (bArr2.length > 0) {
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        }
        signature.sign(bArr3, bArr2.length, i);
        return bArr3;
    }

    @Override // com.google.crypto.tink.PublicKeySign
    public byte[] sign(byte[] bArr) throws GeneralSecurityException {
        return signInternal(bArr, this.outputPrefix, this.privateKey, this.algorithm, this.signatureLength, this.provider);
    }
}
