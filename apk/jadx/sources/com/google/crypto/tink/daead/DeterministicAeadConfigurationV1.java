package com.google.crypto.tink.daead;

import com.google.crypto.tink.Configuration;
import com.google.crypto.tink.DeterministicAead;
import com.google.crypto.tink.Key;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.InternalConfiguration;
import com.google.crypto.tink.internal.PrimitiveConstructor;
import com.google.crypto.tink.internal.PrimitiveRegistry;
import com.google.crypto.tink.subtle.AesSiv;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* JADX INFO: loaded from: classes3.dex */
class DeterministicAeadConfigurationV1 {
    private static final InternalConfiguration INTERNAL_CONFIGURATION = create();
    private static final int KEY_SIZE_IN_BYTES = 64;

    private DeterministicAeadConfigurationV1() {
    }

    private static InternalConfiguration create() {
        try {
            PrimitiveRegistry.Builder builder = PrimitiveRegistry.builder();
            DeterministicAeadWrapper.registerToInternalPrimitiveRegistry(builder);
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.daead.DeterministicAeadConfigurationV1$$ExternalSyntheticLambda0
                @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
                public final Object constructPrimitive(Key key) {
                    return DeterministicAeadConfigurationV1.createAesSiv((AesSivKey) key);
                }
            }, AesSivKey.class, DeterministicAead.class));
            return InternalConfiguration.createFromPrimitiveRegistry(builder.build());
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static DeterministicAead createAesSiv(AesSivKey aesSivKey) throws GeneralSecurityException {
        if (aesSivKey.getParameters().getKeySizeBytes() == 64) {
            return AesSiv.create(aesSivKey);
        }
        throw new InvalidAlgorithmParameterException("invalid key size: " + aesSivKey.getParameters().getKeySizeBytes() + ". Valid keys must have 64 bytes.");
    }

    public static Configuration get() throws GeneralSecurityException {
        if (TinkFipsUtil.useOnlyFips()) {
            throw new GeneralSecurityException("Cannot use non-FIPS-compliant DeterministicAeadConfigurationV1 in FIPS mode");
        }
        return INTERNAL_CONFIGURATION;
    }
}
