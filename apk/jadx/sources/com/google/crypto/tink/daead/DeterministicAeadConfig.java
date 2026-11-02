package com.google.crypto.tink.daead;

import com.google.crypto.tink.config.TinkFips;
import com.google.crypto.tink.proto.RegistryConfig;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public final class DeterministicAeadConfig {
    public static final String AES_SIV_TYPE_URL = initializeClassReturnInput("type.googleapis.com/google.crypto.tink.AesSivKey");

    @Deprecated
    public static final RegistryConfig TINK_1_1_0 = RegistryConfig.getDefaultInstance();

    @Deprecated
    public static final RegistryConfig LATEST = RegistryConfig.getDefaultInstance();

    static {
        try {
            register();
        } catch (GeneralSecurityException e) {
            throw new ExceptionInInitializerError(e);
        }
    }

    private DeterministicAeadConfig() {
    }

    @Deprecated
    public static void init() throws GeneralSecurityException {
        register();
    }

    private static String initializeClassReturnInput(String str) {
        return str;
    }

    public static void register() throws GeneralSecurityException {
        DeterministicAeadWrapper.register();
        if (TinkFips.useOnlyFips()) {
            return;
        }
        AesSivKeyManager.register(true);
    }
}
