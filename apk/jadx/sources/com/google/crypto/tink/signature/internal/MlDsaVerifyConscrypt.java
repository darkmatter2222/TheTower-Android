package com.google.crypto.tink.signature.internal;

import com.google.crypto.tink.PublicKeyVerify;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.ConscryptUtil;
import com.google.crypto.tink.internal.Util;
import com.google.crypto.tink.signature.MlDsaParameters;
import com.google.crypto.tink.signature.MlDsaPublicKey;
import com.google.errorprone.annotations.Immutable;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.EncodedKeySpec;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public final class MlDsaVerifyConscrypt implements PublicKeyVerify {
    public static final TinkFipsUtil.AlgorithmFipsCompatibility FIPS = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_NOT_FIPS;
    static final String ML_DSA_65_ALGORITHM = "ML-DSA-65";
    static final int ML_DSA_65_SIG_LENGTH = 3309;
    private final String algorithm;
    private final byte[] outputPrefix;
    private final Provider provider;
    private final PublicKey publicKey;
    private final int signatureLength;

    public static final class RawKeySpec extends EncodedKeySpec {
        public RawKeySpec(byte[] bArr) {
            super(bArr);
        }

        @Override // java.security.spec.EncodedKeySpec
        public String getFormat() {
            return "raw";
        }
    }

    private MlDsaVerifyConscrypt(byte[] bArr, PublicKey publicKey, String str, int i, Provider provider) {
        this.outputPrefix = bArr;
        this.publicKey = publicKey;
        this.algorithm = str;
        this.signatureLength = i;
        this.provider = provider;
    }

    public static PublicKeyVerify create(MlDsaPublicKey mlDsaPublicKey) throws GeneralSecurityException {
        if (!FIPS.isCompatible()) {
            throw new GeneralSecurityException("Can not use ML-DSA in FIPS-mode, as it is not yet certified in Conscrypt.");
        }
        Provider providerProviderOrNull = ConscryptUtil.providerOrNull();
        if (providerProviderOrNull != null) {
            return createWithProvider(mlDsaPublicKey, providerProviderOrNull);
        }
        throw new GeneralSecurityException("Obtaining Conscrypt provider failed");
    }

    public static PublicKeyVerify createWithProvider(MlDsaPublicKey mlDsaPublicKey, Provider provider) throws GeneralSecurityException {
        if (provider == null) {
            throw new NullPointerException("provider must not be null");
        }
        if (!FIPS.isCompatible()) {
            throw new GeneralSecurityException("Can not use ML-DSA in FIPS-mode, as it is not yet certified in Conscrypt.");
        }
        if (mlDsaPublicKey.getParameters().getMlDsaInstance() != MlDsaParameters.MlDsaInstance.ML_DSA_65) {
            throw new GeneralSecurityException("Only ML-DSA-65 currently supported");
        }
        return new MlDsaVerifyConscrypt(mlDsaPublicKey.getOutputPrefix().toByteArray(), KeyFactory.getInstance(ML_DSA_65_ALGORITHM, provider).generatePublic(new RawKeySpec(mlDsaPublicKey.getSerializedPublicKey().toByteArray())), ML_DSA_65_ALGORITHM, ML_DSA_65_SIG_LENGTH, provider);
    }

    public static boolean isSupported() {
        Provider providerProviderOrNull;
        if (!FIPS.isCompatible() || (providerProviderOrNull = ConscryptUtil.providerOrNull()) == null) {
            return false;
        }
        try {
            KeyFactory.getInstance(ML_DSA_65_ALGORITHM, providerProviderOrNull);
            Signature.getInstance(ML_DSA_65_ALGORITHM, providerProviderOrNull);
            return true;
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    @Override // com.google.crypto.tink.PublicKeyVerify
    public void verify(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (!Util.isPrefix(this.outputPrefix, bArr)) {
            throw new GeneralSecurityException("Invalid signature (output prefix mismatch)");
        }
        if (bArr.length != this.outputPrefix.length + this.signatureLength) {
            throw new GeneralSecurityException("Invalid signature length");
        }
        Signature signature = Signature.getInstance(this.algorithm, this.provider);
        signature.initVerify(this.publicKey);
        signature.update(bArr2);
        if (!signature.verify(bArr, this.outputPrefix.length, this.signatureLength)) {
            throw new GeneralSecurityException("Invalid signature");
        }
    }
}
