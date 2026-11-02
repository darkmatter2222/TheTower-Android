package com.google.crypto.tink.signature;

import androidx.core.graphics.TypefaceCompat$$ExternalSyntheticBackport0;
import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.Key;
import com.google.crypto.tink.Parameters;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.ConscryptUtil;
import com.google.crypto.tink.internal.KeyCreator;
import com.google.crypto.tink.internal.MutableKeyCreationRegistry;
import com.google.crypto.tink.internal.MutableParametersRegistry;
import com.google.crypto.tink.signature.internal.MlDsaProtoSerialization;
import com.google.crypto.tink.signature.internal.MlDsaVerifyConscrypt;
import com.google.crypto.tink.util.Bytes;
import com.google.crypto.tink.util.SecretBytes;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.Provider;
import java.util.AbstractMap;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
final class MlDsaSignKeyManager {
    static final String ML_DSA_65_ALGORITHM = "ML-DSA-65";
    private static final KeyCreator<MlDsaParameters> KEY_CREATOR = new KeyCreator() { // from class: com.google.crypto.tink.signature.MlDsaSignKeyManager$$ExternalSyntheticLambda2
        @Override // com.google.crypto.tink.internal.KeyCreator
        public final Key createKey(Parameters parameters, Integer num) {
            return MlDsaSignKeyManager.createKey((MlDsaParameters) parameters, num);
        }
    };
    private static final TinkFipsUtil.AlgorithmFipsCompatibility FIPS = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_NOT_FIPS;

    private MlDsaSignKeyManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static MlDsaPrivateKey createKey(MlDsaParameters mlDsaParameters, @Nullable Integer num) throws GeneralSecurityException {
        Provider providerProviderOrNull = ConscryptUtil.providerOrNull();
        if (providerProviderOrNull == null) {
            throw new GeneralSecurityException("Obtaining Conscrypt provider failed");
        }
        KeyPair keyPairGenerateKeyPair = KeyPairGenerator.getInstance(ML_DSA_65_ALGORITHM, providerProviderOrNull).generateKeyPair();
        KeyFactory keyFactory = KeyFactory.getInstance(ML_DSA_65_ALGORITHM, providerProviderOrNull);
        return MlDsaPrivateKey.createWithoutVerification(MlDsaPublicKey.builder().setSerializedPublicKey(Bytes.copyFrom(((MlDsaVerifyConscrypt.RawKeySpec) keyFactory.getKeySpec(keyPairGenerateKeyPair.getPublic(), MlDsaVerifyConscrypt.RawKeySpec.class)).getEncoded())).setParameters(mlDsaParameters).setIdRequirement(num).build(), SecretBytes.copyFrom(((MlDsaVerifyConscrypt.RawKeySpec) keyFactory.getKeySpec(keyPairGenerateKeyPair.getPrivate(), MlDsaVerifyConscrypt.RawKeySpec.class)).getEncoded(), InsecureSecretKeyAccess.get()));
    }

    static String getPrivateKeyType() {
        return "type.googleapis.com/google.crypto.tink.MlDsaPrivateKey";
    }

    static String getPublicKeyType() {
        return "type.googleapis.com/google.crypto.tink.MlDsaPublicKey";
    }

    private static Map<String, Parameters> namedParameters() throws GeneralSecurityException {
        return TypefaceCompat$$ExternalSyntheticBackport0.m(new Map.Entry[]{new AbstractMap.SimpleEntry("ML_DSA_65", MlDsaParameters.create(MlDsaParameters.MlDsaInstance.ML_DSA_65, MlDsaParameters.Variant.TINK)), new AbstractMap.SimpleEntry("ML_DSA_65_RAW", MlDsaParameters.create(MlDsaParameters.MlDsaInstance.ML_DSA_65, MlDsaParameters.Variant.NO_PREFIX))});
    }

    public static void registerPair() throws GeneralSecurityException {
        if (!FIPS.isCompatible()) {
            throw new GeneralSecurityException("Cannot use ML-DSA in FIPS-mode, as it is not yet certified in Conscrypt.");
        }
        if (ConscryptUtil.providerOrNull() == null) {
            throw new GeneralSecurityException("Cannot use ML-DSA without Conscrypt provider");
        }
        MlDsaProtoSerialization.register();
        MutableParametersRegistry.globalInstance().putAll(namedParameters());
        MutableKeyCreationRegistry.globalInstance().add(KEY_CREATOR, MlDsaParameters.class);
    }
}
