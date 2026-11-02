package com.google.crypto.tink.streamingaead;

import com.google.crypto.tink.Key;
import com.google.crypto.tink.KeyStatus;
import com.google.crypto.tink.StreamingAead;
import com.google.crypto.tink.internal.KeysetHandleInterface;
import com.google.crypto.tink.internal.LegacyProtoKey;
import com.google.crypto.tink.internal.MonitoringAnnotations;
import com.google.crypto.tink.internal.MutablePrimitiveRegistry;
import com.google.crypto.tink.internal.PrimitiveConstructor;
import com.google.crypto.tink.internal.PrimitiveRegistry;
import com.google.crypto.tink.internal.PrimitiveWrapper;
import com.google.crypto.tink.streamingaead.internal.LegacyFullStreamingAead;
import java.security.GeneralSecurityException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class StreamingAeadWrapper implements PrimitiveWrapper<StreamingAead, StreamingAead> {
    private static final StreamingAeadWrapper WRAPPER = new StreamingAeadWrapper();
    private static final PrimitiveConstructor<LegacyProtoKey, StreamingAead> LEGACY_FULL_STREAMING_AEAD_PRIMITIVE_CONSTRUCTOR = PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.streamingaead.StreamingAeadWrapper$$ExternalSyntheticLambda0
        @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
        public final Object constructPrimitive(Key key) {
            return LegacyFullStreamingAead.create((LegacyProtoKey) key);
        }
    }, LegacyProtoKey.class, StreamingAead.class);

    StreamingAeadWrapper() {
    }

    public static void register() throws GeneralSecurityException {
        MutablePrimitiveRegistry.globalInstance().registerPrimitiveWrapper(WRAPPER);
        MutablePrimitiveRegistry.globalInstance().registerPrimitiveConstructor(LEGACY_FULL_STREAMING_AEAD_PRIMITIVE_CONSTRUCTOR);
    }

    public static void registerToInternalPrimitiveRegistry(PrimitiveRegistry.Builder builder) throws GeneralSecurityException {
        builder.registerPrimitiveWrapper(WRAPPER);
    }

    @Override // com.google.crypto.tink.internal.PrimitiveWrapper
    public Class<StreamingAead> getInputPrimitiveClass() {
        return StreamingAead.class;
    }

    @Override // com.google.crypto.tink.internal.PrimitiveWrapper
    public Class<StreamingAead> getPrimitiveClass() {
        return StreamingAead.class;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.crypto.tink.internal.PrimitiveWrapper
    public StreamingAead wrap(KeysetHandleInterface keysetHandleInterface, MonitoringAnnotations monitoringAnnotations, PrimitiveWrapper.PrimitiveFactory<StreamingAead> primitiveFactory) throws GeneralSecurityException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < keysetHandleInterface.size(); i++) {
            KeysetHandleInterface.Entry at = keysetHandleInterface.getAt(i);
            if (at.getStatus().equals(KeyStatus.ENABLED)) {
                arrayList.add(primitiveFactory.create(at));
            }
        }
        KeysetHandleInterface.Entry primary = keysetHandleInterface.getPrimary();
        if (primary == null) {
            throw new GeneralSecurityException("No primary set");
        }
        StreamingAead streamingAeadCreate = primitiveFactory.create(primary);
        if (streamingAeadCreate != null) {
            return new StreamingAeadHelper(arrayList, streamingAeadCreate);
        }
        throw new GeneralSecurityException("No primary set");
    }
}
