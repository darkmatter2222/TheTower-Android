package com.google.crypto.tink.keyderivation.internal;

import com.google.crypto.tink.KeyStatus;
import com.google.crypto.tink.KeysetHandle;
import com.google.crypto.tink.internal.KeysetHandleInterface;
import com.google.crypto.tink.internal.MonitoringAnnotations;
import com.google.crypto.tink.internal.MutablePrimitiveRegistry;
import com.google.crypto.tink.internal.PrimitiveRegistry;
import com.google.crypto.tink.internal.PrimitiveWrapper;
import com.google.crypto.tink.keyderivation.KeysetDeriver;
import com.google.errorprone.annotations.Immutable;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class KeysetDeriverWrapper implements PrimitiveWrapper<KeyDeriver, KeysetDeriver> {
    private static final KeysetDeriverWrapper WRAPPER = new KeysetDeriverWrapper();

    private static class DeriverWithId {
        final KeyDeriver deriver;
        final int id;
        final boolean isPrimary;

        DeriverWithId(KeyDeriver keyDeriver, int i, boolean z) {
            this.deriver = keyDeriver;
            this.id = i;
            this.isPrimary = z;
        }
    }

    @Immutable
    private static class WrappedKeysetDeriver implements KeysetDeriver {
        private final List<DeriverWithId> derivers;

        private WrappedKeysetDeriver(List<DeriverWithId> list) {
            this.derivers = list;
        }

        private static KeysetHandle.Builder.Entry deriveAndGetEntry(byte[] bArr, DeriverWithId deriverWithId) throws GeneralSecurityException {
            if (deriverWithId.deriver == null) {
                throw new GeneralSecurityException("Primitive set has non-full primitives -- this is probably a bug");
            }
            KeysetHandle.Builder.Entry entryImportKey = KeysetHandle.importKey(deriverWithId.deriver.deriveKey(bArr));
            entryImportKey.withFixedId(deriverWithId.id);
            if (deriverWithId.isPrimary) {
                entryImportKey.makePrimary();
            }
            return entryImportKey;
        }

        @Override // com.google.crypto.tink.keyderivation.KeysetDeriver
        public KeysetHandle deriveKeyset(byte[] bArr) throws GeneralSecurityException {
            KeysetHandle.Builder builderNewBuilder = KeysetHandle.newBuilder();
            Iterator<DeriverWithId> it = this.derivers.iterator();
            while (it.hasNext()) {
                builderNewBuilder.addEntry(deriveAndGetEntry(bArr, it.next()));
            }
            return builderNewBuilder.build();
        }
    }

    KeysetDeriverWrapper() {
    }

    public static void register() throws GeneralSecurityException {
        MutablePrimitiveRegistry.globalInstance().registerPrimitiveWrapper(WRAPPER);
    }

    public static void registerToInternalPrimitiveRegistry(PrimitiveRegistry.Builder builder) throws GeneralSecurityException {
        builder.registerPrimitiveWrapper(WRAPPER);
    }

    private static void validate(KeysetHandleInterface keysetHandleInterface) throws GeneralSecurityException {
        if (keysetHandleInterface.getPrimary() == null) {
            throw new GeneralSecurityException("Primitive set has no primary.");
        }
    }

    @Override // com.google.crypto.tink.internal.PrimitiveWrapper
    public Class<KeyDeriver> getInputPrimitiveClass() {
        return KeyDeriver.class;
    }

    @Override // com.google.crypto.tink.internal.PrimitiveWrapper
    public Class<KeysetDeriver> getPrimitiveClass() {
        return KeysetDeriver.class;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.crypto.tink.internal.PrimitiveWrapper
    public KeysetDeriver wrap(KeysetHandleInterface keysetHandleInterface, MonitoringAnnotations monitoringAnnotations, PrimitiveWrapper.PrimitiveFactory<KeyDeriver> primitiveFactory) throws GeneralSecurityException {
        validate(keysetHandleInterface);
        ArrayList arrayList = new ArrayList(keysetHandleInterface.size());
        for (int i = 0; i < keysetHandleInterface.size(); i++) {
            KeysetHandleInterface.Entry at = keysetHandleInterface.getAt(i);
            if (at.getStatus().equals(KeyStatus.ENABLED)) {
                arrayList.add(new DeriverWithId(primitiveFactory.create(at), at.getId(), at.isPrimary()));
            }
        }
        return new WrappedKeysetDeriver(arrayList);
    }
}
