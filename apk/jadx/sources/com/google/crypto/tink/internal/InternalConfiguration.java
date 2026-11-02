package com.google.crypto.tink.internal;

import com.google.crypto.tink.Configuration;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class InternalConfiguration extends Configuration {

    private static class InternalConfigurationImpl extends InternalConfiguration {
        private final PrimitiveRegistry registry;

        private InternalConfigurationImpl(PrimitiveRegistry primitiveRegistry) {
            this.registry = primitiveRegistry;
        }

        @Override // com.google.crypto.tink.internal.InternalConfiguration
        public <P> P wrap(KeysetHandleInterface keysetHandleInterface, MonitoringAnnotations monitoringAnnotations, Class<P> cls) throws GeneralSecurityException {
            return (P) this.registry.wrap(keysetHandleInterface, monitoringAnnotations, cls);
        }
    }

    public static InternalConfiguration createFromPrimitiveRegistry(PrimitiveRegistry primitiveRegistry) {
        return new InternalConfigurationImpl(primitiveRegistry);
    }

    public abstract <P> P wrap(KeysetHandleInterface keysetHandleInterface, MonitoringAnnotations monitoringAnnotations, Class<P> cls) throws GeneralSecurityException;
}
