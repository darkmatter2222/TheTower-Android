package com.google.crypto.tink.signature;

import com.google.crypto.tink.Configuration;
import com.google.crypto.tink.ConfigurationFips140v2$$ExternalSyntheticLambda7;
import com.google.crypto.tink.ConfigurationFips140v2$$ExternalSyntheticLambda8;
import com.google.crypto.tink.ConfigurationV0$$ExternalSyntheticLambda1;
import com.google.crypto.tink.ConfigurationV0$$ExternalSyntheticLambda2;
import com.google.crypto.tink.ConfigurationV0$$ExternalSyntheticLambda3;
import com.google.crypto.tink.ConfigurationV0$$ExternalSyntheticLambda4;
import com.google.crypto.tink.ConfigurationV0$$ExternalSyntheticLambda5;
import com.google.crypto.tink.ConfigurationV0$$ExternalSyntheticLambda6;
import com.google.crypto.tink.Key;
import com.google.crypto.tink.PublicKeySign;
import com.google.crypto.tink.PublicKeyVerify;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.InternalConfiguration;
import com.google.crypto.tink.internal.PrimitiveConstructor;
import com.google.crypto.tink.internal.PrimitiveRegistry;
import com.google.crypto.tink.signature.internal.MlDsaSignConscrypt;
import com.google.crypto.tink.signature.internal.MlDsaVerifyConscrypt;
import com.google.crypto.tink.signature.internal.SlhDsaSignConscrypt;
import com.google.crypto.tink.signature.internal.SlhDsaVerifyConscrypt;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
class SignatureConfigurationV1 {
    private static final InternalConfiguration INTERNAL_CONFIGURATION = create();

    private SignatureConfigurationV1() {
    }

    private static InternalConfiguration create() {
        try {
            PrimitiveRegistry.Builder builder = PrimitiveRegistry.builder();
            PublicKeySignWrapper.registerToInternalPrimitiveRegistry(builder);
            PublicKeyVerifyWrapper.registerToInternalPrimitiveRegistry(builder);
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationFips140v2$$ExternalSyntheticLambda7(), EcdsaPrivateKey.class, PublicKeySign.class));
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationFips140v2$$ExternalSyntheticLambda8(), EcdsaPublicKey.class, PublicKeyVerify.class));
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda5(), RsaSsaPssPrivateKey.class, PublicKeySign.class));
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda6(), RsaSsaPssPublicKey.class, PublicKeyVerify.class));
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda3(), RsaSsaPkcs1PrivateKey.class, PublicKeySign.class));
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda4(), RsaSsaPkcs1PublicKey.class, PublicKeyVerify.class));
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda1(), Ed25519PrivateKey.class, PublicKeySign.class));
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda2(), Ed25519PublicKey.class, PublicKeyVerify.class));
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.signature.SignatureConfigurationV1$$ExternalSyntheticLambda0
                @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
                public final Object constructPrimitive(Key key) {
                    return MlDsaSignConscrypt.create((MlDsaPrivateKey) key);
                }
            }, MlDsaPrivateKey.class, PublicKeySign.class));
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.signature.SignatureConfigurationV1$$ExternalSyntheticLambda1
                @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
                public final Object constructPrimitive(Key key) {
                    return MlDsaVerifyConscrypt.create((MlDsaPublicKey) key);
                }
            }, MlDsaPublicKey.class, PublicKeyVerify.class));
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.signature.SignatureConfigurationV1$$ExternalSyntheticLambda2
                @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
                public final Object constructPrimitive(Key key) {
                    return SlhDsaSignConscrypt.create((SlhDsaPrivateKey) key);
                }
            }, SlhDsaPrivateKey.class, PublicKeySign.class));
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.signature.SignatureConfigurationV1$$ExternalSyntheticLambda3
                @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
                public final Object constructPrimitive(Key key) {
                    return SlhDsaVerifyConscrypt.create((SlhDsaPublicKey) key);
                }
            }, SlhDsaPublicKey.class, PublicKeyVerify.class));
            return InternalConfiguration.createFromPrimitiveRegistry(builder.build());
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    public static Configuration get() throws GeneralSecurityException {
        if (TinkFipsUtil.useOnlyFips()) {
            throw new GeneralSecurityException("Cannot use non-FIPS-compliant SignatureConfigurationV1 in FIPS mode");
        }
        return INTERNAL_CONFIGURATION;
    }
}
