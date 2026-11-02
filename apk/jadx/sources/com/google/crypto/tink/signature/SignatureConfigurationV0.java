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
import com.google.crypto.tink.PublicKeySign;
import com.google.crypto.tink.PublicKeyVerify;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.InternalConfiguration;
import com.google.crypto.tink.internal.PrimitiveConstructor;
import com.google.crypto.tink.internal.PrimitiveRegistry;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
class SignatureConfigurationV0 {
    private static final InternalConfiguration INTERNAL_CONFIGURATION = create();

    private SignatureConfigurationV0() {
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
            return InternalConfiguration.createFromPrimitiveRegistry(builder.allowReparsingLegacyKeys().build());
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    public static Configuration get() throws GeneralSecurityException {
        if (TinkFipsUtil.useOnlyFips()) {
            throw new GeneralSecurityException("Cannot use non-FIPS-compliant SignatureConfigurationV0 in FIPS mode");
        }
        return INTERNAL_CONFIGURATION;
    }
}
