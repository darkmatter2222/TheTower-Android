package com.google.crypto.tink.mac;

import com.google.crypto.tink.KeysetHandle;
import com.google.crypto.tink.Mac;
import com.google.crypto.tink.RegistryConfiguration;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public final class MacFactory {
    private MacFactory() {
    }

    @Deprecated
    public static Mac getPrimitive(KeysetHandle keysetHandle) throws GeneralSecurityException {
        MacWrapper.register();
        return (Mac) keysetHandle.getPrimitive(RegistryConfiguration.get(), Mac.class);
    }
}
