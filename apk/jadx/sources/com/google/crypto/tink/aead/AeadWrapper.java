package com.google.crypto.tink.aead;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.Key;
import com.google.crypto.tink.KeyStatus;
import com.google.crypto.tink.aead.internal.LegacyFullAead;
import com.google.crypto.tink.internal.KeysetHandleInterface;
import com.google.crypto.tink.internal.LegacyProtoKey;
import com.google.crypto.tink.internal.MonitoringAnnotations;
import com.google.crypto.tink.internal.MonitoringClient;
import com.google.crypto.tink.internal.MonitoringUtil;
import com.google.crypto.tink.internal.MutableMonitoringRegistry;
import com.google.crypto.tink.internal.MutablePrimitiveRegistry;
import com.google.crypto.tink.internal.PrefixMap;
import com.google.crypto.tink.internal.PrimitiveConstructor;
import com.google.crypto.tink.internal.PrimitiveRegistry;
import com.google.crypto.tink.internal.PrimitiveWrapper;
import com.google.crypto.tink.util.Bytes;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public class AeadWrapper implements PrimitiveWrapper<Aead, Aead> {
    private static final AeadWrapper WRAPPER = new AeadWrapper();
    private static final PrimitiveConstructor<LegacyProtoKey, Aead> LEGACY_FULL_AEAD_PRIMITIVE_CONSTRUCTOR = PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.aead.AeadWrapper$$ExternalSyntheticLambda0
        @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
        public final Object constructPrimitive(Key key) {
            return LegacyFullAead.create((LegacyProtoKey) key);
        }
    }, LegacyProtoKey.class, Aead.class);

    private static class AeadWithId {
        public final Aead aead;
        public final int id;

        public AeadWithId(Aead aead, int i) {
            this.aead = aead;
            this.id = i;
        }
    }

    private static class WrappedAead implements Aead {
        private final PrefixMap<AeadWithId> allAeads;
        private final MonitoringClient.Logger decLogger;
        private final MonitoringClient.Logger encLogger;
        private final AeadWithId primary;

        private WrappedAead(AeadWithId aeadWithId, PrefixMap<AeadWithId> prefixMap, MonitoringClient.Logger logger, MonitoringClient.Logger logger2) {
            this.primary = aeadWithId;
            this.allAeads = prefixMap;
            this.encLogger = logger;
            this.decLogger = logger2;
        }

        @Override // com.google.crypto.tink.Aead
        public byte[] decrypt(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            for (AeadWithId aeadWithId : this.allAeads.getAllWithMatchingPrefix(bArr)) {
                try {
                    byte[] bArrDecrypt = aeadWithId.aead.decrypt(bArr, bArr2);
                    this.decLogger.log(aeadWithId.id, bArr.length);
                    return bArrDecrypt;
                } catch (GeneralSecurityException unused) {
                }
            }
            this.decLogger.logFailure();
            throw new GeneralSecurityException("decryption failed");
        }

        @Override // com.google.crypto.tink.Aead
        public byte[] encrypt(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            try {
                byte[] bArrEncrypt = this.primary.aead.encrypt(bArr, bArr2);
                this.encLogger.log(this.primary.id, bArr.length);
                return bArrEncrypt;
            } catch (GeneralSecurityException e) {
                this.encLogger.logFailure();
                throw e;
            }
        }
    }

    AeadWrapper() {
    }

    private static Bytes getOutputPrefix(Key key) throws GeneralSecurityException {
        if (key instanceof AeadKey) {
            return ((AeadKey) key).getOutputPrefix();
        }
        if (key instanceof LegacyProtoKey) {
            return ((LegacyProtoKey) key).getOutputPrefix();
        }
        throw new GeneralSecurityException("Cannot get output prefix for key of class " + key.getClass().getName() + " with parameters " + key.getParameters());
    }

    public static void register() throws GeneralSecurityException {
        MutablePrimitiveRegistry.globalInstance().registerPrimitiveWrapper(WRAPPER);
        MutablePrimitiveRegistry.globalInstance().registerPrimitiveConstructor(LEGACY_FULL_AEAD_PRIMITIVE_CONSTRUCTOR);
    }

    public static void registerToInternalPrimitiveRegistry(PrimitiveRegistry.Builder builder) throws GeneralSecurityException {
        builder.registerPrimitiveWrapper(WRAPPER);
    }

    @Override // com.google.crypto.tink.internal.PrimitiveWrapper
    public Class<Aead> getInputPrimitiveClass() {
        return Aead.class;
    }

    @Override // com.google.crypto.tink.internal.PrimitiveWrapper
    public Class<Aead> getPrimitiveClass() {
        return Aead.class;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.crypto.tink.internal.PrimitiveWrapper
    public Aead wrap(KeysetHandleInterface keysetHandleInterface, MonitoringAnnotations monitoringAnnotations, PrimitiveWrapper.PrimitiveFactory<Aead> primitiveFactory) throws GeneralSecurityException {
        MonitoringClient.Logger loggerCreateLogger;
        MonitoringClient.Logger loggerCreateLogger2;
        PrefixMap.Builder builder = new PrefixMap.Builder();
        for (int i = 0; i < keysetHandleInterface.size(); i++) {
            KeysetHandleInterface.Entry at = keysetHandleInterface.getAt(i);
            if (at.getStatus().equals(KeyStatus.ENABLED)) {
                builder.put(getOutputPrefix(at.getKey()), new AeadWithId(primitiveFactory.create(at), at.getId()));
            }
        }
        if (monitoringAnnotations.isEmpty()) {
            loggerCreateLogger = MonitoringUtil.DO_NOTHING_LOGGER;
            loggerCreateLogger2 = MonitoringUtil.DO_NOTHING_LOGGER;
        } else {
            MonitoringClient monitoringClient = MutableMonitoringRegistry.globalInstance().getMonitoringClient();
            loggerCreateLogger = monitoringClient.createLogger(keysetHandleInterface, monitoringAnnotations, "aead", "encrypt");
            loggerCreateLogger2 = monitoringClient.createLogger(keysetHandleInterface, monitoringAnnotations, "aead", "decrypt");
        }
        MonitoringClient.Logger logger = loggerCreateLogger2;
        return new WrappedAead(new AeadWithId(primitiveFactory.create(keysetHandleInterface.getPrimary()), keysetHandleInterface.getPrimary().getId()), builder.build(), loggerCreateLogger, logger);
    }
}
