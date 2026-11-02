package com.google.crypto.tink.aead;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.Configuration;
import com.google.crypto.tink.ConfigurationFips140v2$$ExternalSyntheticLambda4;
import com.google.crypto.tink.ConfigurationFips140v2$$ExternalSyntheticLambda5;
import com.google.crypto.tink.ConfigurationV0$$ExternalSyntheticLambda10;
import com.google.crypto.tink.ConfigurationV0$$ExternalSyntheticLambda9;
import com.google.crypto.tink.Key;
import com.google.crypto.tink.aead.internal.ChaCha20Poly1305Jce;
import com.google.crypto.tink.aead.internal.XChaCha20Poly1305Jce;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.InternalConfiguration;
import com.google.crypto.tink.internal.PrimitiveConstructor;
import com.google.crypto.tink.internal.PrimitiveRegistry;
import com.google.crypto.tink.subtle.ChaCha20Poly1305;
import com.google.crypto.tink.subtle.XChaCha20Poly1305;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
class AeadConfigurationV0 {
    private static final InternalConfiguration INTERNAL_CONFIGURATION = create();

    private AeadConfigurationV0() {
    }

    private static InternalConfiguration create() {
        try {
            PrimitiveRegistry.Builder builder = PrimitiveRegistry.builder();
            AeadWrapper.registerToInternalPrimitiveRegistry(builder);
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationFips140v2$$ExternalSyntheticLambda4(), AesCtrHmacAeadKey.class, Aead.class));
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationFips140v2$$ExternalSyntheticLambda5(), AesGcmKey.class, Aead.class));
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda10(), AesGcmSivKey.class, Aead.class));
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda9(), AesEaxKey.class, Aead.class));
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.aead.AeadConfigurationV0$$ExternalSyntheticLambda0
                @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
                public final Object constructPrimitive(Key key) {
                    return AeadConfigurationV0.createChaCha20Poly1305((ChaCha20Poly1305Key) key);
                }
            }, ChaCha20Poly1305Key.class, Aead.class));
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.aead.AeadConfigurationV0$$ExternalSyntheticLambda1
                @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
                public final Object constructPrimitive(Key key) {
                    return AeadConfigurationV0.createXChaCha20Poly1305((XChaCha20Poly1305Key) key);
                }
            }, XChaCha20Poly1305Key.class, Aead.class));
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new AeadConfigurationV0$$ExternalSyntheticLambda2(), XAesGcmKey.class, Aead.class));
            return InternalConfiguration.createFromPrimitiveRegistry(builder.allowReparsingLegacyKeys().build());
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Aead createChaCha20Poly1305(ChaCha20Poly1305Key chaCha20Poly1305Key) throws GeneralSecurityException {
        return ChaCha20Poly1305Jce.isSupported() ? ChaCha20Poly1305Jce.create(chaCha20Poly1305Key) : ChaCha20Poly1305.create(chaCha20Poly1305Key);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Aead createXChaCha20Poly1305(XChaCha20Poly1305Key xChaCha20Poly1305Key) throws GeneralSecurityException {
        return XChaCha20Poly1305Jce.isSupported() ? XChaCha20Poly1305Jce.create(xChaCha20Poly1305Key) : XChaCha20Poly1305.create(xChaCha20Poly1305Key);
    }

    public static Configuration get() throws GeneralSecurityException {
        if (TinkFipsUtil.useOnlyFips()) {
            throw new GeneralSecurityException("Cannot use non-FIPS-compliant AeadConfigurationV0 in FIPS mode");
        }
        return INTERNAL_CONFIGURATION;
    }
}
