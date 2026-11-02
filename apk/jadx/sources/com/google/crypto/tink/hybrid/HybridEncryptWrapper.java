package com.google.crypto.tink.hybrid;

import com.google.crypto.tink.HybridEncrypt;
import com.google.crypto.tink.Key;
import com.google.crypto.tink.hybrid.internal.LegacyFullHybridEncrypt;
import com.google.crypto.tink.internal.KeysetHandleInterface;
import com.google.crypto.tink.internal.LegacyProtoKey;
import com.google.crypto.tink.internal.MonitoringAnnotations;
import com.google.crypto.tink.internal.MonitoringClient;
import com.google.crypto.tink.internal.MonitoringUtil;
import com.google.crypto.tink.internal.MutableMonitoringRegistry;
import com.google.crypto.tink.internal.MutablePrimitiveRegistry;
import com.google.crypto.tink.internal.PrimitiveConstructor;
import com.google.crypto.tink.internal.PrimitiveRegistry;
import com.google.crypto.tink.internal.PrimitiveWrapper;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public class HybridEncryptWrapper implements PrimitiveWrapper<HybridEncrypt, HybridEncrypt> {
    private static final HybridEncryptWrapper WRAPPER = new HybridEncryptWrapper();
    private static final PrimitiveConstructor<LegacyProtoKey, HybridEncrypt> LEGACY_PRIMITIVE_CONSTRUCTOR = PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.hybrid.HybridEncryptWrapper$$ExternalSyntheticLambda0
        @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
        public final Object constructPrimitive(Key key) {
            return LegacyFullHybridEncrypt.create((LegacyProtoKey) key);
        }
    }, LegacyProtoKey.class, HybridEncrypt.class);

    private static class HybridEncryptWithId {
        public final HybridEncrypt hybridEncrypt;
        public final int id;

        public HybridEncryptWithId(HybridEncrypt hybridEncrypt, int i) {
            this.hybridEncrypt = hybridEncrypt;
            this.id = i;
        }
    }

    private static class WrappedHybridEncrypt implements HybridEncrypt {
        private final MonitoringClient.Logger encLogger;
        private final HybridEncryptWithId primary;

        public WrappedHybridEncrypt(HybridEncryptWithId hybridEncryptWithId, MonitoringClient.Logger logger) {
            this.primary = hybridEncryptWithId;
            this.encLogger = logger;
        }

        @Override // com.google.crypto.tink.HybridEncrypt
        public byte[] encrypt(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            if (this.primary.hybridEncrypt == null) {
                this.encLogger.logFailure();
                throw new GeneralSecurityException("keyset without primary key");
            }
            try {
                byte[] bArrEncrypt = this.primary.hybridEncrypt.encrypt(bArr, bArr2);
                this.encLogger.log(this.primary.id, bArr.length);
                return bArrEncrypt;
            } catch (GeneralSecurityException e) {
                this.encLogger.logFailure();
                throw e;
            }
        }
    }

    HybridEncryptWrapper() {
    }

    public static void register() throws GeneralSecurityException {
        MutablePrimitiveRegistry.globalInstance().registerPrimitiveWrapper(WRAPPER);
        MutablePrimitiveRegistry.globalInstance().registerPrimitiveConstructor(LEGACY_PRIMITIVE_CONSTRUCTOR);
    }

    public static void registerToInternalPrimitiveRegistry(PrimitiveRegistry.Builder builder) throws GeneralSecurityException {
        builder.registerPrimitiveWrapper(WRAPPER);
    }

    @Override // com.google.crypto.tink.internal.PrimitiveWrapper
    public Class<HybridEncrypt> getInputPrimitiveClass() {
        return HybridEncrypt.class;
    }

    @Override // com.google.crypto.tink.internal.PrimitiveWrapper
    public Class<HybridEncrypt> getPrimitiveClass() {
        return HybridEncrypt.class;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.crypto.tink.internal.PrimitiveWrapper
    public HybridEncrypt wrap(KeysetHandleInterface keysetHandleInterface, MonitoringAnnotations monitoringAnnotations, PrimitiveWrapper.PrimitiveFactory<HybridEncrypt> primitiveFactory) throws GeneralSecurityException {
        MonitoringClient.Logger loggerCreateLogger = !monitoringAnnotations.isEmpty() ? MutableMonitoringRegistry.globalInstance().getMonitoringClient().createLogger(keysetHandleInterface, monitoringAnnotations, "hybrid_encrypt", "encrypt") : MonitoringUtil.DO_NOTHING_LOGGER;
        KeysetHandleInterface.Entry primary = keysetHandleInterface.getPrimary();
        return new WrappedHybridEncrypt(new HybridEncryptWithId(primitiveFactory.create(primary), primary.getId()), loggerCreateLogger);
    }
}
