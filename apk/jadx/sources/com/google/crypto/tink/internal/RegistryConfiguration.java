package com.google.crypto.tink.internal;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public final class RegistryConfiguration extends InternalConfiguration {
    private static final RegistryConfiguration CONFIG = new RegistryConfiguration();

    private RegistryConfiguration() {
    }

    public static InternalConfiguration createFromPrimitiveRegistry(PrimitiveRegistry primitiveRegistry) {
        throw new UnsupportedOperationException("Cannot create RegistryConfiguration from a PrimitiveRegistry");
    }

    public static RegistryConfiguration get() {
        return CONFIG;
    }

    @Override // com.google.crypto.tink.internal.InternalConfiguration
    public <P> P wrap(KeysetHandleInterface keysetHandleInterface, MonitoringAnnotations monitoringAnnotations, Class<P> cls) throws GeneralSecurityException {
        return (P) MutablePrimitiveRegistry.globalInstance().wrap(keysetHandleInterface, monitoringAnnotations, cls);
    }
}
