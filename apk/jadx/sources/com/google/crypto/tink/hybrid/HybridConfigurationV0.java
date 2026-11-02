package com.google.crypto.tink.hybrid;

import com.google.crypto.tink.Configuration;
import com.google.crypto.tink.ConfigurationV0$$ExternalSyntheticLambda15;
import com.google.crypto.tink.ConfigurationV0$$ExternalSyntheticLambda16;
import com.google.crypto.tink.ConfigurationV0$$ExternalSyntheticLambda17;
import com.google.crypto.tink.ConfigurationV0$$ExternalSyntheticLambda18;
import com.google.crypto.tink.HybridDecrypt;
import com.google.crypto.tink.HybridEncrypt;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.InternalConfiguration;
import com.google.crypto.tink.internal.PrimitiveConstructor;
import com.google.crypto.tink.internal.PrimitiveRegistry;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
class HybridConfigurationV0 {
    private static final InternalConfiguration INTERNAL_CONFIGURATION = create();

    private HybridConfigurationV0() {
    }

    private static InternalConfiguration create() {
        try {
            PrimitiveRegistry.Builder builder = PrimitiveRegistry.builder();
            HybridEncryptWrapper.registerToInternalPrimitiveRegistry(builder);
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda15(), EciesPublicKey.class, HybridEncrypt.class));
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda17(), HpkePublicKey.class, HybridEncrypt.class));
            HybridDecryptWrapper.registerToInternalPrimitiveRegistry(builder);
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda16(), EciesPrivateKey.class, HybridDecrypt.class));
            builder.registerPrimitiveConstructor(PrimitiveConstructor.create(new ConfigurationV0$$ExternalSyntheticLambda18(), HpkePrivateKey.class, HybridDecrypt.class));
            return InternalConfiguration.createFromPrimitiveRegistry(builder.allowReparsingLegacyKeys().build());
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    public static Configuration get() throws GeneralSecurityException {
        if (TinkFipsUtil.useOnlyFips()) {
            throw new GeneralSecurityException("Cannot use non-FIPS-compliant HybridConfigurationV0 in FIPS mode");
        }
        return INTERNAL_CONFIGURATION;
    }
}
