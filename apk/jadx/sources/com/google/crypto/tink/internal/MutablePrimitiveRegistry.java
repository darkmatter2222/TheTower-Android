package com.google.crypto.tink.internal;

import com.google.crypto.tink.Key;
import java.security.GeneralSecurityException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class MutablePrimitiveRegistry {
    private static MutablePrimitiveRegistry globalInstance = new MutablePrimitiveRegistry();
    private final AtomicReference<PrimitiveRegistry> registry = new AtomicReference<>(PrimitiveRegistry.builder().build());

    MutablePrimitiveRegistry() {
    }

    public static MutablePrimitiveRegistry globalInstance() {
        return globalInstance;
    }

    public static void resetGlobalInstanceTestOnly() {
        globalInstance = new MutablePrimitiveRegistry();
    }

    public <KeyT extends Key, PrimitiveT> PrimitiveT getPrimitive(KeyT keyt, Class<PrimitiveT> cls) throws GeneralSecurityException {
        return (PrimitiveT) this.registry.get().getPrimitive(keyt, cls);
    }

    public synchronized <KeyT extends Key, PrimitiveT> void registerPrimitiveConstructor(PrimitiveConstructor<KeyT, PrimitiveT> primitiveConstructor) throws GeneralSecurityException {
        this.registry.set(PrimitiveRegistry.builder(this.registry.get()).registerPrimitiveConstructor(primitiveConstructor).build());
    }

    public synchronized <InputPrimitiveT, WrapperPrimitiveT> void registerPrimitiveWrapper(PrimitiveWrapper<InputPrimitiveT, WrapperPrimitiveT> primitiveWrapper) throws GeneralSecurityException {
        this.registry.set(PrimitiveRegistry.builder(this.registry.get()).registerPrimitiveWrapper(primitiveWrapper).build());
    }

    public <WrapperPrimitiveT> WrapperPrimitiveT wrap(KeysetHandleInterface keysetHandleInterface, MonitoringAnnotations monitoringAnnotations, Class<WrapperPrimitiveT> cls) throws GeneralSecurityException {
        return (WrapperPrimitiveT) this.registry.get().wrap(keysetHandleInterface, monitoringAnnotations, cls);
    }
}
