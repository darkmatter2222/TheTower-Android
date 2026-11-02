package com.google.crypto.tink.jwt;

import com.google.crypto.tink.KeyStatus;
import com.google.crypto.tink.internal.KeysetHandleInterface;
import com.google.crypto.tink.internal.MonitoringAnnotations;
import com.google.crypto.tink.internal.MonitoringClient;
import com.google.crypto.tink.internal.MonitoringUtil;
import com.google.crypto.tink.internal.MutableMonitoringRegistry;
import com.google.crypto.tink.internal.MutablePrimitiveRegistry;
import com.google.crypto.tink.internal.PrimitiveRegistry;
import com.google.crypto.tink.internal.PrimitiveWrapper;
import com.google.errorprone.annotations.Immutable;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class JwtPublicKeyVerifyWrapper implements PrimitiveWrapper<JwtPublicKeyVerify, JwtPublicKeyVerify> {
    private static final JwtPublicKeyVerifyWrapper WRAPPER = new JwtPublicKeyVerifyWrapper();

    private static class JwtPublicKeyVerifyWithId {
        final int id;
        final JwtPublicKeyVerify verify;

        JwtPublicKeyVerifyWithId(JwtPublicKeyVerify jwtPublicKeyVerify, int i) {
            this.verify = jwtPublicKeyVerify;
            this.id = i;
        }
    }

    @Immutable
    private static class WrappedJwtPublicKeyVerify implements JwtPublicKeyVerify {
        private final List<JwtPublicKeyVerifyWithId> allVerifiers;
        private final MonitoringClient.Logger logger;

        public WrappedJwtPublicKeyVerify(MonitoringClient.Logger logger, List<JwtPublicKeyVerifyWithId> list) {
            this.logger = logger;
            this.allVerifiers = list;
        }

        @Override // com.google.crypto.tink.jwt.JwtPublicKeyVerify
        public VerifiedJwt verifyAndDecode(String str, JwtValidator jwtValidator) throws GeneralSecurityException {
            GeneralSecurityException generalSecurityException = null;
            for (JwtPublicKeyVerifyWithId jwtPublicKeyVerifyWithId : this.allVerifiers) {
                try {
                    VerifiedJwt verifiedJwtVerifyAndDecode = jwtPublicKeyVerifyWithId.verify.verifyAndDecode(str, jwtValidator);
                    this.logger.log(jwtPublicKeyVerifyWithId.id, 1L);
                    return verifiedJwtVerifyAndDecode;
                } catch (GeneralSecurityException e) {
                    if (e instanceof JwtInvalidException) {
                        generalSecurityException = e;
                    }
                }
            }
            this.logger.logFailure();
            if (generalSecurityException != null) {
                throw generalSecurityException;
            }
            throw new GeneralSecurityException("invalid JWT");
        }
    }

    JwtPublicKeyVerifyWrapper() {
    }

    public static void register() throws GeneralSecurityException {
        MutablePrimitiveRegistry.globalInstance().registerPrimitiveWrapper(WRAPPER);
    }

    public static void registerToInternalPrimitiveRegistry(PrimitiveRegistry.Builder builder) throws GeneralSecurityException {
        builder.registerPrimitiveWrapper(WRAPPER);
    }

    @Override // com.google.crypto.tink.internal.PrimitiveWrapper
    public Class<JwtPublicKeyVerify> getInputPrimitiveClass() {
        return JwtPublicKeyVerify.class;
    }

    @Override // com.google.crypto.tink.internal.PrimitiveWrapper
    public Class<JwtPublicKeyVerify> getPrimitiveClass() {
        return JwtPublicKeyVerify.class;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.crypto.tink.internal.PrimitiveWrapper
    public JwtPublicKeyVerify wrap(KeysetHandleInterface keysetHandleInterface, MonitoringAnnotations monitoringAnnotations, PrimitiveWrapper.PrimitiveFactory<JwtPublicKeyVerify> primitiveFactory) throws GeneralSecurityException {
        ArrayList arrayList = new ArrayList(keysetHandleInterface.size());
        for (int i = 0; i < keysetHandleInterface.size(); i++) {
            KeysetHandleInterface.Entry at = keysetHandleInterface.getAt(i);
            if (at.getStatus().equals(KeyStatus.ENABLED)) {
                arrayList.add(new JwtPublicKeyVerifyWithId(primitiveFactory.create(at), at.getId()));
            }
        }
        return new WrappedJwtPublicKeyVerify(!monitoringAnnotations.isEmpty() ? MutableMonitoringRegistry.globalInstance().getMonitoringClient().createLogger(keysetHandleInterface, monitoringAnnotations, "jwtverify", "verify") : MonitoringUtil.DO_NOTHING_LOGGER, arrayList);
    }
}
