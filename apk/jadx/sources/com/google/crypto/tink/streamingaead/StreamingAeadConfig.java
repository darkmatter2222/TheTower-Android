package com.google.crypto.tink.streamingaead;

import com.google.crypto.tink.config.TinkFips;
import com.google.crypto.tink.proto.RegistryConfig;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public final class StreamingAeadConfig {
    public static final String AES_CTR_HMAC_STREAMINGAEAD_TYPE_URL = initializeClassReturnInput("type.googleapis.com/google.crypto.tink.AesCtrHmacStreamingKey");
    public static final String AES_GCM_HKDF_STREAMINGAEAD_TYPE_URL = initializeClassReturnInput("type.googleapis.com/google.crypto.tink.AesGcmHkdfStreamingKey");

    @Deprecated
    public static final RegistryConfig TINK_1_1_0 = RegistryConfig.getDefaultInstance();
    public static final RegistryConfig LATEST = RegistryConfig.getDefaultInstance();

    static {
        try {
            init();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    private StreamingAeadConfig() {
    }

    @Deprecated
    public static void init() throws GeneralSecurityException {
        register();
    }

    private static String initializeClassReturnInput(String str) {
        return str;
    }

    public static void register() throws GeneralSecurityException {
        StreamingAeadWrapper.register();
        if (TinkFips.useOnlyFips()) {
            return;
        }
        AesCtrHmacStreamingKeyManager.register(true);
        AesGcmHkdfStreamingKeyManager.register(true);
    }
}
