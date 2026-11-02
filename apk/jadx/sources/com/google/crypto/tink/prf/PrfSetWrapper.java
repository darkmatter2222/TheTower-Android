package com.google.crypto.tink.prf;

import com.google.crypto.tink.Key;
import com.google.crypto.tink.KeyStatus;
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
import com.google.crypto.tink.prf.internal.LegacyFullPrf;
import com.google.errorprone.annotations.Immutable;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class PrfSetWrapper implements PrimitiveWrapper<Prf, PrfSet> {
    private static final PrfSetWrapper WRAPPER = new PrfSetWrapper();
    private static final PrimitiveConstructor<LegacyProtoKey, Prf> LEGACY_FULL_PRF_PRIMITIVE_CONSTRUCTOR = PrimitiveConstructor.create(new PrimitiveConstructor.PrimitiveConstructionFunction() { // from class: com.google.crypto.tink.prf.PrfSetWrapper$$ExternalSyntheticLambda0
        @Override // com.google.crypto.tink.internal.PrimitiveConstructor.PrimitiveConstructionFunction
        public final Object constructPrimitive(Key key) {
            return LegacyFullPrf.create((LegacyProtoKey) key);
        }
    }, LegacyProtoKey.class, Prf.class);

    private static class WrappedPrfSet extends PrfSet {
        private final Map<Integer, Prf> keyIdToPrfMap;
        private final int primaryKeyId;

        @Immutable
        private static class PrfWithMonitoring implements Prf {
            private final int keyId;
            private final MonitoringClient.Logger logger;
            private final Prf prf;

            public PrfWithMonitoring(Prf prf, int i, MonitoringClient.Logger logger) {
                this.prf = prf;
                this.keyId = i;
                this.logger = logger;
            }

            @Override // com.google.crypto.tink.prf.Prf
            public byte[] compute(byte[] bArr, int i) throws GeneralSecurityException {
                try {
                    byte[] bArrCompute = this.prf.compute(bArr, i);
                    this.logger.log(this.keyId, bArr.length);
                    return bArrCompute;
                } catch (GeneralSecurityException e) {
                    this.logger.logFailure();
                    throw e;
                }
            }
        }

        private WrappedPrfSet(Map<Integer, Prf> map, int i) {
            this.keyIdToPrfMap = map;
            this.primaryKeyId = i;
        }

        @Override // com.google.crypto.tink.prf.PrfSet
        public Map<Integer, Prf> getPrfs() throws GeneralSecurityException {
            return this.keyIdToPrfMap;
        }

        @Override // com.google.crypto.tink.prf.PrfSet
        public int getPrimaryId() {
            return this.primaryKeyId;
        }
    }

    public static void register() throws GeneralSecurityException {
        MutablePrimitiveRegistry.globalInstance().registerPrimitiveWrapper(WRAPPER);
        MutablePrimitiveRegistry.globalInstance().registerPrimitiveConstructor(LEGACY_FULL_PRF_PRIMITIVE_CONSTRUCTOR);
    }

    public static void registerToInternalPrimitiveRegistry(PrimitiveRegistry.Builder builder) throws GeneralSecurityException {
        builder.registerPrimitiveWrapper(WRAPPER);
    }

    @Override // com.google.crypto.tink.internal.PrimitiveWrapper
    public Class<Prf> getInputPrimitiveClass() {
        return Prf.class;
    }

    @Override // com.google.crypto.tink.internal.PrimitiveWrapper
    public Class<PrfSet> getPrimitiveClass() {
        return PrfSet.class;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.crypto.tink.internal.PrimitiveWrapper
    public PrfSet wrap(KeysetHandleInterface keysetHandleInterface, MonitoringAnnotations monitoringAnnotations, PrimitiveWrapper.PrimitiveFactory<Prf> primitiveFactory) throws GeneralSecurityException {
        MonitoringClient.Logger loggerCreateLogger = !monitoringAnnotations.isEmpty() ? MutableMonitoringRegistry.globalInstance().getMonitoringClient().createLogger(keysetHandleInterface, monitoringAnnotations, "prf", "compute") : MonitoringUtil.DO_NOTHING_LOGGER;
        HashMap map = new HashMap();
        for (int i = 0; i < keysetHandleInterface.size(); i++) {
            KeysetHandleInterface.Entry at = keysetHandleInterface.getAt(i);
            if (at.getStatus().equals(KeyStatus.ENABLED)) {
                if ((at.getKey() instanceof LegacyProtoKey) && ((LegacyProtoKey) at.getKey()).getOutputPrefix().size() != 0) {
                    throw new GeneralSecurityException("Cannot build PrfSet with keys with non-empty output prefix");
                }
                map.put(Integer.valueOf(at.getId()), new WrappedPrfSet.PrfWithMonitoring(primitiveFactory.create(at), at.getId(), loggerCreateLogger));
            }
        }
        return new WrappedPrfSet(map, keysetHandleInterface.getPrimary().getId());
    }
}
