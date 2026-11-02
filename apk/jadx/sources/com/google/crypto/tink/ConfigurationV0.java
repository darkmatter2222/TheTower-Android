package com.google.crypto.tink;

import com.google.crypto.tink.aead.AeadWrapper;
import com.google.crypto.tink.aead.AesCtrHmacAeadKey;
import com.google.crypto.tink.aead.AesEaxKey;
import com.google.crypto.tink.aead.AesGcmKey;
import com.google.crypto.tink.aead.AesGcmSivKey;
import com.google.crypto.tink.aead.ChaCha20Poly1305Key;
import com.google.crypto.tink.aead.XChaCha20Poly1305Key;
import com.google.crypto.tink.aead.internal.ChaCha20Poly1305Jce;
import com.google.crypto.tink.aead.internal.XChaCha20Poly1305Jce;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.daead.AesSivKey;
import com.google.crypto.tink.daead.DeterministicAeadWrapper;
import com.google.crypto.tink.hybrid.EciesPrivateKey;
import com.google.crypto.tink.hybrid.EciesPublicKey;
import com.google.crypto.tink.hybrid.HpkePrivateKey;
import com.google.crypto.tink.hybrid.HpkePublicKey;
import com.google.crypto.tink.hybrid.HybridDecryptWrapper;
import com.google.crypto.tink.hybrid.HybridEncryptWrapper;
import com.google.crypto.tink.internal.InternalConfiguration;
import com.google.crypto.tink.internal.PrimitiveConstructor;
import com.google.crypto.tink.internal.PrimitiveRegistry;
import com.google.crypto.tink.mac.AesCmacKey;
import com.google.crypto.tink.mac.ChunkedMac;
import com.google.crypto.tink.mac.ChunkedMacWrapper;
import com.google.crypto.tink.mac.HmacKey;
import com.google.crypto.tink.mac.MacWrapper;
import com.google.crypto.tink.mac.internal.ChunkedAesCmacImpl;
import com.google.crypto.tink.prf.AesCmacPrfKey;
import com.google.crypto.tink.prf.HkdfPrfKey;
import com.google.crypto.tink.prf.HkdfPrfParameters;
import com.google.crypto.tink.prf.HmacPrfKey;
import com.google.crypto.tink.prf.Prf;
import com.google.crypto.tink.prf.PrfSetWrapper;
import com.google.crypto.tink.signature.EcdsaPrivateKey;
import com.google.crypto.tink.signature.EcdsaPublicKey;
import com.google.crypto.tink.signature.Ed25519PrivateKey;
import com.google.crypto.tink.signature.Ed25519PublicKey;
import com.google.crypto.tink.signature.PublicKeySignWrapper;
import com.google.crypto.tink.signature.PublicKeyVerifyWrapper;
import com.google.crypto.tink.signature.RsaSsaPkcs1PrivateKey;
import com.google.crypto.tink.signature.RsaSsaPkcs1PublicKey;
import com.google.crypto.tink.signature.RsaSsaPssPrivateKey;
import com.google.crypto.tink.signature.RsaSsaPssPublicKey;
import com.google.crypto.tink.streamingaead.AesCtrHmacStreamingKey;
import com.google.crypto.tink.streamingaead.AesGcmHkdfStreamingKey;
import com.google.crypto.tink.streamingaead.StreamingAeadWrapper;
import com.google.crypto.tink.subtle.AesSiv;
import com.google.crypto.tink.subtle.ChaCha20Poly1305;
import com.google.crypto.tink.subtle.PrfAesCmac;
import com.google.crypto.tink.subtle.PrfMac;
import com.google.crypto.tink.subtle.XChaCha20Poly1305;
import com.google.crypto.tink.subtle.prf.HkdfStreamingPrf;
import com.google.crypto.tink.subtle.prf.PrfImpl;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public class ConfigurationV0 {
    private static final int AES_CMAC_KEY_SIZE_BYTES = 32;

    private ConfigurationV0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Mac createAesCmac(AesCmacKey aesCmacKey) throws GeneralSecurityException {
        if (aesCmacKey.getParameters().getKeySizeBytes() == 32) {
            return PrfMac.create(aesCmacKey);
        }
        throw new GeneralSecurityException("AesCmac key size is not 32 bytes");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Prf createAesCmacPrf(AesCmacPrfKey aesCmacPrfKey) throws GeneralSecurityException {
        if (aesCmacPrfKey.getParameters().getKeySizeBytes() == 32) {
            return PrfAesCmac.create(aesCmacPrfKey);
        }
        throw new GeneralSecurityException("Key size must be 32 bytes");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static DeterministicAead createAesSiv(AesSivKey aesSivKey) throws GeneralSecurityException {
        if (aesSivKey.getParameters().getKeySizeBytes() == 64) {
            return AesSiv.create(aesSivKey);
        }
        throw new GeneralSecurityException("invalid key size: " + aesSivKey.getParameters().getKeySizeBytes() + ". Valid keys must have 64 bytes.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Aead createChaCha20Poly1305(ChaCha20Poly1305Key chaCha20Poly1305Key) throws GeneralSecurityException {
        return ChaCha20Poly1305Jce.isSupported() ? ChaCha20Poly1305Jce.create(chaCha20Poly1305Key) : ChaCha20Poly1305.create(chaCha20Poly1305Key);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ChunkedMac createChunkedAesCmac(AesCmacKey aesCmacKey) throws GeneralSecurityException {
        if (aesCmacKey.getParameters().getKeySizeBytes() == 32) {
            return ChunkedAesCmacImpl.create(aesCmacKey);
        }
        throw new GeneralSecurityException("AesCmac key size is not 32 bytes");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Prf createHkdfPrf(HkdfPrfKey hkdfPrfKey) throws GeneralSecurityException {
        if (hkdfPrfKey.getParameters().getKeySizeBytes() < 32) {
            throw new GeneralSecurityException("Key size must be at least 32");
        }
        if (hkdfPrfKey.getParameters().getHashType() == HkdfPrfParameters.HashType.SHA256 || hkdfPrfKey.getParameters().getHashType() == HkdfPrfParameters.HashType.SHA512) {
            return PrfImpl.wrap(HkdfStreamingPrf.create(hkdfPrfKey));
        }
        throw new GeneralSecurityException("Hash type must be SHA256 or SHA512");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Aead createXChaCha20Poly1305(XChaCha20Poly1305Key xChaCha20Poly1305Key) throws GeneralSecurityException {
        return XChaCha20Poly1305Jce.isSupported() ? XChaCha20Poly1305Jce.create(xChaCha20Poly1305Key) : XChaCha20Poly1305.create(xChaCha20Poly1305Key);
    }

    public static Configuration get() throws GeneralSecurityException {
        if (TinkFipsUtil.useOnlyFips()) {
            throw new GeneralSecurityException("Cannot use non-FIPS-compliant ConfigurationV0 in FIPS mode");
        }
        PrimitiveRegistry.Builder builder = PrimitiveRegistry.builder();
        MacWrapper.registerToInternalPrimitiveRegistry(builder);
        ChunkedMacWrapper.registerToInternalPrimitiveRegistry(builder);
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.ConfigurationV0$$ExternalSyntheticLambda0
            @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
            public final Object constructPrimitive(Key key) {
                return ConfigurationV0.createAesCmac((AesCmacKey) key);
            }
        }, AesCmacKey.class, Mac.class));
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationFips140v2$$ExternalSyntheticLambda0(), HmacKey.class, Mac.class));
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.ConfigurationV0$$ExternalSyntheticLambda8
            @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
            public final Object constructPrimitive(Key key) {
                return ConfigurationV0.createChunkedAesCmac((AesCmacKey) key);
            }
        }, AesCmacKey.class, ChunkedMac.class));
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationFips140v2$$ExternalSyntheticLambda3(), HmacKey.class, ChunkedMac.class));
        AeadWrapper.registerToInternalPrimitiveRegistry(builder);
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationFips140v2$$ExternalSyntheticLambda4(), AesCtrHmacAeadKey.class, Aead.class));
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda9(), AesEaxKey.class, Aead.class));
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationFips140v2$$ExternalSyntheticLambda5(), AesGcmKey.class, Aead.class));
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda10(), AesGcmSivKey.class, Aead.class));
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.ConfigurationV0$$ExternalSyntheticLambda11
            @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
            public final Object constructPrimitive(Key key) {
                return ConfigurationV0.createChaCha20Poly1305((ChaCha20Poly1305Key) key);
            }
        }, ChaCha20Poly1305Key.class, Aead.class));
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.ConfigurationV0$$ExternalSyntheticLambda12
            @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
            public final Object constructPrimitive(Key key) {
                return ConfigurationV0.createXChaCha20Poly1305((XChaCha20Poly1305Key) key);
            }
        }, XChaCha20Poly1305Key.class, Aead.class));
        DeterministicAeadWrapper.registerToInternalPrimitiveRegistry(builder);
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.ConfigurationV0$$ExternalSyntheticLambda7
            @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
            public final Object constructPrimitive(Key key) {
                return ConfigurationV0.createAesSiv((AesSivKey) key);
            }
        }, AesSivKey.class, DeterministicAead.class));
        StreamingAeadWrapper.registerToInternalPrimitiveRegistry(builder);
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda13(), AesCtrHmacStreamingKey.class, StreamingAead.class));
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda14(), AesGcmHkdfStreamingKey.class, StreamingAead.class));
        HybridEncryptWrapper.registerToInternalPrimitiveRegistry(builder);
        HybridDecryptWrapper.registerToInternalPrimitiveRegistry(builder);
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda15(), EciesPublicKey.class, HybridEncrypt.class));
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda16(), EciesPrivateKey.class, HybridDecrypt.class));
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda17(), HpkePublicKey.class, HybridEncrypt.class));
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda18(), HpkePrivateKey.class, HybridDecrypt.class));
        PrfSetWrapper.registerToInternalPrimitiveRegistry(builder);
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.ConfigurationV0$$ExternalSyntheticLambda19
            @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
            public final Object constructPrimitive(Key key) {
                return ConfigurationV0.createAesCmacPrf((AesCmacPrfKey) key);
            }
        }, AesCmacPrfKey.class, Prf.class));
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.ConfigurationV0$$ExternalSyntheticLambda20
            @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
            public final Object constructPrimitive(Key key) {
                return ConfigurationV0.createHkdfPrf((HkdfPrfKey) key);
            }
        }, HkdfPrfKey.class, Prf.class));
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationFips140v2$$ExternalSyntheticLambda6(), HmacPrfKey.class, Prf.class));
        PublicKeySignWrapper.registerToInternalPrimitiveRegistry(builder);
        PublicKeyVerifyWrapper.registerToInternalPrimitiveRegistry(builder);
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationFips140v2$$ExternalSyntheticLambda7(), EcdsaPrivateKey.class, PublicKeySign.class));
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationFips140v2$$ExternalSyntheticLambda8(), EcdsaPublicKey.class, PublicKeyVerify.class));
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda1(), Ed25519PrivateKey.class, PublicKeySign.class));
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda2(), Ed25519PublicKey.class, PublicKeyVerify.class));
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda3(), RsaSsaPkcs1PrivateKey.class, PublicKeySign.class));
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda4(), RsaSsaPkcs1PublicKey.class, PublicKeyVerify.class));
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda5(), RsaSsaPssPrivateKey.class, PublicKeySign.class));
        builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda6(), RsaSsaPssPublicKey.class, PublicKeyVerify.class));
        return InternalConfiguration.createFromPrimitiveRegistry(builder.allowReparsingLegacyKeys().build());
    }
}
